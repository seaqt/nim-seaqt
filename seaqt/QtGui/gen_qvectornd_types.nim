type QVector2D* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qvectornd.cpp", QtGuiCFlags).}

proc fcQVector2D_delete(self: pointer) {.importc: "QVector2D_delete".}
proc `=destroy`(self: var QVector2D) =
  if self.owned: fcQVector2D_delete(self.h)

proc `=sink`(dest: var QVector2D, source: QVector2D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVector2D, source: QVector2D) {.error.}
proc delete*(self: sink QVector2D) =
  let h = self.h
  wasMoved(self)
  fcQVector2D_delete(h)

type QVector3D* {.inheritable.} = object
  h*: pointer
  owned*: bool

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

type QVector4D* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQVector4D_delete(self: pointer) {.importc: "QVector4D_delete".}
proc `=destroy`(self: var QVector4D) =
  if self.owned: fcQVector4D_delete(self.h)

proc `=sink`(dest: var QVector4D, source: QVector4D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVector4D, source: QVector4D) {.error.}
proc delete*(self: sink QVector4D) =
  let h = self.h
  wasMoved(self)
  fcQVector4D_delete(h)

