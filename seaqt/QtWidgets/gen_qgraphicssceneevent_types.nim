import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QGraphicsSceneEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QGraphicsSceneEvent, source: QGraphicsSceneEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneEvent, source: QGraphicsSceneEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneMouseEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneMouseEvent, source: QGraphicsSceneMouseEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneMouseEvent, source: QGraphicsSceneMouseEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneWheelEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneWheelEvent, source: QGraphicsSceneWheelEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneWheelEvent, source: QGraphicsSceneWheelEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneContextMenuEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneContextMenuEvent, source: QGraphicsSceneContextMenuEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneContextMenuEvent, source: QGraphicsSceneContextMenuEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneHoverEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneHoverEvent, source: QGraphicsSceneHoverEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneHoverEvent, source: QGraphicsSceneHoverEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneHelpEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneHelpEvent, source: QGraphicsSceneHelpEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneHelpEvent, source: QGraphicsSceneHelpEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneDragDropEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneDragDropEvent, source: QGraphicsSceneDragDropEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneDragDropEvent, source: QGraphicsSceneDragDropEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneResizeEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneResizeEvent, source: QGraphicsSceneResizeEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneResizeEvent, source: QGraphicsSceneResizeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSceneMoveEvent* = object of QGraphicsSceneEvent
proc `=copy`(dest: var QGraphicsSceneMoveEvent, source: QGraphicsSceneMoveEvent) {.error.}
proc `=sink`(dest: var QGraphicsSceneMoveEvent, source: QGraphicsSceneMoveEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

