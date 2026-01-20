import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSGTexture* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSGTexture, source: QSGTexture) {.error.}
proc `=sink`(dest: var QSGTexture, source: QSGTexture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGDynamicTexture* = object of QSGTexture
proc `=copy`(dest: var QSGDynamicTexture, source: QSGDynamicTexture) {.error.}
proc `=sink`(dest: var QSGDynamicTexture, source: QSGDynamicTexture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

