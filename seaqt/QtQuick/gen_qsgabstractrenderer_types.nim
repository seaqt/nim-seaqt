import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSGAbstractRenderer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSGAbstractRenderer, source: QSGAbstractRenderer) {.error.}
proc `=sink`(dest: var QSGAbstractRenderer, source: QSGAbstractRenderer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

