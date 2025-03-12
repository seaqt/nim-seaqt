import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qfiledevice.cpp", cflags).}


type QFileDeviceFileErrorEnum* = distinct cint
template NoError*(_: type QFileDeviceFileErrorEnum): untyped = 0
template ReadError*(_: type QFileDeviceFileErrorEnum): untyped = 1
template WriteError*(_: type QFileDeviceFileErrorEnum): untyped = 2
template FatalError*(_: type QFileDeviceFileErrorEnum): untyped = 3
template ResourceError*(_: type QFileDeviceFileErrorEnum): untyped = 4
template OpenError*(_: type QFileDeviceFileErrorEnum): untyped = 5
template AbortError*(_: type QFileDeviceFileErrorEnum): untyped = 6
template TimeOutError*(_: type QFileDeviceFileErrorEnum): untyped = 7
template UnspecifiedError*(_: type QFileDeviceFileErrorEnum): untyped = 8
template RemoveError*(_: type QFileDeviceFileErrorEnum): untyped = 9
template RenameError*(_: type QFileDeviceFileErrorEnum): untyped = 10
template PositionError*(_: type QFileDeviceFileErrorEnum): untyped = 11
template ResizeError*(_: type QFileDeviceFileErrorEnum): untyped = 12
template PermissionsError*(_: type QFileDeviceFileErrorEnum): untyped = 13
template CopyError*(_: type QFileDeviceFileErrorEnum): untyped = 14


type QFileDeviceFileTimeEnum* = distinct cint
template FileAccessTime*(_: type QFileDeviceFileTimeEnum): untyped = 0
template FileBirthTime*(_: type QFileDeviceFileTimeEnum): untyped = 1
template FileMetadataChangeTime*(_: type QFileDeviceFileTimeEnum): untyped = 2
template FileModificationTime*(_: type QFileDeviceFileTimeEnum): untyped = 3


type QFileDevicePermissionEnum* = distinct cint
template ReadOwner*(_: type QFileDevicePermissionEnum): untyped = 16384
template WriteOwner*(_: type QFileDevicePermissionEnum): untyped = 8192
template ExeOwner*(_: type QFileDevicePermissionEnum): untyped = 4096
template ReadUser*(_: type QFileDevicePermissionEnum): untyped = 1024
template WriteUser*(_: type QFileDevicePermissionEnum): untyped = 512
template ExeUser*(_: type QFileDevicePermissionEnum): untyped = 256
template ReadGroup*(_: type QFileDevicePermissionEnum): untyped = 64
template WriteGroup*(_: type QFileDevicePermissionEnum): untyped = 32
template ExeGroup*(_: type QFileDevicePermissionEnum): untyped = 16
template ReadOther*(_: type QFileDevicePermissionEnum): untyped = 4
template WriteOther*(_: type QFileDevicePermissionEnum): untyped = 2
template ExeOther*(_: type QFileDevicePermissionEnum): untyped = 1


type QFileDeviceFileHandleFlagEnum* = distinct cint
template AutoCloseHandle*(_: type QFileDeviceFileHandleFlagEnum): untyped = 1
template DontCloseHandle*(_: type QFileDeviceFileHandleFlagEnum): untyped = 0


type QFileDeviceMemoryMapFlagsEnum* = distinct cint
template NoOptions*(_: type QFileDeviceMemoryMapFlagsEnum): untyped = 0
template MapPrivateOption*(_: type QFileDeviceMemoryMapFlagsEnum): untyped = 1


import ./gen_qfiledevice_types
export gen_qfiledevice_types

import
  ./gen_qdatetime_types,
  ./gen_qiodevice,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qdatetime_types,
  gen_qiodevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQFileDevice*{.exportc: "QFileDevice", incompleteStruct.} = object

proc fcQFileDevice_metaObject(self: pointer): pointer {.importc: "QFileDevice_metaObject".}
proc fcQFileDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDevice_metacast".}
proc fcQFileDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDevice_metacall".}
proc fcQFileDevice_tr(s: cstring): struct_miqt_string {.importc: "QFileDevice_tr".}
proc fcQFileDevice_trUtf8(s: cstring): struct_miqt_string {.importc: "QFileDevice_trUtf8".}
proc fcQFileDevice_error(self: pointer): cint {.importc: "QFileDevice_error".}
proc fcQFileDevice_unsetError(self: pointer): void {.importc: "QFileDevice_unsetError".}
proc fcQFileDevice_close(self: pointer): void {.importc: "QFileDevice_close".}
proc fcQFileDevice_isSequential(self: pointer): bool {.importc: "QFileDevice_isSequential".}
proc fcQFileDevice_handle(self: pointer): cint {.importc: "QFileDevice_handle".}
proc fcQFileDevice_fileName(self: pointer): struct_miqt_string {.importc: "QFileDevice_fileName".}
proc fcQFileDevice_pos(self: pointer): clonglong {.importc: "QFileDevice_pos".}
proc fcQFileDevice_seek(self: pointer, offset: clonglong): bool {.importc: "QFileDevice_seek".}
proc fcQFileDevice_atEnd(self: pointer): bool {.importc: "QFileDevice_atEnd".}
proc fcQFileDevice_flush(self: pointer): bool {.importc: "QFileDevice_flush".}
proc fcQFileDevice_size(self: pointer): clonglong {.importc: "QFileDevice_size".}
proc fcQFileDevice_resize(self: pointer, sz: clonglong): bool {.importc: "QFileDevice_resize".}
proc fcQFileDevice_permissions(self: pointer): cint {.importc: "QFileDevice_permissions".}
proc fcQFileDevice_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QFileDevice_setPermissions".}
proc fcQFileDevice_map(self: pointer, offset: clonglong, size: clonglong): ptr uint8 {.importc: "QFileDevice_map".}
proc fcQFileDevice_unmap(self: pointer, address: ptr uint8): bool {.importc: "QFileDevice_unmap".}
proc fcQFileDevice_fileTime(self: pointer, time: cint): pointer {.importc: "QFileDevice_fileTime".}
proc fcQFileDevice_setFileTime(self: pointer, newDate: pointer, fileTime: cint): bool {.importc: "QFileDevice_setFileTime".}
proc fcQFileDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDevice_tr2".}
proc fcQFileDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDevice_tr3".}
proc fcQFileDevice_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDevice_trUtf82".}
proc fcQFileDevice_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDevice_trUtf83".}
proc fcQFileDevice_map3(self: pointer, offset: clonglong, size: clonglong, flags: cint): ptr uint8 {.importc: "QFileDevice_map3".}
proc fcQFileDevice_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QFileDevice_protectedbase_setOpenMode".}
proc fcQFileDevice_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QFileDevice_protectedbase_setErrorString".}
proc fcQFileDevice_protectedbase_sender(self: pointer): pointer {.importc: "QFileDevice_protectedbase_sender".}
proc fcQFileDevice_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFileDevice_protectedbase_senderSignalIndex".}
proc fcQFileDevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileDevice_protectedbase_receivers".}
proc fcQFileDevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileDevice_protectedbase_isSignalConnected".}
proc fcQFileDevice_staticMetaObject(): pointer {.importc: "QFileDevice_staticMetaObject".}

