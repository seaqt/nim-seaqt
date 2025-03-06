type QThreadStorageData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qthreadstorage.cpp", cflags).}

proc fcQThreadStorageData_delete(self: pointer) {.importc: "QThreadStorageData_delete".}
proc `=destroy`(self: var QThreadStorageData) =
  if self.owned: fcQThreadStorageData_delete(self.h)

proc `=sink`(dest: var QThreadStorageData, source: QThreadStorageData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QThreadStorageData, source: QThreadStorageData) {.error.}
proc delete*(self: sink QThreadStorageData) =
  let h = self.h
  wasMoved(self)
  fcQThreadStorageData_delete(h)

