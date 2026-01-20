import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSGTextureProvider* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSGTextureProvider, source: QSGTextureProvider) {.error.}
proc `=sink`(dest: var QSGTextureProvider, source: QSGTextureProvider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

