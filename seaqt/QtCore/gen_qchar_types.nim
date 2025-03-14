type QLatin1Char* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qchar.cpp", QtCoreCFlags).}

proc fcQLatin1Char_delete(self: pointer) {.importc: "QLatin1Char_delete".}
proc `=destroy`(self: var QLatin1Char) =
  if self.owned: fcQLatin1Char_delete(self.h)

proc `=sink`(dest: var QLatin1Char, source: QLatin1Char) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLatin1Char, source: QLatin1Char) {.error.}
proc delete*(self: sink QLatin1Char) =
  let h = self.h
  wasMoved(self)
  fcQLatin1Char_delete(h)

type QChar* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQChar_delete(self: pointer) {.importc: "QChar_delete".}
proc `=destroy`(self: var QChar) =
  if self.owned: fcQChar_delete(self.h)

proc `=sink`(dest: var QChar, source: QChar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QChar, source: QChar) {.error.}
proc delete*(self: sink QChar) =
  let h = self.h
  wasMoved(self)
  fcQChar_delete(h)

