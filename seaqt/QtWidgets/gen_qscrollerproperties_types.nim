type QScrollerProperties* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qscrollerproperties.cpp", QtWidgetsCFlags).}

proc fcQScrollerProperties_delete(self: pointer) {.importc: "QScrollerProperties_delete".}
proc `=destroy`(self: var QScrollerProperties) =
  if self.owned: fcQScrollerProperties_delete(self.h)

proc `=sink`(dest: var QScrollerProperties, source: QScrollerProperties) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScrollerProperties, source: QScrollerProperties) {.error.}
proc delete*(self: sink QScrollerProperties) =
  let h = self.h
  wasMoved(self)
  fcQScrollerProperties_delete(h)

