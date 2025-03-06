import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qfiledialog.cpp", cflags).}


type QFileDialogViewModeEnum* = distinct cint
template Detail*(_: type QFileDialogViewModeEnum): untyped = 0
template List*(_: type QFileDialogViewModeEnum): untyped = 1


type QFileDialogFileModeEnum* = distinct cint
template AnyFile*(_: type QFileDialogFileModeEnum): untyped = 0
template ExistingFile*(_: type QFileDialogFileModeEnum): untyped = 1
template Directory*(_: type QFileDialogFileModeEnum): untyped = 2
template ExistingFiles*(_: type QFileDialogFileModeEnum): untyped = 3


type QFileDialogAcceptModeEnum* = distinct cint
template AcceptOpen*(_: type QFileDialogAcceptModeEnum): untyped = 0
template AcceptSave*(_: type QFileDialogAcceptModeEnum): untyped = 1


type QFileDialogDialogLabelEnum* = distinct cint
template LookIn*(_: type QFileDialogDialogLabelEnum): untyped = 0
template FileName*(_: type QFileDialogDialogLabelEnum): untyped = 1
template FileType*(_: type QFileDialogDialogLabelEnum): untyped = 2
template Accept*(_: type QFileDialogDialogLabelEnum): untyped = 3
template Reject*(_: type QFileDialogDialogLabelEnum): untyped = 4


type QFileDialogOptionEnum* = distinct cint
template ShowDirsOnly*(_: type QFileDialogOptionEnum): untyped = 1
template DontResolveSymlinks*(_: type QFileDialogOptionEnum): untyped = 2
template DontConfirmOverwrite*(_: type QFileDialogOptionEnum): untyped = 4
template DontUseNativeDialog*(_: type QFileDialogOptionEnum): untyped = 8
template ReadOnly*(_: type QFileDialogOptionEnum): untyped = 16
template HideNameFilterDetails*(_: type QFileDialogOptionEnum): untyped = 32
template DontUseCustomDirectoryIcons*(_: type QFileDialogOptionEnum): untyped = 64


import ./gen_qfiledialog_types
export gen_qfiledialog_types

import
  ../QtCore/gen_qabstractproxymodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdir_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qabstractfileiconprovider_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qdialog,
  ./gen_qwidget_types
export
  gen_qabstractproxymodel_types,
  gen_qcoreevent_types,
  gen_qdir_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qabstractfileiconprovider_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractitemdelegate_types,
  gen_qdialog,
  gen_qwidget_types

type cQFileDialog*{.exportc: "QFileDialog", incompleteStruct.} = object

