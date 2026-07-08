import ./gen_qabstractproxymodel_types
export gen_qabstractproxymodel_types

type QIdentityProxyModel* = object of gen_qabstractproxymodel_types.QAbstractProxyModel
proc `=copy`(dest: var QIdentityProxyModel, source: QIdentityProxyModel) {.error.}
proc `=sink`(dest: var QIdentityProxyModel, source: QIdentityProxyModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

