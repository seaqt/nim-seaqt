import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebPage* = object of gen_qobject_types.QObject
type QWebPageViewportAttributes* {.inheritable, pure.} = object
  h*: pointer
type QWebPageExtensionOption* {.inheritable, pure.} = object
  h*: pointer
type QWebPageExtensionReturn* {.inheritable, pure.} = object
  h*: pointer
type QWebPageChooseMultipleFilesExtensionOption* = object of QWebPageExtensionOption
type QWebPageChooseMultipleFilesExtensionReturn* = object of QWebPageExtensionReturn
type QWebPageErrorPageExtensionOption* = object of QWebPageExtensionOption
type QWebPageErrorPageExtensionReturn* = object of QWebPageExtensionReturn
