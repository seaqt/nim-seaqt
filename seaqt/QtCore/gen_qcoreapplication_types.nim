import ./gen_qobject_types
export gen_qobject_types

type QCoreApplication* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCoreApplication, source: QCoreApplication) {.error.}
proc `=sink`(dest: var QCoreApplication, source: QCoreApplication) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

