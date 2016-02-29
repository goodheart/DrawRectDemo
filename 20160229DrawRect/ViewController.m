//
//  ViewController.m
//  20160229DrawRect
//
//  Created by majian on 16/2/29.
//  Copyright © 2016年 majian. All rights reserved.
//

#import "ViewController.h"
#import "PMRedrawView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PMRedrawView * redrawView = [[PMRedrawView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    redrawView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:redrawView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
