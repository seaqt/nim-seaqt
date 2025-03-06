type QModelRoleData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qabstractitemmodel.cpp", cflags).}

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
type QAbstractTableModel* = object of QAbstractItemModel
type QAbstractListModel* = object of QAbstractItemModel
