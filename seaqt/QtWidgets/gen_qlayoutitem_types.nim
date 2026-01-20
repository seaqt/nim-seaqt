type QLayoutItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qlayoutitem.cpp", QtWidgetsCFlags).}

proc fcQLayoutItem_delete(self: pointer) {.importc: "QLayoutItem_delete".}
proc `=destroy`(self: var QLayoutItem) =
  if self.owned: fcQLayoutItem_delete(self.h)

proc `=sink`(dest: var QLayoutItem, source: QLayoutItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLayoutItem, source: QLayoutItem) {.error.}
proc delete*(self: sink QLayoutItem) =
  let h = self.h
  wasMoved(self)
  fcQLayoutItem_delete(h)

type QSpacerItem* = object of QLayoutItem
proc `=copy`(dest: var QSpacerItem, source: QSpacerItem) {.error.}
proc `=sink`(dest: var QSpacerItem, source: QSpacerItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWidgetItem* = object of QLayoutItem
proc `=copy`(dest: var QWidgetItem, source: QWidgetItem) {.error.}
proc `=sink`(dest: var QWidgetItem, source: QWidgetItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWidgetItemV2* = object of QWidgetItem
proc `=copy`(dest: var QWidgetItemV2, source: QWidgetItemV2) {.error.}
proc `=sink`(dest: var QWidgetItemV2, source: QWidgetItemV2) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

