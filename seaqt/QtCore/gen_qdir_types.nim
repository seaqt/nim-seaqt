type QDir* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qdir.cpp", cflags).}

proc fcQDir_delete(self: pointer) {.importc: "QDir_delete".}
proc `=destroy`(self: var QDir) =
  if self.owned: fcQDir_delete(self.h)

proc `=sink`(dest: var QDir, source: QDir) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDir, source: QDir) {.error.}
proc delete*(self: sink QDir) =
  let h = self.h
  wasMoved(self)
  fcQDir_delete(h)

