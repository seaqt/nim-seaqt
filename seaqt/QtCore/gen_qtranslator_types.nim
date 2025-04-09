import ./gen_qobject_types
export gen_qobject_types

type QTranslator* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QTranslator, source: QTranslator) {.error.}
proc `=sink`(dest: var QTranslator, source: QTranslator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

