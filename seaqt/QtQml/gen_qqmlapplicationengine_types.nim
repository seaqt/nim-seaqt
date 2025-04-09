import ./gen_qqmlengine_types
export gen_qqmlengine_types

type QQmlApplicationEngine* = object of gen_qqmlengine_types.QQmlEngine
proc `=copy`(dest: var QQmlApplicationEngine, source: QQmlApplicationEngine) {.error.}
proc `=sink`(dest: var QQmlApplicationEngine, source: QQmlApplicationEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

