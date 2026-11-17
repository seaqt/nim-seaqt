type QToolTip* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qtooltip.cpp", QtWidgetsCFlags).}

proc fcQToolTip_delete(self: pointer) {.importc: "QToolTip_delete".}
proc `=destroy`(self: var QToolTip) =
  if self.owned: fcQToolTip_delete(self.h)

proc `=sink`(dest: var QToolTip, source: QToolTip) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QToolTip, source: QToolTip) {.error.}
proc delete*(self: sink QToolTip) =
  let h = self.h
  wasMoved(self)
  fcQToolTip_delete(h)

