type QStandardItem* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QStandardItemModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
