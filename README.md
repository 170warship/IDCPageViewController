# IDCPageViewController

iOS 滑动分页控件

可以把一些ViewController加入到这个控件中，控件会自动分页显示。

可以滑动查看， 各个ViewController的 viewDidLoad , viewWillAppear, viewDidAppear,viewWillDisAppear, viewDidDisappear都会正确的执行（翻页到对应的ViewController时才会调用viewDidLoad, viewWillAppear,viewDidAppear.同样， 一个ViewController滑出显示区的时候，viewWillDisAppear，viewDidDisappear也会执行）

请参考 IDCPageViewControllerExample/ViewController.m 里的用法示例
