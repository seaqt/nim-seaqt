type QSGGeometry* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsggeometry.cpp", cflags).}

proc fcQSGGeometry_delete(self: pointer) {.importc: "QSGGeometry_delete".}
proc `=destroy`(self: var QSGGeometry) =
  if self.owned: fcQSGGeometry_delete(self.h)

proc `=sink`(dest: var QSGGeometry, source: QSGGeometry) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGGeometry, source: QSGGeometry) {.error.}
proc delete*(self: sink QSGGeometry) =
  let h = self.h
  wasMoved(self)
  fcQSGGeometry_delete(h)

type QSGGeometryAttribute* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGGeometryAttribute_delete(self: pointer) {.importc: "QSGGeometry__Attribute_delete".}
proc `=destroy`(self: var QSGGeometryAttribute) =
  if self.owned: fcQSGGeometryAttribute_delete(self.h)

proc `=sink`(dest: var QSGGeometryAttribute, source: QSGGeometryAttribute) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGGeometryAttribute, source: QSGGeometryAttribute) {.error.}
proc delete*(self: sink QSGGeometryAttribute) =
  let h = self.h
  wasMoved(self)
  fcQSGGeometryAttribute_delete(h)

type QSGGeometryAttributeSet* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGGeometryAttributeSet_delete(self: pointer) {.importc: "QSGGeometry__AttributeSet_delete".}
proc `=destroy`(self: var QSGGeometryAttributeSet) =
  if self.owned: fcQSGGeometryAttributeSet_delete(self.h)

proc `=sink`(dest: var QSGGeometryAttributeSet, source: QSGGeometryAttributeSet) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGGeometryAttributeSet, source: QSGGeometryAttributeSet) {.error.}
proc delete*(self: sink QSGGeometryAttributeSet) =
  let h = self.h
  wasMoved(self)
  fcQSGGeometryAttributeSet_delete(h)

type QSGGeometryPoint2D* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGGeometryPoint2D_delete(self: pointer) {.importc: "QSGGeometry__Point2D_delete".}
proc `=destroy`(self: var QSGGeometryPoint2D) =
  if self.owned: fcQSGGeometryPoint2D_delete(self.h)

proc `=sink`(dest: var QSGGeometryPoint2D, source: QSGGeometryPoint2D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGGeometryPoint2D, source: QSGGeometryPoint2D) {.error.}
proc delete*(self: sink QSGGeometryPoint2D) =
  let h = self.h
  wasMoved(self)
  fcQSGGeometryPoint2D_delete(h)

type QSGGeometryTexturedPoint2D* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGGeometryTexturedPoint2D_delete(self: pointer) {.importc: "QSGGeometry__TexturedPoint2D_delete".}
proc `=destroy`(self: var QSGGeometryTexturedPoint2D) =
  if self.owned: fcQSGGeometryTexturedPoint2D_delete(self.h)

proc `=sink`(dest: var QSGGeometryTexturedPoint2D, source: QSGGeometryTexturedPoint2D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGGeometryTexturedPoint2D, source: QSGGeometryTexturedPoint2D) {.error.}
proc delete*(self: sink QSGGeometryTexturedPoint2D) =
  let h = self.h
  wasMoved(self)
  fcQSGGeometryTexturedPoint2D_delete(h)

type QSGGeometryColoredPoint2D* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGGeometryColoredPoint2D_delete(self: pointer) {.importc: "QSGGeometry__ColoredPoint2D_delete".}
proc `=destroy`(self: var QSGGeometryColoredPoint2D) =
  if self.owned: fcQSGGeometryColoredPoint2D_delete(self.h)

proc `=sink`(dest: var QSGGeometryColoredPoint2D, source: QSGGeometryColoredPoint2D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGGeometryColoredPoint2D, source: QSGGeometryColoredPoint2D) {.error.}
proc delete*(self: sink QSGGeometryColoredPoint2D) =
  let h = self.h
  wasMoved(self)
  fcQSGGeometryColoredPoint2D_delete(h)

