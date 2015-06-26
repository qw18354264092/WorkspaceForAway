//
//  MyApplication_V1_0Tests.m
//  MyApplication_V1.0Tests
//
//  Created by LiPeng on 15/6/24.
//  Copyright (c) 2015年 李晓鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface MyApplication_V1_0Tests : XCTestCase

@end

@implementation MyApplication_V1_0Tests

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
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
