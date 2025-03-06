type QGenericPluginFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qgenericpluginfactory.cpp", cflags).}

proc fcQGenericPluginFactory_delete(self: pointer) {.importc: "QGenericPluginFactory_delete".}
proc `=destroy`(self: var QGenericPluginFactory) =
  if self.owned: fcQGenericPluginFactory_delete(self.h)

proc `=sink`(dest: var QGenericPluginFactory, source: QGenericPluginFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGenericPluginFactory, source: QGenericPluginFactory) {.error.}
proc delete*(self: sink QGenericPluginFactory) =
  let h = self.h
  wasMoved(self)
  fcQGenericPluginFactory_delete(h)

