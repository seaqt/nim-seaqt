type QNativeIpcKey* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qtipccommon.cpp", QtCoreCFlags).}

proc fcQNativeIpcKey_delete(self: pointer) {.importc: "QNativeIpcKey_delete".}
proc `=destroy`(self: var QNativeIpcKey) =
  if self.owned: fcQNativeIpcKey_delete(self.h)

proc `=sink`(dest: var QNativeIpcKey, source: QNativeIpcKey) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNativeIpcKey, source: QNativeIpcKey) {.error.}
proc delete*(self: sink QNativeIpcKey) =
  let h = self.h
  wasMoved(self)
  fcQNativeIpcKey_delete(h)

