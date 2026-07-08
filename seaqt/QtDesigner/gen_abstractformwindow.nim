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


{.compile("gen_abstractformwindow.cpp", QtDesignerCFlags).}


type QDesignerFormWindowInterfaceFeatureFlagEnum* = distinct cint
template EditFeature*(_: type QDesignerFormWindowInterfaceFeatureFlagEnum): untyped = 1
template GridFeature*(_: type QDesignerFormWindowInterfaceFeatureFlagEnum): untyped = 2
template TabOrderFeature*(_: type QDesignerFormWindowInterfaceFeatureFlagEnum): untyped = 4
template DefaultFeature*(_: type QDesignerFormWindowInterfaceFeatureFlagEnum): untyped = 3


type QDesignerFormWindowInterfaceResourceFileSaveModeEnum* = distinct cint
template SaveAllResourceFiles*(_: type QDesignerFormWindowInterfaceResourceFileSaveModeEnum): untyped = 0
template SaveOnlyUsedResourceFiles*(_: type QDesignerFormWindowInterfaceResourceFileSaveModeEnum): untyped = 1
template DontSaveResourceFiles*(_: type QDesignerFormWindowInterfaceResourceFileSaveModeEnum): untyped = 2


import ./gen_abstractformwindow_types
export gen_abstractformwindow_types

import
  ../QtCore/gen_qdir_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtGui/gen_qundostack_types,
  ../QtWidgets/gen_qwidget,
  ./gen_abstractformwindowcursor_types,
  ./gen_abstractformwindowtool_types
export
  gen_qdir_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qundostack_types,
  gen_qwidget,
  gen_abstractformwindowcursor_types,
  gen_abstractformwindowtool_types

type cQDesignerFormWindowInterface*{.exportc: "QDesignerFormWindowInterface", incompleteStruct.} = object

