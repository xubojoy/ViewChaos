ViewChaos
===
##ViewChaos is a iOS view diagnose tool
ViewChaos is a powerful iOS UI development tool, It can help you locatie the view, find the superView and subView. check the constrains, and trace the view which you want to observer. and the most magically thing is that it can change the view's frame. backgroung&title color, resize the font. change the border color,width and cornerradius. at last. it can generate the code,  you can just copy the ajusted view's code. and parse to the Xcode.  it's very powerful. and every iOS developer should use this tool!

##Key Features
* No code, you do not need write any code!
* Debug mode. it will automatically disable when you set in release mode.
* Check view's frame, subViews, superViews.
* Can see the view's constrains.
* Trace the view.
* Change the view's property,include frame,size,font,border and background.

##Requirements 

Xcode 8.0 and iOS 7.1

##Installation(this is very important)
`if you like to copy the three files(ViewChaos.swift,ViewChaosInfo.swift,ViewNeat.swift) to your project to install ViewChaos, please follow these setps bellow:`
* step1:copy the three files(ViewChaos.swift,ViewChaosInfo.swift,ViewNeat.swift) to your project.
* step2:set Target(select your project)->build setting-> search 'swift compile' ->select 'Other Swift Flags' -> select DeBug option -> add -DDEBUG command (this make it only work in debug mode).
* step3: if you can not find the 'Other Swift Flags' option, it turn out that your project is a pure objective-c project. you need add a swift file to your project, then the xcode want you to build a header bridge file. you need add it. then you can process step2 correctly.
* step4 just use it! 

`if you want to use cocopods, just pod 'ViewChaos'.`
* step1:pod 'ViewChaos', and install it.
* step2:select the Pods project, then choose target-> your project -> Build Setting-> serach 'swift compile'-> select 'Other Swift Flags' -> select DeBug option -> add -DDEBUG command (this make it only work in debug mode).
* step3: just use it!
<br>
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/0.png)  

##How To Use It 
* If you install ViewChaos successfully, then run your project, you will see a green ball, and you can move it, the green ball will obtain the toppest view and show on the screen;s top
<br>
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/1.gif)
* Click the green area, you will get a table, which is show this view's information, include it's superView,subView, and constrains(if it exist)
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/2.gif)
* The contrain can show the view's constrain. just click it
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/3.gif)
* it can trace view's frame,center, tag, and bounds..and the change value can show in the table
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/4.gif)
* Controller view's location
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/5.gif)
* Change View's size and font size
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/6.gif)
* Change's view's border and forground, background and tint color
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/7.gif)
* Once the set the view to the property, you can click "Code" and it will generate code for you, include Objective-c and swift
![add -DDEBUG location](https://github.com/DuckDeck/ViewChaos/tree/master/ViewChaosDemo/Resource/00.png)
* if you can control the view precise, jusr click Precise, and the view will move 0.5px every 0.3 second.If you want cancel, just click Imprecise
* The view move speed can changed by set property Scale value. 5 is the fastest, and 1 is very slow.
* Reset will set the view to the origin status
* Close will close the control panel
* Some color porperty, the panel will show a ColorPick button, click this button a ColorPick will show, the can usr it to choose color.



