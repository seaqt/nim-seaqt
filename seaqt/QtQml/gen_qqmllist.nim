import ./Qt5Qml_libs

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


import ./gen_qqmllist_types
export gen_qqmllist_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qqmlengine_types
export
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qqmlengine_types

type cQQmlListReference*{.exportc: "QQmlListReference", incompleteStruct.} = object

proc fcQQmlListReference_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlListReference_operatorAssign".}
proc fcQQmlListReference_isValid(self: pointer): bool {.importc: "QQmlListReference_isValid".}
proc fcQQmlListReference_objectX(self: pointer): pointer {.importc: "QQmlListReference_object".}
proc fcQQmlListReference_listElementType(self: pointer): pointer {.importc: "QQmlListReference_listElementType".}
proc fcQQmlListReference_canAppend(self: pointer): bool {.importc: "QQmlListReference_canAppend".}
proc fcQQmlListReference_canAt(self: pointer): bool {.importc: "QQmlListReference_canAt".}
proc fcQQmlListReference_canClear(self: pointer): bool {.importc: "QQmlListReference_canClear".}
proc fcQQmlListReference_canCount(self: pointer): bool {.importc: "QQmlListReference_canCount".}
proc fcQQmlListReference_canReplace(self: pointer): bool {.importc: "QQmlListReference_canReplace".}
proc fcQQmlListReference_canRemoveLast(self: pointer): bool {.importc: "QQmlListReference_canRemoveLast".}
proc fcQQmlListReference_isManipulable(self: pointer): bool {.importc: "QQmlListReference_isManipulable".}
proc fcQQmlListReference_isReadable(self: pointer): bool {.importc: "QQmlListReference_isReadable".}
proc fcQQmlListReference_append(self: pointer, param1: pointer): bool {.importc: "QQmlListReference_append".}
proc fcQQmlListReference_at(self: pointer, param1: cint): pointer {.importc: "QQmlListReference_at".}
proc fcQQmlListReference_clear(self: pointer): bool {.importc: "QQmlListReference_clear".}
proc fcQQmlListReference_count(self: pointer): cint {.importc: "QQmlListReference_count".}
proc fcQQmlListReference_replace(self: pointer, param1: cint, param2: pointer): bool {.importc: "QQmlListReference_replace".}
proc fcQQmlListReference_removeLast(self: pointer): bool {.importc: "QQmlListReference_removeLast".}
proc fcQQmlListReference_new(): ptr cQQmlListReference {.importc: "QQmlListReference_new".}
proc fcQQmlListReference_new2(param1: pointer, property: cstring): ptr cQQmlListReference {.importc: "QQmlListReference_new2".}
proc fcQQmlListReference_new3(param1: pointer): ptr cQQmlListReference {.importc: "QQmlListReference_new3".}
proc fcQQmlListReference_new4(param1: pointer, property: cstring, param3: pointer): ptr cQQmlListReference {.importc: "QQmlListReference_new4".}

proc operatorAssign*(self: gen_qqmllist_types.QQmlListReference, param1: gen_qqmllist_types.QQmlListReference): void =
  fcQQmlListReference_operatorAssign(self.h, param1.h)

proc isValid*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_isValid(self.h)

proc objectX*(self: gen_qqmllist_types.QQmlListReference): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlListReference_objectX(self.h), owned: false)

proc listElementType*(self: gen_qqmllist_types.QQmlListReference): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlListReference_listElementType(self.h), owned: false)

proc canAppend*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_canAppend(self.h)

proc canAt*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_canAt(self.h)

proc canClear*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_canClear(self.h)

proc canCount*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_canCount(self.h)

proc canReplace*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_canReplace(self.h)

proc canRemoveLast*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_canRemoveLast(self.h)

proc isManipulable*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_isManipulable(self.h)

proc isReadable*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_isReadable(self.h)

proc append*(self: gen_qqmllist_types.QQmlListReference, param1: gen_qobject_types.QObject): bool =
  fcQQmlListReference_append(self.h, param1.h)

proc at*(self: gen_qqmllist_types.QQmlListReference, param1: cint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlListReference_at(self.h, param1), owned: false)

proc clear*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_clear(self.h)

proc count*(self: gen_qqmllist_types.QQmlListReference): cint =
  fcQQmlListReference_count(self.h)

proc replace*(self: gen_qqmllist_types.QQmlListReference, param1: cint, param2: gen_qobject_types.QObject): bool =
  fcQQmlListReference_replace(self.h, param1, param2.h)

proc removeLast*(self: gen_qqmllist_types.QQmlListReference): bool =
  fcQQmlListReference_removeLast(self.h)

proc create*(T: type gen_qqmllist_types.QQmlListReference): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference(h: fcQQmlListReference_new(), owned: true)

proc create*(T: type gen_qqmllist_types.QQmlListReference,
    param1: gen_qobject_types.QObject, property: cstring): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference(h: fcQQmlListReference_new2(param1.h, property), owned: true)

proc create*(T: type gen_qqmllist_types.QQmlListReference,
    param1: gen_qqmllist_types.QQmlListReference): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference(h: fcQQmlListReference_new3(param1.h), owned: true)

proc create*(T: type gen_qqmllist_types.QQmlListReference,
    param1: gen_qobject_types.QObject, property: cstring, param3: gen_qqmlengine_types.QQmlEngine): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference(h: fcQQmlListReference_new4(param1.h, property, param3.h), owned: true)

