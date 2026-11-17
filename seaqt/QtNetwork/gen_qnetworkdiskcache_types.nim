import ./gen_qabstractnetworkcache_types
export gen_qabstractnetworkcache_types

type QNetworkDiskCache* = object of gen_qabstractnetworkcache_types.QAbstractNetworkCache
proc `=copy`(dest: var QNetworkDiskCache, source: QNetworkDiskCache) {.error.}
proc `=sink`(dest: var QNetworkDiskCache, source: QNetworkDiskCache) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

