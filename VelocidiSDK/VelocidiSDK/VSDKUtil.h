#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;

NS_ASSUME_NONNULL_BEGIN

/**
  Util methods
 */
@interface VSDKUtil : NSObject

/**
  Helper method that generates a User-Agent string similar to the one generated by the AFNetworking 
  framework with the adition of containing an name of the VelodiciSDK framework and build number.
  Example: `AppName/AppVersion VelocidiSDK/2 (iPhone; iOS 11.0.1; Scale/3.00)`.
  @returns User-Agent string
 */
- (NSString *)getVersionedUserAgent;

/**
  Modify an AFHTTPSessionManager to accept all types of responses.
 */
+ (void) setAcceptAllResponses: (AFHTTPSessionManager *) sessionManager;
@end

NS_ASSUME_NONNULL_END
