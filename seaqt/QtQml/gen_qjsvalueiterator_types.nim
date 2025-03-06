type QJSValueIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Qml") & " -fPIC"
{.compile("gen_qjsvalueiterator.cpp", cflags).}

proc fcQJSValueIterator_delete(self: pointer) {.importc: "QJSValueIterator_delete".}
proc `=destroy`(self: var QJSValueIterator) =
  if self.owned: fcQJSValueIterator_delete(self.h)

proc `=sink`(dest: var QJSValueIterator, source: QJSValueIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSValueIterator, source: QJSValueIterator) {.error.}
proc delete*(self: sink QJSValueIterator) =
  let h = self.h
  wasMoved(self)
  fcQJSValueIterator_delete(h)

