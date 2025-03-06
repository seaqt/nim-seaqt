import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsAnchor* = object of gen_qobject_types.QObject
import ./gen_qgraphicslayout_types
export gen_qgraphicslayout_types

type QGraphicsAnchorLayout* = object of gen_qgraphicslayout_types.QGraphicsLayout
