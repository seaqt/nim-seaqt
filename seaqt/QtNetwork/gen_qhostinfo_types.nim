type QHostInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qhostinfo.cpp", cflags).}

proc fcQHostInfo_delete(self: pointer) {.importc: "QHostInfo_delete".}
proc `=destroy`(self: var QHostInfo) =
  if self.owned: fcQHostInfo_delete(self.h)

proc `=sink`(dest: var QHostInfo, source: QHostInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHostInfo, source: QHostInfo) {.error.}
proc delete*(self: sink QHostInfo) =
  let h = self.h
  wasMoved(self)
  fcQHostInfo_delete(h)

