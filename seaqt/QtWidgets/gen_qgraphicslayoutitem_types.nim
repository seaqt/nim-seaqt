type QGraphicsLayoutItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qgraphicslayoutitem.cpp", QtWidgetsCFlags).}

proc fcQGraphicsLayoutItem_delete(self: pointer) {.importc: "QGraphicsLayoutItem_delete".}
proc `=destroy`(self: var QGraphicsLayoutItem) =
  if self.owned: fcQGraphicsLayoutItem_delete(self.h)

proc `=sink`(dest: var QGraphicsLayoutItem, source: QGraphicsLayoutItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGraphicsLayoutItem, source: QGraphicsLayoutItem) {.error.}
proc delete*(self: sink QGraphicsLayoutItem) =
  let h = self.h
  wasMoved(self)
  fcQGraphicsLayoutItem_delete(h)

