#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNCustomAirplayButton, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(tintColor, UIColor)

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}
@end
