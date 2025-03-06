type QOperatingSystemVersionBase* {.inheritable, pure.} = object
  h*: pointer
type QOperatingSystemVersion* = object of QOperatingSystemVersionBase
