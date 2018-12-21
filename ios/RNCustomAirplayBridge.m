#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(RNCustomAirplay, RCTEventEmitter)

RCT_EXTERN_METHOD(endScan)
RCT_EXTERN_METHOD(startScan)

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}
@end
