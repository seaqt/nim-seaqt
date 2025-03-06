type QLayoutItem* {.inheritable, pure.} = object
  h*: pointer
type QSpacerItem* = object of QLayoutItem
type QWidgetItem* = object of QLayoutItem
type QWidgetItemV2* = object of QWidgetItem
