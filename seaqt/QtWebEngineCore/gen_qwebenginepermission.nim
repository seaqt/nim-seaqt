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


type QWebEnginePermissionPermissionTypeEnum* = distinct uint8
template Unsupported*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 0
template MediaAudioCapture*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 1
template MediaVideoCapture*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 2
template MediaAudioVideoCapture*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 3
template DesktopVideoCapture*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 4
template DesktopAudioVideoCapture*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 5
template MouseLock*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 6
template Notifications*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 7
template Geolocation*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 8
template ClipboardReadWrite*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 9
template LocalFontsAccess*(_: type QWebEnginePermissionPermissionTypeEnum): untyped = 10


type QWebEnginePermissionStateEnum* = distinct uint8
template Invalid*(_: type QWebEnginePermissionStateEnum): untyped = 0
template Ask*(_: type QWebEnginePermissionStateEnum): untyped = 1
template Granted*(_: type QWebEnginePermissionStateEnum): untyped = 2
template Denied*(_: type QWebEnginePermissionStateEnum): untyped = 3


import ./gen_qwebenginepermission_types
export gen_qwebenginepermission_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEnginePermission*{.exportc: "QWebEnginePermission", incompleteStruct.} = object

proc fcQWebEnginePermission_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QWebEnginePermission_operatorAssign".}
proc fcQWebEnginePermission_swap(self: pointer, other: pointer): void {.importc: "QWebEnginePermission_swap".}
proc fcQWebEnginePermission_origin(self: pointer): pointer {.importc: "QWebEnginePermission_origin".}
proc fcQWebEnginePermission_permissionType(self: pointer): cint {.importc: "QWebEnginePermission_permissionType".}
proc fcQWebEnginePermission_state(self: pointer): cint {.importc: "QWebEnginePermission_state".}
proc fcQWebEnginePermission_isValid(self: pointer): bool {.importc: "QWebEnginePermission_isValid".}
proc fcQWebEnginePermission_grant(self: pointer): void {.importc: "QWebEnginePermission_grant".}
proc fcQWebEnginePermission_deny(self: pointer): void {.importc: "QWebEnginePermission_deny".}
proc fcQWebEnginePermission_reset(self: pointer): void {.importc: "QWebEnginePermission_reset".}
proc fcQWebEnginePermission_isPersistent(permissionType: cint): bool {.importc: "QWebEnginePermission_isPersistent".}
proc fcQWebEnginePermission_new(): ptr cQWebEnginePermission {.importc: "QWebEnginePermission_new".}
proc fcQWebEnginePermission_new2(fromVal: pointer): ptr cQWebEnginePermission {.importc: "QWebEnginePermission_new_from".}
proc fcQWebEnginePermission_staticMetaObject(): pointer {.importc: "QWebEnginePermission_staticMetaObject".}

proc operatorAssign*(self: gen_qwebenginepermission_types.QWebEnginePermission, fromVal: gen_qwebenginepermission_types.QWebEnginePermission): void =
  fcQWebEnginePermission_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qwebenginepermission_types.QWebEnginePermission, other: gen_qwebenginepermission_types.QWebEnginePermission): void =
  fcQWebEnginePermission_swap(self.h, other.h)

proc origin*(self: gen_qwebenginepermission_types.QWebEnginePermission): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEnginePermission_origin(self.h), owned: true)

proc permissionType*(self: gen_qwebenginepermission_types.QWebEnginePermission): cint =
  cint(fcQWebEnginePermission_permissionType(self.h))

proc state*(self: gen_qwebenginepermission_types.QWebEnginePermission): cint =
  cint(fcQWebEnginePermission_state(self.h))

proc isValid*(self: gen_qwebenginepermission_types.QWebEnginePermission): bool =
  fcQWebEnginePermission_isValid(self.h)

proc grant*(self: gen_qwebenginepermission_types.QWebEnginePermission): void =
  fcQWebEnginePermission_grant(self.h)

proc deny*(self: gen_qwebenginepermission_types.QWebEnginePermission): void =
  fcQWebEnginePermission_deny(self.h)

proc reset*(self: gen_qwebenginepermission_types.QWebEnginePermission): void =
  fcQWebEnginePermission_reset(self.h)

proc isPersistent*(_: type gen_qwebenginepermission_types.QWebEnginePermission, permissionType: cint): bool =
  fcQWebEnginePermission_isPersistent(cint(permissionType))

proc create*(T: type gen_qwebenginepermission_types.QWebEnginePermission): gen_qwebenginepermission_types.QWebEnginePermission =
  let tmp = gen_qwebenginepermission_types.QWebEnginePermission(h: fcQWebEnginePermission_new(), owned: true)
  tmp
proc create*(T: type gen_qwebenginepermission_types.QWebEnginePermission,
    fromVal: gen_qwebenginepermission_types.QWebEnginePermission): gen_qwebenginepermission_types.QWebEnginePermission =
  let tmp = gen_qwebenginepermission_types.QWebEnginePermission(h: fcQWebEnginePermission_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qwebenginepermission_types.QWebEnginePermission): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEnginePermission_staticMetaObject())
