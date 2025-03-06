type QEasingCurve* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qeasingcurve.cpp", cflags).}

proc fcQEasingCurve_delete(self: pointer) {.importc: "QEasingCurve_delete".}
proc `=destroy`(self: var QEasingCurve) =
  if self.owned: fcQEasingCurve_delete(self.h)

proc `=sink`(dest: var QEasingCurve, source: QEasingCurve) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QEasingCurve, source: QEasingCurve) {.error.}
proc delete*(self: sink QEasingCurve) =
  let h = self.h
  wasMoved(self)
  fcQEasingCurve_delete(h)

