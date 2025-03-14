type QRegion* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qregion.cpp", QtGuiCFlags).}

proc fcQRegion_delete(self: pointer) {.importc: "QRegion_delete".}
proc `=destroy`(self: var QRegion) =
  if self.owned: fcQRegion_delete(self.h)

proc `=sink`(dest: var QRegion, source: QRegion) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRegion, source: QRegion) {.error.}
proc delete*(self: sink QRegion) =
  let h = self.h
  wasMoved(self)
  fcQRegion_delete(h)