proc fcQDesignerFormWindowInterface_metaObject(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_metaObject".}
proc fcQDesignerFormWindowInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerFormWindowInterface_metacast".}
proc fcQDesignerFormWindowInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerFormWindowInterface_metacall".}
proc fcQDesignerFormWindowInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_tr".}
proc fcQDesignerFormWindowInterface_fileName(self: pointer): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_fileName".}
proc fcQDesignerFormWindowInterface_absoluteDir(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_absoluteDir".}
proc fcQDesignerFormWindowInterface_contents(self: pointer): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_contents".}
proc fcQDesignerFormWindowInterface_checkContents(self: pointer): struct_seaqt_array {.importc: "QDesignerFormWindowInterface_checkContents".}
proc fcQDesignerFormWindowInterface_features(self: pointer): cint {.importc: "QDesignerFormWindowInterface_features".}
proc fcQDesignerFormWindowInterface_hasFeature(self: pointer, f: cint): bool {.importc: "QDesignerFormWindowInterface_hasFeature".}
proc fcQDesignerFormWindowInterface_author(self: pointer): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_author".}
proc fcQDesignerFormWindowInterface_setAuthor(self: pointer, author: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_setAuthor".}
proc fcQDesignerFormWindowInterface_comment(self: pointer): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_comment".}
proc fcQDesignerFormWindowInterface_setComment(self: pointer, comment: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_setComment".}
proc fcQDesignerFormWindowInterface_layoutDefault(self: pointer, margin: ptr cint, spacing: ptr cint): void {.importc: "QDesignerFormWindowInterface_layoutDefault".}
proc fcQDesignerFormWindowInterface_setLayoutDefault(self: pointer, margin: cint, spacing: cint): void {.importc: "QDesignerFormWindowInterface_setLayoutDefault".}
proc fcQDesignerFormWindowInterface_setLayoutFunction(self: pointer, margin: struct_seaqt_string, spacing: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_setLayoutFunction".}
proc fcQDesignerFormWindowInterface_pixmapFunction(self: pointer): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_pixmapFunction".}
proc fcQDesignerFormWindowInterface_setPixmapFunction(self: pointer, pixmapFunction: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_setPixmapFunction".}
proc fcQDesignerFormWindowInterface_exportMacro(self: pointer): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_exportMacro".}
proc fcQDesignerFormWindowInterface_setExportMacro(self: pointer, exportMacro: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_setExportMacro".}
proc fcQDesignerFormWindowInterface_includeHints(self: pointer): struct_seaqt_array {.importc: "QDesignerFormWindowInterface_includeHints".}
proc fcQDesignerFormWindowInterface_setIncludeHints(self: pointer, includeHints: struct_seaqt_array): void {.importc: "QDesignerFormWindowInterface_setIncludeHints".}
proc fcQDesignerFormWindowInterface_resourceFileSaveMode(self: pointer): cint {.importc: "QDesignerFormWindowInterface_resourceFileSaveMode".}
proc fcQDesignerFormWindowInterface_setResourceFileSaveMode(self: pointer, behaviour: cint): void {.importc: "QDesignerFormWindowInterface_setResourceFileSaveMode".}
proc fcQDesignerFormWindowInterface_activeResourceFilePaths(self: pointer): struct_seaqt_array {.importc: "QDesignerFormWindowInterface_activeResourceFilePaths".}
proc fcQDesignerFormWindowInterface_cursor(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_cursor".}
proc fcQDesignerFormWindowInterface_toolCount(self: pointer): cint {.importc: "QDesignerFormWindowInterface_toolCount".}
proc fcQDesignerFormWindowInterface_currentTool(self: pointer): cint {.importc: "QDesignerFormWindowInterface_currentTool".}
proc fcQDesignerFormWindowInterface_setCurrentTool(self: pointer, index: cint): void {.importc: "QDesignerFormWindowInterface_setCurrentTool".}
proc fcQDesignerFormWindowInterface_tool(self: pointer, index: cint): pointer {.importc: "QDesignerFormWindowInterface_tool".}
proc fcQDesignerFormWindowInterface_registerTool(self: pointer, tool: pointer): void {.importc: "QDesignerFormWindowInterface_registerTool".}
proc fcQDesignerFormWindowInterface_grid(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_grid".}
proc fcQDesignerFormWindowInterface_mainContainer(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_mainContainer".}
proc fcQDesignerFormWindowInterface_setMainContainer(self: pointer, mainContainer: pointer): void {.importc: "QDesignerFormWindowInterface_setMainContainer".}
proc fcQDesignerFormWindowInterface_formContainer(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_formContainer".}
proc fcQDesignerFormWindowInterface_isManaged(self: pointer, widget: pointer): bool {.importc: "QDesignerFormWindowInterface_isManaged".}
proc fcQDesignerFormWindowInterface_isDirty(self: pointer): bool {.importc: "QDesignerFormWindowInterface_isDirty".}
proc fcQDesignerFormWindowInterface_findFormWindow(w: pointer): pointer {.importc: "QDesignerFormWindowInterface_findFormWindow".}
proc fcQDesignerFormWindowInterface_findFormWindowWithObj(obj: pointer): pointer {.importc: "QDesignerFormWindowInterface_findFormWindowWithObj".}
proc fcQDesignerFormWindowInterface_commandHistory(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_commandHistory".}
proc fcQDesignerFormWindowInterface_beginCommand(self: pointer, description: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_beginCommand".}
proc fcQDesignerFormWindowInterface_endCommand(self: pointer): void {.importc: "QDesignerFormWindowInterface_endCommand".}
proc fcQDesignerFormWindowInterface_simplifySelection(self: pointer, widgets: struct_seaqt_array): void {.importc: "QDesignerFormWindowInterface_simplifySelection".}
proc fcQDesignerFormWindowInterface_emitSelectionChanged(self: pointer): void {.importc: "QDesignerFormWindowInterface_emitSelectionChanged".}
proc fcQDesignerFormWindowInterface_resourceFiles(self: pointer): struct_seaqt_array {.importc: "QDesignerFormWindowInterface_resourceFiles".}
proc fcQDesignerFormWindowInterface_addResourceFile(self: pointer, path: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_addResourceFile".}
proc fcQDesignerFormWindowInterface_removeResourceFile(self: pointer, path: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_removeResourceFile".}
proc fcQDesignerFormWindowInterface_ensureUniqueObjectName(self: pointer, objectVal: pointer): void {.importc: "QDesignerFormWindowInterface_ensureUniqueObjectName".}
proc fcQDesignerFormWindowInterface_manageWidget(self: pointer, widget: pointer): void {.importc: "QDesignerFormWindowInterface_manageWidget".}
proc fcQDesignerFormWindowInterface_unmanageWidget(self: pointer, widget: pointer): void {.importc: "QDesignerFormWindowInterface_unmanageWidget".}
proc fcQDesignerFormWindowInterface_setFeatures(self: pointer, f: cint): void {.importc: "QDesignerFormWindowInterface_setFeatures".}
proc fcQDesignerFormWindowInterface_setDirty(self: pointer, dirty: bool): void {.importc: "QDesignerFormWindowInterface_setDirty".}
proc fcQDesignerFormWindowInterface_clearSelection(self: pointer, changePropertyDisplay: bool): void {.importc: "QDesignerFormWindowInterface_clearSelection".}
proc fcQDesignerFormWindowInterface_selectWidget(self: pointer, w: pointer, select: bool): void {.importc: "QDesignerFormWindowInterface_selectWidget".}
proc fcQDesignerFormWindowInterface_setGrid(self: pointer, grid: pointer): void {.importc: "QDesignerFormWindowInterface_setGrid".}
proc fcQDesignerFormWindowInterface_setFileName(self: pointer, fileName: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_setFileName".}
proc fcQDesignerFormWindowInterface_setContentsWithContents(self: pointer, contents: struct_seaqt_string): bool {.importc: "QDesignerFormWindowInterface_setContentsWithContents".}
proc fcQDesignerFormWindowInterface_editWidgets(self: pointer): void {.importc: "QDesignerFormWindowInterface_editWidgets".}
proc fcQDesignerFormWindowInterface_activateResourceFilePaths(self: pointer, paths: struct_seaqt_array): void {.importc: "QDesignerFormWindowInterface_activateResourceFilePaths".}
proc fcQDesignerFormWindowInterface_mainContainerChanged(self: pointer, mainContainer: pointer): void {.importc: "QDesignerFormWindowInterface_mainContainerChanged".}
proc fcQDesignerFormWindowInterface_connect_mainContainerChanged(self: pointer, slot: int, callback: proc (slot: int, mainContainer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_mainContainerChanged".}
proc fcQDesignerFormWindowInterface_toolChanged(self: pointer, toolIndex: cint): void {.importc: "QDesignerFormWindowInterface_toolChanged".}
proc fcQDesignerFormWindowInterface_connect_toolChanged(self: pointer, slot: int, callback: proc (slot: int, toolIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_toolChanged".}
proc fcQDesignerFormWindowInterface_fileNameChanged(self: pointer, fileName: struct_seaqt_string): void {.importc: "QDesignerFormWindowInterface_fileNameChanged".}
proc fcQDesignerFormWindowInterface_connect_fileNameChanged(self: pointer, slot: int, callback: proc (slot: int, fileName: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_fileNameChanged".}
proc fcQDesignerFormWindowInterface_featureChanged(self: pointer, f: cint): void {.importc: "QDesignerFormWindowInterface_featureChanged".}
proc fcQDesignerFormWindowInterface_connect_featureChanged(self: pointer, slot: int, callback: proc (slot: int, f: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_featureChanged".}
proc fcQDesignerFormWindowInterface_selectionChanged(self: pointer): void {.importc: "QDesignerFormWindowInterface_selectionChanged".}
proc fcQDesignerFormWindowInterface_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_selectionChanged".}
proc fcQDesignerFormWindowInterface_geometryChanged(self: pointer): void {.importc: "QDesignerFormWindowInterface_geometryChanged".}
proc fcQDesignerFormWindowInterface_connect_geometryChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_geometryChanged".}
proc fcQDesignerFormWindowInterface_resourceFilesChanged(self: pointer): void {.importc: "QDesignerFormWindowInterface_resourceFilesChanged".}
proc fcQDesignerFormWindowInterface_connect_resourceFilesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_resourceFilesChanged".}
proc fcQDesignerFormWindowInterface_widgetManaged(self: pointer, widget: pointer): void {.importc: "QDesignerFormWindowInterface_widgetManaged".}
proc fcQDesignerFormWindowInterface_connect_widgetManaged(self: pointer, slot: int, callback: proc (slot: int, widget: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_widgetManaged".}
proc fcQDesignerFormWindowInterface_widgetUnmanaged(self: pointer, widget: pointer): void {.importc: "QDesignerFormWindowInterface_widgetUnmanaged".}
proc fcQDesignerFormWindowInterface_connect_widgetUnmanaged(self: pointer, slot: int, callback: proc (slot: int, widget: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_widgetUnmanaged".}
proc fcQDesignerFormWindowInterface_aboutToUnmanageWidget(self: pointer, widget: pointer): void {.importc: "QDesignerFormWindowInterface_aboutToUnmanageWidget".}
proc fcQDesignerFormWindowInterface_connect_aboutToUnmanageWidget(self: pointer, slot: int, callback: proc (slot: int, widget: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_aboutToUnmanageWidget".}
proc fcQDesignerFormWindowInterface_activated(self: pointer, widget: pointer): void {.importc: "QDesignerFormWindowInterface_activated".}
proc fcQDesignerFormWindowInterface_connect_activated(self: pointer, slot: int, callback: proc (slot: int, widget: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_activated".}
proc fcQDesignerFormWindowInterface_changed(self: pointer): void {.importc: "QDesignerFormWindowInterface_changed".}
proc fcQDesignerFormWindowInterface_connect_changed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_changed".}
proc fcQDesignerFormWindowInterface_widgetRemoved(self: pointer, w: pointer): void {.importc: "QDesignerFormWindowInterface_widgetRemoved".}
proc fcQDesignerFormWindowInterface_connect_widgetRemoved(self: pointer, slot: int, callback: proc (slot: int, w: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_widgetRemoved".}
proc fcQDesignerFormWindowInterface_objectRemoved(self: pointer, o: pointer): void {.importc: "QDesignerFormWindowInterface_objectRemoved".}
proc fcQDesignerFormWindowInterface_connect_objectRemoved(self: pointer, slot: int, callback: proc (slot: int, o: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowInterface_connect_objectRemoved".}
proc fcQDesignerFormWindowInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_tr2".}
proc fcQDesignerFormWindowInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerFormWindowInterface_tr3".}
proc fcQDesignerFormWindowInterface_activateResourceFilePaths2(self: pointer, paths: struct_seaqt_array, errorCount: ptr cint): void {.importc: "QDesignerFormWindowInterface_activateResourceFilePaths2".}
proc fcQDesignerFormWindowInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerFormWindowInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerFormWindowInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerFormWindowInterface_protectedbase_create".}
proc fcQDesignerFormWindowInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerFormWindowInterface_protectedbase_destroy".}
proc fcQDesignerFormWindowInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerFormWindowInterface_protectedbase_focusNextChild".}
proc fcQDesignerFormWindowInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerFormWindowInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerFormWindowInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerFormWindowInterface_protectedbase_sender".}
proc fcQDesignerFormWindowInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerFormWindowInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerFormWindowInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerFormWindowInterface_protectedbase_receivers".}
proc fcQDesignerFormWindowInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerFormWindowInterface_protectedbase_isSignalConnected".}
proc fcQDesignerFormWindowInterface_staticMetaObject(): pointer {.importc: "QDesignerFormWindowInterface_staticMetaObject".}

proc metaObject*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerFormWindowInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, param1: cstring): pointer =
  fcQDesignerFormWindowInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerFormWindowInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractformwindow_types.QDesignerFormWindowInterface, s: cstring): string =
  let v_ms = fcQDesignerFormWindowInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): string =
  let v_ms = fcQDesignerFormWindowInterface_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc absoluteDir*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDesignerFormWindowInterface_absoluteDir(self.h), owned: true)

proc contents*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): string =
  let v_ms = fcQDesignerFormWindowInterface_contents(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc checkContents*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): seq[string] =
  var v_ma = fcQDesignerFormWindowInterface_checkContents(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc features*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): cint =
  cint(fcQDesignerFormWindowInterface_features(self.h))

proc hasFeature*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, f: cint): bool =
  fcQDesignerFormWindowInterface_hasFeature(self.h, cint(f))

proc author*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): string =
  let v_ms = fcQDesignerFormWindowInterface_author(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAuthor*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, author: openArray[char]): void =
  fcQDesignerFormWindowInterface_setAuthor(self.h, struct_seaqt_string(data: if len(author) > 0: addr author[0] else: nil, len: csize_t(len(author))))

proc comment*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): string =
  let v_ms = fcQDesignerFormWindowInterface_comment(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setComment*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, comment: openArray[char]): void =
  fcQDesignerFormWindowInterface_setComment(self.h, struct_seaqt_string(data: if len(comment) > 0: addr comment[0] else: nil, len: csize_t(len(comment))))

proc layoutDefault*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, margin: ptr cint, spacing: ptr cint): void =
  fcQDesignerFormWindowInterface_layoutDefault(self.h, margin, spacing)

proc setLayoutDefault*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, margin: cint, spacing: cint): void =
  fcQDesignerFormWindowInterface_setLayoutDefault(self.h, margin, spacing)

proc setLayoutFunction*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, margin: openArray[char], spacing: openArray[char]): void =
  fcQDesignerFormWindowInterface_setLayoutFunction(self.h, struct_seaqt_string(data: if len(margin) > 0: addr margin[0] else: nil, len: csize_t(len(margin))), struct_seaqt_string(data: if len(spacing) > 0: addr spacing[0] else: nil, len: csize_t(len(spacing))))

proc pixmapFunction*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): string =
  let v_ms = fcQDesignerFormWindowInterface_pixmapFunction(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPixmapFunction*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, pixmapFunction: openArray[char]): void =
  fcQDesignerFormWindowInterface_setPixmapFunction(self.h, struct_seaqt_string(data: if len(pixmapFunction) > 0: addr pixmapFunction[0] else: nil, len: csize_t(len(pixmapFunction))))

proc exportMacro*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): string =
  let v_ms = fcQDesignerFormWindowInterface_exportMacro(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setExportMacro*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, exportMacro: openArray[char]): void =
  fcQDesignerFormWindowInterface_setExportMacro(self.h, struct_seaqt_string(data: if len(exportMacro) > 0: addr exportMacro[0] else: nil, len: csize_t(len(exportMacro))))

proc includeHints*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): seq[string] =
  var v_ma = fcQDesignerFormWindowInterface_includeHints(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setIncludeHints*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, includeHints: openArray[string]): void =
  var includeHints_CArray = newSeq[struct_seaqt_string](len(includeHints))
  for i in 0..<len(includeHints):
    includeHints_CArray[i] = struct_seaqt_string(data: if len(includeHints[i]) > 0: addr includeHints[i][0] else: nil, len: csize_t(len(includeHints[i])))

  fcQDesignerFormWindowInterface_setIncludeHints(self.h, struct_seaqt_array(len: csize_t(len(includeHints)), data: if len(includeHints) == 0: nil else: addr(includeHints_CArray[0])))

proc resourceFileSaveMode*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): cint =
  cint(fcQDesignerFormWindowInterface_resourceFileSaveMode(self.h))

proc setResourceFileSaveMode*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, behaviour: cint): void =
  fcQDesignerFormWindowInterface_setResourceFileSaveMode(self.h, cint(behaviour))

proc activeResourceFilePaths*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): seq[string] =
  var v_ma = fcQDesignerFormWindowInterface_activeResourceFilePaths(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cursor*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface =
  gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface(h: fcQDesignerFormWindowInterface_cursor(self.h), owned: false)

proc toolCount*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): cint =
  fcQDesignerFormWindowInterface_toolCount(self.h)

proc currentTool*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): cint =
  fcQDesignerFormWindowInterface_currentTool(self.h)

proc setCurrentTool*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, index: cint): void =
  fcQDesignerFormWindowInterface_setCurrentTool(self.h, index)

proc tool*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, index: cint): gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface =
  gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface(h: fcQDesignerFormWindowInterface_tool(self.h, index), owned: false)

proc registerTool*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, tool: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): void =
  fcQDesignerFormWindowInterface_registerTool(self.h, tool.h)

proc grid*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDesignerFormWindowInterface_grid(self.h), owned: true)

proc mainContainer*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerFormWindowInterface_mainContainer(self.h), owned: false)

proc setMainContainer*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, mainContainer: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_setMainContainer(self.h, mainContainer.h)

proc formContainer*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerFormWindowInterface_formContainer(self.h), owned: false)

proc isManaged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): bool =
  fcQDesignerFormWindowInterface_isManaged(self.h, widget.h)

proc isDirty*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): bool =
  fcQDesignerFormWindowInterface_isDirty(self.h)

proc findFormWindow*(_: type gen_abstractformwindow_types.QDesignerFormWindowInterface, w: gen_qwidget_types.QWidget): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowInterface_findFormWindow(w.h), owned: false)

proc findFormWindow*(_: type gen_abstractformwindow_types.QDesignerFormWindowInterface, obj: gen_qobject_types.QObject): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowInterface_findFormWindowWithObj(obj.h), owned: false)

proc commandHistory*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack(h: fcQDesignerFormWindowInterface_commandHistory(self.h), owned: false)

proc beginCommand*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, description: openArray[char]): void =
  fcQDesignerFormWindowInterface_beginCommand(self.h, struct_seaqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc endCommand*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_endCommand(self.h)

proc simplifySelection*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widgets: openArray[gen_qwidget_types.QWidget]): void =
  var widgets_CArray = newSeq[pointer](len(widgets))
  for i in 0..<len(widgets):
    widgets_CArray[i] = widgets[i].h

  fcQDesignerFormWindowInterface_simplifySelection(self.h, struct_seaqt_array(len: csize_t(len(widgets)), data: if len(widgets) == 0: nil else: addr(widgets_CArray[0])))

proc emitSelectionChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_emitSelectionChanged(self.h)

proc resourceFiles*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): seq[string] =
  var v_ma = fcQDesignerFormWindowInterface_resourceFiles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc addResourceFile*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, path: openArray[char]): void =
  fcQDesignerFormWindowInterface_addResourceFile(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc removeResourceFile*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, path: openArray[char]): void =
  fcQDesignerFormWindowInterface_removeResourceFile(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc ensureUniqueObjectName*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, objectVal: gen_qobject_types.QObject): void =
  fcQDesignerFormWindowInterface_ensureUniqueObjectName(self.h, objectVal.h)

proc manageWidget*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_manageWidget(self.h, widget.h)

proc unmanageWidget*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_unmanageWidget(self.h, widget.h)

proc setFeatures*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, f: cint): void =
  fcQDesignerFormWindowInterface_setFeatures(self.h, cint(f))

proc setDirty*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, dirty: bool): void =
  fcQDesignerFormWindowInterface_setDirty(self.h, dirty)

proc clearSelection*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, changePropertyDisplay: bool): void =
  fcQDesignerFormWindowInterface_clearSelection(self.h, changePropertyDisplay)

proc selectWidget*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, w: gen_qwidget_types.QWidget, select: bool): void =
  fcQDesignerFormWindowInterface_selectWidget(self.h, w.h, select)

proc setGrid*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, grid: gen_qpoint_types.QPoint): void =
  fcQDesignerFormWindowInterface_setGrid(self.h, grid.h)

