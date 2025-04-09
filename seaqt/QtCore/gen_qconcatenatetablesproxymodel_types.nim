import ./gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QConcatenateTablesProxyModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QConcatenateTablesProxyModel, source: QConcatenateTablesProxyModel) {.error.}
proc `=sink`(dest: var QConcatenateTablesProxyModel, source: QConcatenateTablesProxyModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

