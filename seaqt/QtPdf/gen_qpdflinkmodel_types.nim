import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QPdfLinkModel* = object of gen_qabstractitemmodel_types.QAbstractListModel
proc `=copy`(dest: var QPdfLinkModel, source: QPdfLinkModel) {.error.}
proc `=sink`(dest: var QPdfLinkModel, source: QPdfLinkModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

