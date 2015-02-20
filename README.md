# SingleLineKeyboardResize
With this non-intrusive UIViewController extension, only a single line of code will make your scrollView auto resize when the keyboard appears. It litterally cannot get easier than this, and you don't even need to subclass anything.


![Resize Example](https://raw.githubusercontent.com/haaakon/SingleLineKeyboardResize/master/example.gif)



USAGE
=====
For a tableView reference from your storyboard or nib:
```Swift
setupKeyboardNotifcationListenerForScrollView(tableView)
```

One line for collection views as well (or any other class that subclass UIScrollView
```Swift
setupKeyboardNotifcationListenerForScrollView(collectionView)
```
