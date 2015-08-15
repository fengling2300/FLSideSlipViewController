# FLSideSlipViewController


1FLSideSlipViewController
2storyboarddidFinishLaunchingWithOptions:
		self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    ViewController *controller = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
    _menuViewController = [[FLSideSlipViewController alloc]initWithRootViewController:nav];
    _menuViewController.leftDistance = 160;//
    _menuViewController.scaleSize = 0.85;//
    _menuViewController.animationType = AnimationTransitionAndScaleAndIncline;//

    LeftViewController *leftController = [[LeftViewController alloc] init];
    UIViewController *rightController = [[UIViewController alloc]init];
    
    _menuViewController.rightViewController = rightController;
    _menuViewController.leftViewController = leftController;
    
    self.window.rootViewController = _menuViewController;
    [self.window makeKeyAndVisible];
    
:rightViewControllerleftViewController

3backGroundImage
43:1 2 3