type QMatrix4x4* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qmatrix4x4.cpp", cflags).}

proc fcQMatrix4x4_delete(self: pointer) {.importc: "QMatrix4x4_delete".}
proc `=destroy`(self: var QMatrix4x4) =
  if self.owned: fcQMatrix4x4_delete(self.h)

proc `=sink`(dest: var QMatrix4x4, source: QMatrix4x4) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMatrix4x4, source: QMatrix4x4) {.error.}
proc delete*(self: sink QMatrix4x4) =
  let h = self.h
  wasMoved(self)
  fcQMatrix4x4_delete(h)

