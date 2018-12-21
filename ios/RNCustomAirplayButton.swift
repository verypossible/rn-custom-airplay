import MediaPlayer

@objc(RNCustomAirplayButton)
class RNCustomAirplayButton: RCTViewManager {
  func methodQueue() -> DispatchQueue {
    return DispatchQueue.main
  }

  override func view() -> UIView! {
    let volumeView = MPVolumeView()
    volumeView.showsVolumeSlider = false
    if let routeButton = volumeView.subviews.last as? UIButton,
      let routeButtonTemplateImage  = routeButton.currentImage?.withRenderingMode(.alwaysTemplate)
    {
      volumeView.setRouteButtonImage(routeButtonTemplateImage, for: [])
    }

    return volumeView
  }
}
