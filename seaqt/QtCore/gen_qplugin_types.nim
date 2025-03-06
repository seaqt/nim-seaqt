type QStaticPlugin* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qplugin.cpp", cflags).}

proc fcQStaticPlugin_delete(self: pointer) {.importc: "QStaticPlugin_delete".}
proc `=destroy`(self: var QStaticPlugin) =
  if self.owned: fcQStaticPlugin_delete(self.h)

proc `=sink`(dest: var QStaticPlugin, source: QStaticPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStaticPlugin, source: QStaticPlugin) {.error.}
proc delete*(self: sink QStaticPlugin) =
  let h = self.h
  wasMoved(self)
  fcQStaticPlugin_delete(h)