proc metaObject*(self: gen_qfiledevice_types.QFileDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDevice_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfiledevice_types.QFileDevice, param1: cstring): pointer =
  fcQFileDevice_metacast(self.h, param1)

proc metacall*(self: gen_qfiledevice_types.QFileDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfiledevice_types.QFileDevice, s: cstring): string =
  let v_ms = fcQFileDevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfiledevice_types.QFileDevice, s: cstring): string =
  let v_ms = fcQFileDevice_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc error*(self: gen_qfiledevice_types.QFileDevice): cint =
  cint(fcQFileDevice_error(self.h))

proc unsetError*(self: gen_qfiledevice_types.QFileDevice): void =
  fcQFileDevice_unsetError(self.h)

proc close*(self: gen_qfiledevice_types.QFileDevice): void =
  fcQFileDevice_close(self.h)

proc isSequential*(self: gen_qfiledevice_types.QFileDevice): bool =
  fcQFileDevice_isSequential(self.h)

proc handle*(self: gen_qfiledevice_types.QFileDevice): cint =
  fcQFileDevice_handle(self.h)

proc fileName*(self: gen_qfiledevice_types.QFileDevice): string =
  let v_ms = fcQFileDevice_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pos*(self: gen_qfiledevice_types.QFileDevice): clonglong =
  fcQFileDevice_pos(self.h)

proc seek*(self: gen_qfiledevice_types.QFileDevice, offset: clonglong): bool =
  fcQFileDevice_seek(self.h, offset)

proc atEnd*(self: gen_qfiledevice_types.QFileDevice): bool =
  fcQFileDevice_atEnd(self.h)

proc flush*(self: gen_qfiledevice_types.QFileDevice): bool =
  fcQFileDevice_flush(self.h)

proc size*(self: gen_qfiledevice_types.QFileDevice): clonglong =
  fcQFileDevice_size(self.h)

proc resize*(self: gen_qfiledevice_types.QFileDevice, sz: clonglong): bool =
  fcQFileDevice_resize(self.h, sz)

proc permissions*(self: gen_qfiledevice_types.QFileDevice): cint =
  cint(fcQFileDevice_permissions(self.h))

proc setPermissions*(self: gen_qfiledevice_types.QFileDevice, permissionSpec: cint): bool =
  fcQFileDevice_setPermissions(self.h, cint(permissionSpec))

proc map*(self: gen_qfiledevice_types.QFileDevice, offset: clonglong, size: clonglong): ptr uint8 =
  fcQFileDevice_map(self.h, offset, size)

proc unmap*(self: gen_qfiledevice_types.QFileDevice, address: ptr uint8): bool =
  fcQFileDevice_unmap(self.h, address)

proc fileTime*(self: gen_qfiledevice_types.QFileDevice, time: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileDevice_fileTime(self.h, cint(time)), owned: true)

proc setFileTime*(self: gen_qfiledevice_types.QFileDevice, newDate: gen_qdatetime_types.QDateTime, fileTime: cint): bool =
  fcQFileDevice_setFileTime(self.h, newDate.h, cint(fileTime))

proc tr*(_: type gen_qfiledevice_types.QFileDevice, s: cstring, c: cstring): string =
  let v_ms = fcQFileDevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfiledevice_types.QFileDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfiledevice_types.QFileDevice, s: cstring, c: cstring): string =
  let v_ms = fcQFileDevice_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfiledevice_types.QFileDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileDevice_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc map*(self: gen_qfiledevice_types.QFileDevice, offset: clonglong, size: clonglong, flags: cint): ptr uint8 =
  fcQFileDevice_map3(self.h, offset, size, cint(flags))

proc setOpenMode*(self: gen_qfiledevice_types.QFileDevice, openMode: cint): void =
  fcQFileDevice_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qfiledevice_types.QFileDevice, errorString: string): void =
  fcQFileDevice_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qfiledevice_types.QFileDevice): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileDevice_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfiledevice_types.QFileDevice): cint =
  fcQFileDevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfiledevice_types.QFileDevice, signal: cstring): cint =
  fcQFileDevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfiledevice_types.QFileDevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileDevice_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qfiledevice_types.QFileDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDevice_staticMetaObject())
