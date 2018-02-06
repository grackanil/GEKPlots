//
//  GEKViewController.m
//  UIPageViewControllerPlot
//
//  Created by gekang on 2018/2/6.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import "GEKViewController.h"

@interface GEKViewController ()<UIPageViewControllerDelegate, UIPageViewControllerDataSource>
@property (nonatomic, strong) UIPageViewController *pageViewController;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation GEKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = [NSMutableArray new];
    self.title = @"UIPageViewController";
    self.view.backgroundColor = [UIColor grayColor];
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:@{}];
    self.pageViewController.view.bounds = self.view.bounds;
    self.pageViewController.delegate = self;
    self.pageViewController.dataSource = self;
    self.pageViewController.doubleSided = NO;
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor yellowColor];
    [self.dataArray addObject:vc];
    [self.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:^(BOOL finished) {
        
    }];
    [self.view addSubview:self.pageViewController.view];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSInteger index = (NSInteger)[self.dataArray indexOfObject:viewController];
    if (index == 0) {
        return nil;
    } else {
        return self.dataArray[index - 1];
    }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSInteger index = [self.dataArray indexOfObject:viewController];
    if (index == 4) {
        return nil;
    } else {
        if (self.dataArray.count >= (index + 2)) {
            return self.dataArray[index + 1];
        } else {
            UIViewController *vc = [UIViewController new];
            vc.view.backgroundColor = [UIColor lightGrayColor];
            [self.dataArray addObject:viewController];
            return vc;
        }
    }
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 5;
}

- (UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController *)pageViewController spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation {
    return UIPageViewControllerSpineLocationMin;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
