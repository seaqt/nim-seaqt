type QBindingStatus* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qbindingstorage.cpp", cflags).}

proc fcQBindingStatus_delete(self: pointer) {.importc: "QBindingStatus_delete".}
proc `=destroy`(self: var QBindingStatus) =
  if self.owned: fcQBindingStatus_delete(self.h)

proc `=sink`(dest: var QBindingStatus, source: QBindingStatus) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBindingStatus, source: QBindingStatus) {.error.}
proc delete*(self: sink QBindingStatus) =
  let h = self.h
  wasMoved(self)
  fcQBindingStatus_delete(h)

type QBindingStorage* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQBindingStorage_delete(self: pointer) {.importc: "QBindingStorage_delete".}
proc `=destroy`(self: var QBindingStorage) =
  if self.owned: fcQBindingStorage_delete(self.h)

proc `=sink`(dest: var QBindingStorage, source: QBindingStorage) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBindingStorage, source: QBindingStorage) {.error.}
proc delete*(self: sink QBindingStorage) =
  let h = self.h
  wasMoved(self)
  fcQBindingStorage_delete(h)

