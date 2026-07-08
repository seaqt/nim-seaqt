import ../QtGui/gen_qguiapplication_types
export gen_qguiapplication_types

type QApplication* = object of gen_qguiapplication_types.QGuiApplication
proc `=copy`(dest: var QApplication, source: QApplication) {.error.}
proc `=sink`(dest: var QApplication, source: QApplication) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

