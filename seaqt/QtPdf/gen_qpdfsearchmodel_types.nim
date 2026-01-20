import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QPdfSearchModel* = object of gen_qabstractitemmodel_types.QAbstractListModel
proc `=copy`(dest: var QPdfSearchModel, source: QPdfSearchModel) {.error.}
proc `=sink`(dest: var QPdfSearchModel, source: QPdfSearchModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