proc setFileName*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, fileName: openArray[char]): void =
  fcQDesignerFormWindowInterface_setFileName(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc setContents*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, contents: openArray[char]): bool =
  fcQDesignerFormWindowInterface_setContentsWithContents(self.h, struct_seaqt_string(data: if len(contents) > 0: addr contents[0] else: nil, len: csize_t(len(contents))))

proc editWidgets*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_editWidgets(self.h)

proc activateResourceFilePaths*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, paths: openArray[string]): void =
  var paths_CArray = newSeq[struct_seaqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_seaqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQDesignerFormWindowInterface_activateResourceFilePaths(self.h, struct_seaqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc mainContainerChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, mainContainer: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_mainContainerChanged(self.h, mainContainer.h)

type QDesignerFormWindowInterfacemainContainerChangedSlot* = proc(mainContainer: gen_qwidget_types.QWidget)
proc fcQDesignerFormWindowInterface_slot_callback_mainContainerChanged(slot: int, mainContainer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacemainContainerChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: mainContainer, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_mainContainerChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacemainContainerChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMainContainerChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacemainContainerChangedSlot) =
  var tmp = new QDesignerFormWindowInterfacemainContainerChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_mainContainerChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_mainContainerChanged, fcQDesignerFormWindowInterface_slot_callback_mainContainerChanged_release)

proc toolChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, toolIndex: cint): void =
  fcQDesignerFormWindowInterface_toolChanged(self.h, toolIndex)

