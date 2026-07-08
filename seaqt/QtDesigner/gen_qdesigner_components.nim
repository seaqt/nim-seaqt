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


import ./gen_qdesigner_components_types
export gen_qdesigner_components_types


type cQDesignerComponents*{.exportc: "QDesignerComponents", incompleteStruct.} = object

proc fcQDesignerComponents_initializeResources(): void {.importc: "QDesignerComponents_initializeResources".}
proc fcQDesignerComponents_delete(self: pointer) {.importc: "QDesignerComponents_delete".}

proc initializeResources*(_: type gen_qdesigner_components_types.QDesignerComponents): void =
  fcQDesignerComponents_initializeResources()

proc delete*(self: gen_qdesigner_components_types.QDesignerComponents) =
  fcQDesignerComponents_delete(self.h)
