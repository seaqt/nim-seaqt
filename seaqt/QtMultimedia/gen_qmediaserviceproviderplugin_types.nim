type QMediaServiceProviderHint* {.inheritable, pure.} = object
  h*: pointer
type QMediaServiceProviderFactoryInterface* {.inheritable, pure.} = object
  h*: pointer
type QMediaServiceSupportedFormatsInterface* {.inheritable, pure.} = object
  h*: pointer
type QMediaServiceSupportedDevicesInterface* {.inheritable, pure.} = object
  h*: pointer
type QMediaServiceDefaultDeviceInterface* {.inheritable, pure.} = object
  h*: pointer
type QMediaServiceCameraInfoInterface* {.inheritable, pure.} = object
  h*: pointer
type QMediaServiceFeaturesInterface* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QMediaServiceProviderFactoryInterface
type QMediaServiceProviderPlugin* = object of gen_qobject_types.QObject
