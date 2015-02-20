# SingleLineKeyboardResize
With this non-intrusive UIViewController extension, only a single line of code will make your scrollView auto resize when the keyboard appears. It literally cannot get easier than this, and you don't even need to subclass anything.

[![CI Status](http://img.shields.io/travis/Håkon Bogen/SingleLineKeyboardResize.svg?style=flat)](https://travis-ci.org/Håkon Bogen/SingleLineKeyboardResize)
[![Version](https://img.shields.io/cocoapods/v/SingleLineKeyboardResize.svg?style=flat)](http://cocoadocs.org/docsets/SingleLineKeyboardResize)
[![License](https://img.shields.io/cocoapods/l/SingleLineKeyboardResize.svg?style=flat)](http://cocoadocs.org/docsets/SingleLineKeyboardResize)
[![Platform](https://img.shields.io/cocoapods/p/SingleLineKeyboardResize.svg?style=flat)](http://cocoadocs.org/docsets/SingleLineKeyboardResize)

Demo
=====
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

To remove observers for example in deinit
```Swift
deinit {
        removeKeyboardNotificationListeners()
    }
```

## Installation
### CocoaPods
SingleLineKeyboardResize is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "SingleLineKeyboardResize"
### Without CocoaPods: 
It's only one file you need, 'UIViewController+Keyboard.swift', copy it into your project, and you are good to go.

## Author

Håkon Bogen, hakon.bogen@gmail.com

## License

SingleLineKeyboardResize is available under the MIT license. See the LICENSE file for more info.