type QDesignerFormWindowInterfacetoolChangedSlot* = proc(toolIndex: cint)
proc fcQDesignerFormWindowInterface_slot_callback_toolChanged(slot: int, toolIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacetoolChangedSlot](cast[pointer](slot))
  let slotval1 = toolIndex

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_toolChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacetoolChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onToolChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacetoolChangedSlot) =
  var tmp = new QDesignerFormWindowInterfacetoolChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_toolChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_toolChanged, fcQDesignerFormWindowInterface_slot_callback_toolChanged_release)

proc fileNameChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, fileName: openArray[char]): void =
  fcQDesignerFormWindowInterface_fileNameChanged(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

type QDesignerFormWindowInterfacefileNameChangedSlot* = proc(fileName: openArray[char])
proc fcQDesignerFormWindowInterface_slot_callback_fileNameChanged(slot: int, fileName: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacefileNameChangedSlot](cast[pointer](slot))
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval1 = vfileNamex_ret

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_fileNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacefileNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFileNameChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacefileNameChangedSlot) =
  var tmp = new QDesignerFormWindowInterfacefileNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_fileNameChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_fileNameChanged, fcQDesignerFormWindowInterface_slot_callback_fileNameChanged_release)

proc featureChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, f: cint): void =
  fcQDesignerFormWindowInterface_featureChanged(self.h, cint(f))

