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


type QWebEngineGlobalSettingsSecureDnsModeEnum* = distinct uint8
template SystemOnly*(_: type QWebEngineGlobalSettingsSecureDnsModeEnum): untyped = 0
template SecureWithFallback*(_: type QWebEngineGlobalSettingsSecureDnsModeEnum): untyped = 1
template SecureOnly*(_: type QWebEngineGlobalSettingsSecureDnsModeEnum): untyped = 2


import ./gen_qwebengineglobalsettings_types
export gen_qwebengineglobalsettings_types


type cQWebEngineGlobalSettingsDnsMode*{.exportc: "QWebEngineGlobalSettings__DnsMode", incompleteStruct.} = object

proc fcQWebEngineGlobalSettingsDnsMode_secureMode(self: pointer): cint {.importc: "QWebEngineGlobalSettings__DnsMode_secureMode".}
proc fcQWebEngineGlobalSettingsDnsMode_setSecureMode(self: pointer, secureMode: cint): void {.importc: "QWebEngineGlobalSettings__DnsMode_setSecureMode".}
proc fcQWebEngineGlobalSettingsDnsMode_serverTemplates(self: pointer): struct_seaqt_array {.importc: "QWebEngineGlobalSettings__DnsMode_serverTemplates".}
proc fcQWebEngineGlobalSettingsDnsMode_setServerTemplates(self: pointer, serverTemplates: struct_seaqt_array): void {.importc: "QWebEngineGlobalSettings__DnsMode_setServerTemplates".}

proc secureMode*(self: gen_qwebengineglobalsettings_types.QWebEngineGlobalSettingsDnsMode): cint =
  cint(fcQWebEngineGlobalSettingsDnsMode_secureMode(self.h))

proc setSecureMode*(self: gen_qwebengineglobalsettings_types.QWebEngineGlobalSettingsDnsMode, secureMode: cint): void =
  fcQWebEngineGlobalSettingsDnsMode_setSecureMode(self.h, cint(secureMode))

proc serverTemplates*(self: gen_qwebengineglobalsettings_types.QWebEngineGlobalSettingsDnsMode): seq[string] =
  var vserverTemplates_ma = fcQWebEngineGlobalSettingsDnsMode_serverTemplates(self.h)
  var vserverTemplatesx_ret = newSeq[string](int(vserverTemplates_ma.len))
  let vserverTemplates_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](vserverTemplates_ma.data)
  for i in 0 ..< vserverTemplates_ma.len:
    let vserverTemplates_lv_ms = vserverTemplates_outCast[i]
    let vserverTemplates_lvx_ret = string.fromBytes(vserverTemplates_lv_ms)
    c_free(vserverTemplates_lv_ms.data)
    vserverTemplatesx_ret[i] = vserverTemplates_lvx_ret
  c_free(vserverTemplates_ma.data)
  vserverTemplatesx_ret

proc setServerTemplates*(self: gen_qwebengineglobalsettings_types.QWebEngineGlobalSettingsDnsMode, serverTemplates: openArray[string]): void =
  var serverTemplates_CArray = newSeq[struct_seaqt_string](len(serverTemplates))
  for i in 0..<len(serverTemplates):
    serverTemplates_CArray[i] = struct_seaqt_string(data: if len(serverTemplates[i]) > 0: addr serverTemplates[i][0] else: nil, len: csize_t(len(serverTemplates[i])))

  fcQWebEngineGlobalSettingsDnsMode_setServerTemplates(self.h, struct_seaqt_array(len: csize_t(len(serverTemplates)), data: if len(serverTemplates) == 0: nil else: addr(serverTemplates_CArray[0])))

