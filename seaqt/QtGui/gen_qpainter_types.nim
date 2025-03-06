type QPainter* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qpainter.cpp", cflags).}

proc fcQPainter_delete(self: pointer) {.importc: "QPainter_delete".}
proc `=destroy`(self: var QPainter) =
  if self.owned: fcQPainter_delete(self.h)

proc `=sink`(dest: var QPainter, source: QPainter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPainter, source: QPainter) {.error.}
proc delete*(self: sink QPainter) =
  let h = self.h
  wasMoved(self)
  fcQPainter_delete(h)

type QPainterPixmapFragment* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPainterPixmapFragment_delete(self: pointer) {.importc: "QPainter__PixmapFragment_delete".}
proc `=destroy`(self: var QPainterPixmapFragment) =
  if self.owned: fcQPainterPixmapFragment_delete(self.h)

proc `=sink`(dest: var QPainterPixmapFragment, source: QPainterPixmapFragment) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPainterPixmapFragment, source: QPainterPixmapFragment) {.error.}
proc delete*(self: sink QPainterPixmapFragment) =
  let h = self.h
  wasMoved(self)
  fcQPainterPixmapFragment_delete(h)

