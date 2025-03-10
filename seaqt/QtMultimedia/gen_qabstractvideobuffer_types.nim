type QAbstractVideoBuffer* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qabstractvideobuffer.cpp", cflags).}

proc fcQAbstractVideoBuffer_delete(self: pointer) {.importc: "QAbstractVideoBuffer_delete".}
proc `=destroy`(self: var QAbstractVideoBuffer) =
  if self.owned: fcQAbstractVideoBuffer_delete(self.h)

proc `=sink`(dest: var QAbstractVideoBuffer, source: QAbstractVideoBuffer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractVideoBuffer, source: QAbstractVideoBuffer) {.error.}
proc delete*(self: sink QAbstractVideoBuffer) =
  let h = self.h
  wasMoved(self)
  fcQAbstractVideoBuffer_delete(h)

type QAbstractPlanarVideoBuffer* = object of QAbstractVideoBuffer
proc `=copy`(dest: var QAbstractPlanarVideoBuffer, source: QAbstractPlanarVideoBuffer) {.error.}
proc `=sink`(dest: var QAbstractPlanarVideoBuffer, source: QAbstractPlanarVideoBuffer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

