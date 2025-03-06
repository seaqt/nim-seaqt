type QCommandLineOption* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qcommandlineoption.cpp", cflags).}

proc fcQCommandLineOption_delete(self: pointer) {.importc: "QCommandLineOption_delete".}
proc `=destroy`(self: var QCommandLineOption) =
  if self.owned: fcQCommandLineOption_delete(self.h)

proc `=sink`(dest: var QCommandLineOption, source: QCommandLineOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCommandLineOption, source: QCommandLineOption) {.error.}
proc delete*(self: sink QCommandLineOption) =
  let h = self.h
  wasMoved(self)
  fcQCommandLineOption_delete(h)

