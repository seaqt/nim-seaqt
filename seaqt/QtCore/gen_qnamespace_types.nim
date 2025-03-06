type QInternal* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qnamespace.cpp", cflags).}

proc fcQInternal_delete(self: pointer) {.importc: "QInternal_delete".}
proc `=destroy`(self: var QInternal) =
  if self.owned: fcQInternal_delete(self.h)

proc `=sink`(dest: var QInternal, source: QInternal) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QInternal, source: QInternal) {.error.}
proc delete*(self: sink QInternal) =
  let h = self.h
  wasMoved(self)
  fcQInternal_delete(h)

