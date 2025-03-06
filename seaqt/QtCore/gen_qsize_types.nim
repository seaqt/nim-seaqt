type QSize* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qsize.cpp", cflags).}

proc fcQSize_delete(self: pointer) {.importc: "QSize_delete".}
proc `=destroy`(self: var QSize) =
  if self.owned: fcQSize_delete(self.h)

proc `=sink`(dest: var QSize, source: QSize) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSize, source: QSize) {.error.}
proc delete*(self: sink QSize) =
  let h = self.h
  wasMoved(self)
  fcQSize_delete(h)

type QSizeF* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSizeF_delete(self: pointer) {.importc: "QSizeF_delete".}
proc `=destroy`(self: var QSizeF) =
  if self.owned: fcQSizeF_delete(self.h)

proc `=sink`(dest: var QSizeF, source: QSizeF) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSizeF, source: QSizeF) {.error.}
proc delete*(self: sink QSizeF) =
  let h = self.h
  wasMoved(self)
  fcQSizeF_delete(h)

