# SingleLineKeyboardResize
With this non-intrusive UIViewController extension, only a single line of code will make your scrollView auto resize when the keyboard appears. It literally cannot get easier than this, and you don't even need to subclass anything.

[![CI Status](http://img.shields.io/travis/Håkon Bogen/SingleLineKeyboardResize.svg?style=flat)](https://travis-ci.org/Håkon Bogen/SingleLineKeyboardResize)
[![Version](https://img.shields.io/cocoapods/v/SingleLineKeyboardResize.svg?style=flat)](http://cocoadocs.org/docsets/SingleLineKeyboardResize)
[![License](https://img.shields.io/cocoapods/l/SingleLineKeyboardResize.svg?style=flat)](http://cocoadocs.org/docsets/SingleLineKeyboardResize)
[![Platform](https://img.shields.io/cocoapods/p/SingleLineKeyboardResize.svg?style=flat)](http://cocoadocs.org/docsets/SingleLineKeyboardResize)

Demo
=====
#### UIScrollView
![Resize Example](https://raw.githubusercontent.com/haaakon/SingleLineKeyboardResize/master/example2.gif)
#### UITableView
![Resize Example](https://raw.githubusercontent.com/haaakon/SingleLineKeyboardResize/master/example.gif)



USAGE
=====
For a scrollView from nib or storyboard
```swift
@IBOutlet weak var scrollView : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupKeyboardNotifcationListenerForScrollView(scrollView)
    }
```

Just as simple if you want to use it with a tableView
```Swift
@IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupKeyboardNotifcationListenerForScrollView(tableView)
        
    }
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

