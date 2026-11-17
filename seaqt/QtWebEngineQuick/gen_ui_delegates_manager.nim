import ./qtwebenginequick_pkg

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


type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum* = distinct cint
template Invalid*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = -1
template Menu*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 0
template MenuItem*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 1
template MenuSeparator*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 2
template AlertDialog*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 3
template ColorDialog*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 4
template ConfirmDialog*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 5
template PromptDialog*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 6
template FilePicker*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 7
template DirectoryPicker*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 8
template AuthenticationDialog*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 9
template ToolTip*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 10
template TouchHandle*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 11
template TouchSelectionMenu*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 12
template AutofillPopup*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 13
template ComponentTypeCount*(_: type QtWebEngineCoreUIDelegatesManagerComponentTypeEnum): untyped = 14


import ./gen_ui_delegates_manager_types
export gen_ui_delegates_manager_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtQml/gen_qqmlcomponent_types,
  ../QtQml/gen_qqmlcontext_types,
  ../QtQml/gen_qqmlengine_types,
  ../QtQuick/gen_qquickitem_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qqmlcomponent_types,
  gen_qqmlcontext_types,
  gen_qqmlengine_types,
  gen_qquickitem_types

type cQtWebEngineCoreUIDelegatesManager*{.exportc: "QtWebEngineCore__UIDelegatesManager", incompleteStruct.} = object
type cQtWebEngineCoreAutofillPopupEventFilter*{.exportc: "QtWebEngineCore__AutofillPopupEventFilter", incompleteStruct.} = object

proc fcQtWebEngineCoreUIDelegatesManager_trSourceText(sourceText: cstring): struct_seaqt_string {.importc: "QtWebEngineCore__UIDelegatesManager_tr_sourceText".}
proc fcQtWebEngineCoreUIDelegatesManager_initializeImportDirs(self: pointer, dirs: struct_seaqt_array, engine: pointer): bool {.importc: "QtWebEngineCore__UIDelegatesManager_initializeImportDirs".}
proc fcQtWebEngineCoreUIDelegatesManager_addMenuSeparator(self: pointer, menu: pointer): void {.importc: "QtWebEngineCore__UIDelegatesManager_addMenuSeparator".}
proc fcQtWebEngineCoreUIDelegatesManager_addMenu(self: pointer, parentMenu: pointer, title: struct_seaqt_string, pos: pointer): pointer {.importc: "QtWebEngineCore__UIDelegatesManager_addMenu".}
proc fcQtWebEngineCoreUIDelegatesManager_creationContextForComponent(self: pointer, param1: pointer): pointer {.importc: "QtWebEngineCore__UIDelegatesManager_creationContextForComponent".}
proc fcQtWebEngineCoreUIDelegatesManager_showMenu(self: pointer, menu: pointer): void {.importc: "QtWebEngineCore__UIDelegatesManager_showMenu".}
proc fcQtWebEngineCoreUIDelegatesManager_showToolTip(self: pointer, text: struct_seaqt_string): void {.importc: "QtWebEngineCore__UIDelegatesManager_showToolTip".}
proc fcQtWebEngineCoreUIDelegatesManager_createTouchHandle(self: pointer): pointer {.importc: "QtWebEngineCore__UIDelegatesManager_createTouchHandle".}
proc fcQtWebEngineCoreUIDelegatesManager_hideTouchSelectionMenu(self: pointer): void {.importc: "QtWebEngineCore__UIDelegatesManager_hideTouchSelectionMenu".}
proc fcQtWebEngineCoreUIDelegatesManager_hideAutofillPopup(self: pointer): void {.importc: "QtWebEngineCore__UIDelegatesManager_hideAutofillPopup".}
proc fcQtWebEngineCoreUIDelegatesManager_trSourceTextDisambiguation(sourceText: cstring, disambiguation: cstring): struct_seaqt_string {.importc: "QtWebEngineCore__UIDelegatesManager_tr_sourceText_disambiguation".}
proc fcQtWebEngineCoreUIDelegatesManager_trSourceTextDisambiguationN(sourceText: cstring, disambiguation: cstring, n: cint): struct_seaqt_string {.importc: "QtWebEngineCore__UIDelegatesManager_tr_sourceText_disambiguation_n".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_metaObject(self: pointer): pointer {.importc: "QtWebEngineCore__AutofillPopupEventFilter_metaObject".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_metacast(self: pointer, param1: cstring): pointer {.importc: "QtWebEngineCore__AutofillPopupEventFilter_metacast".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtWebEngineCore__AutofillPopupEventFilter_metacall".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_trS(s: cstring): struct_seaqt_string {.importc: "QtWebEngineCore__AutofillPopupEventFilter_tr_s".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QtWebEngineCore__AutofillPopupEventFilter_tr_s_c".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QtWebEngineCore__AutofillPopupEventFilter_tr_s_c_n".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_sender(self: pointer): pointer {.importc: "QtWebEngineCore__AutofillPopupEventFilter_protectedbase_sender".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QtWebEngineCore__AutofillPopupEventFilter_protectedbase_senderSignalIndex".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QtWebEngineCore__AutofillPopupEventFilter_protectedbase_receivers".}
proc fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QtWebEngineCore__AutofillPopupEventFilter_protectedbase_isSignalConnected".}
proc fcQtWebEngineCore__AutofillPopupEventFilter_staticMetaObject(): pointer {.importc: "QtWebEngineCore__AutofillPopupEventFilter_staticMetaObject".}

proc tr*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, sourceText: cstring): string =
  let v_ms = fcQtWebEngineCoreUIDelegatesManager_trSourceText(sourceText)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc initializeImportDirs*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, dirs: openArray[string], engine: gen_qqmlengine_types.QQmlEngine): bool =
  var dirs_CArray = newSeq[struct_seaqt_string](len(dirs))
  for i in 0..<len(dirs):
    dirs_CArray[i] = struct_seaqt_string(data: if len(dirs[i]) > 0: addr dirs[i][0] else: nil, len: csize_t(len(dirs[i])))

  fcQtWebEngineCoreUIDelegatesManager_initializeImportDirs(self.h, struct_seaqt_array(len: csize_t(len(dirs)), data: if len(dirs) == 0: nil else: addr(dirs_CArray[0])), engine.h)

proc addMenuSeparator*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, menu: gen_qobject_types.QObject): void =
  fcQtWebEngineCoreUIDelegatesManager_addMenuSeparator(self.h, menu.h)

