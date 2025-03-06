import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qpixmapcache.cpp", cflags).}


import ./gen_qpixmapcache_types
export gen_qpixmapcache_types

import
  ./gen_qpixmap_types
export
  gen_qpixmap_types

type cQPixmapCache*{.exportc: "QPixmapCache", incompleteStruct.} = object
type cQPixmapCacheKey*{.exportc: "QPixmapCache__Key", incompleteStruct.} = object

proc fcQPixmapCache_cacheLimit(): cint {.importc: "QPixmapCache_cacheLimit".}
proc fcQPixmapCache_setCacheLimit(cacheLimit: cint): void {.importc: "QPixmapCache_setCacheLimit".}
proc fcQPixmapCache_find(key: struct_miqt_string): pointer {.importc: "QPixmapCache_find".}
proc fcQPixmapCache_find2(key: struct_miqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_find2".}
proc fcQPixmapCache_find3(key: struct_miqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_find3".}
proc fcQPixmapCache_find4(key: pointer, pixmap: pointer): bool {.importc: "QPixmapCache_find4".}
proc fcQPixmapCache_insert(key: struct_miqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_insert".}
proc fcQPixmapCache_insertWithPixmap(pixmap: pointer): pointer {.importc: "QPixmapCache_insertWithPixmap".}
proc fcQPixmapCache_replace(key: pointer, pixmap: pointer): bool {.importc: "QPixmapCache_replace".}
proc fcQPixmapCache_remove(key: struct_miqt_string): void {.importc: "QPixmapCache_remove".}
proc fcQPixmapCache_removeWithKey(key: pointer): void {.importc: "QPixmapCache_removeWithKey".}
proc fcQPixmapCache_clear(): void {.importc: "QPixmapCache_clear".}
proc fcQPixmapCache_delete(self: pointer) {.importc: "QPixmapCache_delete".}
proc fcQPixmapCacheKey_new(): ptr cQPixmapCacheKey {.importc: "QPixmapCache__Key_new".}
proc fcQPixmapCacheKey_new2(other: pointer): ptr cQPixmapCacheKey {.importc: "QPixmapCache__Key_new2".}
proc fcQPixmapCacheKey_operatorEqual(self: pointer, key: pointer): bool {.importc: "QPixmapCache__Key_operatorEqual".}
proc fcQPixmapCacheKey_operatorNotEqual(self: pointer, key: pointer): bool {.importc: "QPixmapCache__Key_operatorNotEqual".}
proc fcQPixmapCacheKey_operatorAssign(self: pointer, other: pointer): void {.importc: "QPixmapCache__Key_operatorAssign".}
proc fcQPixmapCacheKey_swap(self: pointer, other: pointer): void {.importc: "QPixmapCache__Key_swap".}
proc fcQPixmapCacheKey_isValid(self: pointer, ): bool {.importc: "QPixmapCache__Key_isValid".}
proc fcQPixmapCacheKey_delete(self: pointer) {.importc: "QPixmapCache__Key_delete".}


func init*(T: type gen_qpixmapcache_types.QPixmapCache, h: ptr cQPixmapCache): gen_qpixmapcache_types.QPixmapCache =
  T(h: h)
proc cacheLimit*(_: type gen_qpixmapcache_types.QPixmapCache, ): cint =
  fcQPixmapCache_cacheLimit()

proc setCacheLimit*(_: type gen_qpixmapcache_types.QPixmapCache, cacheLimit: cint): void =
  fcQPixmapCache_setCacheLimit(cacheLimit)

proc find*(_: type gen_qpixmapcache_types.QPixmapCache, key: string): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmapCache_find(struct_miqt_string(data: key, len: csize_t(len(key)))))

proc find*(_: type gen_qpixmapcache_types.QPixmapCache, key: string, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_find2(struct_miqt_string(data: key, len: csize_t(len(key))), pixmap.h)

proc find2*(_: type gen_qpixmapcache_types.QPixmapCache, key: string, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_find3(struct_miqt_string(data: key, len: csize_t(len(key))), pixmap.h)

proc find*(_: type gen_qpixmapcache_types.QPixmapCache, key: gen_qpixmapcache_types.QPixmapCacheKey, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_find4(key.h, pixmap.h)

proc insert*(_: type gen_qpixmapcache_types.QPixmapCache, key: string, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_insert(struct_miqt_string(data: key, len: csize_t(len(key))), pixmap.h)

proc insert*(_: type gen_qpixmapcache_types.QPixmapCache, pixmap: gen_qpixmap_types.QPixmap): gen_qpixmapcache_types.QPixmapCacheKey =
  gen_qpixmapcache_types.QPixmapCacheKey(h: fcQPixmapCache_insertWithPixmap(pixmap.h))

proc replace*(_: type gen_qpixmapcache_types.QPixmapCache, key: gen_qpixmapcache_types.QPixmapCacheKey, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_replace(key.h, pixmap.h)

proc remove*(_: type gen_qpixmapcache_types.QPixmapCache, key: string): void =
  fcQPixmapCache_remove(struct_miqt_string(data: key, len: csize_t(len(key))))

proc remove*(_: type gen_qpixmapcache_types.QPixmapCache, key: gen_qpixmapcache_types.QPixmapCacheKey): void =
  fcQPixmapCache_removeWithKey(key.h)

proc clear*(_: type gen_qpixmapcache_types.QPixmapCache, ): void =
  fcQPixmapCache_clear()

proc delete*(self: gen_qpixmapcache_types.QPixmapCache) =
  fcQPixmapCache_delete(self.h)

func init*(T: type gen_qpixmapcache_types.QPixmapCacheKey, h: ptr cQPixmapCacheKey): gen_qpixmapcache_types.QPixmapCacheKey =
  T(h: h)
proc create*(T: type gen_qpixmapcache_types.QPixmapCacheKey, ): gen_qpixmapcache_types.QPixmapCacheKey =
  gen_qpixmapcache_types.QPixmapCacheKey.init(fcQPixmapCacheKey_new())

proc create*(T: type gen_qpixmapcache_types.QPixmapCacheKey, other: gen_qpixmapcache_types.QPixmapCacheKey): gen_qpixmapcache_types.QPixmapCacheKey =
  gen_qpixmapcache_types.QPixmapCacheKey.init(fcQPixmapCacheKey_new2(other.h))

proc operatorEqual*(self: gen_qpixmapcache_types.QPixmapCacheKey, key: gen_qpixmapcache_types.QPixmapCacheKey): bool =
  fcQPixmapCacheKey_operatorEqual(self.h, key.h)

proc operatorNotEqual*(self: gen_qpixmapcache_types.QPixmapCacheKey, key: gen_qpixmapcache_types.QPixmapCacheKey): bool =
  fcQPixmapCacheKey_operatorNotEqual(self.h, key.h)

proc operatorAssign*(self: gen_qpixmapcache_types.QPixmapCacheKey, other: gen_qpixmapcache_types.QPixmapCacheKey): void =
  fcQPixmapCacheKey_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpixmapcache_types.QPixmapCacheKey, other: gen_qpixmapcache_types.QPixmapCacheKey): void =
  fcQPixmapCacheKey_swap(self.h, other.h)

proc isValid*(self: gen_qpixmapcache_types.QPixmapCacheKey, ): bool =
  fcQPixmapCacheKey_isValid(self.h)

proc delete*(self: gen_qpixmapcache_types.QPixmapCacheKey) =
  fcQPixmapCacheKey_delete(self.h)
