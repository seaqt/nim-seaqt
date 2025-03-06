type QPen* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qpen.cpp", cflags).}

proc fcQPen_delete(self: pointer) {.importc: "QPen_delete".}
proc `=destroy`(self: var QPen) =
  if self.owned: fcQPen_delete(self.h)

proc `=sink`(dest: var QPen, source: QPen) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPen, source: QPen) {.error.}
proc delete*(self: sink QPen) =
  let h = self.h
  wasMoved(self)
  fcQPen_delete(h)

