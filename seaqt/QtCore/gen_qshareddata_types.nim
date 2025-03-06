type QSharedData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qshareddata.cpp", cflags).}

proc fcQSharedData_delete(self: pointer) {.importc: "QSharedData_delete".}
proc `=destroy`(self: var QSharedData) =
  if self.owned: fcQSharedData_delete(self.h)

proc `=sink`(dest: var QSharedData, source: QSharedData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSharedData, source: QSharedData) {.error.}
proc delete*(self: sink QSharedData) =
  let h = self.h
  wasMoved(self)
  fcQSharedData_delete(h)

