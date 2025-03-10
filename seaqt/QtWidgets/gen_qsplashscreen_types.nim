import ./gen_qwidget_types
export gen_qwidget_types

type QSplashScreen* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QSplashScreen, source: QSplashScreen) {.error.}
proc `=sink`(dest: var QSplashScreen, source: QSplashScreen) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

