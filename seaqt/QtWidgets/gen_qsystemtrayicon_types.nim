import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSystemTrayIcon* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSystemTrayIcon, source: QSystemTrayIcon) {.error.}
proc `=sink`(dest: var QSystemTrayIcon, source: QSystemTrayIcon) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

