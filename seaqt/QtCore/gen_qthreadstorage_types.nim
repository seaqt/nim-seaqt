type QThreadStorageData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qthreadstorage.cpp", QtCoreCFlags).}

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