proc addMenu*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, parentMenu: gen_qobject_types.QObject, title: openArray[char], pos: gen_qpoint_types.QPoint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQtWebEngineCoreUIDelegatesManager_addMenu(self.h, parentMenu.h, struct_seaqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), pos.h), owned: false)

proc creationContextForComponent*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, param1: gen_qqmlcomponent_types.QQmlComponent): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQtWebEngineCoreUIDelegatesManager_creationContextForComponent(self.h, param1.h), owned: false)

proc showMenu*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, menu: gen_qobject_types.QObject): void =
  fcQtWebEngineCoreUIDelegatesManager_showMenu(self.h, menu.h)

proc showToolTip*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, text: openArray[char]): void =
  fcQtWebEngineCoreUIDelegatesManager_showToolTip(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc createTouchHandle*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQtWebEngineCoreUIDelegatesManager_createTouchHandle(self.h), owned: false)

proc hideTouchSelectionMenu*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager): void =
  fcQtWebEngineCoreUIDelegatesManager_hideTouchSelectionMenu(self.h)

proc hideAutofillPopup*(self: gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager): void =
  fcQtWebEngineCoreUIDelegatesManager_hideAutofillPopup(self.h)

proc tr*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQtWebEngineCoreUIDelegatesManager_trSourceTextDisambiguation(sourceText, disambiguation)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreUIDelegatesManager, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQtWebEngineCoreUIDelegatesManager_trSourceTextDisambiguationN(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc metaObject*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtWebEngineCoreAutofillPopupEventFilter_metaObject(self.h), owned: false)

proc metacast*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, param1: cstring): pointer =
  fcQtWebEngineCoreAutofillPopupEventFilter_metacast(self.h, param1)

proc metacall*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, param1: cint, param2: cint, param3: pointer): cint =
  fcQtWebEngineCoreAutofillPopupEventFilter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, s: cstring): string =
  let v_ms = fcQtWebEngineCoreAutofillPopupEventFilter_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, s: cstring, c: cstring): string =
  let v_ms = fcQtWebEngineCoreAutofillPopupEventFilter_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQtWebEngineCoreAutofillPopupEventFilter_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter): cint =
  fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, signal: cstring): cint =
  fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQtWebEngineCoreAutofillPopupEventFilter_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_ui_delegates_manager_types.QtWebEngineCoreAutofillPopupEventFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtWebEngineCore__AutofillPopupEventFilter_staticMetaObject())
