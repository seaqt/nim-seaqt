import ./gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QAbstractProxyModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QAbstractProxyModel, source: QAbstractProxyModel) {.error.}
proc `=sink`(dest: var QAbstractProxyModel, source: QAbstractProxyModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

