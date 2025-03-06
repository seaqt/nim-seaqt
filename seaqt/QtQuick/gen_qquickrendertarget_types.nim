type QQuickRenderTarget* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
{.compile("gen_qquickrendertarget.cpp", cflags).}

proc fcQQuickRenderTarget_delete(self: pointer) {.importc: "QQuickRenderTarget_delete".}
proc `=destroy`(self: var QQuickRenderTarget) =
  if self.owned: fcQQuickRenderTarget_delete(self.h)

proc `=sink`(dest: var QQuickRenderTarget, source: QQuickRenderTarget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickRenderTarget, source: QQuickRenderTarget) {.error.}
proc delete*(self: sink QQuickRenderTarget) =
  let h = self.h
  wasMoved(self)
  fcQQuickRenderTarget_delete(h)

