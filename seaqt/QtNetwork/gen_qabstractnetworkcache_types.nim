type QNetworkCacheMetaData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qabstractnetworkcache.cpp", cflags).}

proc fcQNetworkCacheMetaData_delete(self: pointer) {.importc: "QNetworkCacheMetaData_delete".}
proc `=destroy`(self: var QNetworkCacheMetaData) =
  if self.owned: fcQNetworkCacheMetaData_delete(self.h)

proc `=sink`(dest: var QNetworkCacheMetaData, source: QNetworkCacheMetaData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkCacheMetaData, source: QNetworkCacheMetaData) {.error.}
proc delete*(self: sink QNetworkCacheMetaData) =
  let h = self.h
  wasMoved(self)
  fcQNetworkCacheMetaData_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractNetworkCache* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractNetworkCache, source: QAbstractNetworkCache) {.error.}
proc `=sink`(dest: var QAbstractNetworkCache, source: QAbstractNetworkCache) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

