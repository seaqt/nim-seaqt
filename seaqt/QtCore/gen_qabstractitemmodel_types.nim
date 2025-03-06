type QModelIndex* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qabstractitemmodel.cpp", cflags).}

proc fcQModelIndex_delete(self: pointer) {.importc: "QModelIndex_delete".}
proc `=destroy`(self: var QModelIndex) =
  if self.owned: fcQModelIndex_delete(self.h)

proc `=sink`(dest: var QModelIndex, source: QModelIndex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QModelIndex, source: QModelIndex) {.error.}
proc delete*(self: sink QModelIndex) =
  let h = self.h
  wasMoved(self)
  fcQModelIndex_delete(h)

type QPersistentModelIndex* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPersistentModelIndex_delete(self: pointer) {.importc: "QPersistentModelIndex_delete".}
proc `=destroy`(self: var QPersistentModelIndex) =
  if self.owned: fcQPersistentModelIndex_delete(self.h)

proc `=sink`(dest: var QPersistentModelIndex, source: QPersistentModelIndex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPersistentModelIndex, source: QPersistentModelIndex) {.error.}
proc delete*(self: sink QPersistentModelIndex) =
  let h = self.h
  wasMoved(self)
  fcQPersistentModelIndex_delete(h)

import ./gen_qobject_types
export gen_qobject_types

type QAbstractItemModel* = object of gen_qobject_types.QObject
type QAbstractTableModel* = object of QAbstractItemModel
type QAbstractListModel* = object of QAbstractItemModel
