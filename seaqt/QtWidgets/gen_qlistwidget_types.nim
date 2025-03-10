type QListWidgetItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qlistwidget.cpp", cflags).}

proc fcQListWidgetItem_delete(self: pointer) {.importc: "QListWidgetItem_delete".}
proc `=destroy`(self: var QListWidgetItem) =
  if self.owned: fcQListWidgetItem_delete(self.h)

proc `=sink`(dest: var QListWidgetItem, source: QListWidgetItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QListWidgetItem, source: QListWidgetItem) {.error.}
proc delete*(self: sink QListWidgetItem) =
  let h = self.h
  wasMoved(self)
  fcQListWidgetItem_delete(h)

import ./gen_qlistview_types
export gen_qlistview_types

type QListWidget* = object of gen_qlistview_types.QListView
proc `=copy`(dest: var QListWidget, source: QListWidget) {.error.}
proc `=sink`(dest: var QListWidget, source: QListWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

