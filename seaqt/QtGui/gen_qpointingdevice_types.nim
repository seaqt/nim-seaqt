type QPointingDeviceUniqueId* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpointingdevice.cpp", QtGuiCFlags).}

proc fcQPointingDeviceUniqueId_delete(self: pointer) {.importc: "QPointingDeviceUniqueId_delete".}
proc `=destroy`(self: var QPointingDeviceUniqueId) =
  if self.owned: fcQPointingDeviceUniqueId_delete(self.h)

proc `=sink`(dest: var QPointingDeviceUniqueId, source: QPointingDeviceUniqueId) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPointingDeviceUniqueId, source: QPointingDeviceUniqueId) {.error.}
proc delete*(self: sink QPointingDeviceUniqueId) =
  let h = self.h
  wasMoved(self)
  fcQPointingDeviceUniqueId_delete(h)

import ./gen_qinputdevice_types
export gen_qinputdevice_types

type QPointingDevice* = object of gen_qinputdevice_types.QInputDevice
proc `=copy`(dest: var QPointingDevice, source: QPointingDevice) {.error.}
proc `=sink`(dest: var QPointingDevice, source: QPointingDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

