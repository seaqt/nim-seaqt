type QLockFile* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qlockfile.cpp", cflags).}

proc fcQLockFile_delete(self: pointer) {.importc: "QLockFile_delete".}
proc `=destroy`(self: var QLockFile) =
  if self.owned: fcQLockFile_delete(self.h)

proc `=sink`(dest: var QLockFile, source: QLockFile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLockFile, source: QLockFile) {.error.}
proc delete*(self: sink QLockFile) =
  let h = self.h
  wasMoved(self)
  fcQLockFile_delete(h)

