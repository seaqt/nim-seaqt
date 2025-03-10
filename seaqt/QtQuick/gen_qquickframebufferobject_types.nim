import ./gen_qquickitem_types
export gen_qquickitem_types

type QQuickFramebufferObject* = object of gen_qquickitem_types.QQuickItem
proc `=copy`(dest: var QQuickFramebufferObject, source: QQuickFramebufferObject) {.error.}
proc `=sink`(dest: var QQuickFramebufferObject, source: QQuickFramebufferObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QQuickFramebufferObjectRenderer* {.inheritable.} = object
  h*: pointer
  owned*: bool

