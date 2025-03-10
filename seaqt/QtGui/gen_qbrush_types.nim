type QBrush* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qbrush.cpp", cflags).}

proc fcQBrush_delete(self: pointer) {.importc: "QBrush_delete".}
proc `=destroy`(self: var QBrush) =
  if self.owned: fcQBrush_delete(self.h)

proc `=sink`(dest: var QBrush, source: QBrush) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBrush, source: QBrush) {.error.}
proc delete*(self: sink QBrush) =
  let h = self.h
  wasMoved(self)
  fcQBrush_delete(h)

type QBrushData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQBrushData_delete(self: pointer) {.importc: "QBrushData_delete".}
proc `=destroy`(self: var QBrushData) =
  if self.owned: fcQBrushData_delete(self.h)

proc `=sink`(dest: var QBrushData, source: QBrushData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBrushData, source: QBrushData) {.error.}
proc delete*(self: sink QBrushData) =
  let h = self.h
  wasMoved(self)
  fcQBrushData_delete(h)

type QGradient* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQGradient_delete(self: pointer) {.importc: "QGradient_delete".}
proc `=destroy`(self: var QGradient) =
  if self.owned: fcQGradient_delete(self.h)

proc `=sink`(dest: var QGradient, source: QGradient) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGradient, source: QGradient) {.error.}
proc delete*(self: sink QGradient) =
  let h = self.h
  wasMoved(self)
  fcQGradient_delete(h)

type QLinearGradient* = object of QGradient
proc `=copy`(dest: var QLinearGradient, source: QLinearGradient) {.error.}
proc `=sink`(dest: var QLinearGradient, source: QLinearGradient) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRadialGradient* = object of QGradient
proc `=copy`(dest: var QRadialGradient, source: QRadialGradient) {.error.}
proc `=sink`(dest: var QRadialGradient, source: QRadialGradient) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QConicalGradient* = object of QGradient
proc `=copy`(dest: var QConicalGradient, source: QConicalGradient) {.error.}
proc `=sink`(dest: var QConicalGradient, source: QConicalGradient) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGradientQGradientData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQGradientQGradientData_delete(self: pointer) {.importc: "QGradient__QGradientData_delete".}
proc `=destroy`(self: var QGradientQGradientData) =
  if self.owned: fcQGradientQGradientData_delete(self.h)

proc `=sink`(dest: var QGradientQGradientData, source: QGradientQGradientData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGradientQGradientData, source: QGradientQGradientData) {.error.}
proc delete*(self: sink QGradientQGradientData) =
  let h = self.h
  wasMoved(self)
  fcQGradientQGradientData_delete(h)

