import ./Qt5Qml_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


import ./gen_qqmlerror_types
export gen_qqmlerror_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qurl_types
export
  gen_qobject_types,
  gen_qurl_types

type cQQmlError*{.exportc: "QQmlError", incompleteStruct.} = object

proc fcQQmlError_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlError_operatorAssign".}
proc fcQQmlError_isValid(self: pointer, ): bool {.importc: "QQmlError_isValid".}
proc fcQQmlError_url(self: pointer, ): pointer {.importc: "QQmlError_url".}
proc fcQQmlError_setUrl(self: pointer, url: pointer): void {.importc: "QQmlError_setUrl".}
proc fcQQmlError_description(self: pointer, ): struct_miqt_string {.importc: "QQmlError_description".}
proc fcQQmlError_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QQmlError_setDescription".}
proc fcQQmlError_line(self: pointer, ): cint {.importc: "QQmlError_line".}
proc fcQQmlError_setLine(self: pointer, line: cint): void {.importc: "QQmlError_setLine".}
proc fcQQmlError_column(self: pointer, ): cint {.importc: "QQmlError_column".}
proc fcQQmlError_setColumn(self: pointer, column: cint): void {.importc: "QQmlError_setColumn".}
proc fcQQmlError_objectX(self: pointer, ): pointer {.importc: "QQmlError_object".}
proc fcQQmlError_setObject(self: pointer, objectVal: pointer): void {.importc: "QQmlError_setObject".}
proc fcQQmlError_toString(self: pointer, ): struct_miqt_string {.importc: "QQmlError_toString".}
proc fcQQmlError_new(): ptr cQQmlError {.importc: "QQmlError_new".}
proc fcQQmlError_new2(param1: pointer): ptr cQQmlError {.importc: "QQmlError_new2".}

proc operatorAssign*(self: gen_qqmlerror_types.QQmlError, param1: gen_qqmlerror_types.QQmlError): void =
  fcQQmlError_operatorAssign(self.h, param1.h)

proc isValid*(self: gen_qqmlerror_types.QQmlError, ): bool =
  fcQQmlError_isValid(self.h)

proc url*(self: gen_qqmlerror_types.QQmlError, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlError_url(self.h), owned: true)

proc setUrl*(self: gen_qqmlerror_types.QQmlError, url: gen_qurl_types.QUrl): void =
  fcQQmlError_setUrl(self.h, url.h)

proc description*(self: gen_qqmlerror_types.QQmlError, ): string =
  let v_ms = fcQQmlError_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qqmlerror_types.QQmlError, description: string): void =
  fcQQmlError_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc line*(self: gen_qqmlerror_types.QQmlError, ): cint =
  fcQQmlError_line(self.h)

proc setLine*(self: gen_qqmlerror_types.QQmlError, line: cint): void =
  fcQQmlError_setLine(self.h, line)

proc column*(self: gen_qqmlerror_types.QQmlError, ): cint =
  fcQQmlError_column(self.h)

proc setColumn*(self: gen_qqmlerror_types.QQmlError, column: cint): void =
  fcQQmlError_setColumn(self.h, column)

proc objectX*(self: gen_qqmlerror_types.QQmlError, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlError_objectX(self.h), owned: false)

proc setObject*(self: gen_qqmlerror_types.QQmlError, objectVal: gen_qobject_types.QObject): void =
  fcQQmlError_setObject(self.h, objectVal.h)

proc toString*(self: gen_qqmlerror_types.QQmlError, ): string =
  let v_ms = fcQQmlError_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qqmlerror_types.QQmlError): gen_qqmlerror_types.QQmlError =
  gen_qqmlerror_types.QQmlError(h: fcQQmlError_new(), owned: true)

proc create*(T: type gen_qqmlerror_types.QQmlError,
    param1: gen_qqmlerror_types.QQmlError): gen_qqmlerror_types.QQmlError =
  gen_qqmlerror_types.QQmlError(h: fcQQmlError_new2(param1.h), owned: true)

