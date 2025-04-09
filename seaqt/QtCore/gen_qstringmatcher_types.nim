type QStringMatcher* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qstringmatcher.cpp", cflags).}

proc fcQStringMatcher_delete(self: pointer) {.importc: "QStringMatcher_delete".}
proc `=destroy`(self: var QStringMatcher) =
  if self.owned: fcQStringMatcher_delete(self.h)

proc `=sink`(dest: var QStringMatcher, source: QStringMatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStringMatcher, source: QStringMatcher) {.error.}
proc delete*(self: sink QStringMatcher) =
  let h = self.h
  wasMoved(self)
  fcQStringMatcher_delete(h)

