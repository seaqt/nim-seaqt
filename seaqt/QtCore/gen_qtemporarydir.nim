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


import ./gen_qtemporarydir_types
export gen_qtemporarydir_types


type cQTemporaryDir*{.exportc: "QTemporaryDir", incompleteStruct.} = object

proc fcQTemporaryDir_swap(self: pointer, other: pointer): void {.importc: "QTemporaryDir_swap".}
proc fcQTemporaryDir_isValid(self: pointer, ): bool {.importc: "QTemporaryDir_isValid".}
proc fcQTemporaryDir_errorString(self: pointer, ): struct_miqt_string {.importc: "QTemporaryDir_errorString".}
proc fcQTemporaryDir_autoRemove(self: pointer, ): bool {.importc: "QTemporaryDir_autoRemove".}
proc fcQTemporaryDir_setAutoRemove(self: pointer, b: bool): void {.importc: "QTemporaryDir_setAutoRemove".}
proc fcQTemporaryDir_remove(self: pointer, ): bool {.importc: "QTemporaryDir_remove".}
proc fcQTemporaryDir_path(self: pointer, ): struct_miqt_string {.importc: "QTemporaryDir_path".}
proc fcQTemporaryDir_filePath(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QTemporaryDir_filePath".}
proc fcQTemporaryDir_new(): ptr cQTemporaryDir {.importc: "QTemporaryDir_new".}
proc fcQTemporaryDir_new2(templateName: struct_miqt_string): ptr cQTemporaryDir {.importc: "QTemporaryDir_new2".}

proc swap*(self: gen_qtemporarydir_types.QTemporaryDir, other: gen_qtemporarydir_types.QTemporaryDir): void =
  fcQTemporaryDir_swap(self.h, other.h)

proc isValid*(self: gen_qtemporarydir_types.QTemporaryDir, ): bool =
  fcQTemporaryDir_isValid(self.h)

proc errorString*(self: gen_qtemporarydir_types.QTemporaryDir, ): string =
  let v_ms = fcQTemporaryDir_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc autoRemove*(self: gen_qtemporarydir_types.QTemporaryDir, ): bool =
  fcQTemporaryDir_autoRemove(self.h)

proc setAutoRemove*(self: gen_qtemporarydir_types.QTemporaryDir, b: bool): void =
  fcQTemporaryDir_setAutoRemove(self.h, b)

proc remove*(self: gen_qtemporarydir_types.QTemporaryDir, ): bool =
  fcQTemporaryDir_remove(self.h)

proc path*(self: gen_qtemporarydir_types.QTemporaryDir, ): string =
  let v_ms = fcQTemporaryDir_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qtemporarydir_types.QTemporaryDir, fileName: string): string =
  let v_ms = fcQTemporaryDir_filePath(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtemporarydir_types.QTemporaryDir): gen_qtemporarydir_types.QTemporaryDir =
  gen_qtemporarydir_types.QTemporaryDir(h: fcQTemporaryDir_new(), owned: true)

proc create*(T: type gen_qtemporarydir_types.QTemporaryDir,
    templateName: string): gen_qtemporarydir_types.QTemporaryDir =
  gen_qtemporarydir_types.QTemporaryDir(h: fcQTemporaryDir_new2(struct_miqt_string(data: templateName, len: csize_t(len(templateName)))), owned: true)

