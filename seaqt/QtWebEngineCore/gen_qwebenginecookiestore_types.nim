import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineCookieStore* = object of gen_qobject_types.QObject
type QWebEngineCookieStoreFilterRequest* {.inheritable, pure.} = object
  h*: pointer
