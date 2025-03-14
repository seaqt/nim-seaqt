type QVector3D* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qvector3d.cpp", QtGuiCFlags).}

proc fcQVector3D_delete(self: pointer) {.importc: "QVector3D_delete".}
proc `=destroy`(self: var QVector3D) =
  if self.owned: fcQVector3D_delete(self.h)

proc `=sink`(dest: var QVector3D, source: QVector3D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVector3D, source: QVector3D) {.error.}
proc delete*(self: sink QVector3D) =
  let h = self.h
  wasMoved(self)
  fcQVector3D_delete(h)

