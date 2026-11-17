type QPainterStateGuard* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpainterstateguard.cpp", QtGuiCFlags).}

proc fcQPainterStateGuard_delete(self: pointer) {.importc: "QPainterStateGuard_delete".}
proc `=destroy`(self: var QPainterStateGuard) =
  if self.owned: fcQPainterStateGuard_delete(self.h)

proc `=sink`(dest: var QPainterStateGuard, source: QPainterStateGuard) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPainterStateGuard, source: QPainterStateGuard) {.error.}
proc delete*(self: sink QPainterStateGuard) =
  let h = self.h
  wasMoved(self)
  fcQPainterStateGuard_delete(h)

