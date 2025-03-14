import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickTransform* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickTransform, source: QQuickTransform) {.error.}
proc `=sink`(dest: var QQuickTransform, source: QQuickTransform) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

# TODO Multiple inheritance from QQmlParserStatus
type QQuickItem* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickItem, source: QQuickItem) {.error.}
proc `=sink`(dest: var QQuickItem, source: QQuickItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QQuickItemItemChangeData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtquick_pkg

{.compile("gen_qquickitem.cpp", QtQuickCFlags).}

proc fcQQuickItemItemChangeData_delete(self: pointer) {.importc: "QQuickItem__ItemChangeData_delete".}
proc `=destroy`(self: var QQuickItemItemChangeData) =
  if self.owned: fcQQuickItemItemChangeData_delete(self.h)

proc `=sink`(dest: var QQuickItemItemChangeData, source: QQuickItemItemChangeData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickItemItemChangeData, source: QQuickItemItemChangeData) {.error.}
proc delete*(self: sink QQuickItemItemChangeData) =
  let h = self.h
  wasMoved(self)
  fcQQuickItemItemChangeData_delete(h)

type QQuickItemUpdatePaintNodeData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQQuickItemUpdatePaintNodeData_delete(self: pointer) {.importc: "QQuickItem__UpdatePaintNodeData_delete".}
proc `=destroy`(self: var QQuickItemUpdatePaintNodeData) =
  if self.owned: fcQQuickItemUpdatePaintNodeData_delete(self.h)

proc `=sink`(dest: var QQuickItemUpdatePaintNodeData, source: QQuickItemUpdatePaintNodeData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickItemUpdatePaintNodeData, source: QQuickItemUpdatePaintNodeData) {.error.}
proc delete*(self: sink QQuickItemUpdatePaintNodeData) =
  let h = self.h
  wasMoved(self)
  fcQQuickItemUpdatePaintNodeData_delete(h)

