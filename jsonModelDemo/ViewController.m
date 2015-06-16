//
//  ViewController.m
//  jsonModelDemo
//
//  Created by Sunny on 15/6/15.
//  Copyright (c) 2015年 Sunny. All rights reserved.
//

#import "ViewController.h"
#import "GarDensModel.h"
#import "HUD.h"
#import "JSONModel+networking.h"

@interface ViewController ()
{
    GarDensModel *kidModel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.title = @"幼儿园";
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"clientid",@"369586",@"openid",@"I7kNiMerI2vWGjAhCEtP1EttNPlm0Mzb",@"accesstoken", nil];
    [HUD showUIBlockingIndicatorWithText:@"获取数据..."];
    [JSONHTTPClient getJSONFromURLWithString:@"http://api3.ibeiliao.com/teacher/checkin/list" params:dic completion:^(id json, JSONModelError *err) {
        if (err) {
            NSLog(@"拉取数据错误");
        }else
        {
            NSError *err = nil;
            kidModel = [[GarDensModel alloc]initWithDictionary:json error:&err];
            if (err) {
                NSLog(@"解析错误");
            }else
            {
                NSLog(@"解析结果%@",kidModel);
                
            }
            
        }
    }];
    
     [HUD hideUIBlockingIndicator];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
