//
//  ViewController.m
//  分享视图
//
//  Created by 赵贺 on 15/12/4.
//  Copyright © 2015年 赵贺. All rights reserved.
//

#import "ViewController.h"
#import "ShareView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)ClickToShare:(id)sender {
    ShareView *view = [[ShareView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 160, self.view.frame.size.width, 160)];
    
    view.title = @"京东";//一般是你的App名字
    view.message = @"这是一个新产品";//需要展示的信息简介
    view.shareUrl = @"www.baidu.com";//分享的内容地址(点击跳转的地址)
    view.pictureName = @"";//分享的图片名称（必须在左侧项目栏里，且为.png格式，因为shareView进行了配置）
    
    
    
    /**举个例子
     
     假如是京东某件商品分享
        *title 可以写京东
        *message 商品的介绍（一行字，如促销信息）
        *shareUrl 则为该商品的地址
        *pictureName 该商品的图片
     
     
     以上数据在开发中后端都会有相应的数据

     */
    
    [view show];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
