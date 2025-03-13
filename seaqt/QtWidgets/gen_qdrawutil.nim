import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QDrawBorderPixmapDrawingHintEnum* = distinct cint
template OpaqueTopLeft*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 1
template OpaqueTop*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 2
template OpaqueTopRight*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 4
template OpaqueLeft*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 8
template OpaqueCenter*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 16
template OpaqueRight*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 32
template OpaqueBottomLeft*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 64
template OpaqueBottom*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 128
template OpaqueBottomRight*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 256
template OpaqueCorners*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 325
template OpaqueEdges*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 170
template OpaqueFrame*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 495
template OpaqueAll*(_: type QDrawBorderPixmapDrawingHintEnum): untyped = 511


import ./gen_qdrawutil_types
export gen_qdrawutil_types


type cQTileRules*{.exportc: "QTileRules", incompleteStruct.} = object

proc fcQTileRules_new(horizontalRule: cint, verticalRule: cint): ptr cQTileRules {.importc: "QTileRules_new".}
proc fcQTileRules_new2(): ptr cQTileRules {.importc: "QTileRules_new2".}
proc fcQTileRules_new3(param1: pointer): ptr cQTileRules {.importc: "QTileRules_new3".}
proc fcQTileRules_new4(rule: cint): ptr cQTileRules {.importc: "QTileRules_new4".}

proc create*(T: type gen_qdrawutil_types.QTileRules,
    horizontalRule: cint, verticalRule: cint): gen_qdrawutil_types.QTileRules =
  gen_qdrawutil_types.QTileRules(h: fcQTileRules_new(cint(horizontalRule), cint(verticalRule)), owned: true)

proc create*(T: type gen_qdrawutil_types.QTileRules): gen_qdrawutil_types.QTileRules =
  gen_qdrawutil_types.QTileRules(h: fcQTileRules_new2(), owned: true)

proc create*(T: type gen_qdrawutil_types.QTileRules,
    param1: gen_qdrawutil_types.QTileRules): gen_qdrawutil_types.QTileRules =
  gen_qdrawutil_types.QTileRules(h: fcQTileRules_new3(param1.h), owned: true)

proc create*(T: type gen_qdrawutil_types.QTileRules,
    rule: cint): gen_qdrawutil_types.QTileRules =
  gen_qdrawutil_types.QTileRules(h: fcQTileRules_new4(cint(rule)), owned: true)

