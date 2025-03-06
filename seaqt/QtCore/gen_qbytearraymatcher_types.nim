type QByteArrayMatcher* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qbytearraymatcher.cpp", cflags).}

proc fcQByteArrayMatcher_delete(self: pointer) {.importc: "QByteArrayMatcher_delete".}
proc `=destroy`(self: var QByteArrayMatcher) =
  if self.owned: fcQByteArrayMatcher_delete(self.h)

proc `=sink`(dest: var QByteArrayMatcher, source: QByteArrayMatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QByteArrayMatcher, source: QByteArrayMatcher) {.error.}
proc delete*(self: sink QByteArrayMatcher) =
  let h = self.h
  wasMoved(self)
  fcQByteArrayMatcher_delete(h)

type QStaticByteArrayMatcherBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

