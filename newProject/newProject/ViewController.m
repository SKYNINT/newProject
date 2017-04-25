//
//  ViewController.m
//  newProject
//
//  Created by sky on 2017/4/10.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "ViewController.h"
#import "StaticTest.h"
#import <TestFrameWork/PublicHeader.h>
@interface ViewController ()

@property (nonatomic, strong) NSArray *arr;
@property (nonatomic, strong) NSArray *arrTemp;
@property (nonatomic, strong) NSMutableArray *arr1;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    img.image = [UIImage imageNamed:@"imageBundle.bundle/Contents/Resources/image1.jpg"];
    [self.view addSubview:img];
    PublicHeader *header = [[PublicHeader alloc] init];
    [header hi];
    
    self.arr1 = [@[@"asd", @"aasdc"] mutableCopy];
    self.arr = self.arr1;
    
    NSLog(@"%p~~~%p", self.arr, self.arr1);
    
    self.arrTemp = [self.arr1 mutableCopy];
    NSLog(@"%p~~!!~~~%p", self.arrTemp, self.arr1);
    self.arr1 = nil;
    NSLog(@"%p~~~~~~~~%p", self.arr, self.arrTemp);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
