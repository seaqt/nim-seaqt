import ./Qt6Core_libs

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


type QLockFileLockErrorEnum* = distinct cint
template NoError*(_: type QLockFileLockErrorEnum): untyped = 0
template LockFailedError*(_: type QLockFileLockErrorEnum): untyped = 1
template PermissionError*(_: type QLockFileLockErrorEnum): untyped = 2
template UnknownError*(_: type QLockFileLockErrorEnum): untyped = 3


import ./gen_qlockfile_types
export gen_qlockfile_types


type cQLockFile*{.exportc: "QLockFile", incompleteStruct.} = object

proc fcQLockFile_fileName(self: pointer): struct_miqt_string {.importc: "QLockFile_fileName".}
proc fcQLockFile_lock(self: pointer): bool {.importc: "QLockFile_lock".}
proc fcQLockFile_tryLock(self: pointer): bool {.importc: "QLockFile_tryLock".}
proc fcQLockFile_unlock(self: pointer): void {.importc: "QLockFile_unlock".}
proc fcQLockFile_setStaleLockTime(self: pointer, staleLockTime: cint): void {.importc: "QLockFile_setStaleLockTime".}
proc fcQLockFile_staleLockTime(self: pointer): cint {.importc: "QLockFile_staleLockTime".}
proc fcQLockFile_isLocked(self: pointer): bool {.importc: "QLockFile_isLocked".}
proc fcQLockFile_removeStaleLockFile(self: pointer): bool {.importc: "QLockFile_removeStaleLockFile".}
proc fcQLockFile_error(self: pointer): cint {.importc: "QLockFile_error".}
proc fcQLockFile_tryLock1(self: pointer, timeout: cint): bool {.importc: "QLockFile_tryLock1".}
proc fcQLockFile_new(fileName: struct_miqt_string): ptr cQLockFile {.importc: "QLockFile_new".}

proc fileName*(self: gen_qlockfile_types.QLockFile): string =
  let v_ms = fcQLockFile_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lock*(self: gen_qlockfile_types.QLockFile): bool =
  fcQLockFile_lock(self.h)

proc tryLock*(self: gen_qlockfile_types.QLockFile): bool =
  fcQLockFile_tryLock(self.h)

proc unlock*(self: gen_qlockfile_types.QLockFile): void =
  fcQLockFile_unlock(self.h)

proc setStaleLockTime*(self: gen_qlockfile_types.QLockFile, staleLockTime: cint): void =
  fcQLockFile_setStaleLockTime(self.h, staleLockTime)

proc staleLockTime*(self: gen_qlockfile_types.QLockFile): cint =
  fcQLockFile_staleLockTime(self.h)

proc isLocked*(self: gen_qlockfile_types.QLockFile): bool =
  fcQLockFile_isLocked(self.h)

proc removeStaleLockFile*(self: gen_qlockfile_types.QLockFile): bool =
  fcQLockFile_removeStaleLockFile(self.h)

proc error*(self: gen_qlockfile_types.QLockFile): cint =
  cint(fcQLockFile_error(self.h))

proc tryLock*(self: gen_qlockfile_types.QLockFile, timeout: cint): bool =
  fcQLockFile_tryLock1(self.h, timeout)

proc create*(T: type gen_qlockfile_types.QLockFile,
    fileName: openArray[char]): gen_qlockfile_types.QLockFile =
  gen_qlockfile_types.QLockFile(h: fcQLockFile_new(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

