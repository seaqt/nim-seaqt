type QLayoutItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qlayoutitem.cpp", cflags).}

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
type QWidgetItem* = object of QLayoutItem
type QWidgetItemV2* = object of QWidgetItem
