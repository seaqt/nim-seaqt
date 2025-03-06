type QVersionNumber* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qversionnumber.cpp", cflags).}

proc fcQVersionNumber_delete(self: pointer) {.importc: "QVersionNumber_delete".}
proc `=destroy`(self: var QVersionNumber) =
  if self.owned: fcQVersionNumber_delete(self.h)

proc `=sink`(dest: var QVersionNumber, source: QVersionNumber) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVersionNumber, source: QVersionNumber) {.error.}
proc delete*(self: sink QVersionNumber) =
  let h = self.h
  wasMoved(self)
  fcQVersionNumber_delete(h)

