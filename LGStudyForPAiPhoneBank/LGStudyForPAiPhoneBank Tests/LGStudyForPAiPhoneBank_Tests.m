//
//  LGStudyForPAiPhoneBank_Tests.m
//  LGStudyForPAiPhoneBank Tests
//
//  Created by JAMIE-LING on 14-6-30.
//  Copyright (c) 2014年 LG. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PAInterfaceDemo.h"
@interface LGStudyForPAiPhoneBank_Tests : XCTestCase


@end

@implementation LGStudyForPAiPhoneBank_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
//
//- (void)testExample
//{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//}

//单元测试示例--测试用例1 ：测试初始化对象
- (void) testInit
{
    PAInterfaceDemo *testDemo = [[PAInterfaceDemo alloc] init];
    XCTAssertEqual(testDemo.myId, 1000, @"期望值是1000，实际值是：%d", testDemo.myId);
}

//单元测试示例--测试用例2 ：测试加法的正确性
- (void) testAdd
{
    //...
    NSString *resultSum = [PAInterfaceDemo add:2 and:8];
    XCTAssertEqualObjects(resultSum, @"10", @"期望值是字符串10，实际值是：%@", resultSum);
}

//单元测试示例--测试用例3 :自定义测试
- (void) testString
{
    //...
    NSString *string1 = @"a string";
    XCTAssertNotNil(string1,@"string1 must be not nil");
    // Assert equal objects, add custom error description
    NSString *string2 = @"a string xx";
    XCTAssertEqual(string1, string2, @"A custom error message. string1 should be equal to: %@.", string2);
}

@end
