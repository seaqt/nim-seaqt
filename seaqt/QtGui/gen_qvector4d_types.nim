type QVector4D* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qvector4d.cpp", cflags).}

proc fcQVector4D_delete(self: pointer) {.importc: "QVector4D_delete".}
proc `=destroy`(self: var QVector4D) =
  if self.owned: fcQVector4D_delete(self.h)

proc `=sink`(dest: var QVector4D, source: QVector4D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVector4D, source: QVector4D) {.error.}
proc delete*(self: sink QVector4D) =
  let h = self.h
  wasMoved(self)
  fcQVector4D_delete(h)

