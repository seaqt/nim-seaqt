import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QFileSystemModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QFileSystemModel, source: QFileSystemModel) {.error.}
proc `=sink`(dest: var QFileSystemModel, source: QFileSystemModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

