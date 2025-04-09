type QTileRules* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qdrawutil.cpp", QtWidgetsCFlags).}

proc fcQTileRules_delete(self: pointer) {.importc: "QTileRules_delete".}
proc `=destroy`(self: var QTileRules) =
  if self.owned: fcQTileRules_delete(self.h)

proc `=sink`(dest: var QTileRules, source: QTileRules) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTileRules, source: QTileRules) {.error.}
proc delete*(self: sink QTileRules) =
  let h = self.h
  wasMoved(self)
  fcQTileRules_delete(h)