type QDesignerFormWindowInterfacefeatureChangedSlot* = proc(f: cint)
proc fcQDesignerFormWindowInterface_slot_callback_featureChanged(slot: int, f: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacefeatureChangedSlot](cast[pointer](slot))
  let slotval1 = cint(f)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_featureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacefeatureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFeatureChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacefeatureChangedSlot) =
  var tmp = new QDesignerFormWindowInterfacefeatureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_featureChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_featureChanged, fcQDesignerFormWindowInterface_slot_callback_featureChanged_release)

proc selectionChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_selectionChanged(self.h)

type QDesignerFormWindowInterfaceselectionChangedSlot* = proc()
proc fcQDesignerFormWindowInterface_slot_callback_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfaceselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerFormWindowInterface_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfaceselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectionChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfaceselectionChangedSlot) =
  var tmp = new QDesignerFormWindowInterfaceselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_selectionChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_selectionChanged, fcQDesignerFormWindowInterface_slot_callback_selectionChanged_release)

proc geometryChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_geometryChanged(self.h)

type QDesignerFormWindowInterfacegeometryChangedSlot* = proc()
proc fcQDesignerFormWindowInterface_slot_callback_geometryChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacegeometryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerFormWindowInterface_slot_callback_geometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacegeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onGeometryChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacegeometryChangedSlot) =
  var tmp = new QDesignerFormWindowInterfacegeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_geometryChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_geometryChanged, fcQDesignerFormWindowInterface_slot_callback_geometryChanged_release)

