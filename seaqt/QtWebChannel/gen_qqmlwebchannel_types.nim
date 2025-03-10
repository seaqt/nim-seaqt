import ./gen_qwebchannel_types
export gen_qwebchannel_types

type QQmlWebChannel* = object of gen_qwebchannel_types.QWebChannel
proc `=copy`(dest: var QQmlWebChannel, source: QQmlWebChannel) {.error.}
proc `=sink`(dest: var QQmlWebChannel, source: QQmlWebChannel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

