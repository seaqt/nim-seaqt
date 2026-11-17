import ../QtGui/gen_qwindow_types
export gen_qwindow_types

type QQuickWindow* = object of gen_qwindow_types.QWindow
proc `=copy`(dest: var QQuickWindow, source: QQuickWindow) {.error.}
proc `=sink`(dest: var QQuickWindow, source: QQuickWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QQuickWindowGraphicsStateInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtquick_pkg

{.compile("gen_qquickwindow.cpp", QtQuickCFlags).}

proc fcQQuickWindowGraphicsStateInfo_delete(self: pointer) {.importc: "QQuickWindow__GraphicsStateInfo_delete".}
proc `=destroy`(self: var QQuickWindowGraphicsStateInfo) =
  if self.owned: fcQQuickWindowGraphicsStateInfo_delete(self.h)

proc `=sink`(dest: var QQuickWindowGraphicsStateInfo, source: QQuickWindowGraphicsStateInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickWindowGraphicsStateInfo, source: QQuickWindowGraphicsStateInfo) {.error.}
proc delete*(self: sink QQuickWindowGraphicsStateInfo) =
  let h = self.h
  wasMoved(self)
  fcQQuickWindowGraphicsStateInfo_delete(h)

