import ./qtcore_pkg

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


import ./gen_qtemporarydir_types
export gen_qtemporarydir_types


type cQTemporaryDir*{.exportc: "QTemporaryDir", incompleteStruct.} = object

proc fcQTemporaryDir_isValid(self: pointer): bool {.importc: "QTemporaryDir_isValid".}
proc fcQTemporaryDir_errorString(self: pointer): struct_seaqt_string {.importc: "QTemporaryDir_errorString".}
proc fcQTemporaryDir_autoRemove(self: pointer): bool {.importc: "QTemporaryDir_autoRemove".}
proc fcQTemporaryDir_setAutoRemove(self: pointer, b: bool): void {.importc: "QTemporaryDir_setAutoRemove".}
proc fcQTemporaryDir_remove(self: pointer): bool {.importc: "QTemporaryDir_remove".}
proc fcQTemporaryDir_path(self: pointer): struct_seaqt_string {.importc: "QTemporaryDir_path".}
proc fcQTemporaryDir_filePath(self: pointer, fileName: struct_seaqt_string): struct_seaqt_string {.importc: "QTemporaryDir_filePath".}
proc fcQTemporaryDir_new(): ptr cQTemporaryDir {.importc: "QTemporaryDir_new".}
proc fcQTemporaryDir_new2(templateName: struct_seaqt_string): ptr cQTemporaryDir {.importc: "QTemporaryDir_new2".}

proc isValid*(self: gen_qtemporarydir_types.QTemporaryDir): bool =
  fcQTemporaryDir_isValid(self.h)

proc errorString*(self: gen_qtemporarydir_types.QTemporaryDir): string =
  let v_ms = fcQTemporaryDir_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc autoRemove*(self: gen_qtemporarydir_types.QTemporaryDir): bool =
  fcQTemporaryDir_autoRemove(self.h)

proc setAutoRemove*(self: gen_qtemporarydir_types.QTemporaryDir, b: bool): void =
  fcQTemporaryDir_setAutoRemove(self.h, b)

proc remove*(self: gen_qtemporarydir_types.QTemporaryDir): bool =
  fcQTemporaryDir_remove(self.h)

proc path*(self: gen_qtemporarydir_types.QTemporaryDir): string =
  let v_ms = fcQTemporaryDir_path(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qtemporarydir_types.QTemporaryDir, fileName: openArray[char]): string =
  let v_ms = fcQTemporaryDir_filePath(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtemporarydir_types.QTemporaryDir): gen_qtemporarydir_types.QTemporaryDir =
  let tmp = gen_qtemporarydir_types.QTemporaryDir(h: fcQTemporaryDir_new(), owned: true)
  tmp
proc create*(T: type gen_qtemporarydir_types.QTemporaryDir,
    templateName: openArray[char]): gen_qtemporarydir_types.QTemporaryDir =
  let tmp = gen_qtemporarydir_types.QTemporaryDir(h: fcQTemporaryDir_new2(struct_seaqt_string(data: if len(templateName) > 0: addr templateName[0] else: nil, len: csize_t(len(templateName)))), owned: true)
  tmp
