type QSharedData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qshareddata.cpp", QtCoreCFlags).}

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

type QAdoptSharedDataTag* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAdoptSharedDataTag_delete(self: pointer) {.importc: "QAdoptSharedDataTag_delete".}
proc `=destroy`(self: var QAdoptSharedDataTag) =
  if self.owned: fcQAdoptSharedDataTag_delete(self.h)

proc `=sink`(dest: var QAdoptSharedDataTag, source: QAdoptSharedDataTag) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAdoptSharedDataTag, source: QAdoptSharedDataTag) {.error.}
proc delete*(self: sink QAdoptSharedDataTag) =
  let h = self.h
  wasMoved(self)
  fcQAdoptSharedDataTag_delete(h)

