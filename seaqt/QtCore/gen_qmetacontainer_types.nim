type QMetaContainer* {.inheritable, pure.} = object
  h*: pointer
type QMetaSequence* = object of QMetaContainer
type QMetaAssociation* = object of QMetaContainer
