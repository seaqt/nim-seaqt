import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QDirModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QDirModel, source: QDirModel) {.error.}
proc `=sink`(dest: var QDirModel, source: QDirModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

