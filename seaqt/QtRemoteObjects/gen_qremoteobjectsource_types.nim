type ModelInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtremoteobjects_pkg

{.compile("gen_qremoteobjectsource.cpp", QtRemoteObjectsCFlags).}

proc fcModelInfo_delete(self: pointer) {.importc: "ModelInfo_delete".}
proc `=destroy`(self: var ModelInfo) =
  if self.owned: fcModelInfo_delete(self.h)

proc `=sink`(dest: var ModelInfo, source: ModelInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var ModelInfo, source: ModelInfo) {.error.}
proc delete*(self: sink ModelInfo) =
  let h = self.h
  wasMoved(self)
  fcModelInfo_delete(h)

type SourceApiMap* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcSourceApiMap_delete(self: pointer) {.importc: "SourceApiMap_delete".}
proc `=destroy`(self: var SourceApiMap) =
  if self.owned: fcSourceApiMap_delete(self.h)

proc `=sink`(dest: var SourceApiMap, source: SourceApiMap) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var SourceApiMap, source: SourceApiMap) {.error.}
proc delete*(self: sink SourceApiMap) =
  let h = self.h
  wasMoved(self)
  fcSourceApiMap_delete(h)

