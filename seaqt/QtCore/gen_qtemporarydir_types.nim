type QTemporaryDir* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qtemporarydir.cpp", cflags).}

proc fcQTemporaryDir_delete(self: pointer) {.importc: "QTemporaryDir_delete".}
proc `=destroy`(self: var QTemporaryDir) =
  if self.owned: fcQTemporaryDir_delete(self.h)

proc `=sink`(dest: var QTemporaryDir, source: QTemporaryDir) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTemporaryDir, source: QTemporaryDir) {.error.}
proc delete*(self: sink QTemporaryDir) =
  let h = self.h
  wasMoved(self)
  fcQTemporaryDir_delete(h)

