import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


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
proc fcQPixmapCache_findCQString(key: struct_seaqt_string): pointer {.importc: "QPixmapCache_find_cQString".}
proc fcQPixmapCache_findCQString_QPixmap(key: struct_seaqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_find_cQString_QPixmap".}
proc fcQPixmapCache_findCQStringPQPixmap(key: struct_seaqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_find_cQString_pQPixmap".}
proc fcQPixmapCache_findCQPixmapCache_KeyPQPixmap(key: pointer, pixmap: pointer): bool {.importc: "QPixmapCache_find_cQPixmapCache_Key_pQPixmap".}
proc fcQPixmapCache_insertKeyPixmap(key: struct_seaqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_insert_key_pixmap".}
proc fcQPixmapCache_insertPixmap(pixmap: pointer): pointer {.importc: "QPixmapCache_insert_pixmap".}
proc fcQPixmapCache_replace(key: pointer, pixmap: pointer): bool {.importc: "QPixmapCache_replace".}
proc fcQPixmapCache_remove_QString(key: struct_seaqt_string): void {.importc: "QPixmapCache_remove_QString".}
proc fcQPixmapCache_remove_QPixmapCache_Key(key: pointer): void {.importc: "QPixmapCache_remove_QPixmapCache_Key".}
proc fcQPixmapCache_clear(): void {.importc: "QPixmapCache_clear".}
proc fcQPixmapCacheKey_operatorEqual(self: pointer, key: pointer): bool {.importc: "QPixmapCache__Key_operatorEqual".}
proc fcQPixmapCacheKey_operatorNotEqual(self: pointer, key: pointer): bool {.importc: "QPixmapCache__Key_operatorNotEqual".}
proc fcQPixmapCacheKey_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QPixmapCache__Key_operatorAssign".}
proc fcQPixmapCacheKey_swap(self: pointer, other: pointer): void {.importc: "QPixmapCache__Key_swap".}
proc fcQPixmapCacheKey_isValid(self: pointer): bool {.importc: "QPixmapCache__Key_isValid".}
proc fcQPixmapCacheKey_new(): ptr cQPixmapCacheKey {.importc: "QPixmapCache__Key_new".}
proc fcQPixmapCacheKey_new2(fromVal: pointer): ptr cQPixmapCacheKey {.importc: "QPixmapCache__Key_new_from".}

proc cacheLimit*(_: type gen_qpixmapcache_types.QPixmapCache): cint =
  fcQPixmapCache_cacheLimit()

proc setCacheLimit*(_: type gen_qpixmapcache_types.QPixmapCache, cacheLimit: cint): void =
  fcQPixmapCache_setCacheLimit(cacheLimit)

proc find*(_: type gen_qpixmapcache_types.QPixmapCache, key: openArray[char]): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmapCache_findCQString(struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: false)

proc find*(_: type gen_qpixmapcache_types.QPixmapCache, key: openArray[char], pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_findCQString_QPixmap(struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), pixmap.h)

proc find2*(_: type gen_qpixmapcache_types.QPixmapCache, key: openArray[char], pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_findCQStringPQPixmap(struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), pixmap.h)

proc find*(_: type gen_qpixmapcache_types.QPixmapCache, key: gen_qpixmapcache_types.QPixmapCacheKey, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_findCQPixmapCache_KeyPQPixmap(key.h, pixmap.h)

proc insert*(_: type gen_qpixmapcache_types.QPixmapCache, key: openArray[char], pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_insertKeyPixmap(struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), pixmap.h)

proc insert*(_: type gen_qpixmapcache_types.QPixmapCache, pixmap: gen_qpixmap_types.QPixmap): gen_qpixmapcache_types.QPixmapCacheKey =
  gen_qpixmapcache_types.QPixmapCacheKey(h: fcQPixmapCache_insertPixmap(pixmap.h), owned: true)

proc replace*(_: type gen_qpixmapcache_types.QPixmapCache, key: gen_qpixmapcache_types.QPixmapCacheKey, pixmap: gen_qpixmap_types.QPixmap): bool =
  fcQPixmapCache_replace(key.h, pixmap.h)

proc remove*(_: type gen_qpixmapcache_types.QPixmapCache, key: openArray[char]): void =
  fcQPixmapCache_remove_QString(struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc remove*(_: type gen_qpixmapcache_types.QPixmapCache, key: gen_qpixmapcache_types.QPixmapCacheKey): void =
  fcQPixmapCache_remove_QPixmapCache_Key(key.h)

proc clear*(_: type gen_qpixmapcache_types.QPixmapCache): void =
  fcQPixmapCache_clear()

proc operatorEqual*(self: gen_qpixmapcache_types.QPixmapCacheKey, key: gen_qpixmapcache_types.QPixmapCacheKey): bool =
  fcQPixmapCacheKey_operatorEqual(self.h, key.h)

proc operatorNotEqual*(self: gen_qpixmapcache_types.QPixmapCacheKey, key: gen_qpixmapcache_types.QPixmapCacheKey): bool =
  fcQPixmapCacheKey_operatorNotEqual(self.h, key.h)

proc operatorAssign*(self: gen_qpixmapcache_types.QPixmapCacheKey, fromVal: gen_qpixmapcache_types.QPixmapCacheKey): void =
  fcQPixmapCacheKey_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qpixmapcache_types.QPixmapCacheKey, other: gen_qpixmapcache_types.QPixmapCacheKey): void =
  fcQPixmapCacheKey_swap(self.h, other.h)

proc isValid*(self: gen_qpixmapcache_types.QPixmapCacheKey): bool =
  fcQPixmapCacheKey_isValid(self.h)

proc create*(T: type gen_qpixmapcache_types.QPixmapCacheKey): gen_qpixmapcache_types.QPixmapCacheKey =
  let tmp = gen_qpixmapcache_types.QPixmapCacheKey(h: fcQPixmapCacheKey_new(), owned: true)
  tmp
proc create*(T: type gen_qpixmapcache_types.QPixmapCacheKey,
    fromVal: gen_qpixmapcache_types.QPixmapCacheKey): gen_qpixmapcache_types.QPixmapCacheKey =
  let tmp = gen_qpixmapcache_types.QPixmapCacheKey(h: fcQPixmapCacheKey_new2(fromVal.h), owned: true)
  tmp
