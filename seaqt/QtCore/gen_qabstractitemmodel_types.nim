type QModelRoleData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qabstractitemmodel.cpp", QtCoreCFlags).}

proc fcQModelRoleData_delete(self: pointer) {.importc: "QModelRoleData_delete".}
proc `=destroy`(self: var QModelRoleData) =
  if self.owned: fcQModelRoleData_delete(self.h)

proc `=sink`(dest: var QModelRoleData, source: QModelRoleData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QModelRoleData, source: QModelRoleData) {.error.}
proc delete*(self: sink QModelRoleData) =
  let h = self.h
  wasMoved(self)
  fcQModelRoleData_delete(h)

type QModelRoleDataSpan* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQModelRoleDataSpan_delete(self: pointer) {.importc: "QModelRoleDataSpan_delete".}
proc `=destroy`(self: var QModelRoleDataSpan) =
  if self.owned: fcQModelRoleDataSpan_delete(self.h)

proc `=sink`(dest: var QModelRoleDataSpan, source: QModelRoleDataSpan) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QModelRoleDataSpan, source: QModelRoleDataSpan) {.error.}
proc delete*(self: sink QModelRoleDataSpan) =
  let h = self.h
  wasMoved(self)
  fcQModelRoleDataSpan_delete(h)

type QModelIndex* {.inheritable.} = object
  h*: pointer
  owned*: bool

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
proc `=copy`(dest: var QAbstractItemModel, source: QAbstractItemModel) {.error.}
proc `=sink`(dest: var QAbstractItemModel, source: QAbstractItemModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractTableModel* = object of QAbstractItemModel
proc `=copy`(dest: var QAbstractTableModel, source: QAbstractTableModel) {.error.}
proc `=sink`(dest: var QAbstractTableModel, source: QAbstractTableModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractListModel* = object of QAbstractItemModel
proc `=copy`(dest: var QAbstractListModel, source: QAbstractListModel) {.error.}
proc `=sink`(dest: var QAbstractListModel, source: QAbstractListModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

