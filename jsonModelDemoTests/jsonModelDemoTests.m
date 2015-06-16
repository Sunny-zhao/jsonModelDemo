//
//  jsonModelDemoTests.m
//  jsonModelDemoTests
//
//  Created by Sunny on 15/6/15.
//  Copyright (c) 2015年 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "JSONHTTPClient.h"
#import "GarDensModel.h"

@interface jsonModelDemoTests : XCTestCase

@end

@implementation jsonModelDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"clientid",@"369586",@"openid",@"INw9wwmw32JIiIhTOYr3dw6BhygaTxBG",@"accesstoken", nil];
    [JSONHTTPClient getJSONFromURLWithString:@"http://api3.ibeiliao.com/teacher/checkin/list" params:dic completion:^(id json, JSONModelError *err) {
        if (err) {
            NSLog(@"拉取数据错误");
        }else
        {
            NSError *err = nil;
         GarDensModel *  kidModel = [[GarDensModel alloc]initWithDictionary:json error:&err];
            if (err) {
                NSLog(@"解析错误");
            }else
            {
                NSLog(@"解析结果%@",kidModel);
            }
            
        }
    }];

    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
