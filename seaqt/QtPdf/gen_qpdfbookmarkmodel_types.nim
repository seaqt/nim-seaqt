import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QPdfBookmarkModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QPdfBookmarkModel, source: QPdfBookmarkModel) {.error.}
proc `=sink`(dest: var QPdfBookmarkModel, source: QPdfBookmarkModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

