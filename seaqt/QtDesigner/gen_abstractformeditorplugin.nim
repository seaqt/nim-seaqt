import ./qtdesigner_pkg

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


import ./gen_abstractformeditorplugin_types
export gen_abstractformeditorplugin_types

import
  ../QtGui/gen_qaction_types
export
  gen_qaction_types

type cQDesignerFormEditorPluginInterface*{.exportc: "QDesignerFormEditorPluginInterface", incompleteStruct.} = object

proc fcQDesignerFormEditorPluginInterface_isInitialized(self: pointer): bool {.importc: "QDesignerFormEditorPluginInterface_isInitialized".}
proc fcQDesignerFormEditorPluginInterface_action(self: pointer): pointer {.importc: "QDesignerFormEditorPluginInterface_action".}

proc isInitialized*(self: gen_abstractformeditorplugin_types.QDesignerFormEditorPluginInterface): bool =
  fcQDesignerFormEditorPluginInterface_isInitialized(self.h)

proc action*(self: gen_abstractformeditorplugin_types.QDesignerFormEditorPluginInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormEditorPluginInterface_action(self.h), owned: false)

