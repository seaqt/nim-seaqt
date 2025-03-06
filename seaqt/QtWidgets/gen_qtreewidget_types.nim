type QTreeWidgetItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qtreewidget.cpp", cflags).}

proc fcQTreeWidgetItem_delete(self: pointer) {.importc: "QTreeWidgetItem_delete".}
proc `=destroy`(self: var QTreeWidgetItem) =
  if self.owned: fcQTreeWidgetItem_delete(self.h)

proc `=sink`(dest: var QTreeWidgetItem, source: QTreeWidgetItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTreeWidgetItem, source: QTreeWidgetItem) {.error.}
proc delete*(self: sink QTreeWidgetItem) =
  let h = self.h
  wasMoved(self)
  fcQTreeWidgetItem_delete(h)

import ./gen_qtreeview_types
export gen_qtreeview_types

type QTreeWidget* = object of gen_qtreeview_types.QTreeView