proc resourceFilesChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_resourceFilesChanged(self.h)

type QDesignerFormWindowInterfaceresourceFilesChangedSlot* = proc()
proc fcQDesignerFormWindowInterface_slot_callback_resourceFilesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfaceresourceFilesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerFormWindowInterface_slot_callback_resourceFilesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfaceresourceFilesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResourceFilesChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfaceresourceFilesChangedSlot) =
  var tmp = new QDesignerFormWindowInterfaceresourceFilesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_resourceFilesChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_resourceFilesChanged, fcQDesignerFormWindowInterface_slot_callback_resourceFilesChanged_release)

proc widgetManaged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_widgetManaged(self.h, widget.h)

type QDesignerFormWindowInterfacewidgetManagedSlot* = proc(widget: gen_qwidget_types.QWidget)
proc fcQDesignerFormWindowInterface_slot_callback_widgetManaged(slot: int, widget: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacewidgetManagedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_widgetManaged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacewidgetManagedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWidgetManaged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacewidgetManagedSlot) =
  var tmp = new QDesignerFormWindowInterfacewidgetManagedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_widgetManaged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_widgetManaged, fcQDesignerFormWindowInterface_slot_callback_widgetManaged_release)

proc widgetUnmanaged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_widgetUnmanaged(self.h, widget.h)

