import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlImageProviderBase* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlImageProviderBase, source: QQmlImageProviderBase) {.error.}
proc `=sink`(dest: var QQmlImageProviderBase, source: QQmlImageProviderBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ./gen_qjsengine_types
export gen_qjsengine_types

type QQmlEngine* = object of gen_qjsengine_types.QJSEngine
proc `=copy`(dest: var QQmlEngine, source: QQmlEngine) {.error.}
proc `=sink`(dest: var QQmlEngine, source: QQmlEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

