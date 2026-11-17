import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsEffect* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGraphicsEffect, source: QGraphicsEffect) {.error.}
proc `=sink`(dest: var QGraphicsEffect, source: QGraphicsEffect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsColorizeEffect* = object of QGraphicsEffect
proc `=copy`(dest: var QGraphicsColorizeEffect, source: QGraphicsColorizeEffect) {.error.}
proc `=sink`(dest: var QGraphicsColorizeEffect, source: QGraphicsColorizeEffect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsBlurEffect* = object of QGraphicsEffect
proc `=copy`(dest: var QGraphicsBlurEffect, source: QGraphicsBlurEffect) {.error.}
proc `=sink`(dest: var QGraphicsBlurEffect, source: QGraphicsBlurEffect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsDropShadowEffect* = object of QGraphicsEffect
proc `=copy`(dest: var QGraphicsDropShadowEffect, source: QGraphicsDropShadowEffect) {.error.}
proc `=sink`(dest: var QGraphicsDropShadowEffect, source: QGraphicsDropShadowEffect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsOpacityEffect* = object of QGraphicsEffect
proc `=copy`(dest: var QGraphicsOpacityEffect, source: QGraphicsOpacityEffect) {.error.}
proc `=sink`(dest: var QGraphicsOpacityEffect, source: QGraphicsOpacityEffect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

