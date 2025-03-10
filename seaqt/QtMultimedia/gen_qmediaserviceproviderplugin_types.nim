type QMediaServiceProviderHint* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmediaserviceproviderplugin.cpp", cflags).}

proc fcQMediaServiceProviderHint_delete(self: pointer) {.importc: "QMediaServiceProviderHint_delete".}
proc `=destroy`(self: var QMediaServiceProviderHint) =
  if self.owned: fcQMediaServiceProviderHint_delete(self.h)

proc `=sink`(dest: var QMediaServiceProviderHint, source: QMediaServiceProviderHint) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceProviderHint, source: QMediaServiceProviderHint) {.error.}
proc delete*(self: sink QMediaServiceProviderHint) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceProviderHint_delete(h)

type QMediaServiceProviderFactoryInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaServiceProviderFactoryInterface_delete(self: pointer) {.importc: "QMediaServiceProviderFactoryInterface_delete".}
proc `=destroy`(self: var QMediaServiceProviderFactoryInterface) =
  if self.owned: fcQMediaServiceProviderFactoryInterface_delete(self.h)

proc `=sink`(dest: var QMediaServiceProviderFactoryInterface, source: QMediaServiceProviderFactoryInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceProviderFactoryInterface, source: QMediaServiceProviderFactoryInterface) {.error.}
proc delete*(self: sink QMediaServiceProviderFactoryInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceProviderFactoryInterface_delete(h)

type QMediaServiceSupportedFormatsInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaServiceSupportedFormatsInterface_delete(self: pointer) {.importc: "QMediaServiceSupportedFormatsInterface_delete".}
proc `=destroy`(self: var QMediaServiceSupportedFormatsInterface) =
  if self.owned: fcQMediaServiceSupportedFormatsInterface_delete(self.h)

proc `=sink`(dest: var QMediaServiceSupportedFormatsInterface, source: QMediaServiceSupportedFormatsInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceSupportedFormatsInterface, source: QMediaServiceSupportedFormatsInterface) {.error.}
proc delete*(self: sink QMediaServiceSupportedFormatsInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceSupportedFormatsInterface_delete(h)

type QMediaServiceSupportedDevicesInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaServiceSupportedDevicesInterface_delete(self: pointer) {.importc: "QMediaServiceSupportedDevicesInterface_delete".}
proc `=destroy`(self: var QMediaServiceSupportedDevicesInterface) =
  if self.owned: fcQMediaServiceSupportedDevicesInterface_delete(self.h)

proc `=sink`(dest: var QMediaServiceSupportedDevicesInterface, source: QMediaServiceSupportedDevicesInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceSupportedDevicesInterface, source: QMediaServiceSupportedDevicesInterface) {.error.}
proc delete*(self: sink QMediaServiceSupportedDevicesInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceSupportedDevicesInterface_delete(h)

type QMediaServiceDefaultDeviceInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaServiceDefaultDeviceInterface_delete(self: pointer) {.importc: "QMediaServiceDefaultDeviceInterface_delete".}
proc `=destroy`(self: var QMediaServiceDefaultDeviceInterface) =
  if self.owned: fcQMediaServiceDefaultDeviceInterface_delete(self.h)

proc `=sink`(dest: var QMediaServiceDefaultDeviceInterface, source: QMediaServiceDefaultDeviceInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceDefaultDeviceInterface, source: QMediaServiceDefaultDeviceInterface) {.error.}
proc delete*(self: sink QMediaServiceDefaultDeviceInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceDefaultDeviceInterface_delete(h)

type QMediaServiceCameraInfoInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaServiceCameraInfoInterface_delete(self: pointer) {.importc: "QMediaServiceCameraInfoInterface_delete".}
proc `=destroy`(self: var QMediaServiceCameraInfoInterface) =
  if self.owned: fcQMediaServiceCameraInfoInterface_delete(self.h)

proc `=sink`(dest: var QMediaServiceCameraInfoInterface, source: QMediaServiceCameraInfoInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceCameraInfoInterface, source: QMediaServiceCameraInfoInterface) {.error.}
proc delete*(self: sink QMediaServiceCameraInfoInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceCameraInfoInterface_delete(h)

type QMediaServiceFeaturesInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaServiceFeaturesInterface_delete(self: pointer) {.importc: "QMediaServiceFeaturesInterface_delete".}
proc `=destroy`(self: var QMediaServiceFeaturesInterface) =
  if self.owned: fcQMediaServiceFeaturesInterface_delete(self.h)

proc `=sink`(dest: var QMediaServiceFeaturesInterface, source: QMediaServiceFeaturesInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaServiceFeaturesInterface, source: QMediaServiceFeaturesInterface) {.error.}
proc delete*(self: sink QMediaServiceFeaturesInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaServiceFeaturesInterface_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QMediaServiceProviderFactoryInterface
type QMediaServiceProviderPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaServiceProviderPlugin, source: QMediaServiceProviderPlugin) {.error.}
proc `=sink`(dest: var QMediaServiceProviderPlugin, source: QMediaServiceProviderPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