type QDesignerFormWindowInterfacewidgetUnmanagedSlot* = proc(widget: gen_qwidget_types.QWidget)
proc fcQDesignerFormWindowInterface_slot_callback_widgetUnmanaged(slot: int, widget: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacewidgetUnmanagedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_widgetUnmanaged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacewidgetUnmanagedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWidgetUnmanaged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacewidgetUnmanagedSlot) =
  var tmp = new QDesignerFormWindowInterfacewidgetUnmanagedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_widgetUnmanaged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_widgetUnmanaged, fcQDesignerFormWindowInterface_slot_callback_widgetUnmanaged_release)

proc aboutToUnmanageWidget*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_aboutToUnmanageWidget(self.h, widget.h)

type QDesignerFormWindowInterfaceaboutToUnmanageWidgetSlot* = proc(widget: gen_qwidget_types.QWidget)
proc fcQDesignerFormWindowInterface_slot_callback_aboutToUnmanageWidget(slot: int, widget: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfaceaboutToUnmanageWidgetSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_aboutToUnmanageWidget_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfaceaboutToUnmanageWidgetSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAboutToUnmanageWidget*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfaceaboutToUnmanageWidgetSlot) =
  var tmp = new QDesignerFormWindowInterfaceaboutToUnmanageWidgetSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_aboutToUnmanageWidget(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_aboutToUnmanageWidget, fcQDesignerFormWindowInterface_slot_callback_aboutToUnmanageWidget_release)

