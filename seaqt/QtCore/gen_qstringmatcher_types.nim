type QStringMatcher* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qstringmatcher.cpp", QtCoreCFlags).}

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

