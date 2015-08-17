# FLSideSlipViewController

使用说明:
1、将项目中的FLSideSlipViewController引入到自己的工程
2在didFinishLaunchingWithOptions:方法中初始化RootViewController:

		self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    ViewController *controller = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
    _menuViewController = [[FLSideSlipViewController alloc]initWithRootViewController:nav];
    _menuViewController.leftDistance = 160;
    _menuViewController.scaleSize = 0.85;
    _menuViewController.animationType = AnimationTransitionAndScaleAndIncline;
    LeftViewController *leftController = [[LeftViewController alloc] init];
    UIViewController *rightController = [[UIViewController alloc]init];
    _menuViewController.rightViewController = rightController;
    _menuViewController.leftViewController = leftController;
    self.window.rootViewController = _menuViewController;
    [self.window makeKeyAndVisible];
    
注:如果没有设置rightViewController或leftViewController,则无法向对应的方向滑动

3、如果要替换底下的背景图,请更换backGroundImage图片,或在源码中自行修改。

4、支持自定义滑动距离和缩放大小,目前支持3种动画方式:

	(1)、平移动画 

	(2)、平移加缩放动画
 
	(3)、平移加缩放加倾斜动画
