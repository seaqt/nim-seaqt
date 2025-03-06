import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qsystemsemaphore.cpp", cflags).}


type QSystemSemaphoreAccessModeEnum* = distinct cint
template Open*(_: type QSystemSemaphoreAccessModeEnum): untyped = 0
template Create*(_: type QSystemSemaphoreAccessModeEnum): untyped = 1


type QSystemSemaphoreSystemSemaphoreErrorEnum* = distinct cint
template NoError*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 0
template PermissionDenied*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 1
template KeyError*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 2
template AlreadyExists*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 3
template NotFound*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 4
template OutOfResources*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 5
template UnknownError*(_: type QSystemSemaphoreSystemSemaphoreErrorEnum): untyped = 6


import ./gen_qsystemsemaphore_types
export gen_qsystemsemaphore_types


type cQSystemSemaphore*{.exportc: "QSystemSemaphore", incompleteStruct.} = object

proc fcQSystemSemaphore_tr(sourceText: cstring): struct_miqt_string {.importc: "QSystemSemaphore_tr".}
proc fcQSystemSemaphore_setKey(self: pointer, key: struct_miqt_string): void {.importc: "QSystemSemaphore_setKey".}
proc fcQSystemSemaphore_key(self: pointer, ): struct_miqt_string {.importc: "QSystemSemaphore_key".}
proc fcQSystemSemaphore_acquire(self: pointer, ): bool {.importc: "QSystemSemaphore_acquire".}
proc fcQSystemSemaphore_release(self: pointer, ): bool {.importc: "QSystemSemaphore_release".}
proc fcQSystemSemaphore_error(self: pointer, ): cint {.importc: "QSystemSemaphore_error".}
proc fcQSystemSemaphore_errorString(self: pointer, ): struct_miqt_string {.importc: "QSystemSemaphore_errorString".}
proc fcQSystemSemaphore_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QSystemSemaphore_tr2".}
proc fcQSystemSemaphore_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QSystemSemaphore_tr3".}
proc fcQSystemSemaphore_setKey2(self: pointer, key: struct_miqt_string, initialValue: cint): void {.importc: "QSystemSemaphore_setKey2".}
proc fcQSystemSemaphore_setKey3(self: pointer, key: struct_miqt_string, initialValue: cint, mode: cint): void {.importc: "QSystemSemaphore_setKey3".}
proc fcQSystemSemaphore_release1(self: pointer, n: cint): bool {.importc: "QSystemSemaphore_release1".}
proc fcQSystemSemaphore_new(key: struct_miqt_string): ptr cQSystemSemaphore {.importc: "QSystemSemaphore_new".}
proc fcQSystemSemaphore_new2(key: struct_miqt_string, initialValue: cint): ptr cQSystemSemaphore {.importc: "QSystemSemaphore_new2".}
proc fcQSystemSemaphore_new3(key: struct_miqt_string, initialValue: cint, mode: cint): ptr cQSystemSemaphore {.importc: "QSystemSemaphore_new3".}
proc fcQSystemSemaphore_delete(self: pointer) {.importc: "QSystemSemaphore_delete".}

proc tr*(_: type gen_qsystemsemaphore_types.QSystemSemaphore, sourceText: cstring): string =
  let v_ms = fcQSystemSemaphore_tr(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qsystemsemaphore_types.QSystemSemaphore, key: string): void =
  fcQSystemSemaphore_setKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc key*(self: gen_qsystemsemaphore_types.QSystemSemaphore, ): string =
  let v_ms = fcQSystemSemaphore_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc acquire*(self: gen_qsystemsemaphore_types.QSystemSemaphore, ): bool =
  fcQSystemSemaphore_acquire(self.h)

proc release*(self: gen_qsystemsemaphore_types.QSystemSemaphore, ): bool =
  fcQSystemSemaphore_release(self.h)

proc error*(self: gen_qsystemsemaphore_types.QSystemSemaphore, ): cint =
  cint(fcQSystemSemaphore_error(self.h))

proc errorString*(self: gen_qsystemsemaphore_types.QSystemSemaphore, ): string =
  let v_ms = fcQSystemSemaphore_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsystemsemaphore_types.QSystemSemaphore, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQSystemSemaphore_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsystemsemaphore_types.QSystemSemaphore, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQSystemSemaphore_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qsystemsemaphore_types.QSystemSemaphore, key: string, initialValue: cint): void =
  fcQSystemSemaphore_setKey2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), initialValue)

proc setKey*(self: gen_qsystemsemaphore_types.QSystemSemaphore, key: string, initialValue: cint, mode: cint): void =
  fcQSystemSemaphore_setKey3(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), initialValue, cint(mode))

proc release*(self: gen_qsystemsemaphore_types.QSystemSemaphore, n: cint): bool =
  fcQSystemSemaphore_release1(self.h, n)

proc create*(T: type gen_qsystemsemaphore_types.QSystemSemaphore,
    key: string): gen_qsystemsemaphore_types.QSystemSemaphore =
  gen_qsystemsemaphore_types.QSystemSemaphore(h: fcQSystemSemaphore_new(struct_miqt_string(data: key, len: csize_t(len(key)))))

proc create*(T: type gen_qsystemsemaphore_types.QSystemSemaphore,
    key: string, initialValue: cint): gen_qsystemsemaphore_types.QSystemSemaphore =
  gen_qsystemsemaphore_types.QSystemSemaphore(h: fcQSystemSemaphore_new2(struct_miqt_string(data: key, len: csize_t(len(key))), initialValue))

proc create*(T: type gen_qsystemsemaphore_types.QSystemSemaphore,
    key: string, initialValue: cint, mode: cint): gen_qsystemsemaphore_types.QSystemSemaphore =
  gen_qsystemsemaphore_types.QSystemSemaphore(h: fcQSystemSemaphore_new3(struct_miqt_string(data: key, len: csize_t(len(key))), initialValue, cint(mode)))

proc delete*(self: gen_qsystemsemaphore_types.QSystemSemaphore) =
  fcQSystemSemaphore_delete(self.h)
