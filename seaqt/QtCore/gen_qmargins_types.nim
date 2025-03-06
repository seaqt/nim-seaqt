type QMargins* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qmargins.cpp", cflags).}

proc fcQMargins_delete(self: pointer) {.importc: "QMargins_delete".}
proc `=destroy`(self: var QMargins) =
  if self.owned: fcQMargins_delete(self.h)

proc `=sink`(dest: var QMargins, source: QMargins) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMargins, source: QMargins) {.error.}
proc delete*(self: sink QMargins) =
  let h = self.h
  wasMoved(self)
  fcQMargins_delete(h)

type QMarginsF* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMarginsF_delete(self: pointer) {.importc: "QMarginsF_delete".}
proc `=destroy`(self: var QMarginsF) =
  if self.owned: fcQMarginsF_delete(self.h)

proc `=sink`(dest: var QMarginsF, source: QMarginsF) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMarginsF, source: QMarginsF) {.error.}
proc delete*(self: sink QMarginsF) =
  let h = self.h
  wasMoved(self)
  fcQMarginsF_delete(h)

