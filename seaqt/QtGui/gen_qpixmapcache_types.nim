type QPixmapCache* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qpixmapcache.cpp", cflags).}

proc fcQPixmapCache_delete(self: pointer) {.importc: "QPixmapCache_delete".}
proc `=destroy`(self: var QPixmapCache) =
  if self.owned: fcQPixmapCache_delete(self.h)

proc `=sink`(dest: var QPixmapCache, source: QPixmapCache) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPixmapCache, source: QPixmapCache) {.error.}
proc delete*(self: sink QPixmapCache) =
  let h = self.h
  wasMoved(self)
  fcQPixmapCache_delete(h)

type QPixmapCacheKey* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPixmapCacheKey_delete(self: pointer) {.importc: "QPixmapCache__Key_delete".}
proc `=destroy`(self: var QPixmapCacheKey) =
  if self.owned: fcQPixmapCacheKey_delete(self.h)

proc `=sink`(dest: var QPixmapCacheKey, source: QPixmapCacheKey) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPixmapCacheKey, source: QPixmapCacheKey) {.error.}
proc delete*(self: sink QPixmapCacheKey) =
  let h = self.h
  wasMoved(self)
  fcQPixmapCacheKey_delete(h)

