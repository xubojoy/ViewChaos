//
//  MarkInfo.swift
//  ViewChaosDemo
//
//  Created by Stan Hu on 5/7/2017.
//  Copyright © 2017 Qfq. All rights reserved.
//

import UIKit
struct Line:Equatable{
    var point1:ShortPoint
    var point2:ShortPoint
    init(point1:ShortPoint,point2:ShortPoint) {
        self.point1 = point1
        self.point2 = point2
    }
    var centerPoint:CGPoint{
        get{
            return CGPoint(x: (point1.point.x + point2.point.x)/2, y: (point1.point.y + point2.point.y)/2)
        }
    }
    
    var lineWidth:CGFloat{
        get{
            return sqrt(pow(abs(point1.point.x-point2.point.x), 2)+pow(abs(point1.point.y-point2.point.y), 2))
        }
    }
    
    public static func ==(lhs: Line, rhs: Line) -> Bool{
        if lhs.point1 == rhs.point1 && lhs.point2 == rhs.point2 {
            return true
        }
        return false
    }
}
struct ShortPoint :Equatable{
    var point:CGPoint
    var handle:CGFloat
    init(x:CGFloat,y:CGFloat,handle:CGFloat) {
        self.point = CGPoint(x: x, y: y)
        self.handle = handle
    }

    public static func ==(lhs: ShortPoint, rhs: ShortPoint) -> Bool{
        if lhs.point == rhs.point && lhs.handle == rhs.handle {
            return true
        }
        return false
    }
}

struct Interval {
    var start:CGFloat
    var length:CGFloat
    init(start:CGFloat,length:CGFloat) {
        self.start = start
        self.length = length
    }
}

struct FrameObject {
    var frame:CGRect
    var attachedView:UIView
    var topInjectedObjs:[Line]
    var leftInjectedObjs:[Line]
    init(frame:CGRect,attachedView:UIView) {
        self.frame = frame
        self.attachedView = attachedView
        topInjectedObjs = [Line]()
        leftInjectedObjs = [Line]()
    }
}

protocol AbstractView {

}

class BorderAttachView:UIView,AbstractView{
    
}

class TaggingView: UIView,AbstractView {
    
    weak var attachedView:UIView?
    
    var lines:[Line]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     convenience init(frame: CGRect,lines:[Line]) {
        self.init(frame: frame)
        backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.05)
        self.lines = lines
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else{
            return
        }
        guard let mLimes = lines else {
            return
        }
        
        for line in mLimes {
            context.setLineWidth(2.0 / UIScreen.main.scale)
            context.setAllowsAntialiasing(true)
            context.setStrokeColor(red: 1, green: 0, blue: 70.0/255.0, alpha: 1)
            context.beginPath()
            context.move(to: line.point1.point)
            context.addLine(to: line.point2.point)
            context.strokePath()
            let str = String.init(format: "%.0f px", line.lineWidth)
            let position = CGRect(x: line.centerPoint.x - 15 < 0 ? 1 :  line.centerPoint.x - 15 , y: line.centerPoint.y - 6 < 1 ? 0 : line.centerPoint.y - 6 , width: 30, height: 16)
             (str as NSString).draw(in: position, withAttributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 7),NSForegroundColorAttributeName:UIColor.red,NSBackgroundColorAttributeName:UIColor(red: 1, green: 1, blue: 0, alpha: 0.5)])
        }
    }
    
 
}

extension Array{
    mutating func removeWith(condition:((_ obj:Element)->Bool)) {
        var index = [Int]()
        var i = 0
        for item in self{
            if condition(item){
                index.append(i)
            }
            i = i + 1
        }
        for j in 0...i{
            self.remove(at: j)
        }
    }
    
}
