import ./qtwebenginecore_pkg

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


import ./gen_qwebengineextensioninfo_types
export gen_qwebengineextensioninfo_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineExtensionInfo*{.exportc: "QWebEngineExtensionInfo", incompleteStruct.} = object

proc fcQWebEngineExtensionInfo_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QWebEngineExtensionInfo_operatorAssign".}
proc fcQWebEngineExtensionInfo_swap(self: pointer, other: pointer): void {.importc: "QWebEngineExtensionInfo_swap".}
proc fcQWebEngineExtensionInfo_name(self: pointer): struct_seaqt_string {.importc: "QWebEngineExtensionInfo_name".}
proc fcQWebEngineExtensionInfo_id(self: pointer): struct_seaqt_string {.importc: "QWebEngineExtensionInfo_id".}
proc fcQWebEngineExtensionInfo_description(self: pointer): struct_seaqt_string {.importc: "QWebEngineExtensionInfo_description".}
proc fcQWebEngineExtensionInfo_path(self: pointer): struct_seaqt_string {.importc: "QWebEngineExtensionInfo_path".}
proc fcQWebEngineExtensionInfo_error(self: pointer): struct_seaqt_string {.importc: "QWebEngineExtensionInfo_error".}
proc fcQWebEngineExtensionInfo_actionPopupUrl(self: pointer): pointer {.importc: "QWebEngineExtensionInfo_actionPopupUrl".}
proc fcQWebEngineExtensionInfo_isEnabled(self: pointer): bool {.importc: "QWebEngineExtensionInfo_isEnabled".}
proc fcQWebEngineExtensionInfo_isLoaded(self: pointer): bool {.importc: "QWebEngineExtensionInfo_isLoaded".}
proc fcQWebEngineExtensionInfo_isInstalled(self: pointer): bool {.importc: "QWebEngineExtensionInfo_isInstalled".}
proc fcQWebEngineExtensionInfo_new(): ptr cQWebEngineExtensionInfo {.importc: "QWebEngineExtensionInfo_new".}
proc fcQWebEngineExtensionInfo_new2(fromVal: pointer): ptr cQWebEngineExtensionInfo {.importc: "QWebEngineExtensionInfo_new_from".}
proc fcQWebEngineExtensionInfo_staticMetaObject(): pointer {.importc: "QWebEngineExtensionInfo_staticMetaObject".}

proc operatorAssign*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo, fromVal: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionInfo_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo, other: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionInfo_swap(self.h, other.h)

proc name*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): string =
  let v_ms = fcQWebEngineExtensionInfo_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc id*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): string =
  let v_ms = fcQWebEngineExtensionInfo_id(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc description*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): string =
  let v_ms = fcQWebEngineExtensionInfo_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc path*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): string =
  let v_ms = fcQWebEngineExtensionInfo_path(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc error*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): string =
  let v_ms = fcQWebEngineExtensionInfo_error(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc actionPopupUrl*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineExtensionInfo_actionPopupUrl(self.h), owned: true)

proc isEnabled*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): bool =
  fcQWebEngineExtensionInfo_isEnabled(self.h)

proc isLoaded*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): bool =
  fcQWebEngineExtensionInfo_isLoaded(self.h)

proc isInstalled*(self: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): bool =
  fcQWebEngineExtensionInfo_isInstalled(self.h)

proc create*(T: type gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo =
  let tmp = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: fcQWebEngineExtensionInfo_new(), owned: true)
  tmp
proc create*(T: type gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo,
    fromVal: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo =
  let tmp = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: fcQWebEngineExtensionInfo_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineExtensionInfo_staticMetaObject())
