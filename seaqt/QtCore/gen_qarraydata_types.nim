type QArrayData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qarraydata.cpp", cflags).}

proc fcQArrayData_delete(self: pointer) {.importc: "QArrayData_delete".}
proc `=destroy`(self: var QArrayData) =
  if self.owned: fcQArrayData_delete(self.h)

proc `=sink`(dest: var QArrayData, source: QArrayData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QArrayData, source: QArrayData) {.error.}
proc delete*(self: sink QArrayData) =
  let h = self.h
  wasMoved(self)
  fcQArrayData_delete(h)