proc activated*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_activated(self.h, widget.h)

type QDesignerFormWindowInterfaceactivatedSlot* = proc(widget: gen_qwidget_types.QWidget)
proc fcQDesignerFormWindowInterface_slot_callback_activated(slot: int, widget: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfaceactivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfaceactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActivated*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfaceactivatedSlot) =
  var tmp = new QDesignerFormWindowInterfaceactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_activated(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_activated, fcQDesignerFormWindowInterface_slot_callback_activated_release)

proc changed*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_changed(self.h)

type QDesignerFormWindowInterfacechangedSlot* = proc()
proc fcQDesignerFormWindowInterface_slot_callback_changed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacechangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerFormWindowInterface_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacechangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onChanged*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacechangedSlot) =
  var tmp = new QDesignerFormWindowInterfacechangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_changed(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_changed, fcQDesignerFormWindowInterface_slot_callback_changed_release)

proc widgetRemoved*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, w: gen_qwidget_types.QWidget): void =
  fcQDesignerFormWindowInterface_widgetRemoved(self.h, w.h)

type QDesignerFormWindowInterfacewidgetRemovedSlot* = proc(w: gen_qwidget_types.QWidget)
proc fcQDesignerFormWindowInterface_slot_callback_widgetRemoved(slot: int, w: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfacewidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: w, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_widgetRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfacewidgetRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWidgetRemoved*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfacewidgetRemovedSlot) =
  var tmp = new QDesignerFormWindowInterfacewidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_widgetRemoved(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_widgetRemoved, fcQDesignerFormWindowInterface_slot_callback_widgetRemoved_release)

proc objectRemoved*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, o: gen_qobject_types.QObject): void =
  fcQDesignerFormWindowInterface_objectRemoved(self.h, o.h)

type QDesignerFormWindowInterfaceobjectRemovedSlot* = proc(o: gen_qobject_types.QObject)
proc fcQDesignerFormWindowInterface_slot_callback_objectRemoved(slot: int, o: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowInterfaceobjectRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: o, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowInterface_slot_callback_objectRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowInterfaceobjectRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onObjectRemoved*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, slot: QDesignerFormWindowInterfaceobjectRemovedSlot) =
  var tmp = new QDesignerFormWindowInterfaceobjectRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowInterface_connect_objectRemoved(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowInterface_slot_callback_objectRemoved, fcQDesignerFormWindowInterface_slot_callback_objectRemoved_release)

proc tr*(_: type gen_abstractformwindow_types.QDesignerFormWindowInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerFormWindowInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractformwindow_types.QDesignerFormWindowInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerFormWindowInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc activateResourceFilePaths*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, paths: openArray[string], errorCount: ptr cint): void =
  var paths_CArray = newSeq[struct_seaqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_seaqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQDesignerFormWindowInterface_activateResourceFilePaths2(self.h, struct_seaqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), errorCount)

proc updateMicroFocus*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): bool =
  fcQDesignerFormWindowInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): bool =
  fcQDesignerFormWindowInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerFormWindowInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface): cint =
  fcQDesignerFormWindowInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, signal: cstring): cint =
  fcQDesignerFormWindowInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractformwindow_types.QDesignerFormWindowInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerFormWindowInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractformwindow_types.QDesignerFormWindowInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerFormWindowInterface_staticMetaObject())
