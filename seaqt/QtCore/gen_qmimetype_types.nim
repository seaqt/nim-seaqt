type QMimeType* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qmimetype.cpp", cflags).}

proc fcQMimeType_delete(self: pointer) {.importc: "QMimeType_delete".}
proc `=destroy`(self: var QMimeType) =
  if self.owned: fcQMimeType_delete(self.h)

proc `=sink`(dest: var QMimeType, source: QMimeType) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMimeType, source: QMimeType) {.error.}
proc delete*(self: sink QMimeType) =
  let h = self.h
  wasMoved(self)
  fcQMimeType_delete(h)

