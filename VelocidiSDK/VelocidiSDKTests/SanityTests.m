#import <XCTest/XCTest.h>
@import VelocidiSDK;

@interface SanityTests : XCTestCase
@end

@implementation SanityTests

- (void)testJsonModel {

    VSDKTrackingEvent * trackingEvent = [[VSDKPageView alloc] init];
    trackingEvent.clientId = @"0";
    trackingEvent.siteId = @"1";
    XCTAssert([@"{\"siteId\":\"1\",\"clientId\":\"0\",\"type\":\"pageView\"}" isEqualToString:[trackingEvent toJSONString]]);
}

- (void)testVelocidiInstanceFail {
    XCTAssertThrowsSpecificNamed(
                                 VSDKVelocidi.sharedInstance,
                                 NSException,
                                 NSInternalInconsistencyException
                                 );

}

- (void)testVelocidiInstanceSuccess {
    VSDKConfig * config = [[VSDKConfig alloc] init];
    [VSDKVelocidi start:config];
    XCTAssert(VSDKVelocidi.sharedInstance);
}

- (void)testUserAgentStr {
    NSLog(@"%@",VSDKRequest.versionedUserAgent);
}

@end
