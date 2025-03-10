type QStandardItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qstandarditemmodel.cpp", cflags).}

proc fcQStandardItem_delete(self: pointer) {.importc: "QStandardItem_delete".}
proc `=destroy`(self: var QStandardItem) =
  if self.owned: fcQStandardItem_delete(self.h)

proc `=sink`(dest: var QStandardItem, source: QStandardItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStandardItem, source: QStandardItem) {.error.}
proc delete*(self: sink QStandardItem) =
  let h = self.h
  wasMoved(self)
  fcQStandardItem_delete(h)

import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QStandardItemModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QStandardItemModel, source: QStandardItemModel) {.error.}
proc `=sink`(dest: var QStandardItemModel, source: QStandardItemModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

