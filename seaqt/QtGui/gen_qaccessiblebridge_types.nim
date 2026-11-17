type QAccessibleBridge* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qaccessiblebridge.cpp", QtGuiCFlags).}

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
proc `=copy`(dest: var QAccessibleBridgePlugin, source: QAccessibleBridgePlugin) {.error.}
proc `=sink`(dest: var QAccessibleBridgePlugin, source: QAccessibleBridgePlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

