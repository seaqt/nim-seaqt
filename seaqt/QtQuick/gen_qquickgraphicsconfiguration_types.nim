type QQuickGraphicsConfiguration* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
{.compile("gen_qquickgraphicsconfiguration.cpp", cflags).}

proc fcQQuickGraphicsConfiguration_delete(self: pointer) {.importc: "QQuickGraphicsConfiguration_delete".}
proc `=destroy`(self: var QQuickGraphicsConfiguration) =
  if self.owned: fcQQuickGraphicsConfiguration_delete(self.h)

proc `=sink`(dest: var QQuickGraphicsConfiguration, source: QQuickGraphicsConfiguration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickGraphicsConfiguration, source: QQuickGraphicsConfiguration) {.error.}
proc delete*(self: sink QQuickGraphicsConfiguration) =
  let h = self.h
  wasMoved(self)
  fcQQuickGraphicsConfiguration_delete(h)

