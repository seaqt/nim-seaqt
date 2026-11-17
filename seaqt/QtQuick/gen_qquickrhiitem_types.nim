type QQuickRhiItemRenderer* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtquick_pkg

{.compile("gen_qquickrhiitem.cpp", QtQuickCFlags).}

proc fcQQuickRhiItemRenderer_delete(self: pointer) {.importc: "QQuickRhiItemRenderer_delete".}
proc `=destroy`(self: var QQuickRhiItemRenderer) =
  if self.owned: fcQQuickRhiItemRenderer_delete(self.h)

proc `=sink`(dest: var QQuickRhiItemRenderer, source: QQuickRhiItemRenderer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQuickRhiItemRenderer, source: QQuickRhiItemRenderer) {.error.}
proc delete*(self: sink QQuickRhiItemRenderer) =
  let h = self.h
  wasMoved(self)
  fcQQuickRhiItemRenderer_delete(h)

import ./gen_qquickitem_types
export gen_qquickitem_types

type QQuickRhiItem* = object of gen_qquickitem_types.QQuickItem
proc `=copy`(dest: var QQuickRhiItem, source: QQuickRhiItem) {.error.}
proc `=sink`(dest: var QQuickRhiItem, source: QQuickRhiItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

