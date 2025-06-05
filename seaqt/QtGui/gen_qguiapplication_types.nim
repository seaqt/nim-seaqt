import ../QtCore/gen_qcoreapplication_types
export gen_qcoreapplication_types

type QGuiApplication* = object of gen_qcoreapplication_types.QCoreApplication
proc `=copy`(dest: var QGuiApplication, source: QGuiApplication) {.error.}
proc `=sink`(dest: var QGuiApplication, source: QGuiApplication) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

