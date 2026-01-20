import ./gen_qabstractproxymodel_types
export gen_qabstractproxymodel_types

type QTransposeProxyModel* = object of gen_qabstractproxymodel_types.QAbstractProxyModel
proc `=copy`(dest: var QTransposeProxyModel, source: QTransposeProxyModel) {.error.}
proc `=sink`(dest: var QTransposeProxyModel, source: QTransposeProxyModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

