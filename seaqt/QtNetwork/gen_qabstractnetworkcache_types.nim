type QNetworkCacheMetaData* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractNetworkCache* = object of gen_qobject_types.QObject
