import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QAbstractItemModelReplica* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QAbstractItemModelReplica, source: QAbstractItemModelReplica) {.error.}
proc `=sink`(dest: var QAbstractItemModelReplica, source: QAbstractItemModelReplica) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

