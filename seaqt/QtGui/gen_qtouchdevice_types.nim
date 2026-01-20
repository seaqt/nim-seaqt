type QTouchDevice* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qtouchdevice.cpp", QtGuiCFlags).}

proc fcQTouchDevice_delete(self: pointer) {.importc: "QTouchDevice_delete".}
proc `=destroy`(self: var QTouchDevice) =
  if self.owned: fcQTouchDevice_delete(self.h)

proc `=sink`(dest: var QTouchDevice, source: QTouchDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTouchDevice, source: QTouchDevice) {.error.}
proc delete*(self: sink QTouchDevice) =
  let h = self.h
  wasMoved(self)
  fcQTouchDevice_delete(h)

