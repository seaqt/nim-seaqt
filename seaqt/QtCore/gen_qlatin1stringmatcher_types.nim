type QLatin1StringMatcher* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qlatin1stringmatcher.cpp", QtCoreCFlags).}

proc fcQLatin1StringMatcher_delete(self: pointer) {.importc: "QLatin1StringMatcher_delete".}
proc `=destroy`(self: var QLatin1StringMatcher) =
  if self.owned: fcQLatin1StringMatcher_delete(self.h)

proc `=sink`(dest: var QLatin1StringMatcher, source: QLatin1StringMatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLatin1StringMatcher, source: QLatin1StringMatcher) {.error.}
proc delete*(self: sink QLatin1StringMatcher) =
  let h = self.h
  wasMoved(self)
  fcQLatin1StringMatcher_delete(h)

