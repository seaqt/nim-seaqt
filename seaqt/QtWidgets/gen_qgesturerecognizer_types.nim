type QGestureRecognizer* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qgesturerecognizer.cpp", cflags).}

proc fcQGestureRecognizer_delete(self: pointer) {.importc: "QGestureRecognizer_delete".}
proc `=destroy`(self: var QGestureRecognizer) =
  if self.owned: fcQGestureRecognizer_delete(self.h)

proc `=sink`(dest: var QGestureRecognizer, source: QGestureRecognizer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGestureRecognizer, source: QGestureRecognizer) {.error.}
proc delete*(self: sink QGestureRecognizer) =
  let h = self.h
  wasMoved(self)
  fcQGestureRecognizer_delete(h)

