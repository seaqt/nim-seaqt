type QDebug* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qdebug.cpp", QtCoreCFlags).}

proc fcQDebug_delete(self: pointer) {.importc: "QDebug_delete".}
proc `=destroy`(self: var QDebug) =
  if self.owned: fcQDebug_delete(self.h)

proc `=sink`(dest: var QDebug, source: QDebug) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDebug, source: QDebug) {.error.}
proc delete*(self: sink QDebug) =
  let h = self.h
  wasMoved(self)
  fcQDebug_delete(h)

type QDebugStateSaver* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDebugStateSaver_delete(self: pointer) {.importc: "QDebugStateSaver_delete".}
proc `=destroy`(self: var QDebugStateSaver) =
  if self.owned: fcQDebugStateSaver_delete(self.h)

proc `=sink`(dest: var QDebugStateSaver, source: QDebugStateSaver) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDebugStateSaver, source: QDebugStateSaver) {.error.}
proc delete*(self: sink QDebugStateSaver) =
  let h = self.h
  wasMoved(self)
  fcQDebugStateSaver_delete(h)

type QNoDebug* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQNoDebug_delete(self: pointer) {.importc: "QNoDebug_delete".}
proc `=destroy`(self: var QNoDebug) =
  if self.owned: fcQNoDebug_delete(self.h)

proc `=sink`(dest: var QNoDebug, source: QNoDebug) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNoDebug, source: QNoDebug) {.error.}
proc delete*(self: sink QNoDebug) =
  let h = self.h
  wasMoved(self)
  fcQNoDebug_delete(h)

