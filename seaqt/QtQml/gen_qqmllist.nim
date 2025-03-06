import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmllist.cpp", cflags).}


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

proc fcQQmlListReference_new(): ptr cQQmlListReference {.importc: "QQmlListReference_new".}
proc fcQQmlListReference_new2(param1: pointer, property: cstring): ptr cQQmlListReference {.importc: "QQmlListReference_new2".}
proc fcQQmlListReference_new3(param1: pointer): ptr cQQmlListReference {.importc: "QQmlListReference_new3".}
proc fcQQmlListReference_new4(param1: pointer, property: cstring, param3: pointer): ptr cQQmlListReference {.importc: "QQmlListReference_new4".}
proc fcQQmlListReference_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlListReference_operatorAssign".}
proc fcQQmlListReference_isValid(self: pointer, ): bool {.importc: "QQmlListReference_isValid".}
proc fcQQmlListReference_objectX(self: pointer, ): pointer {.importc: "QQmlListReference_object".}
proc fcQQmlListReference_listElementType(self: pointer, ): pointer {.importc: "QQmlListReference_listElementType".}
proc fcQQmlListReference_canAppend(self: pointer, ): bool {.importc: "QQmlListReference_canAppend".}
proc fcQQmlListReference_canAt(self: pointer, ): bool {.importc: "QQmlListReference_canAt".}
proc fcQQmlListReference_canClear(self: pointer, ): bool {.importc: "QQmlListReference_canClear".}
proc fcQQmlListReference_canCount(self: pointer, ): bool {.importc: "QQmlListReference_canCount".}
proc fcQQmlListReference_canReplace(self: pointer, ): bool {.importc: "QQmlListReference_canReplace".}
proc fcQQmlListReference_canRemoveLast(self: pointer, ): bool {.importc: "QQmlListReference_canRemoveLast".}
proc fcQQmlListReference_isManipulable(self: pointer, ): bool {.importc: "QQmlListReference_isManipulable".}
proc fcQQmlListReference_isReadable(self: pointer, ): bool {.importc: "QQmlListReference_isReadable".}
proc fcQQmlListReference_append(self: pointer, param1: pointer): bool {.importc: "QQmlListReference_append".}
proc fcQQmlListReference_at(self: pointer, param1: cint): pointer {.importc: "QQmlListReference_at".}
proc fcQQmlListReference_clear(self: pointer, ): bool {.importc: "QQmlListReference_clear".}
proc fcQQmlListReference_count(self: pointer, ): cint {.importc: "QQmlListReference_count".}
proc fcQQmlListReference_replace(self: pointer, param1: cint, param2: pointer): bool {.importc: "QQmlListReference_replace".}
proc fcQQmlListReference_removeLast(self: pointer, ): bool {.importc: "QQmlListReference_removeLast".}
proc fcQQmlListReference_delete(self: pointer) {.importc: "QQmlListReference_delete".}


func init*(T: type gen_qqmllist_types.QQmlListReference, h: ptr cQQmlListReference): gen_qqmllist_types.QQmlListReference =
  T(h: h)
proc create*(T: type gen_qqmllist_types.QQmlListReference, ): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference.init(fcQQmlListReference_new())

proc create*(T: type gen_qqmllist_types.QQmlListReference, param1: gen_qobject_types.QObject, property: cstring): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference.init(fcQQmlListReference_new2(param1.h, property))

proc create*(T: type gen_qqmllist_types.QQmlListReference, param1: gen_qqmllist_types.QQmlListReference): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference.init(fcQQmlListReference_new3(param1.h))

proc create*(T: type gen_qqmllist_types.QQmlListReference, param1: gen_qobject_types.QObject, property: cstring, param3: gen_qqmlengine_types.QQmlEngine): gen_qqmllist_types.QQmlListReference =
  gen_qqmllist_types.QQmlListReference.init(fcQQmlListReference_new4(param1.h, property, param3.h))

proc operatorAssign*(self: gen_qqmllist_types.QQmlListReference, param1: gen_qqmllist_types.QQmlListReference): void =
  fcQQmlListReference_operatorAssign(self.h, param1.h)

proc isValid*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_isValid(self.h)

proc objectX*(self: gen_qqmllist_types.QQmlListReference, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlListReference_objectX(self.h))

proc listElementType*(self: gen_qqmllist_types.QQmlListReference, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlListReference_listElementType(self.h))

proc canAppend*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_canAppend(self.h)

proc canAt*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_canAt(self.h)

proc canClear*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_canClear(self.h)

proc canCount*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_canCount(self.h)

proc canReplace*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_canReplace(self.h)

proc canRemoveLast*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_canRemoveLast(self.h)

proc isManipulable*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_isManipulable(self.h)

proc isReadable*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_isReadable(self.h)

proc append*(self: gen_qqmllist_types.QQmlListReference, param1: gen_qobject_types.QObject): bool =
  fcQQmlListReference_append(self.h, param1.h)

proc at*(self: gen_qqmllist_types.QQmlListReference, param1: cint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlListReference_at(self.h, param1))

proc clear*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_clear(self.h)

proc count*(self: gen_qqmllist_types.QQmlListReference, ): cint =
  fcQQmlListReference_count(self.h)

proc replace*(self: gen_qqmllist_types.QQmlListReference, param1: cint, param2: gen_qobject_types.QObject): bool =
  fcQQmlListReference_replace(self.h, param1, param2.h)

proc removeLast*(self: gen_qqmllist_types.QQmlListReference, ): bool =
  fcQQmlListReference_removeLast(self.h)

proc delete*(self: gen_qqmllist_types.QQmlListReference) =
  fcQQmlListReference_delete(self.h)
