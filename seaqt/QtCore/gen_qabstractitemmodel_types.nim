type QModelRoleData* {.inheritable, pure.} = object
  h*: pointer
type QModelRoleDataSpan* {.inheritable, pure.} = object
  h*: pointer
type QModelIndex* {.inheritable, pure.} = object
  h*: pointer
type QPersistentModelIndex* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qobject_types
export gen_qobject_types

type QAbstractItemModel* = object of gen_qobject_types.QObject
type QAbstractTableModel* = object of QAbstractItemModel
type QAbstractListModel* = object of QAbstractItemModel
