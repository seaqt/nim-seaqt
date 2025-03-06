type QAccessibleBridge* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qaccessiblebridge.cpp", cflags).}

proc fcQAccessibleBridge_delete(self: pointer) {.importc: "QAccessibleBridge_delete".}
proc `=destroy`(self: var QAccessibleBridge) =
  if self.owned: fcQAccessibleBridge_delete(self.h)

proc `=sink`(dest: var QAccessibleBridge, source: QAccessibleBridge) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleBridge, source: QAccessibleBridge) {.error.}
proc delete*(self: sink QAccessibleBridge) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleBridge_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAccessibleBridgePlugin* = object of gen_qobject_types.QObject
