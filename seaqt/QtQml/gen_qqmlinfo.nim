import ./qtqml_pkg

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


{.compile("gen_qqmlinfo.cpp", QtQmlCFlags).}


import ./gen_qqmlinfo_types
export gen_qqmlinfo_types

import
  ../QtCore/gen_qchar_types,
  ../QtCore/gen_qdebug,
  ../QtCore/gen_qurl_types
export
  gen_qchar_types,
  gen_qdebug,
  gen_qurl_types

type cQQmlInfo*{.exportc: "QQmlInfo", incompleteStruct.} = object

proc fcQQmlInfo_operatorShiftLeft_QChar(self: pointer, t: pointer): pointer {.importc: "QQmlInfo_operatorShiftLeft_QChar".}
proc fcQQmlInfo_operatorShiftLeftBool(self: pointer, t: bool): pointer {.importc: "QQmlInfo_operatorShiftLeft_bool".}
proc fcQQmlInfo_operatorShiftLeftChar(self: pointer, t: cchar): pointer {.importc: "QQmlInfo_operatorShiftLeft_char".}
proc fcQQmlInfo_operatorShiftLeftShort(self: pointer, t: cshort): pointer {.importc: "QQmlInfo_operatorShiftLeft_short".}
proc fcQQmlInfo_operatorShiftLeftUnsignedshort(self: pointer, t: cushort): pointer {.importc: "QQmlInfo_operatorShiftLeft_unsignedshort".}
proc fcQQmlInfo_operatorShiftLeftInt(self: pointer, t: cint): pointer {.importc: "QQmlInfo_operatorShiftLeft_int".}
proc fcQQmlInfo_operatorShiftLeftUnsignedint(self: pointer, t: cuint): pointer {.importc: "QQmlInfo_operatorShiftLeft_unsignedint".}
proc fcQQmlInfo_operatorShiftLeftLong(self: pointer, t: clong): pointer {.importc: "QQmlInfo_operatorShiftLeft_long".}
proc fcQQmlInfo_operatorShiftLeftUnsignedlong(self: pointer, t: culong): pointer {.importc: "QQmlInfo_operatorShiftLeft_unsignedlong".}
proc fcQQmlInfo_operatorShiftLeftQint64(self: pointer, t: clonglong): pointer {.importc: "QQmlInfo_operatorShiftLeft_qint64".}
proc fcQQmlInfo_operatorShiftLeftQuint64(self: pointer, t: culonglong): pointer {.importc: "QQmlInfo_operatorShiftLeft_quint64".}
proc fcQQmlInfo_operatorShiftLeftFloat(self: pointer, t: float32): pointer {.importc: "QQmlInfo_operatorShiftLeft_float".}
proc fcQQmlInfo_operatorShiftLeftDouble(self: pointer, t: float64): pointer {.importc: "QQmlInfo_operatorShiftLeft_double".}
proc fcQQmlInfo_operatorShiftLeftPcchar(self: pointer, t: cstring): pointer {.importc: "QQmlInfo_operatorShiftLeft_pcchar".}
proc fcQQmlInfo_operatorShiftLeftCQString(self: pointer, t: struct_seaqt_string): pointer {.importc: "QQmlInfo_operatorShiftLeft_cQString".}
proc fcQQmlInfo_operatorShiftLeftCQByteArray(self: pointer, t: struct_seaqt_string): pointer {.importc: "QQmlInfo_operatorShiftLeft_cQByteArray".}
proc fcQQmlInfo_operatorShiftLeftPcvoid(self: pointer, t: pointer): pointer {.importc: "QQmlInfo_operatorShiftLeft_pcvoid".}
proc fcQQmlInfo_operatorShiftLeftCQUrl(self: pointer, t: pointer): pointer {.importc: "QQmlInfo_operatorShiftLeft_cQUrl".}
proc fcQQmlInfo_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QQmlInfo_operatorAssign".}
proc fcQQmlInfo_new(fromVal: pointer): ptr cQQmlInfo {.importc: "QQmlInfo_new".}

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: gen_qchar_types.QChar): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeft_QChar(self.h, t.h), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: bool): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftBool(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: cchar): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftChar(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: cshort): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftShort(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: cushort): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftUnsignedshort(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: cint): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftInt(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: cuint): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftUnsignedint(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: clong): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftLong(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: culong): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftUnsignedlong(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: clonglong): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftQint64(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: culonglong): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftQuint64(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: float32): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftFloat(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: float64): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftDouble(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: cstring): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftPcchar(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: openArray[char]): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftCQString(self.h, struct_seaqt_string(data: if len(t) > 0: addr t[0] else: nil, len: csize_t(len(t)))), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: openArray[byte]): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftCQByteArray(self.h, struct_seaqt_string(data: if len(t) > 0: addr t[0] else: nil, len: csize_t(len(t)))), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: pointer): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftPcvoid(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qqmlinfo_types.QQmlInfo, t: gen_qurl_types.QUrl): gen_qqmlinfo_types.QQmlInfo =
  gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_operatorShiftLeftCQUrl(self.h, t.h), owned: false)

proc operatorAssign*(self: gen_qqmlinfo_types.QQmlInfo, fromVal: gen_qqmlinfo_types.QQmlInfo): void =
  fcQQmlInfo_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qqmlinfo_types.QQmlInfo,
    fromVal: gen_qqmlinfo_types.QQmlInfo): gen_qqmlinfo_types.QQmlInfo =
  let tmp = gen_qqmlinfo_types.QQmlInfo(h: fcQQmlInfo_new(fromVal.h), owned: true)
  tmp
