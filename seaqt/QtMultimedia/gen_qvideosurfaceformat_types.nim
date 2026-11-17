type QVideoSurfaceFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qvideosurfaceformat.cpp", QtMultimediaCFlags).}

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

