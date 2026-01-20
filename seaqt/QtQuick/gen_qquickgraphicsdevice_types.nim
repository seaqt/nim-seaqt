type QQuickGraphicsDevice* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtquick_pkg

{.compile("gen_qquickgraphicsdevice.cpp", QtQuickCFlags).}

proc fcQQuickGraphicsDevice_delete(self: pointer) {.importc: "QQuickGraphicsDevice_delete".}
proc `=destroy`(self: var QQuickGraphicsDevice) =
  if self.owned: fcQQuickGraphicsDevice_delete(self.h)

proc `=sink`(dest: var QQuickGraphicsDevice, source: QQuickGraphicsDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickGraphicsDevice, source: QQuickGraphicsDevice) {.error.}
proc delete*(self: sink QQuickGraphicsDevice) =
  let h = self.h
  wasMoved(self)
  fcQQuickGraphicsDevice_delete(h)

