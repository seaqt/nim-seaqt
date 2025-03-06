type QVideoSurfaceFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qvideosurfaceformat.cpp", cflags).}

proc fcQVideoSurfaceFormat_delete(self: pointer) {.importc: "QVideoSurfaceFormat_delete".}
proc `=destroy`(self: var QVideoSurfaceFormat) =
  if self.owned: fcQVideoSurfaceFormat_delete(self.h)

proc `=sink`(dest: var QVideoSurfaceFormat, source: QVideoSurfaceFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVideoSurfaceFormat, source: QVideoSurfaceFormat) {.error.}
proc delete*(self: sink QVideoSurfaceFormat) =
  let h = self.h
  wasMoved(self)
  fcQVideoSurfaceFormat_delete(h)

