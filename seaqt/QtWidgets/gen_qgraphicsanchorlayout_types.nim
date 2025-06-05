import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsAnchor* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGraphicsAnchor, source: QGraphicsAnchor) {.error.}
proc `=sink`(dest: var QGraphicsAnchor, source: QGraphicsAnchor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ./gen_qgraphicslayout_types
export gen_qgraphicslayout_types

type QGraphicsAnchorLayout* = object of gen_qgraphicslayout_types.QGraphicsLayout
proc `=copy`(dest: var QGraphicsAnchorLayout, source: QGraphicsAnchorLayout) {.error.}
proc `=sink`(dest: var QGraphicsAnchorLayout, source: QGraphicsAnchorLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

