type QQmlDebuggingEnabler* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qqmldebug.cpp", QtQmlCFlags).}

proc fcQQmlDebuggingEnabler_delete(self: pointer) {.importc: "QQmlDebuggingEnabler_delete".}
proc `=destroy`(self: var QQmlDebuggingEnabler) =
  if self.owned: fcQQmlDebuggingEnabler_delete(self.h)

proc `=sink`(dest: var QQmlDebuggingEnabler, source: QQmlDebuggingEnabler) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlDebuggingEnabler, source: QQmlDebuggingEnabler) {.error.}
proc delete*(self: sink QQmlDebuggingEnabler) =
  let h = self.h
  wasMoved(self)
  fcQQmlDebuggingEnabler_delete(h)

