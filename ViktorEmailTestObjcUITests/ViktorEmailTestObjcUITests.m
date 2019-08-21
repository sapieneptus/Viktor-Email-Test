
#import <XCTest/XCTest.h>

@interface ViktorEmailTestObjcUITests : XCTestCase

@end

@implementation ViktorEmailTestObjcUITests

- (void)setUp {
    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launch];
}

- (void)testViewEmail {
    sleep(10); //wait for url to load

    XCUIElementQuery *webViewsQuery = [[XCUIApplication alloc] init].webViews;
    [XCTContext runActivityNamed:@"View Email"
                           block:^(id<XCTActivity>  _Nonnull activity) {
                               [webViewsQuery.staticTexts.firstMatch swipeDown];
    }];
}

@end
