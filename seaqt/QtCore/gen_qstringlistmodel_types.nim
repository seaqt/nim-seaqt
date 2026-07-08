import ./gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QStringListModel* = object of gen_qabstractitemmodel_types.QAbstractListModel
proc `=copy`(dest: var QStringListModel, source: QStringListModel) {.error.}
proc `=sink`(dest: var QStringListModel, source: QStringListModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

