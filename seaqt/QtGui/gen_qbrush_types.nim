type QBrush* {.inheritable, pure.} = object
  h*: pointer
type QBrushData* {.inheritable, pure.} = object
  h*: pointer
type QGradient* {.inheritable, pure.} = object
  h*: pointer
type QLinearGradient* = object of QGradient
type QRadialGradient* = object of QGradient
type QConicalGradient* = object of QGradient
type QGradientQGradientData* {.inheritable, pure.} = object
  h*: pointer
