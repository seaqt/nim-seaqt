import ./gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QRangeModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
proc `=copy`(dest: var QRangeModel, source: QRangeModel) {.error.}
proc `=sink`(dest: var QRangeModel, source: QRangeModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

