#import <MediaPlayer/MediaPlayer.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNCustomAirplayButton, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(tintColor, UIColor)
RCT_CUSTOM_VIEW_PROPERTY(image, UIImage, MPVolumeView)
{
    UIImage *image = [RCTConvert UIImage:json];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [view setRouteButtonImage:image forState:UIControlStateNormal];
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}
@end
