type QCommandLineParser* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qcommandlineparser.cpp", QtCoreCFlags).}

proc fcQCommandLineParser_delete(self: pointer) {.importc: "QCommandLineParser_delete".}
proc `=destroy`(self: var QCommandLineParser) =
  if self.owned: fcQCommandLineParser_delete(self.h)

proc `=sink`(dest: var QCommandLineParser, source: QCommandLineParser) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCommandLineParser, source: QCommandLineParser) {.error.}
proc delete*(self: sink QCommandLineParser) =
  let h = self.h
  wasMoved(self)
  fcQCommandLineParser_delete(h)

