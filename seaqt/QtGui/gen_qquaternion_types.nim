type QQuaternion* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qquaternion.cpp", QtGuiCFlags).}

proc fcQQuaternion_delete(self: pointer) {.importc: "QQuaternion_delete".}
proc `=destroy`(self: var QQuaternion) =
  if self.owned: fcQQuaternion_delete(self.h)

proc `=sink`(dest: var QQuaternion, source: QQuaternion) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuaternion, source: QQuaternion) {.error.}
proc delete*(self: sink QQuaternion) =
  let h = self.h
  wasMoved(self)
  fcQQuaternion_delete(h)

type QQuaternionAxis* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQQuaternionAxis_delete(self: pointer) {.importc: "QQuaternion__Axis_delete".}
proc `=destroy`(self: var QQuaternionAxis) =
  if self.owned: fcQQuaternionAxis_delete(self.h)

proc `=sink`(dest: var QQuaternionAxis, source: QQuaternionAxis) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuaternionAxis, source: QQuaternionAxis) {.error.}
proc delete*(self: sink QQuaternionAxis) =
  let h = self.h
  wasMoved(self)
  fcQQuaternionAxis_delete(h)

type QQuaternionAxes* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQQuaternionAxes_delete(self: pointer) {.importc: "QQuaternion__Axes_delete".}
proc `=destroy`(self: var QQuaternionAxes) =
  if self.owned: fcQQuaternionAxes_delete(self.h)

proc `=sink`(dest: var QQuaternionAxes, source: QQuaternionAxes) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuaternionAxes, source: QQuaternionAxes) {.error.}
proc delete*(self: sink QQuaternionAxes) =
  let h = self.h
  wasMoved(self)
  fcQQuaternionAxes_delete(h)

