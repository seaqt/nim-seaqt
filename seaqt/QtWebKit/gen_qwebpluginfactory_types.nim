import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebPluginFactory* = object of gen_qobject_types.QObject
type QWebPluginFactoryMimeType* {.inheritable, pure.} = object
  h*: pointer
type QWebPluginFactoryPlugin* {.inheritable, pure.} = object
  h*: pointer
type QWebPluginFactoryExtensionOption* {.inheritable, pure.} = object
  h*: pointer
type QWebPluginFactoryExtensionReturn* {.inheritable, pure.} = object
  h*: pointer
