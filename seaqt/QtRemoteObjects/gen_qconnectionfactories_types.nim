import ../QtCore/gen_qobject_types
export gen_qobject_types

type QtROIoDeviceBase* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QtROIoDeviceBase, source: QtROIoDeviceBase) {.error.}
proc `=sink`(dest: var QtROIoDeviceBase, source: QtROIoDeviceBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QtROServerIoDevice* = object of QtROIoDeviceBase
proc `=copy`(dest: var QtROServerIoDevice, source: QtROServerIoDevice) {.error.}
proc `=sink`(dest: var QtROServerIoDevice, source: QtROServerIoDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QConnectionAbstractServer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QConnectionAbstractServer, source: QConnectionAbstractServer) {.error.}
proc `=sink`(dest: var QConnectionAbstractServer, source: QConnectionAbstractServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QtROClientIoDevice* = object of QtROIoDeviceBase
proc `=copy`(dest: var QtROClientIoDevice, source: QtROClientIoDevice) {.error.}
proc `=sink`(dest: var QtROClientIoDevice, source: QtROClientIoDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QtROServerFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtremoteobjects_pkg

{.compile("gen_qconnectionfactories.cpp", QtRemoteObjectsCFlags).}

proc fcQtROServerFactory_delete(self: pointer) {.importc: "QtROServerFactory_delete".}
proc `=destroy`(self: var QtROServerFactory) =
  if self.owned: fcQtROServerFactory_delete(self.h)

proc `=sink`(dest: var QtROServerFactory, source: QtROServerFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QtROServerFactory, source: QtROServerFactory) {.error.}
proc delete*(self: sink QtROServerFactory) =
  let h = self.h
  wasMoved(self)
  fcQtROServerFactory_delete(h)

type QtROClientFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQtROClientFactory_delete(self: pointer) {.importc: "QtROClientFactory_delete".}
proc `=destroy`(self: var QtROClientFactory) =
  if self.owned: fcQtROClientFactory_delete(self.h)

proc `=sink`(dest: var QtROClientFactory, source: QtROClientFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QtROClientFactory, source: QtROClientFactory) {.error.}
proc delete*(self: sink QtROClientFactory) =
  let h = self.h
  wasMoved(self)
  fcQtROClientFactory_delete(h)

