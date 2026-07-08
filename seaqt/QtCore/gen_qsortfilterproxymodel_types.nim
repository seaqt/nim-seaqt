import ./gen_qabstractproxymodel_types
export gen_qabstractproxymodel_types

type QSortFilterProxyModel* = object of gen_qabstractproxymodel_types.QAbstractProxyModel
proc `=copy`(dest: var QSortFilterProxyModel, source: QSortFilterProxyModel) {.error.}
proc `=sink`(dest: var QSortFilterProxyModel, source: QSortFilterProxyModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

