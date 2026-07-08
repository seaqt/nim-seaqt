import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


import ./gen_extrainfo_types
export gen_extrainfo_types

import
  ../QtWidgets/gen_qwidget_types
export
  gen_qwidget_types

type cQDesignerExtraInfoExtension*{.exportc: "QDesignerExtraInfoExtension", incompleteStruct.} = object

proc fcQDesignerExtraInfoExtension_widget(self: pointer): pointer {.importc: "QDesignerExtraInfoExtension_widget".}
proc fcQDesignerExtraInfoExtension_workingDirectory(self: pointer): struct_seaqt_string {.importc: "QDesignerExtraInfoExtension_workingDirectory".}
proc fcQDesignerExtraInfoExtension_setWorkingDirectory(self: pointer, workingDirectory: struct_seaqt_string): void {.importc: "QDesignerExtraInfoExtension_setWorkingDirectory".}
proc fcQDesignerExtraInfoExtension_delete(self: pointer) {.importc: "QDesignerExtraInfoExtension_delete".}

proc widget*(self: gen_extrainfo_types.QDesignerExtraInfoExtension): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerExtraInfoExtension_widget(self.h))

proc workingDirectory*(self: gen_extrainfo_types.QDesignerExtraInfoExtension): string =
  let v_ms = fcQDesignerExtraInfoExtension_workingDirectory(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWorkingDirectory*(self: gen_extrainfo_types.QDesignerExtraInfoExtension, workingDirectory: openArray[char]): void =
  fcQDesignerExtraInfoExtension_setWorkingDirectory(self.h, struct_seaqt_string(data: if len(workingDirectory) > 0: addr workingDirectory[0] else: nil, len: csize_t(len(workingDirectory))))

proc delete*(self: gen_extrainfo_types.QDesignerExtraInfoExtension) =
  fcQDesignerExtraInfoExtension_delete(self.h)
