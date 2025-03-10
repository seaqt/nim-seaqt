import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebChannelAbstractTransport* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebChannelAbstractTransport, source: QWebChannelAbstractTransport) {.error.}
proc `=sink`(dest: var QWebChannelAbstractTransport, source: QWebChannelAbstractTransport) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

