type QPixelFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qpixelformat.cpp", cflags).}

proc fcQPixelFormat_delete(self: pointer) {.importc: "QPixelFormat_delete".}
proc `=destroy`(self: var QPixelFormat) =
  if self.owned: fcQPixelFormat_delete(self.h)

proc `=sink`(dest: var QPixelFormat, source: QPixelFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPixelFormat, source: QPixelFormat) {.error.}
proc delete*(self: sink QPixelFormat) =
  let h = self.h
  wasMoved(self)
  fcQPixelFormat_delete(h)

