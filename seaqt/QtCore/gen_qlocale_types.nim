type QLocale* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qlocale.cpp", cflags).}

proc fcQLocale_delete(self: pointer) {.importc: "QLocale_delete".}
proc `=destroy`(self: var QLocale) =
  if self.owned: fcQLocale_delete(self.h)

proc `=sink`(dest: var QLocale, source: QLocale) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLocale, source: QLocale) {.error.}
proc delete*(self: sink QLocale) =
  let h = self.h
  wasMoved(self)
  fcQLocale_delete(h)

