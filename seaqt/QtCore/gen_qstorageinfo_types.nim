type QStorageInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qstorageinfo.cpp", cflags).}

proc fcQStorageInfo_delete(self: pointer) {.importc: "QStorageInfo_delete".}
proc `=destroy`(self: var QStorageInfo) =
  if self.owned: fcQStorageInfo_delete(self.h)

proc `=sink`(dest: var QStorageInfo, source: QStorageInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStorageInfo, source: QStorageInfo) {.error.}
proc delete*(self: sink QStorageInfo) =
  let h = self.h
  wasMoved(self)
  fcQStorageInfo_delete(h)

