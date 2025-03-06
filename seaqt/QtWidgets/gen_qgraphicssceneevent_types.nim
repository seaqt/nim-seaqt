import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QGraphicsSceneEvent* = object of gen_qcoreevent_types.QEvent
type QGraphicsSceneMouseEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneWheelEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneContextMenuEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneHoverEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneHelpEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneDragDropEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneResizeEvent* = object of QGraphicsSceneEvent
type QGraphicsSceneMoveEvent* = object of QGraphicsSceneEvent
