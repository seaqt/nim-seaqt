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


import ./gen_abstractlanguage_types
export gen_abstractlanguage_types

import
  ../QtCore/gen_qobject_types,
  ../QtWidgets/gen_qdialog_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_abstractformwindow_types,
  ./gen_abstractresourcebrowser_types
export
  gen_qobject_types,
  gen_qdialog_types,
  gen_qwidget_types,
  gen_abstractformwindow_types,
  gen_abstractresourcebrowser_types

type cQDesignerLanguageExtension*{.exportc: "QDesignerLanguageExtension", incompleteStruct.} = object

proc fcQDesignerLanguageExtension_name(self: pointer): struct_seaqt_string {.importc: "QDesignerLanguageExtension_name".}
proc fcQDesignerLanguageExtension_createFormWindowSettingsDialog(self: pointer, formWindow: pointer, parentWidget: pointer): pointer {.importc: "QDesignerLanguageExtension_createFormWindowSettingsDialog".}
proc fcQDesignerLanguageExtension_createResourceBrowser(self: pointer, parentWidget: pointer): pointer {.importc: "QDesignerLanguageExtension_createResourceBrowser".}
proc fcQDesignerLanguageExtension_isLanguageResource(self: pointer, path: struct_seaqt_string): bool {.importc: "QDesignerLanguageExtension_isLanguageResource".}
proc fcQDesignerLanguageExtension_classNameOf(self: pointer, objectVal: pointer): struct_seaqt_string {.importc: "QDesignerLanguageExtension_classNameOf".}
proc fcQDesignerLanguageExtension_signalMatchesSlot(self: pointer, signal: struct_seaqt_string, slot: struct_seaqt_string): bool {.importc: "QDesignerLanguageExtension_signalMatchesSlot".}
proc fcQDesignerLanguageExtension_widgetBoxContents(self: pointer): struct_seaqt_string {.importc: "QDesignerLanguageExtension_widgetBoxContents".}
proc fcQDesignerLanguageExtension_uiExtension(self: pointer): struct_seaqt_string {.importc: "QDesignerLanguageExtension_uiExtension".}
proc fcQDesignerLanguageExtension_delete(self: pointer) {.importc: "QDesignerLanguageExtension_delete".}

proc name*(self: gen_abstractlanguage_types.QDesignerLanguageExtension): string =
  let v_ms = fcQDesignerLanguageExtension_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createFormWindowSettingsDialog*(self: gen_abstractlanguage_types.QDesignerLanguageExtension, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface, parentWidget: gen_qwidget_types.QWidget): gen_qdialog_types.QDialog =
  gen_qdialog_types.QDialog(h: fcQDesignerLanguageExtension_createFormWindowSettingsDialog(self.h, formWindow.h, parentWidget.h))

proc createResourceBrowser*(self: gen_abstractlanguage_types.QDesignerLanguageExtension, parentWidget: gen_qwidget_types.QWidget): gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface =
  gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface(h: fcQDesignerLanguageExtension_createResourceBrowser(self.h, parentWidget.h))

proc isLanguageResource*(self: gen_abstractlanguage_types.QDesignerLanguageExtension, path: openArray[char]): bool =
  fcQDesignerLanguageExtension_isLanguageResource(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc classNameOf*(self: gen_abstractlanguage_types.QDesignerLanguageExtension, objectVal: gen_qobject_types.QObject): string =
  let v_ms = fcQDesignerLanguageExtension_classNameOf(self.h, objectVal.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc signalMatchesSlot*(self: gen_abstractlanguage_types.QDesignerLanguageExtension, signal: openArray[char], slot: openArray[char]): bool =
  fcQDesignerLanguageExtension_signalMatchesSlot(self.h, struct_seaqt_string(data: if len(signal) > 0: addr signal[0] else: nil, len: csize_t(len(signal))), struct_seaqt_string(data: if len(slot) > 0: addr slot[0] else: nil, len: csize_t(len(slot))))

proc widgetBoxContents*(self: gen_abstractlanguage_types.QDesignerLanguageExtension): string =
  let v_ms = fcQDesignerLanguageExtension_widgetBoxContents(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc uiExtension*(self: gen_abstractlanguage_types.QDesignerLanguageExtension): string =
  let v_ms = fcQDesignerLanguageExtension_uiExtension(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_abstractlanguage_types.QDesignerLanguageExtension) =
  fcQDesignerLanguageExtension_delete(self.h)
