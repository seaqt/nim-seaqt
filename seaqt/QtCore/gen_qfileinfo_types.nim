type QFileInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qfileinfo.cpp", cflags).}

proc fcQFileInfo_delete(self: pointer) {.importc: "QFileInfo_delete".}
proc `=destroy`(self: var QFileInfo) =
  if self.owned: fcQFileInfo_delete(self.h)

proc `=sink`(dest: var QFileInfo, source: QFileInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFileInfo, source: QFileInfo) {.error.}
proc delete*(self: sink QFileInfo) =
  let h = self.h
  wasMoved(self)
  fcQFileInfo_delete(h)

