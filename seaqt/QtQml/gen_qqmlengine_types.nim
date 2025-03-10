type QQmlImageProviderBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Qml") & " -fPIC"
{.compile("gen_qqmlengine.cpp", cflags).}

proc fcQQmlImageProviderBase_delete(self: pointer) {.importc: "QQmlImageProviderBase_delete".}
proc `=destroy`(self: var QQmlImageProviderBase) =
  if self.owned: fcQQmlImageProviderBase_delete(self.h)

proc `=sink`(dest: var QQmlImageProviderBase, source: QQmlImageProviderBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlImageProviderBase, source: QQmlImageProviderBase) {.error.}
proc delete*(self: sink QQmlImageProviderBase) =
  let h = self.h
  wasMoved(self)
  fcQQmlImageProviderBase_delete(h)

import ./gen_qjsengine_types
export gen_qjsengine_types

type QQmlEngine* = object of gen_qjsengine_types.QJSEngine
proc `=copy`(dest: var QQmlEngine, source: QQmlEngine) {.error.}
proc `=sink`(dest: var QQmlEngine, source: QQmlEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

