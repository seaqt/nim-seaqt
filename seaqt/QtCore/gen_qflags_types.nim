type QFlag* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qflags.cpp", QtCoreCFlags).}

proc fcQFlag_delete(self: pointer) {.importc: "QFlag_delete".}
proc `=destroy`(self: var QFlag) =
  if self.owned: fcQFlag_delete(self.h)

proc `=sink`(dest: var QFlag, source: QFlag) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFlag, source: QFlag) {.error.}
proc delete*(self: sink QFlag) =
  let h = self.h
  wasMoved(self)
  fcQFlag_delete(h)

type QIncompatibleFlag* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

proc fcQIncompatibleFlag_delete(self: pointer) {.importc: "QIncompatibleFlag_delete".}
proc `=destroy`(self: var QIncompatibleFlag) =
  if self.owned: fcQIncompatibleFlag_delete(self.h)

proc `=sink`(dest: var QIncompatibleFlag, source: QIncompatibleFlag) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QIncompatibleFlag, source: QIncompatibleFlag) {.error.}
proc delete*(self: sink QIncompatibleFlag) =
  let h = self.h
  wasMoved(self)
  fcQIncompatibleFlag_delete(h)