proc fcQFileDialog_new(parent: pointer): ptr cQFileDialog {.importc: "QFileDialog_new".}
proc fcQFileDialog_new2(parent: pointer, f: cint): ptr cQFileDialog {.importc: "QFileDialog_new2".}
proc fcQFileDialog_new3(): ptr cQFileDialog {.importc: "QFileDialog_new3".}
proc fcQFileDialog_new4(parent: pointer, caption: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new4".}
proc fcQFileDialog_new5(parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new5".}
proc fcQFileDialog_new6(parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string, filter: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new6".}
proc fcQFileDialog_metaObject(self: pointer, ): pointer {.importc: "QFileDialog_metaObject".}
proc fcQFileDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDialog_metacast".}
proc fcQFileDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDialog_metacall".}
proc fcQFileDialog_tr(s: cstring): struct_miqt_string {.importc: "QFileDialog_tr".}
proc fcQFileDialog_setDirectory(self: pointer, directory: struct_miqt_string): void {.importc: "QFileDialog_setDirectory".}
proc fcQFileDialog_setDirectoryWithDirectory(self: pointer, directory: pointer): void {.importc: "QFileDialog_setDirectoryWithDirectory".}
proc fcQFileDialog_directory(self: pointer, ): pointer {.importc: "QFileDialog_directory".}
proc fcQFileDialog_setDirectoryUrl(self: pointer, directory: pointer): void {.importc: "QFileDialog_setDirectoryUrl".}
proc fcQFileDialog_directoryUrl(self: pointer, ): pointer {.importc: "QFileDialog_directoryUrl".}
proc fcQFileDialog_selectFile(self: pointer, filename: struct_miqt_string): void {.importc: "QFileDialog_selectFile".}
proc fcQFileDialog_selectedFiles(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_selectedFiles".}
proc fcQFileDialog_selectUrl(self: pointer, url: pointer): void {.importc: "QFileDialog_selectUrl".}
proc fcQFileDialog_selectedUrls(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_selectedUrls".}
proc fcQFileDialog_setNameFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_setNameFilter".}
proc fcQFileDialog_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileDialog_setNameFilters".}
proc fcQFileDialog_nameFilters(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_nameFilters".}
proc fcQFileDialog_selectNameFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_selectNameFilter".}
proc fcQFileDialog_selectedMimeTypeFilter(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_selectedMimeTypeFilter".}
proc fcQFileDialog_selectedNameFilter(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_selectedNameFilter".}
proc fcQFileDialog_setMimeTypeFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileDialog_setMimeTypeFilters".}
proc fcQFileDialog_mimeTypeFilters(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_mimeTypeFilters".}
proc fcQFileDialog_selectMimeTypeFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_selectMimeTypeFilter".}
proc fcQFileDialog_filter(self: pointer, ): cint {.importc: "QFileDialog_filter".}
proc fcQFileDialog_setFilter(self: pointer, filters: cint): void {.importc: "QFileDialog_setFilter".}
proc fcQFileDialog_setViewMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setViewMode".}
proc fcQFileDialog_viewMode(self: pointer, ): cint {.importc: "QFileDialog_viewMode".}
proc fcQFileDialog_setFileMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setFileMode".}
proc fcQFileDialog_fileMode(self: pointer, ): cint {.importc: "QFileDialog_fileMode".}
proc fcQFileDialog_setAcceptMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setAcceptMode".}
proc fcQFileDialog_acceptMode(self: pointer, ): cint {.importc: "QFileDialog_acceptMode".}
proc fcQFileDialog_setSidebarUrls(self: pointer, urls: struct_miqt_array): void {.importc: "QFileDialog_setSidebarUrls".}
proc fcQFileDialog_sidebarUrls(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_sidebarUrls".}
proc fcQFileDialog_saveState(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_saveState".}
proc fcQFileDialog_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QFileDialog_restoreState".}
proc fcQFileDialog_setDefaultSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QFileDialog_setDefaultSuffix".}
proc fcQFileDialog_defaultSuffix(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_defaultSuffix".}
proc fcQFileDialog_setHistory(self: pointer, paths: struct_miqt_array): void {.importc: "QFileDialog_setHistory".}
proc fcQFileDialog_history(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_history".}
proc fcQFileDialog_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QFileDialog_setItemDelegate".}
proc fcQFileDialog_itemDelegate(self: pointer, ): pointer {.importc: "QFileDialog_itemDelegate".}
proc fcQFileDialog_setIconProvider(self: pointer, provider: pointer): void {.importc: "QFileDialog_setIconProvider".}
proc fcQFileDialog_iconProvider(self: pointer, ): pointer {.importc: "QFileDialog_iconProvider".}
proc fcQFileDialog_setLabelText(self: pointer, label: cint, text: struct_miqt_string): void {.importc: "QFileDialog_setLabelText".}
proc fcQFileDialog_labelText(self: pointer, label: cint): struct_miqt_string {.importc: "QFileDialog_labelText".}
proc fcQFileDialog_setSupportedSchemes(self: pointer, schemes: struct_miqt_array): void {.importc: "QFileDialog_setSupportedSchemes".}
proc fcQFileDialog_supportedSchemes(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_supportedSchemes".}
proc fcQFileDialog_setProxyModel(self: pointer, model: pointer): void {.importc: "QFileDialog_setProxyModel".}
proc fcQFileDialog_proxyModel(self: pointer, ): pointer {.importc: "QFileDialog_proxyModel".}
proc fcQFileDialog_setOption(self: pointer, option: cint): void {.importc: "QFileDialog_setOption".}
proc fcQFileDialog_testOption(self: pointer, option: cint): bool {.importc: "QFileDialog_testOption".}
proc fcQFileDialog_setOptions(self: pointer, options: cint): void {.importc: "QFileDialog_setOptions".}
proc fcQFileDialog_options(self: pointer, ): cint {.importc: "QFileDialog_options".}
proc fcQFileDialog_setVisible(self: pointer, visible: bool): void {.importc: "QFileDialog_setVisible".}
proc fcQFileDialog_fileSelected(self: pointer, file: struct_miqt_string): void {.importc: "QFileDialog_fileSelected".}
proc fcQFileDialog_connect_fileSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_fileSelected".}
proc fcQFileDialog_filesSelected(self: pointer, files: struct_miqt_array): void {.importc: "QFileDialog_filesSelected".}
proc fcQFileDialog_connect_filesSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_filesSelected".}
proc fcQFileDialog_currentChanged(self: pointer, path: struct_miqt_string): void {.importc: "QFileDialog_currentChanged".}
proc fcQFileDialog_connect_currentChanged(self: pointer, slot: int) {.importc: "QFileDialog_connect_currentChanged".}
proc fcQFileDialog_directoryEntered(self: pointer, directory: struct_miqt_string): void {.importc: "QFileDialog_directoryEntered".}
proc fcQFileDialog_connect_directoryEntered(self: pointer, slot: int) {.importc: "QFileDialog_connect_directoryEntered".}
proc fcQFileDialog_urlSelected(self: pointer, url: pointer): void {.importc: "QFileDialog_urlSelected".}
proc fcQFileDialog_connect_urlSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_urlSelected".}
proc fcQFileDialog_urlsSelected(self: pointer, urls: struct_miqt_array): void {.importc: "QFileDialog_urlsSelected".}
proc fcQFileDialog_connect_urlsSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_urlsSelected".}
proc fcQFileDialog_currentUrlChanged(self: pointer, url: pointer): void {.importc: "QFileDialog_currentUrlChanged".}
proc fcQFileDialog_connect_currentUrlChanged(self: pointer, slot: int) {.importc: "QFileDialog_connect_currentUrlChanged".}
proc fcQFileDialog_directoryUrlEntered(self: pointer, directory: pointer): void {.importc: "QFileDialog_directoryUrlEntered".}
proc fcQFileDialog_connect_directoryUrlEntered(self: pointer, slot: int) {.importc: "QFileDialog_connect_directoryUrlEntered".}
proc fcQFileDialog_filterSelected(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_filterSelected".}
proc fcQFileDialog_connect_filterSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_filterSelected".}
proc fcQFileDialog_getOpenFileName(): struct_miqt_string {.importc: "QFileDialog_getOpenFileName".}
proc fcQFileDialog_getOpenFileUrl(): pointer {.importc: "QFileDialog_getOpenFileUrl".}
proc fcQFileDialog_getSaveFileName(): struct_miqt_string {.importc: "QFileDialog_getSaveFileName".}
proc fcQFileDialog_getSaveFileUrl(): pointer {.importc: "QFileDialog_getSaveFileUrl".}
proc fcQFileDialog_getExistingDirectory(): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory".}
proc fcQFileDialog_getExistingDirectoryUrl(): pointer {.importc: "QFileDialog_getExistingDirectoryUrl".}
proc fcQFileDialog_getOpenFileNames(): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames".}
proc fcQFileDialog_getOpenFileUrls(): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls".}
proc fcQFileDialog_saveFileContent(fileContent: struct_miqt_string, fileNameHint: struct_miqt_string): void {.importc: "QFileDialog_saveFileContent".}
proc fcQFileDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDialog_tr2".}
proc fcQFileDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDialog_tr3".}
proc fcQFileDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFileDialog_setOption2".}
proc fcQFileDialog_getOpenFileName1(parent: pointer): struct_miqt_string {.importc: "QFileDialog_getOpenFileName1".}
proc fcQFileDialog_getOpenFileName2(parent: pointer, caption: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getOpenFileName2".}
proc fcQFileDialog_getOpenFileName3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getOpenFileName3".}
proc fcQFileDialog_getOpenFileName4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, filter: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getOpenFileName4".}
proc fcQFileDialog_getOpenFileUrl1(parent: pointer): pointer {.importc: "QFileDialog_getOpenFileUrl1".}
proc fcQFileDialog_getOpenFileUrl2(parent: pointer, caption: struct_miqt_string): pointer {.importc: "QFileDialog_getOpenFileUrl2".}
proc fcQFileDialog_getOpenFileUrl3(parent: pointer, caption: struct_miqt_string, dir: pointer): pointer {.importc: "QFileDialog_getOpenFileUrl3".}
proc fcQFileDialog_getOpenFileUrl4(parent: pointer, caption: struct_miqt_string, dir: pointer, filter: struct_miqt_string): pointer {.importc: "QFileDialog_getOpenFileUrl4".}
proc fcQFileDialog_getSaveFileName1(parent: pointer): struct_miqt_string {.importc: "QFileDialog_getSaveFileName1".}
proc fcQFileDialog_getSaveFileName2(parent: pointer, caption: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getSaveFileName2".}
proc fcQFileDialog_getSaveFileName3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getSaveFileName3".}
proc fcQFileDialog_getSaveFileName4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, filter: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getSaveFileName4".}
proc fcQFileDialog_getSaveFileUrl1(parent: pointer): pointer {.importc: "QFileDialog_getSaveFileUrl1".}
proc fcQFileDialog_getSaveFileUrl2(parent: pointer, caption: struct_miqt_string): pointer {.importc: "QFileDialog_getSaveFileUrl2".}
proc fcQFileDialog_getSaveFileUrl3(parent: pointer, caption: struct_miqt_string, dir: pointer): pointer {.importc: "QFileDialog_getSaveFileUrl3".}
proc fcQFileDialog_getSaveFileUrl4(parent: pointer, caption: struct_miqt_string, dir: pointer, filter: struct_miqt_string): pointer {.importc: "QFileDialog_getSaveFileUrl4".}
proc fcQFileDialog_getExistingDirectory1(parent: pointer): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory1".}
proc fcQFileDialog_getExistingDirectory2(parent: pointer, caption: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory2".}
proc fcQFileDialog_getExistingDirectory3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory3".}
proc fcQFileDialog_getExistingDirectory4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, options: cint): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory4".}
proc fcQFileDialog_getExistingDirectoryUrl1(parent: pointer): pointer {.importc: "QFileDialog_getExistingDirectoryUrl1".}
proc fcQFileDialog_getExistingDirectoryUrl2(parent: pointer, caption: struct_miqt_string): pointer {.importc: "QFileDialog_getExistingDirectoryUrl2".}
proc fcQFileDialog_getExistingDirectoryUrl3(parent: pointer, caption: struct_miqt_string, dir: pointer): pointer {.importc: "QFileDialog_getExistingDirectoryUrl3".}
proc fcQFileDialog_getExistingDirectoryUrl4(parent: pointer, caption: struct_miqt_string, dir: pointer, options: cint): pointer {.importc: "QFileDialog_getExistingDirectoryUrl4".}
proc fcQFileDialog_getExistingDirectoryUrl5(parent: pointer, caption: struct_miqt_string, dir: pointer, options: cint, supportedSchemes: struct_miqt_array): pointer {.importc: "QFileDialog_getExistingDirectoryUrl5".}
proc fcQFileDialog_getOpenFileNames1(parent: pointer): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames1".}
proc fcQFileDialog_getOpenFileNames2(parent: pointer, caption: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames2".}
proc fcQFileDialog_getOpenFileNames3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames3".}
proc fcQFileDialog_getOpenFileNames4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, filter: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames4".}
proc fcQFileDialog_getOpenFileUrls1(parent: pointer): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls1".}
proc fcQFileDialog_getOpenFileUrls2(parent: pointer, caption: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls2".}
proc fcQFileDialog_getOpenFileUrls3(parent: pointer, caption: struct_miqt_string, dir: pointer): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls3".}
proc fcQFileDialog_getOpenFileUrls4(parent: pointer, caption: struct_miqt_string, dir: pointer, filter: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls4".}
proc fQFileDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_metaObject".}
proc fcQFileDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_metaObject".}
proc fQFileDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFileDialog_virtualbase_metacast".}
proc fcQFileDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_metacast".}
proc fQFileDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFileDialog_virtualbase_metacall".}
proc fcQFileDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_metacall".}
proc fQFileDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFileDialog_virtualbase_setVisible".}
proc fcQFileDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_setVisible".}
proc fQFileDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QFileDialog_virtualbase_done".}
proc fcQFileDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_done".}
proc fQFileDialog_virtualbase_accept(self: pointer, ): void{.importc: "QFileDialog_virtualbase_accept".}
proc fcQFileDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_accept".}
proc fQFileDialog_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QFileDialog_virtualbase_changeEvent".}
proc fcQFileDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_changeEvent".}
proc fQFileDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_sizeHint".}
proc fcQFileDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_sizeHint".}
proc fQFileDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_minimumSizeHint".}
proc fcQFileDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_minimumSizeHint".}
proc fQFileDialog_virtualbase_open(self: pointer, ): void{.importc: "QFileDialog_virtualbase_open".}
proc fcQFileDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_open".}
proc fQFileDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QFileDialog_virtualbase_exec".}
proc fcQFileDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_exec".}
proc fQFileDialog_virtualbase_reject(self: pointer, ): void{.importc: "QFileDialog_virtualbase_reject".}
proc fcQFileDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_reject".}
proc fQFileDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_keyPressEvent".}
proc fcQFileDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_keyPressEvent".}
proc fQFileDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_closeEvent".}
proc fcQFileDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_closeEvent".}
proc fQFileDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_showEvent".}
proc fcQFileDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_showEvent".}
proc fQFileDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_resizeEvent".}
proc fcQFileDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_resizeEvent".}
proc fQFileDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_contextMenuEvent".}
proc fcQFileDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_contextMenuEvent".}
proc fQFileDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QFileDialog_virtualbase_eventFilter".}
proc fcQFileDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_eventFilter".}
proc fQFileDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QFileDialog_virtualbase_devType".}
proc fcQFileDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_devType".}
proc fQFileDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFileDialog_virtualbase_heightForWidth".}
proc fcQFileDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_heightForWidth".}
proc fQFileDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFileDialog_virtualbase_hasHeightForWidth".}
proc fcQFileDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_hasHeightForWidth".}
proc fQFileDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_paintEngine".}
proc fcQFileDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_paintEngine".}
proc fQFileDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileDialog_virtualbase_event".}
proc fcQFileDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_event".}
proc fQFileDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mousePressEvent".}
proc fcQFileDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mousePressEvent".}
proc fQFileDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mouseReleaseEvent".}
proc fcQFileDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mouseReleaseEvent".}
proc fQFileDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQFileDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mouseDoubleClickEvent".}
proc fQFileDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mouseMoveEvent".}
proc fcQFileDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mouseMoveEvent".}
proc fQFileDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_wheelEvent".}
proc fcQFileDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_wheelEvent".}
proc fQFileDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_keyReleaseEvent".}
proc fcQFileDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_keyReleaseEvent".}
proc fQFileDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_focusInEvent".}
proc fcQFileDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_focusInEvent".}
proc fQFileDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_focusOutEvent".}
proc fcQFileDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_focusOutEvent".}
proc fQFileDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_enterEvent".}
proc fcQFileDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_enterEvent".}
proc fQFileDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_leaveEvent".}
proc fcQFileDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_leaveEvent".}
proc fQFileDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_paintEvent".}
proc fcQFileDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_paintEvent".}
proc fQFileDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_moveEvent".}
proc fcQFileDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_moveEvent".}
proc fQFileDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_tabletEvent".}
proc fcQFileDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_tabletEvent".}
proc fQFileDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_actionEvent".}
proc fcQFileDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_actionEvent".}
proc fQFileDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dragEnterEvent".}
proc fcQFileDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dragEnterEvent".}
proc fQFileDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dragMoveEvent".}
proc fcQFileDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dragMoveEvent".}
proc fQFileDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dragLeaveEvent".}
proc fcQFileDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dragLeaveEvent".}
proc fQFileDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dropEvent".}
proc fcQFileDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dropEvent".}
proc fQFileDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_hideEvent".}
proc fcQFileDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_hideEvent".}
proc fQFileDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QFileDialog_virtualbase_nativeEvent".}
proc fcQFileDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_nativeEvent".}
proc fQFileDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFileDialog_virtualbase_metric".}
proc fcQFileDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_metric".}
proc fQFileDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFileDialog_virtualbase_initPainter".}
proc fcQFileDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_initPainter".}
proc fQFileDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFileDialog_virtualbase_redirected".}
proc fcQFileDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_redirected".}
proc fQFileDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_sharedPainter".}
proc fcQFileDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_sharedPainter".}
proc fQFileDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_inputMethodEvent".}
proc fcQFileDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_inputMethodEvent".}
proc fQFileDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFileDialog_virtualbase_inputMethodQuery".}
proc fcQFileDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_inputMethodQuery".}
proc fQFileDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFileDialog_virtualbase_focusNextPrevChild".}
proc fcQFileDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_focusNextPrevChild".}
proc fQFileDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_timerEvent".}
proc fcQFileDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_timerEvent".}
proc fQFileDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_childEvent".}
proc fcQFileDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_childEvent".}
proc fQFileDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_customEvent".}
proc fcQFileDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_customEvent".}
proc fQFileDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileDialog_virtualbase_connectNotify".}
proc fcQFileDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_connectNotify".}
proc fQFileDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileDialog_virtualbase_disconnectNotify".}
proc fcQFileDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_disconnectNotify".}
proc fcQFileDialog_staticMetaObject(): pointer {.importc: "QFileDialog_staticMetaObject".}
proc fcQFileDialog_delete(self: pointer) {.importc: "QFileDialog_delete".}


func init*(T: type gen_qfiledialog_types.QFileDialog, h: ptr cQFileDialog): gen_qfiledialog_types.QFileDialog =
  T(h: h)
proc create*(T: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qfiledialog_types.QFileDialog =
  gen_qfiledialog_types.QFileDialog.init(fcQFileDialog_new(parent.h))

proc create*(T: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, f: cint): gen_qfiledialog_types.QFileDialog =
  gen_qfiledialog_types.QFileDialog.init(fcQFileDialog_new2(parent.h, cint(f)))

proc create*(T: type gen_qfiledialog_types.QFileDialog, ): gen_qfiledialog_types.QFileDialog =
  gen_qfiledialog_types.QFileDialog.init(fcQFileDialog_new3())

proc create*(T: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): gen_qfiledialog_types.QFileDialog =
  gen_qfiledialog_types.QFileDialog.init(fcQFileDialog_new4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc create*(T: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, directory: string): gen_qfiledialog_types.QFileDialog =
  gen_qfiledialog_types.QFileDialog.init(fcQFileDialog_new5(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: directory, len: csize_t(len(directory)))))

proc create*(T: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, directory: string, filter: string): gen_qfiledialog_types.QFileDialog =
  gen_qfiledialog_types.QFileDialog.init(fcQFileDialog_new6(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: filter, len: csize_t(len(filter)))))

proc metaObject*(self: gen_qfiledialog_types.QFileDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_metaObject(self.h))

proc metacast*(self: gen_qfiledialog_types.QFileDialog, param1: cstring): pointer =
  fcQFileDialog_metacast(self.h, param1)

proc metacall*(self: gen_qfiledialog_types.QFileDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfiledialog_types.QFileDialog, s: cstring): string =
  let v_ms = fcQFileDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDirectory*(self: gen_qfiledialog_types.QFileDialog, directory: string): void =
  fcQFileDialog_setDirectory(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc setDirectory*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qdir_types.QDir): void =
  fcQFileDialog_setDirectoryWithDirectory(self.h, directory.h)

proc directory*(self: gen_qfiledialog_types.QFileDialog, ): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQFileDialog_directory(self.h))

proc setDirectoryUrl*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qurl_types.QUrl): void =
  fcQFileDialog_setDirectoryUrl(self.h, directory.h)

proc directoryUrl*(self: gen_qfiledialog_types.QFileDialog, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_directoryUrl(self.h))

proc selectFile*(self: gen_qfiledialog_types.QFileDialog, filename: string): void =
  fcQFileDialog_selectFile(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc selectedFiles*(self: gen_qfiledialog_types.QFileDialog, ): seq[string] =
  var v_ma = fcQFileDialog_selectedFiles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc selectUrl*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_selectUrl(self.h, url.h)

proc selectedUrls*(self: gen_qfiledialog_types.QFileDialog, ): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_selectedUrls(self.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc setNameFilter*(self: gen_qfiledialog_types.QFileDialog, filter: string): void =
  fcQFileDialog_setNameFilter(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc setNameFilters*(self: gen_qfiledialog_types.QFileDialog, filters: seq[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQFileDialog_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: gen_qfiledialog_types.QFileDialog, ): seq[string] =
  var v_ma = fcQFileDialog_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc selectNameFilter*(self: gen_qfiledialog_types.QFileDialog, filter: string): void =
  fcQFileDialog_selectNameFilter(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc selectedMimeTypeFilter*(self: gen_qfiledialog_types.QFileDialog, ): string =
  let v_ms = fcQFileDialog_selectedMimeTypeFilter(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedNameFilter*(self: gen_qfiledialog_types.QFileDialog, ): string =
  let v_ms = fcQFileDialog_selectedNameFilter(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMimeTypeFilters*(self: gen_qfiledialog_types.QFileDialog, filters: seq[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQFileDialog_setMimeTypeFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc mimeTypeFilters*(self: gen_qfiledialog_types.QFileDialog, ): seq[string] =
  var v_ma = fcQFileDialog_mimeTypeFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc selectMimeTypeFilter*(self: gen_qfiledialog_types.QFileDialog, filter: string): void =
  fcQFileDialog_selectMimeTypeFilter(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc filter*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  cint(fcQFileDialog_filter(self.h))

proc setFilter*(self: gen_qfiledialog_types.QFileDialog, filters: cint): void =
  fcQFileDialog_setFilter(self.h, cint(filters))

proc setViewMode*(self: gen_qfiledialog_types.QFileDialog, mode: cint): void =
  fcQFileDialog_setViewMode(self.h, cint(mode))

proc viewMode*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  cint(fcQFileDialog_viewMode(self.h))

proc setFileMode*(self: gen_qfiledialog_types.QFileDialog, mode: cint): void =
  fcQFileDialog_setFileMode(self.h, cint(mode))

proc fileMode*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  cint(fcQFileDialog_fileMode(self.h))

proc setAcceptMode*(self: gen_qfiledialog_types.QFileDialog, mode: cint): void =
  fcQFileDialog_setAcceptMode(self.h, cint(mode))

proc acceptMode*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  cint(fcQFileDialog_acceptMode(self.h))

proc setSidebarUrls*(self: gen_qfiledialog_types.QFileDialog, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_setSidebarUrls(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc sidebarUrls*(self: gen_qfiledialog_types.QFileDialog, ): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_sidebarUrls(self.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc saveState*(self: gen_qfiledialog_types.QFileDialog, ): seq[byte] =
  var v_bytearray = fcQFileDialog_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qfiledialog_types.QFileDialog, state: seq[byte]): bool =
  fcQFileDialog_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc setDefaultSuffix*(self: gen_qfiledialog_types.QFileDialog, suffix: string): void =
  fcQFileDialog_setDefaultSuffix(self.h, struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc defaultSuffix*(self: gen_qfiledialog_types.QFileDialog, ): string =
  let v_ms = fcQFileDialog_defaultSuffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHistory*(self: gen_qfiledialog_types.QFileDialog, paths: seq[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQFileDialog_setHistory(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc history*(self: gen_qfiledialog_types.QFileDialog, ): seq[string] =
  var v_ma = fcQFileDialog_history(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setItemDelegate*(self: gen_qfiledialog_types.QFileDialog, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQFileDialog_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qfiledialog_types.QFileDialog, ): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQFileDialog_itemDelegate(self.h))

proc setIconProvider*(self: gen_qfiledialog_types.QFileDialog, provider: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider): void =
  fcQFileDialog_setIconProvider(self.h, provider.h)

proc iconProvider*(self: gen_qfiledialog_types.QFileDialog, ): gen_qabstractfileiconprovider_types.QAbstractFileIconProvider =
  gen_qabstractfileiconprovider_types.QAbstractFileIconProvider(h: fcQFileDialog_iconProvider(self.h))

proc setLabelText*(self: gen_qfiledialog_types.QFileDialog, label: cint, text: string): void =
  fcQFileDialog_setLabelText(self.h, cint(label), struct_miqt_string(data: text, len: csize_t(len(text))))

proc labelText*(self: gen_qfiledialog_types.QFileDialog, label: cint): string =
  let v_ms = fcQFileDialog_labelText(self.h, cint(label))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSupportedSchemes*(self: gen_qfiledialog_types.QFileDialog, schemes: seq[string]): void =
  var schemes_CArray = newSeq[struct_miqt_string](len(schemes))
  for i in 0..<len(schemes):
    schemes_CArray[i] = struct_miqt_string(data: schemes[i], len: csize_t(len(schemes[i])))

  fcQFileDialog_setSupportedSchemes(self.h, struct_miqt_array(len: csize_t(len(schemes)), data: if len(schemes) == 0: nil else: addr(schemes_CArray[0])))

proc supportedSchemes*(self: gen_qfiledialog_types.QFileDialog, ): seq[string] =
  var v_ma = fcQFileDialog_supportedSchemes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setProxyModel*(self: gen_qfiledialog_types.QFileDialog, model: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQFileDialog_setProxyModel(self.h, model.h)

proc proxyModel*(self: gen_qfiledialog_types.QFileDialog, ): gen_qabstractproxymodel_types.QAbstractProxyModel =
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQFileDialog_proxyModel(self.h))

proc setOption*(self: gen_qfiledialog_types.QFileDialog, option: cint): void =
  fcQFileDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qfiledialog_types.QFileDialog, option: cint): bool =
  fcQFileDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qfiledialog_types.QFileDialog, options: cint): void =
  fcQFileDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  cint(fcQFileDialog_options(self.h))

proc setVisible*(self: gen_qfiledialog_types.QFileDialog, visible: bool): void =
  fcQFileDialog_setVisible(self.h, visible)

proc fileSelected*(self: gen_qfiledialog_types.QFileDialog, file: string): void =
  fcQFileDialog_fileSelected(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

type QFileDialogfileSelectedSlot* = proc(file: string)
proc miqt_exec_callback_QFileDialog_fileSelected(slot: int, file: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogfileSelectedSlot](cast[pointer](slot))
  let vfile_ms = file
  let vfilex_ret = string.fromBytes(toOpenArrayByte(vfile_ms.data, 0, int(vfile_ms.len)-1))
  c_free(vfile_ms.data)
  let slotval1 = vfilex_ret

  nimfunc[](slotval1)

proc onfileSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfileSelectedSlot) =
  var tmp = new QFileDialogfileSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_fileSelected(self.h, cast[int](addr tmp[]))

proc filesSelected*(self: gen_qfiledialog_types.QFileDialog, files: seq[string]): void =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  fcQFileDialog_filesSelected(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))

type QFileDialogfilesSelectedSlot* = proc(files: seq[string])
proc miqt_exec_callback_QFileDialog_filesSelected(slot: int, files: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogfilesSelectedSlot](cast[pointer](slot))
  var vfiles_ma = files
  var vfilesx_ret = newSeq[string](int(vfiles_ma.len))
  let vfiles_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vfiles_ma.data)
  for i in 0 ..< vfiles_ma.len:
    let vfiles_lv_ms = vfiles_outCast[i]
    let vfiles_lvx_ret = string.fromBytes(toOpenArrayByte(vfiles_lv_ms.data, 0, int(vfiles_lv_ms.len)-1))
    c_free(vfiles_lv_ms.data)
    vfilesx_ret[i] = vfiles_lvx_ret
  let slotval1 = vfilesx_ret

  nimfunc[](slotval1)

proc onfilesSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfilesSelectedSlot) =
  var tmp = new QFileDialogfilesSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_filesSelected(self.h, cast[int](addr tmp[]))

proc currentChanged*(self: gen_qfiledialog_types.QFileDialog, path: string): void =
  fcQFileDialog_currentChanged(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

type QFileDialogcurrentChangedSlot* = proc(path: string)
proc miqt_exec_callback_QFileDialog_currentChanged(slot: int, path: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogcurrentChangedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  nimfunc[](slotval1)

proc oncurrentChanged*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcurrentChangedSlot) =
  var tmp = new QFileDialogcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc directoryEntered*(self: gen_qfiledialog_types.QFileDialog, directory: string): void =
  fcQFileDialog_directoryEntered(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

type QFileDialogdirectoryEnteredSlot* = proc(directory: string)
proc miqt_exec_callback_QFileDialog_directoryEntered(slot: int, directory: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogdirectoryEnteredSlot](cast[pointer](slot))
  let vdirectory_ms = directory
  let vdirectoryx_ret = string.fromBytes(toOpenArrayByte(vdirectory_ms.data, 0, int(vdirectory_ms.len)-1))
  c_free(vdirectory_ms.data)
  let slotval1 = vdirectoryx_ret

  nimfunc[](slotval1)

proc ondirectoryEntered*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdirectoryEnteredSlot) =
  var tmp = new QFileDialogdirectoryEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_directoryEntered(self.h, cast[int](addr tmp[]))

proc urlSelected*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_urlSelected(self.h, url.h)

type QFileDialogurlSelectedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_QFileDialog_urlSelected(slot: int, url: pointer) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogurlSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc onurlSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogurlSelectedSlot) =
  var tmp = new QFileDialogurlSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_urlSelected(self.h, cast[int](addr tmp[]))

proc urlsSelected*(self: gen_qfiledialog_types.QFileDialog, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_urlsSelected(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

type QFileDialogurlsSelectedSlot* = proc(urls: seq[gen_qurl_types.QUrl])
proc miqt_exec_callback_QFileDialog_urlsSelected(slot: int, urls: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogurlsSelectedSlot](cast[pointer](slot))
  var vurls_ma = urls
  var vurlsx_ret = newSeq[gen_qurl_types.QUrl](int(vurls_ma.len))
  let vurls_outCast = cast[ptr UncheckedArray[pointer]](vurls_ma.data)
  for i in 0 ..< vurls_ma.len:
    vurlsx_ret[i] = gen_qurl_types.QUrl(h: vurls_outCast[i])
  let slotval1 = vurlsx_ret

  nimfunc[](slotval1)

proc onurlsSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogurlsSelectedSlot) =
  var tmp = new QFileDialogurlsSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_urlsSelected(self.h, cast[int](addr tmp[]))

proc currentUrlChanged*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_currentUrlChanged(self.h, url.h)

type QFileDialogcurrentUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_QFileDialog_currentUrlChanged(slot: int, url: pointer) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogcurrentUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc oncurrentUrlChanged*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcurrentUrlChangedSlot) =
  var tmp = new QFileDialogcurrentUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_currentUrlChanged(self.h, cast[int](addr tmp[]))

proc directoryUrlEntered*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qurl_types.QUrl): void =
  fcQFileDialog_directoryUrlEntered(self.h, directory.h)

type QFileDialogdirectoryUrlEnteredSlot* = proc(directory: gen_qurl_types.QUrl)
proc miqt_exec_callback_QFileDialog_directoryUrlEntered(slot: int, directory: pointer) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogdirectoryUrlEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: directory)

  nimfunc[](slotval1)

proc ondirectoryUrlEntered*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdirectoryUrlEnteredSlot) =
  var tmp = new QFileDialogdirectoryUrlEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_directoryUrlEntered(self.h, cast[int](addr tmp[]))

proc filterSelected*(self: gen_qfiledialog_types.QFileDialog, filter: string): void =
  fcQFileDialog_filterSelected(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

type QFileDialogfilterSelectedSlot* = proc(filter: string)
proc miqt_exec_callback_QFileDialog_filterSelected(slot: int, filter: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFileDialogfilterSelectedSlot](cast[pointer](slot))
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(toOpenArrayByte(vfilter_ms.data, 0, int(vfilter_ms.len)-1))
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret

  nimfunc[](slotval1)

proc onfilterSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfilterSelectedSlot) =
  var tmp = new QFileDialogfilterSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_filterSelected(self.h, cast[int](addr tmp[]))

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, ): string =
  let v_ms = fcQFileDialog_getOpenFileName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl())

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, ): string =
  let v_ms = fcQFileDialog_getSaveFileName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl())

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, ): string =
  let v_ms = fcQFileDialog_getExistingDirectory()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl())

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, ): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, ): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls()
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc saveFileContent*(_: type gen_qfiledialog_types.QFileDialog, fileContent: seq[byte], fileNameHint: string): void =
  fcQFileDialog_saveFileContent(struct_miqt_string(data: cast[cstring](if len(fileContent) == 0: nil else: unsafeAddr fileContent[0]), len: csize_t(len(fileContent))), struct_miqt_string(data: fileNameHint, len: csize_t(len(fileNameHint))))

proc tr*(_: type gen_qfiledialog_types.QFileDialog, s: cstring, c: cstring): string =
  let v_ms = fcQFileDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfiledialog_types.QFileDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qfiledialog_types.QFileDialog, option: cint, on: bool): void =
  fcQFileDialog_setOption2(self.h, cint(option), on)

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): string =
  let v_ms = fcQFileDialog_getOpenFileName1(parent.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): string =
  let v_ms = fcQFileDialog_getOpenFileName2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string): string =
  let v_ms = fcQFileDialog_getOpenFileName3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string, filter: string): string =
  let v_ms = fcQFileDialog_getOpenFileName4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), struct_miqt_string(data: filter, len: csize_t(len(filter))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl1(parent.h))

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h))

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl, filter: string): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: filter, len: csize_t(len(filter)))))

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): string =
  let v_ms = fcQFileDialog_getSaveFileName1(parent.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): string =
  let v_ms = fcQFileDialog_getSaveFileName2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string): string =
  let v_ms = fcQFileDialog_getSaveFileName3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string, filter: string): string =
  let v_ms = fcQFileDialog_getSaveFileName4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), struct_miqt_string(data: filter, len: csize_t(len(filter))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl1(parent.h))

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h))

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl, filter: string): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: filter, len: csize_t(len(filter)))))

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): string =
  let v_ms = fcQFileDialog_getExistingDirectory1(parent.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): string =
  let v_ms = fcQFileDialog_getExistingDirectory2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string): string =
  let v_ms = fcQFileDialog_getExistingDirectory3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string, options: cint): string =
  let v_ms = fcQFileDialog_getExistingDirectory4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl1(parent.h))

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h))

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl, options: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, cint(options)))

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl, options: cint, supportedSchemes: seq[string]): gen_qurl_types.QUrl =
  var supportedSchemes_CArray = newSeq[struct_miqt_string](len(supportedSchemes))
  for i in 0..<len(supportedSchemes):
    supportedSchemes_CArray[i] = struct_miqt_string(data: supportedSchemes[i], len: csize_t(len(supportedSchemes[i])))

  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl5(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, cint(options), struct_miqt_array(len: csize_t(len(supportedSchemes)), data: if len(supportedSchemes) == 0: nil else: addr(supportedSchemes_CArray[0]))))

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames1(parent.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: string, filter: string): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), struct_miqt_string(data: filter, len: csize_t(len(filter))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls1(parent.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: string, dir: gen_qurl_types.QUrl, filter: string): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc QFileDialogmetaObject*(self: gen_qfiledialog_types.QFileDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQFileDialog_virtualbase_metaObject(self.h))

type QFileDialogmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QFileDialogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_metaObject(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_metaObject ".} =
  var nimfunc = cast[ptr QFileDialogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileDialogmetacast*(self: gen_qfiledialog_types.QFileDialog, param1: cstring): pointer =
  fQFileDialog_virtualbase_metacast(self.h, param1)

type QFileDialogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmetacastProc) =
  # TODO check subclass
  var tmp = new QFileDialogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_metacast(self: ptr cQFileDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFileDialog_metacast ".} =
  var nimfunc = cast[ptr QFileDialogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileDialogmetacall*(self: gen_qfiledialog_types.QFileDialog, param1: cint, param2: cint, param3: pointer): cint =
  fQFileDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFileDialogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmetacallProc) =
  # TODO check subclass
  var tmp = new QFileDialogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_metacall(self: ptr cQFileDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFileDialog_metacall ".} =
  var nimfunc = cast[ptr QFileDialogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileDialogsetVisible*(self: gen_qfiledialog_types.QFileDialog, visible: bool): void =
  fQFileDialog_virtualbase_setVisible(self.h, visible)

type QFileDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QFileDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_setVisible(self: ptr cQFileDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFileDialog_setVisible ".} =
  var nimfunc = cast[ptr QFileDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QFileDialogdone*(self: gen_qfiledialog_types.QFileDialog, resultVal: cint): void =
  fQFileDialog_virtualbase_done(self.h, resultVal)

type QFileDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdoneProc) =
  # TODO check subclass
  var tmp = new QFileDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_done(self: ptr cQFileDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QFileDialog_done ".} =
  var nimfunc = cast[ptr QFileDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QFileDialogaccept*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fQFileDialog_virtualbase_accept(self.h)

type QFileDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogacceptProc) =
  # TODO check subclass
  var tmp = new QFileDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_accept(self: ptr cQFileDialog, slot: int): void {.exportc: "miqt_exec_callback_QFileDialog_accept ".} =
  var nimfunc = cast[ptr QFileDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QFileDialogchangeEvent*(self: gen_qfiledialog_types.QFileDialog, e: gen_qcoreevent_types.QEvent): void =
  fQFileDialog_virtualbase_changeEvent(self.h, e.h)

type QFileDialogchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_changeEvent(self: ptr cQFileDialog, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_changeEvent ".} =
  var nimfunc = cast[ptr QFileDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QFileDialogsizeHint*(self: gen_qfiledialog_types.QFileDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFileDialog_virtualbase_sizeHint(self.h))

type QFileDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QFileDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_sizeHint(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_sizeHint ".} =
  var nimfunc = cast[ptr QFileDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileDialogminimumSizeHint*(self: gen_qfiledialog_types.QFileDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFileDialog_virtualbase_minimumSizeHint(self.h))

type QFileDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QFileDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_minimumSizeHint(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QFileDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileDialogopen*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fQFileDialog_virtualbase_open(self.h)

type QFileDialogopenProc* = proc(): void
proc onopen*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogopenProc) =
  # TODO check subclass
  var tmp = new QFileDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_open(self: ptr cQFileDialog, slot: int): void {.exportc: "miqt_exec_callback_QFileDialog_open ".} =
  var nimfunc = cast[ptr QFileDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QFileDialogexec*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  fQFileDialog_virtualbase_exec(self.h)

type QFileDialogexecProc* = proc(): cint
proc onexec*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogexecProc) =
  # TODO check subclass
  var tmp = new QFileDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_exec(self: ptr cQFileDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFileDialog_exec ".} =
  var nimfunc = cast[ptr QFileDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFileDialogreject*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fQFileDialog_virtualbase_reject(self.h)

type QFileDialogrejectProc* = proc(): void
proc onreject*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogrejectProc) =
  # TODO check subclass
  var tmp = new QFileDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_reject(self: ptr cQFileDialog, slot: int): void {.exportc: "miqt_exec_callback_QFileDialog_reject ".} =
  var nimfunc = cast[ptr QFileDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QFileDialogkeyPressEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQFileDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QFileDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_keyPressEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QFileDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QFileDialogcloseEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQFileDialog_virtualbase_closeEvent(self.h, param1.h)

type QFileDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_closeEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_closeEvent ".} =
  var nimfunc = cast[ptr QFileDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QFileDialogshowEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QShowEvent): void =
  fQFileDialog_virtualbase_showEvent(self.h, param1.h)

type QFileDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_showEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_showEvent ".} =
  var nimfunc = cast[ptr QFileDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QFileDialogresizeEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQFileDialog_virtualbase_resizeEvent(self.h, param1.h)

type QFileDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_resizeEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QFileDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QFileDialogcontextMenuEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQFileDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QFileDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_contextMenuEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QFileDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QFileDialogeventFilter*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQFileDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QFileDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QFileDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_eventFilter(self: ptr cQFileDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QFileDialog_eventFilter ".} =
  var nimfunc = cast[ptr QFileDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFileDialogdevType*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  fQFileDialog_virtualbase_devType(self.h)

type QFileDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QFileDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_devType(self: ptr cQFileDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFileDialog_devType ".} =
  var nimfunc = cast[ptr QFileDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFileDialogheightForWidth*(self: gen_qfiledialog_types.QFileDialog, param1: cint): cint =
  fQFileDialog_virtualbase_heightForWidth(self.h, param1)

type QFileDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QFileDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_heightForWidth(self: ptr cQFileDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFileDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QFileDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileDialoghasHeightForWidth*(self: gen_qfiledialog_types.QFileDialog, ): bool =
  fQFileDialog_virtualbase_hasHeightForWidth(self.h)

type QFileDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFileDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_hasHeightForWidth(self: ptr cQFileDialog, slot: int): bool {.exportc: "miqt_exec_callback_QFileDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QFileDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFileDialogpaintEngine*(self: gen_qfiledialog_types.QFileDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQFileDialog_virtualbase_paintEngine(self.h))

type QFileDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QFileDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_paintEngine(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_paintEngine ".} =
  var nimfunc = cast[ptr QFileDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileDialogevent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQFileDialog_virtualbase_event(self.h, event.h)

type QFileDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogeventProc) =
  # TODO check subclass
  var tmp = new QFileDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_event(self: ptr cQFileDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileDialog_event ".} =
  var nimfunc = cast[ptr QFileDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileDialogmousePressEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFileDialog_virtualbase_mousePressEvent(self.h, event.h)

type QFileDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mousePressEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QFileDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogmouseReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFileDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFileDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mouseReleaseEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QFileDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogmouseDoubleClickEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFileDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFileDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mouseDoubleClickEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QFileDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogmouseMoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFileDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QFileDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mouseMoveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QFileDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogwheelEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QWheelEvent): void =
  fQFileDialog_virtualbase_wheelEvent(self.h, event.h)

type QFileDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_wheelEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QFileDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogkeyReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QKeyEvent): void =
  fQFileDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QFileDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_keyReleaseEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QFileDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogfocusInEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QFocusEvent): void =
  fQFileDialog_virtualbase_focusInEvent(self.h, event.h)

type QFileDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_focusInEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QFileDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogfocusOutEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QFocusEvent): void =
  fQFileDialog_virtualbase_focusOutEvent(self.h, event.h)

type QFileDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_focusOutEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QFileDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogenterEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QEnterEvent): void =
  fQFileDialog_virtualbase_enterEvent(self.h, event.h)

type QFileDialogenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_enterEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_enterEvent ".} =
  var nimfunc = cast[ptr QFileDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogleaveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fQFileDialog_virtualbase_leaveEvent(self.h, event.h)

type QFileDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_leaveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QFileDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogpaintEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QPaintEvent): void =
  fQFileDialog_virtualbase_paintEvent(self.h, event.h)

type QFileDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_paintEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_paintEvent ".} =
  var nimfunc = cast[ptr QFileDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogmoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMoveEvent): void =
  fQFileDialog_virtualbase_moveEvent(self.h, event.h)

type QFileDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_moveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_moveEvent ".} =
  var nimfunc = cast[ptr QFileDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogtabletEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QTabletEvent): void =
  fQFileDialog_virtualbase_tabletEvent(self.h, event.h)

type QFileDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_tabletEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QFileDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogactionEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QActionEvent): void =
  fQFileDialog_virtualbase_actionEvent(self.h, event.h)

type QFileDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_actionEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_actionEvent ".} =
  var nimfunc = cast[ptr QFileDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogdragEnterEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQFileDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QFileDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dragEnterEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QFileDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogdragMoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQFileDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QFileDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dragMoveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QFileDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogdragLeaveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQFileDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QFileDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dragLeaveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QFileDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogdropEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDropEvent): void =
  fQFileDialog_virtualbase_dropEvent(self.h, event.h)

type QFileDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dropEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dropEvent ".} =
  var nimfunc = cast[ptr QFileDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialoghideEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QHideEvent): void =
  fQFileDialog_virtualbase_hideEvent(self.h, event.h)

type QFileDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QFileDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_hideEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_hideEvent ".} =
  var nimfunc = cast[ptr QFileDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialognativeEvent*(self: gen_qfiledialog_types.QFileDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQFileDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFileDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QFileDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_nativeEvent(self: ptr cQFileDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QFileDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QFileDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileDialogmetric*(self: gen_qfiledialog_types.QFileDialog, param1: cint): cint =
  fQFileDialog_virtualbase_metric(self.h, cint(param1))

type QFileDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogmetricProc) =
  # TODO check subclass
  var tmp = new QFileDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_metric(self: ptr cQFileDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFileDialog_metric ".} =
  var nimfunc = cast[ptr QFileDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileDialoginitPainter*(self: gen_qfiledialog_types.QFileDialog, painter: gen_qpainter_types.QPainter): void =
  fQFileDialog_virtualbase_initPainter(self.h, painter.h)

type QFileDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QFileDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_initPainter(self: ptr cQFileDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_initPainter ".} =
  var nimfunc = cast[ptr QFileDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QFileDialogredirected*(self: gen_qfiledialog_types.QFileDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQFileDialog_virtualbase_redirected(self.h, offset.h))

type QFileDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QFileDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_redirected(self: ptr cQFileDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFileDialog_redirected ".} =
  var nimfunc = cast[ptr QFileDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileDialogsharedPainter*(self: gen_qfiledialog_types.QFileDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQFileDialog_virtualbase_sharedPainter(self.h))

type QFileDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QFileDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_sharedPainter(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QFileDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileDialoginputMethodEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQFileDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QFileDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QFileDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_inputMethodEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QFileDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QFileDialoginputMethodQuery*(self: gen_qfiledialog_types.QFileDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFileDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFileDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QFileDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_inputMethodQuery(self: ptr cQFileDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFileDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QFileDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileDialogfocusNextPrevChild*(self: gen_qfiledialog_types.QFileDialog, next: bool): bool =
  fQFileDialog_virtualbase_focusNextPrevChild(self.h, next)

type QFileDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QFileDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_focusNextPrevChild(self: ptr cQFileDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFileDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QFileDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileDialogtimerEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFileDialog_virtualbase_timerEvent(self.h, event.h)

type QFileDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_timerEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_timerEvent ".} =
  var nimfunc = cast[ptr QFileDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogchildEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQFileDialog_virtualbase_childEvent(self.h, event.h)

type QFileDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_childEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_childEvent ".} =
  var nimfunc = cast[ptr QFileDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogcustomEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fQFileDialog_virtualbase_customEvent(self.h, event.h)

type QFileDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QFileDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_customEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_customEvent ".} =
  var nimfunc = cast[ptr QFileDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFileDialogconnectNotify*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileDialog_virtualbase_connectNotify(self.h, signal.h)

type QFileDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_connectNotify(self: ptr cQFileDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_connectNotify ".} =
  var nimfunc = cast[ptr QFileDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFileDialogdisconnectNotify*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QFileDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_disconnectNotify(self: ptr cQFileDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QFileDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qfiledialog_types.QFileDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_staticMetaObject())
proc delete*(self: gen_qfiledialog_types.QFileDialog) =
  fcQFileDialog_delete(self.h)
