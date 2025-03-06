type QQmlTypesExtensionInterface* {.inheritable, pure.} = object
  h*: pointer
type QQmlExtensionInterface* = object of QQmlTypesExtensionInterface
type QQmlEngineExtensionInterface* {.inheritable, pure.} = object
  h*: pointer
