type QPageSize* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qpagesize.cpp", cflags).}

proc fcQPageSize_delete(self: pointer) {.importc: "QPageSize_delete".}
proc `=destroy`(self: var QPageSize) =
  if self.owned: fcQPageSize_delete(self.h)

proc `=sink`(dest: var QPageSize, source: QPageSize) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPageSize, source: QPageSize) {.error.}
proc delete*(self: sink QPageSize) =
  let h = self.h
  wasMoved(self)
  fcQPageSize_delete(h)

