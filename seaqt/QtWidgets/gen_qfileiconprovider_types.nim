import ../QtGui/gen_qabstractfileiconprovider_types
export gen_qabstractfileiconprovider_types

type QFileIconProvider* = object of gen_qabstractfileiconprovider_types.QAbstractFileIconProvider
proc `=copy`(dest: var QFileIconProvider, source: QFileIconProvider) {.error.}
proc `=sink`(dest: var QFileIconProvider, source: QFileIconProvider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

