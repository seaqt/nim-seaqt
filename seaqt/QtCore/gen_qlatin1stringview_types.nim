type QLatin1String* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qlatin1stringview.cpp", QtCoreCFlags).}

proc fcQLatin1String_delete(self: pointer) {.importc: "QLatin1String_delete".}
proc `=destroy`(self: var QLatin1String) =
  if self.owned: fcQLatin1String_delete(self.h)

proc `=sink`(dest: var QLatin1String, source: QLatin1String) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLatin1String, source: QLatin1String) {.error.}
proc delete*(self: sink QLatin1String) =
  let h = self.h
  wasMoved(self)
  fcQLatin1String_delete(h)

