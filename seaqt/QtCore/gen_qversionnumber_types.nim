type QVersionNumber* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
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

type QTypeRevision* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTypeRevision_delete(self: pointer) {.importc: "QTypeRevision_delete".}
proc `=destroy`(self: var QTypeRevision) =
  if self.owned: fcQTypeRevision_delete(self.h)

proc `=sink`(dest: var QTypeRevision, source: QTypeRevision) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTypeRevision, source: QTypeRevision) {.error.}
proc delete*(self: sink QTypeRevision) =
  let h = self.h
  wasMoved(self)
  fcQTypeRevision_delete(h)

