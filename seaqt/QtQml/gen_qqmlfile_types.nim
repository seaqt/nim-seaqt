type QQmlFile* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlfile.cpp", cflags).}

proc fcQQmlFile_delete(self: pointer) {.importc: "QQmlFile_delete".}
proc `=destroy`(self: var QQmlFile) =
  if self.owned: fcQQmlFile_delete(self.h)

proc `=sink`(dest: var QQmlFile, source: QQmlFile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlFile, source: QQmlFile) {.error.}
proc delete*(self: sink QQmlFile) =
  let h = self.h
  wasMoved(self)
  fcQQmlFile_delete(h)

