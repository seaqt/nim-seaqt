import ./gen_qquickitem_types
export gen_qquickitem_types

type QQuickFramebufferObject* = object of gen_qquickitem_types.QQuickItem
type QQuickFramebufferObjectRenderer* {.inheritable.} = object
  h*: pointer
  owned*: bool

