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

