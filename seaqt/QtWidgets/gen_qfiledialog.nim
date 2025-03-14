import ./qtwidgets_pkg

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


{.compile("gen_qfiledialog.cpp", QtWidgetsCFlags).}


type QFileDialogViewModeEnum* = distinct cint
template Detail*(_: type QFileDialogViewModeEnum): untyped = 0
template List*(_: type QFileDialogViewModeEnum): untyped = 1


type QFileDialogFileModeEnum* = distinct cint
template AnyFile*(_: type QFileDialogFileModeEnum): untyped = 0
template ExistingFile*(_: type QFileDialogFileModeEnum): untyped = 1
template Directory*(_: type QFileDialogFileModeEnum): untyped = 2
template ExistingFiles*(_: type QFileDialogFileModeEnum): untyped = 3
template DirectoryOnly*(_: type QFileDialogFileModeEnum): untyped = 4


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
template DontUseSheet*(_: type QFileDialogOptionEnum): untyped = 8
template DontUseNativeDialog*(_: type QFileDialogOptionEnum): untyped = 16
template ReadOnly*(_: type QFileDialogOptionEnum): untyped = 32
template HideNameFilterDetails*(_: type QFileDialogOptionEnum): untyped = 64
template DontUseCustomDirectoryIcons*(_: type QFileDialogOptionEnum): untyped = 128


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
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qdialog,
  ./gen_qfileiconprovider_types,
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
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractitemdelegate_types,
  gen_qdialog,
  gen_qfileiconprovider_types,
  gen_qwidget_types

type cQFileDialog*{.exportc: "QFileDialog", incompleteStruct.} = object

proc fcQFileDialog_metaObject(self: pointer): pointer {.importc: "QFileDialog_metaObject".}
proc fcQFileDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDialog_metacast".}
proc fcQFileDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDialog_metacall".}
proc fcQFileDialog_tr(s: cstring): struct_miqt_string {.importc: "QFileDialog_tr".}
proc fcQFileDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QFileDialog_trUtf8".}
proc fcQFileDialog_setDirectory(self: pointer, directory: struct_miqt_string): void {.importc: "QFileDialog_setDirectory".}
proc fcQFileDialog_setDirectoryWithDirectory(self: pointer, directory: pointer): void {.importc: "QFileDialog_setDirectoryWithDirectory".}
proc fcQFileDialog_directory(self: pointer): pointer {.importc: "QFileDialog_directory".}
proc fcQFileDialog_setDirectoryUrl(self: pointer, directory: pointer): void {.importc: "QFileDialog_setDirectoryUrl".}
proc fcQFileDialog_directoryUrl(self: pointer): pointer {.importc: "QFileDialog_directoryUrl".}
proc fcQFileDialog_selectFile(self: pointer, filename: struct_miqt_string): void {.importc: "QFileDialog_selectFile".}
proc fcQFileDialog_selectedFiles(self: pointer): struct_miqt_array {.importc: "QFileDialog_selectedFiles".}
proc fcQFileDialog_selectUrl(self: pointer, url: pointer): void {.importc: "QFileDialog_selectUrl".}
proc fcQFileDialog_selectedUrls(self: pointer): struct_miqt_array {.importc: "QFileDialog_selectedUrls".}
proc fcQFileDialog_setNameFilterDetailsVisible(self: pointer, enabled: bool): void {.importc: "QFileDialog_setNameFilterDetailsVisible".}
proc fcQFileDialog_isNameFilterDetailsVisible(self: pointer): bool {.importc: "QFileDialog_isNameFilterDetailsVisible".}
proc fcQFileDialog_setNameFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_setNameFilter".}
proc fcQFileDialog_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileDialog_setNameFilters".}
proc fcQFileDialog_nameFilters(self: pointer): struct_miqt_array {.importc: "QFileDialog_nameFilters".}
proc fcQFileDialog_selectNameFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_selectNameFilter".}
proc fcQFileDialog_selectedMimeTypeFilter(self: pointer): struct_miqt_string {.importc: "QFileDialog_selectedMimeTypeFilter".}
proc fcQFileDialog_selectedNameFilter(self: pointer): struct_miqt_string {.importc: "QFileDialog_selectedNameFilter".}
proc fcQFileDialog_setMimeTypeFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileDialog_setMimeTypeFilters".}
proc fcQFileDialog_mimeTypeFilters(self: pointer): struct_miqt_array {.importc: "QFileDialog_mimeTypeFilters".}
proc fcQFileDialog_selectMimeTypeFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_selectMimeTypeFilter".}
proc fcQFileDialog_filter(self: pointer): cint {.importc: "QFileDialog_filter".}
proc fcQFileDialog_setFilter(self: pointer, filters: cint): void {.importc: "QFileDialog_setFilter".}
proc fcQFileDialog_setViewMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setViewMode".}
proc fcQFileDialog_viewMode(self: pointer): cint {.importc: "QFileDialog_viewMode".}
proc fcQFileDialog_setFileMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setFileMode".}
proc fcQFileDialog_fileMode(self: pointer): cint {.importc: "QFileDialog_fileMode".}
proc fcQFileDialog_setAcceptMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setAcceptMode".}
proc fcQFileDialog_acceptMode(self: pointer): cint {.importc: "QFileDialog_acceptMode".}
proc fcQFileDialog_setReadOnly(self: pointer, enabled: bool): void {.importc: "QFileDialog_setReadOnly".}
proc fcQFileDialog_isReadOnly(self: pointer): bool {.importc: "QFileDialog_isReadOnly".}
proc fcQFileDialog_setResolveSymlinks(self: pointer, enabled: bool): void {.importc: "QFileDialog_setResolveSymlinks".}
proc fcQFileDialog_resolveSymlinks(self: pointer): bool {.importc: "QFileDialog_resolveSymlinks".}
proc fcQFileDialog_setSidebarUrls(self: pointer, urls: struct_miqt_array): void {.importc: "QFileDialog_setSidebarUrls".}
proc fcQFileDialog_sidebarUrls(self: pointer): struct_miqt_array {.importc: "QFileDialog_sidebarUrls".}
proc fcQFileDialog_saveState(self: pointer): struct_miqt_string {.importc: "QFileDialog_saveState".}
proc fcQFileDialog_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QFileDialog_restoreState".}
proc fcQFileDialog_setConfirmOverwrite(self: pointer, enabled: bool): void {.importc: "QFileDialog_setConfirmOverwrite".}
proc fcQFileDialog_confirmOverwrite(self: pointer): bool {.importc: "QFileDialog_confirmOverwrite".}
proc fcQFileDialog_setDefaultSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QFileDialog_setDefaultSuffix".}
proc fcQFileDialog_defaultSuffix(self: pointer): struct_miqt_string {.importc: "QFileDialog_defaultSuffix".}
proc fcQFileDialog_setHistory(self: pointer, paths: struct_miqt_array): void {.importc: "QFileDialog_setHistory".}
proc fcQFileDialog_history(self: pointer): struct_miqt_array {.importc: "QFileDialog_history".}
proc fcQFileDialog_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QFileDialog_setItemDelegate".}
proc fcQFileDialog_itemDelegate(self: pointer): pointer {.importc: "QFileDialog_itemDelegate".}
proc fcQFileDialog_setIconProvider(self: pointer, provider: pointer): void {.importc: "QFileDialog_setIconProvider".}
proc fcQFileDialog_iconProvider(self: pointer): pointer {.importc: "QFileDialog_iconProvider".}
proc fcQFileDialog_setLabelText(self: pointer, label: cint, text: struct_miqt_string): void {.importc: "QFileDialog_setLabelText".}
proc fcQFileDialog_labelText(self: pointer, label: cint): struct_miqt_string {.importc: "QFileDialog_labelText".}
proc fcQFileDialog_setSupportedSchemes(self: pointer, schemes: struct_miqt_array): void {.importc: "QFileDialog_setSupportedSchemes".}
proc fcQFileDialog_supportedSchemes(self: pointer): struct_miqt_array {.importc: "QFileDialog_supportedSchemes".}
proc fcQFileDialog_setProxyModel(self: pointer, model: pointer): void {.importc: "QFileDialog_setProxyModel".}
proc fcQFileDialog_proxyModel(self: pointer): pointer {.importc: "QFileDialog_proxyModel".}
proc fcQFileDialog_setOption(self: pointer, option: cint): void {.importc: "QFileDialog_setOption".}
proc fcQFileDialog_testOption(self: pointer, option: cint): bool {.importc: "QFileDialog_testOption".}
proc fcQFileDialog_setOptions(self: pointer, options: cint): void {.importc: "QFileDialog_setOptions".}
proc fcQFileDialog_options(self: pointer): cint {.importc: "QFileDialog_options".}
proc fcQFileDialog_setVisible(self: pointer, visible: bool): void {.importc: "QFileDialog_setVisible".}
proc fcQFileDialog_fileSelected(self: pointer, file: struct_miqt_string): void {.importc: "QFileDialog_fileSelected".}
proc fcQFileDialog_connect_fileSelected(self: pointer, slot: int, callback: proc (slot: int, file: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_fileSelected".}
proc fcQFileDialog_filesSelected(self: pointer, files: struct_miqt_array): void {.importc: "QFileDialog_filesSelected".}
proc fcQFileDialog_connect_filesSelected(self: pointer, slot: int, callback: proc (slot: int, files: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_filesSelected".}
proc fcQFileDialog_currentChanged(self: pointer, path: struct_miqt_string): void {.importc: "QFileDialog_currentChanged".}
proc fcQFileDialog_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, path: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_currentChanged".}
proc fcQFileDialog_directoryEntered(self: pointer, directory: struct_miqt_string): void {.importc: "QFileDialog_directoryEntered".}
proc fcQFileDialog_connect_directoryEntered(self: pointer, slot: int, callback: proc (slot: int, directory: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_directoryEntered".}
proc fcQFileDialog_urlSelected(self: pointer, url: pointer): void {.importc: "QFileDialog_urlSelected".}
proc fcQFileDialog_connect_urlSelected(self: pointer, slot: int, callback: proc (slot: int, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_urlSelected".}
proc fcQFileDialog_urlsSelected(self: pointer, urls: struct_miqt_array): void {.importc: "QFileDialog_urlsSelected".}
proc fcQFileDialog_connect_urlsSelected(self: pointer, slot: int, callback: proc (slot: int, urls: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_urlsSelected".}
proc fcQFileDialog_currentUrlChanged(self: pointer, url: pointer): void {.importc: "QFileDialog_currentUrlChanged".}
proc fcQFileDialog_connect_currentUrlChanged(self: pointer, slot: int, callback: proc (slot: int, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_currentUrlChanged".}
proc fcQFileDialog_directoryUrlEntered(self: pointer, directory: pointer): void {.importc: "QFileDialog_directoryUrlEntered".}
proc fcQFileDialog_connect_directoryUrlEntered(self: pointer, slot: int, callback: proc (slot: int, directory: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_directoryUrlEntered".}
proc fcQFileDialog_filterSelected(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_filterSelected".}
proc fcQFileDialog_connect_filterSelected(self: pointer, slot: int, callback: proc (slot: int, filter: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileDialog_connect_filterSelected".}
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
proc fcQFileDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDialog_trUtf82".}
proc fcQFileDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDialog_trUtf83".}
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
proc fcQFileDialog_vtbl(self: pointer): pointer {.importc: "QFileDialog_vtbl".}
proc fcQFileDialog_vdata(self: pointer): pointer {.importc: "QFileDialog_vdata".}
type cQFileDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFileDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QFileDialog_virtualbase_metaObject".}
proc fcQFileDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDialog_virtualbase_metacast".}
proc fcQFileDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDialog_virtualbase_metacall".}
proc fcQFileDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFileDialog_virtualbase_setVisible".}
proc fcQFileDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QFileDialog_virtualbase_done".}
proc fcQFileDialog_virtualbase_accept(self: pointer): void {.importc: "QFileDialog_virtualbase_accept".}
proc fcQFileDialog_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QFileDialog_virtualbase_changeEvent".}
proc fcQFileDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QFileDialog_virtualbase_sizeHint".}
proc fcQFileDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QFileDialog_virtualbase_minimumSizeHint".}
proc fcQFileDialog_virtualbase_open(self: pointer): void {.importc: "QFileDialog_virtualbase_open".}
proc fcQFileDialog_virtualbase_exec(self: pointer): cint {.importc: "QFileDialog_virtualbase_exec".}
proc fcQFileDialog_virtualbase_reject(self: pointer): void {.importc: "QFileDialog_virtualbase_reject".}
proc fcQFileDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_keyPressEvent".}
proc fcQFileDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_closeEvent".}
proc fcQFileDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_showEvent".}
proc fcQFileDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_resizeEvent".}
proc fcQFileDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_contextMenuEvent".}
proc fcQFileDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QFileDialog_virtualbase_eventFilter".}
proc fcQFileDialog_virtualbase_devType(self: pointer): cint {.importc: "QFileDialog_virtualbase_devType".}
proc fcQFileDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFileDialog_virtualbase_heightForWidth".}
proc fcQFileDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QFileDialog_virtualbase_hasHeightForWidth".}
proc fcQFileDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QFileDialog_virtualbase_paintEngine".}
proc fcQFileDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileDialog_virtualbase_event".}
proc fcQFileDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_mousePressEvent".}
proc fcQFileDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_mouseReleaseEvent".}
proc fcQFileDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQFileDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_mouseMoveEvent".}
proc fcQFileDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_wheelEvent".}
proc fcQFileDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_keyReleaseEvent".}
proc fcQFileDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_focusInEvent".}
proc fcQFileDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_focusOutEvent".}
proc fcQFileDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_enterEvent".}
proc fcQFileDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_leaveEvent".}
proc fcQFileDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_paintEvent".}
proc fcQFileDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_moveEvent".}
proc fcQFileDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_tabletEvent".}
proc fcQFileDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_actionEvent".}
proc fcQFileDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_dragEnterEvent".}
proc fcQFileDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_dragMoveEvent".}
proc fcQFileDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_dragLeaveEvent".}
proc fcQFileDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_dropEvent".}
proc fcQFileDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_hideEvent".}
proc fcQFileDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QFileDialog_virtualbase_nativeEvent".}
proc fcQFileDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFileDialog_virtualbase_metric".}
proc fcQFileDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFileDialog_virtualbase_initPainter".}
proc fcQFileDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFileDialog_virtualbase_redirected".}
proc fcQFileDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QFileDialog_virtualbase_sharedPainter".}
proc fcQFileDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_inputMethodEvent".}
proc fcQFileDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFileDialog_virtualbase_inputMethodQuery".}
proc fcQFileDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFileDialog_virtualbase_focusNextPrevChild".}
proc fcQFileDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_timerEvent".}
proc fcQFileDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_childEvent".}
proc fcQFileDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_customEvent".}
proc fcQFileDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileDialog_virtualbase_connectNotify".}
proc fcQFileDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileDialog_virtualbase_disconnectNotify".}
proc fcQFileDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QFileDialog_protectedbase_adjustPosition".}
proc fcQFileDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QFileDialog_protectedbase_updateMicroFocus".}
proc fcQFileDialog_protectedbase_create(self: pointer): void {.importc: "QFileDialog_protectedbase_create".}
proc fcQFileDialog_protectedbase_destroy(self: pointer): void {.importc: "QFileDialog_protectedbase_destroy".}
proc fcQFileDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QFileDialog_protectedbase_focusNextChild".}
proc fcQFileDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QFileDialog_protectedbase_focusPreviousChild".}
proc fcQFileDialog_protectedbase_sender(self: pointer): pointer {.importc: "QFileDialog_protectedbase_sender".}
proc fcQFileDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFileDialog_protectedbase_senderSignalIndex".}
proc fcQFileDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileDialog_protectedbase_receivers".}
proc fcQFileDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileDialog_protectedbase_isSignalConnected".}
proc fcQFileDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQFileDialog {.importc: "QFileDialog_new".}
proc fcQFileDialog_new2(vtbl, vdata: pointer, parent: pointer, f: cint): ptr cQFileDialog {.importc: "QFileDialog_new2".}
proc fcQFileDialog_new3(vtbl, vdata: pointer): ptr cQFileDialog {.importc: "QFileDialog_new3".}
proc fcQFileDialog_new4(vtbl, vdata: pointer, parent: pointer, caption: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new4".}
proc fcQFileDialog_new5(vtbl, vdata: pointer, parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new5".}
proc fcQFileDialog_new6(vtbl, vdata: pointer, parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string, filter: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new6".}
proc fcQFileDialog_staticMetaObject(): pointer {.importc: "QFileDialog_staticMetaObject".}

proc metaObject*(self: gen_qfiledialog_types.QFileDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfiledialog_types.QFileDialog, param1: cstring): pointer =
  fcQFileDialog_metacast(self.h, param1)

proc metacall*(self: gen_qfiledialog_types.QFileDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfiledialog_types.QFileDialog, s: cstring): string =
  let v_ms = fcQFileDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfiledialog_types.QFileDialog, s: cstring): string =
  let v_ms = fcQFileDialog_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDirectory*(self: gen_qfiledialog_types.QFileDialog, directory: openArray[char]): void =
  fcQFileDialog_setDirectory(self.h, struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))))

proc setDirectory*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qdir_types.QDir): void =
  fcQFileDialog_setDirectoryWithDirectory(self.h, directory.h)

proc directory*(self: gen_qfiledialog_types.QFileDialog): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQFileDialog_directory(self.h), owned: true)

proc setDirectoryUrl*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qurl_types.QUrl): void =
  fcQFileDialog_setDirectoryUrl(self.h, directory.h)

proc directoryUrl*(self: gen_qfiledialog_types.QFileDialog): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_directoryUrl(self.h), owned: true)

proc selectFile*(self: gen_qfiledialog_types.QFileDialog, filename: openArray[char]): void =
  fcQFileDialog_selectFile(self.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc selectedFiles*(self: gen_qfiledialog_types.QFileDialog): seq[string] =
  var v_ma = fcQFileDialog_selectedFiles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc selectUrl*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_selectUrl(self.h, url.h)

proc selectedUrls*(self: gen_qfiledialog_types.QFileDialog): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_selectedUrls(self.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setNameFilterDetailsVisible*(self: gen_qfiledialog_types.QFileDialog, enabled: bool): void =
  fcQFileDialog_setNameFilterDetailsVisible(self.h, enabled)

proc isNameFilterDetailsVisible*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_isNameFilterDetailsVisible(self.h)

proc setNameFilter*(self: gen_qfiledialog_types.QFileDialog, filter: openArray[char]): void =
  fcQFileDialog_setNameFilter(self.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

proc setNameFilters*(self: gen_qfiledialog_types.QFileDialog, filters: openArray[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: if len(filters[i]) > 0: addr filters[i][0] else: nil, len: csize_t(len(filters[i])))

  fcQFileDialog_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: gen_qfiledialog_types.QFileDialog): seq[string] =
  var v_ma = fcQFileDialog_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc selectNameFilter*(self: gen_qfiledialog_types.QFileDialog, filter: openArray[char]): void =
  fcQFileDialog_selectNameFilter(self.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

proc selectedMimeTypeFilter*(self: gen_qfiledialog_types.QFileDialog): string =
  let v_ms = fcQFileDialog_selectedMimeTypeFilter(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc selectedNameFilter*(self: gen_qfiledialog_types.QFileDialog): string =
  let v_ms = fcQFileDialog_selectedNameFilter(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setMimeTypeFilters*(self: gen_qfiledialog_types.QFileDialog, filters: openArray[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: if len(filters[i]) > 0: addr filters[i][0] else: nil, len: csize_t(len(filters[i])))

  fcQFileDialog_setMimeTypeFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc mimeTypeFilters*(self: gen_qfiledialog_types.QFileDialog): seq[string] =
  var v_ma = fcQFileDialog_mimeTypeFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc selectMimeTypeFilter*(self: gen_qfiledialog_types.QFileDialog, filter: openArray[char]): void =
  fcQFileDialog_selectMimeTypeFilter(self.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

proc filter*(self: gen_qfiledialog_types.QFileDialog): cint =
  cint(fcQFileDialog_filter(self.h))

proc setFilter*(self: gen_qfiledialog_types.QFileDialog, filters: cint): void =
  fcQFileDialog_setFilter(self.h, cint(filters))

proc setViewMode*(self: gen_qfiledialog_types.QFileDialog, mode: cint): void =
  fcQFileDialog_setViewMode(self.h, cint(mode))

proc viewMode*(self: gen_qfiledialog_types.QFileDialog): cint =
  cint(fcQFileDialog_viewMode(self.h))

proc setFileMode*(self: gen_qfiledialog_types.QFileDialog, mode: cint): void =
  fcQFileDialog_setFileMode(self.h, cint(mode))

proc fileMode*(self: gen_qfiledialog_types.QFileDialog): cint =
  cint(fcQFileDialog_fileMode(self.h))

proc setAcceptMode*(self: gen_qfiledialog_types.QFileDialog, mode: cint): void =
  fcQFileDialog_setAcceptMode(self.h, cint(mode))

proc acceptMode*(self: gen_qfiledialog_types.QFileDialog): cint =
  cint(fcQFileDialog_acceptMode(self.h))

proc setReadOnly*(self: gen_qfiledialog_types.QFileDialog, enabled: bool): void =
  fcQFileDialog_setReadOnly(self.h, enabled)

proc isReadOnly*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_isReadOnly(self.h)

proc setResolveSymlinks*(self: gen_qfiledialog_types.QFileDialog, enabled: bool): void =
  fcQFileDialog_setResolveSymlinks(self.h, enabled)

proc resolveSymlinks*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_resolveSymlinks(self.h)

proc setSidebarUrls*(self: gen_qfiledialog_types.QFileDialog, urls: openArray[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_setSidebarUrls(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc sidebarUrls*(self: gen_qfiledialog_types.QFileDialog): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_sidebarUrls(self.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc saveState*(self: gen_qfiledialog_types.QFileDialog): seq[byte] =
  var v_bytearray = fcQFileDialog_saveState(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qfiledialog_types.QFileDialog, state: openArray[byte]): bool =
  fcQFileDialog_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc setConfirmOverwrite*(self: gen_qfiledialog_types.QFileDialog, enabled: bool): void =
  fcQFileDialog_setConfirmOverwrite(self.h, enabled)

proc confirmOverwrite*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_confirmOverwrite(self.h)

proc setDefaultSuffix*(self: gen_qfiledialog_types.QFileDialog, suffix: openArray[char]): void =
  fcQFileDialog_setDefaultSuffix(self.h, struct_miqt_string(data: if len(suffix) > 0: addr suffix[0] else: nil, len: csize_t(len(suffix))))

proc defaultSuffix*(self: gen_qfiledialog_types.QFileDialog): string =
  let v_ms = fcQFileDialog_defaultSuffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHistory*(self: gen_qfiledialog_types.QFileDialog, paths: openArray[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQFileDialog_setHistory(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc history*(self: gen_qfiledialog_types.QFileDialog): seq[string] =
  var v_ma = fcQFileDialog_history(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setItemDelegate*(self: gen_qfiledialog_types.QFileDialog, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQFileDialog_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qfiledialog_types.QFileDialog): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQFileDialog_itemDelegate(self.h), owned: false)

proc setIconProvider*(self: gen_qfiledialog_types.QFileDialog, provider: gen_qfileiconprovider_types.QFileIconProvider): void =
  fcQFileDialog_setIconProvider(self.h, provider.h)

proc iconProvider*(self: gen_qfiledialog_types.QFileDialog): gen_qfileiconprovider_types.QFileIconProvider =
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQFileDialog_iconProvider(self.h), owned: false)

proc setLabelText*(self: gen_qfiledialog_types.QFileDialog, label: cint, text: openArray[char]): void =
  fcQFileDialog_setLabelText(self.h, cint(label), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc labelText*(self: gen_qfiledialog_types.QFileDialog, label: cint): string =
  let v_ms = fcQFileDialog_labelText(self.h, cint(label))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSupportedSchemes*(self: gen_qfiledialog_types.QFileDialog, schemes: openArray[string]): void =
  var schemes_CArray = newSeq[struct_miqt_string](len(schemes))
  for i in 0..<len(schemes):
    schemes_CArray[i] = struct_miqt_string(data: if len(schemes[i]) > 0: addr schemes[i][0] else: nil, len: csize_t(len(schemes[i])))

  fcQFileDialog_setSupportedSchemes(self.h, struct_miqt_array(len: csize_t(len(schemes)), data: if len(schemes) == 0: nil else: addr(schemes_CArray[0])))

proc supportedSchemes*(self: gen_qfiledialog_types.QFileDialog): seq[string] =
  var v_ma = fcQFileDialog_supportedSchemes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setProxyModel*(self: gen_qfiledialog_types.QFileDialog, model: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQFileDialog_setProxyModel(self.h, model.h)

proc proxyModel*(self: gen_qfiledialog_types.QFileDialog): gen_qabstractproxymodel_types.QAbstractProxyModel =
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQFileDialog_proxyModel(self.h), owned: false)

proc setOption*(self: gen_qfiledialog_types.QFileDialog, option: cint): void =
  fcQFileDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qfiledialog_types.QFileDialog, option: cint): bool =
  fcQFileDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qfiledialog_types.QFileDialog, options: cint): void =
  fcQFileDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qfiledialog_types.QFileDialog): cint =
  cint(fcQFileDialog_options(self.h))

proc setVisible*(self: gen_qfiledialog_types.QFileDialog, visible: bool): void =
  fcQFileDialog_setVisible(self.h, visible)

proc fileSelected*(self: gen_qfiledialog_types.QFileDialog, file: openArray[char]): void =
  fcQFileDialog_fileSelected(self.h, struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))

type QFileDialogfileSelectedSlot* = proc(file: openArray[char])
proc cQFileDialog_slot_callback_fileSelected(slot: int, file: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogfileSelectedSlot](cast[pointer](slot))
  let vfile_ms = file
  let vfilex_ret = string.fromBytes(vfile_ms)
  c_free(vfile_ms.data)
  let slotval1 = vfilex_ret

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_fileSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogfileSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfileSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfileSelectedSlot) =
  var tmp = new QFileDialogfileSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_fileSelected(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_fileSelected, cQFileDialog_slot_callback_fileSelected_release)

proc filesSelected*(self: gen_qfiledialog_types.QFileDialog, files: openArray[string]): void =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: if len(files[i]) > 0: addr files[i][0] else: nil, len: csize_t(len(files[i])))

  fcQFileDialog_filesSelected(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))

type QFileDialogfilesSelectedSlot* = proc(files: openArray[string])
proc cQFileDialog_slot_callback_filesSelected(slot: int, files: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogfilesSelectedSlot](cast[pointer](slot))
  var vfiles_ma = files
  var vfilesx_ret = newSeq[string](int(vfiles_ma.len))
  let vfiles_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vfiles_ma.data)
  for i in 0 ..< vfiles_ma.len:
    let vfiles_lv_ms = vfiles_outCast[i]
    let vfiles_lvx_ret = string.fromBytes(vfiles_lv_ms)
    c_free(vfiles_lv_ms.data)
    vfilesx_ret[i] = vfiles_lvx_ret
  c_free(vfiles_ma.data)
  let slotval1 = vfilesx_ret

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_filesSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogfilesSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilesSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfilesSelectedSlot) =
  var tmp = new QFileDialogfilesSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_filesSelected(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_filesSelected, cQFileDialog_slot_callback_filesSelected_release)

proc currentChanged*(self: gen_qfiledialog_types.QFileDialog, path: openArray[char]): void =
  fcQFileDialog_currentChanged(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

type QFileDialogcurrentChangedSlot* = proc(path: openArray[char])
proc cQFileDialog_slot_callback_currentChanged(slot: int, path: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogcurrentChangedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcurrentChangedSlot) =
  var tmp = new QFileDialogcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_currentChanged(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_currentChanged, cQFileDialog_slot_callback_currentChanged_release)

proc directoryEntered*(self: gen_qfiledialog_types.QFileDialog, directory: openArray[char]): void =
  fcQFileDialog_directoryEntered(self.h, struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))))

type QFileDialogdirectoryEnteredSlot* = proc(directory: openArray[char])
proc cQFileDialog_slot_callback_directoryEntered(slot: int, directory: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogdirectoryEnteredSlot](cast[pointer](slot))
  let vdirectory_ms = directory
  let vdirectoryx_ret = string.fromBytes(vdirectory_ms)
  c_free(vdirectory_ms.data)
  let slotval1 = vdirectoryx_ret

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_directoryEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogdirectoryEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectoryEntered*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdirectoryEnteredSlot) =
  var tmp = new QFileDialogdirectoryEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_directoryEntered(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_directoryEntered, cQFileDialog_slot_callback_directoryEntered_release)

proc urlSelected*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_urlSelected(self.h, url.h)

type QFileDialogurlSelectedSlot* = proc(url: gen_qurl_types.QUrl)
proc cQFileDialog_slot_callback_urlSelected(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogurlSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_urlSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogurlSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogurlSelectedSlot) =
  var tmp = new QFileDialogurlSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_urlSelected(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_urlSelected, cQFileDialog_slot_callback_urlSelected_release)

proc urlsSelected*(self: gen_qfiledialog_types.QFileDialog, urls: openArray[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_urlsSelected(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

type QFileDialogurlsSelectedSlot* = proc(urls: openArray[gen_qurl_types.QUrl])
proc cQFileDialog_slot_callback_urlsSelected(slot: int, urls: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogurlsSelectedSlot](cast[pointer](slot))
  var vurls_ma = urls
  var vurlsx_ret = newSeq[gen_qurl_types.QUrl](int(vurls_ma.len))
  let vurls_outCast = cast[ptr UncheckedArray[pointer]](vurls_ma.data)
  for i in 0 ..< vurls_ma.len:
    vurlsx_ret[i] = gen_qurl_types.QUrl(h: vurls_outCast[i], owned: true)
  c_free(vurls_ma.data)
  let slotval1 = vurlsx_ret

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_urlsSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogurlsSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlsSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogurlsSelectedSlot) =
  var tmp = new QFileDialogurlsSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_urlsSelected(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_urlsSelected, cQFileDialog_slot_callback_urlsSelected_release)

proc currentUrlChanged*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_currentUrlChanged(self.h, url.h)

type QFileDialogcurrentUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc cQFileDialog_slot_callback_currentUrlChanged(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogcurrentUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_currentUrlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogcurrentUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentUrlChanged*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcurrentUrlChangedSlot) =
  var tmp = new QFileDialogcurrentUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_currentUrlChanged(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_currentUrlChanged, cQFileDialog_slot_callback_currentUrlChanged_release)

proc directoryUrlEntered*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qurl_types.QUrl): void =
  fcQFileDialog_directoryUrlEntered(self.h, directory.h)

type QFileDialogdirectoryUrlEnteredSlot* = proc(directory: gen_qurl_types.QUrl)
proc cQFileDialog_slot_callback_directoryUrlEntered(slot: int, directory: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogdirectoryUrlEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: directory, owned: false)

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_directoryUrlEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogdirectoryUrlEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectoryUrlEntered*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdirectoryUrlEnteredSlot) =
  var tmp = new QFileDialogdirectoryUrlEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_directoryUrlEntered(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_directoryUrlEntered, cQFileDialog_slot_callback_directoryUrlEntered_release)

proc filterSelected*(self: gen_qfiledialog_types.QFileDialog, filter: openArray[char]): void =
  fcQFileDialog_filterSelected(self.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

type QFileDialogfilterSelectedSlot* = proc(filter: openArray[char])
proc cQFileDialog_slot_callback_filterSelected(slot: int, filter: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogfilterSelectedSlot](cast[pointer](slot))
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(vfilter_ms)
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret

  nimfunc[](slotval1)

proc cQFileDialog_slot_callback_filterSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogfilterSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilterSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfilterSelectedSlot) =
  var tmp = new QFileDialogfilterSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_filterSelected(self.h, cast[int](addr tmp[]), cQFileDialog_slot_callback_filterSelected, cQFileDialog_slot_callback_filterSelected_release)

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog): string =
  let v_ms = fcQFileDialog_getOpenFileName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl(), owned: true)

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog): string =
  let v_ms = fcQFileDialog_getSaveFileName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl(), owned: true)

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog): string =
  let v_ms = fcQFileDialog_getExistingDirectory()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl(), owned: true)

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls()
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc saveFileContent*(_: type gen_qfiledialog_types.QFileDialog, fileContent: openArray[byte], fileNameHint: openArray[char]): void =
  fcQFileDialog_saveFileContent(struct_miqt_string(data: cast[cstring](if len(fileContent) == 0: nil else: unsafeAddr fileContent[0]), len: csize_t(len(fileContent))), struct_miqt_string(data: if len(fileNameHint) > 0: addr fileNameHint[0] else: nil, len: csize_t(len(fileNameHint))))

proc tr*(_: type gen_qfiledialog_types.QFileDialog, s: cstring, c: cstring): string =
  let v_ms = fcQFileDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfiledialog_types.QFileDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfiledialog_types.QFileDialog, s: cstring, c: cstring): string =
  let v_ms = fcQFileDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfiledialog_types.QFileDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qfiledialog_types.QFileDialog, option: cint, on: bool): void =
  fcQFileDialog_setOption2(self.h, cint(option), on)

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): string =
  let v_ms = fcQFileDialog_getOpenFileName1(parent.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): string =
  let v_ms = fcQFileDialog_getOpenFileName2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char]): string =
  let v_ms = fcQFileDialog_getOpenFileName3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char], filter: openArray[char]): string =
  let v_ms = fcQFileDialog_getOpenFileName4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))), struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl1(parent.h), owned: true)

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption)))), owned: true)

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h), owned: true)

proc getOpenFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl, filter: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getOpenFileUrl4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter)))), owned: true)

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): string =
  let v_ms = fcQFileDialog_getSaveFileName1(parent.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): string =
  let v_ms = fcQFileDialog_getSaveFileName2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char]): string =
  let v_ms = fcQFileDialog_getSaveFileName3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char], filter: openArray[char]): string =
  let v_ms = fcQFileDialog_getSaveFileName4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))), struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl1(parent.h), owned: true)

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption)))), owned: true)

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h), owned: true)

proc getSaveFileUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl, filter: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getSaveFileUrl4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter)))), owned: true)

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): string =
  let v_ms = fcQFileDialog_getExistingDirectory1(parent.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): string =
  let v_ms = fcQFileDialog_getExistingDirectory2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char]): string =
  let v_ms = fcQFileDialog_getExistingDirectory3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char], options: cint): string =
  let v_ms = fcQFileDialog_getExistingDirectory4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))), cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl1(parent.h), owned: true)

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption)))), owned: true)

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h), owned: true)

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl, options: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h, cint(options)), owned: true)

proc getExistingDirectoryUrl*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl, options: cint, supportedSchemes: openArray[string]): gen_qurl_types.QUrl =
  var supportedSchemes_CArray = newSeq[struct_miqt_string](len(supportedSchemes))
  for i in 0..<len(supportedSchemes):
    supportedSchemes_CArray[i] = struct_miqt_string(data: if len(supportedSchemes[i]) > 0: addr supportedSchemes[i][0] else: nil, len: csize_t(len(supportedSchemes[i])))

  gen_qurl_types.QUrl(h: fcQFileDialog_getExistingDirectoryUrl5(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h, cint(options), struct_miqt_array(len: csize_t(len(supportedSchemes)), data: if len(supportedSchemes) == 0: nil else: addr(supportedSchemes_CArray[0]))), owned: true)

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames1(parent.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char]): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc getOpenFileNames*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: openArray[char], filter: openArray[char]): seq[string] =
  var v_ma = fcQFileDialog_getOpenFileNames4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))), struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls1(parent.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char]): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls2(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))))
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls3(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc getOpenFileUrls*(_: type gen_qfiledialog_types.QFileDialog, parent: gen_qwidget_types.QWidget, caption: openArray[char], dir: gen_qurl_types.QUrl, filter: openArray[char]): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQFileDialog_getOpenFileUrls4(parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

type QFileDialogmetaObjectProc* = proc(self: QFileDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFileDialogmetacastProc* = proc(self: QFileDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QFileDialogmetacallProc* = proc(self: QFileDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFileDialogsetVisibleProc* = proc(self: QFileDialog, visible: bool): void {.raises: [], gcsafe.}
type QFileDialogdoneProc* = proc(self: QFileDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QFileDialogacceptProc* = proc(self: QFileDialog): void {.raises: [], gcsafe.}
type QFileDialogchangeEventProc* = proc(self: QFileDialog, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileDialogsizeHintProc* = proc(self: QFileDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFileDialogminimumSizeHintProc* = proc(self: QFileDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFileDialogopenProc* = proc(self: QFileDialog): void {.raises: [], gcsafe.}
type QFileDialogexecProc* = proc(self: QFileDialog): cint {.raises: [], gcsafe.}
type QFileDialogrejectProc* = proc(self: QFileDialog): void {.raises: [], gcsafe.}
type QFileDialogkeyPressEventProc* = proc(self: QFileDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFileDialogcloseEventProc* = proc(self: QFileDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QFileDialogshowEventProc* = proc(self: QFileDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QFileDialogresizeEventProc* = proc(self: QFileDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QFileDialogcontextMenuEventProc* = proc(self: QFileDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QFileDialogeventFilterProc* = proc(self: QFileDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileDialogdevTypeProc* = proc(self: QFileDialog): cint {.raises: [], gcsafe.}
type QFileDialogheightForWidthProc* = proc(self: QFileDialog, param1: cint): cint {.raises: [], gcsafe.}
type QFileDialoghasHeightForWidthProc* = proc(self: QFileDialog): bool {.raises: [], gcsafe.}
type QFileDialogpaintEngineProc* = proc(self: QFileDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QFileDialogeventProc* = proc(self: QFileDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileDialogmousePressEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFileDialogmouseReleaseEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFileDialogmouseDoubleClickEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFileDialogmouseMoveEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFileDialogwheelEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QFileDialogkeyReleaseEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFileDialogfocusInEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFileDialogfocusOutEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFileDialogenterEventProc* = proc(self: QFileDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileDialogleaveEventProc* = proc(self: QFileDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileDialogpaintEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QFileDialogmoveEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QFileDialogtabletEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QFileDialogactionEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QFileDialogdragEnterEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QFileDialogdragMoveEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QFileDialogdragLeaveEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QFileDialogdropEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QFileDialoghideEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QFileDialognativeEventProc* = proc(self: QFileDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QFileDialogmetricProc* = proc(self: QFileDialog, param1: cint): cint {.raises: [], gcsafe.}
type QFileDialoginitPainterProc* = proc(self: QFileDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QFileDialogredirectedProc* = proc(self: QFileDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QFileDialogsharedPainterProc* = proc(self: QFileDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QFileDialoginputMethodEventProc* = proc(self: QFileDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QFileDialoginputMethodQueryProc* = proc(self: QFileDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFileDialogfocusNextPrevChildProc* = proc(self: QFileDialog, next: bool): bool {.raises: [], gcsafe.}
type QFileDialogtimerEventProc* = proc(self: QFileDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFileDialogchildEventProc* = proc(self: QFileDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFileDialogcustomEventProc* = proc(self: QFileDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileDialogconnectNotifyProc* = proc(self: QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileDialogdisconnectNotifyProc* = proc(self: QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileDialogVTable* {.inheritable, pure.} = object
  vtbl: cQFileDialogVTable
  metaObject*: QFileDialogmetaObjectProc
  metacast*: QFileDialogmetacastProc
  metacall*: QFileDialogmetacallProc
  setVisible*: QFileDialogsetVisibleProc
  done*: QFileDialogdoneProc
  accept*: QFileDialogacceptProc
  changeEvent*: QFileDialogchangeEventProc
  sizeHint*: QFileDialogsizeHintProc
  minimumSizeHint*: QFileDialogminimumSizeHintProc
  open*: QFileDialogopenProc
  exec*: QFileDialogexecProc
  reject*: QFileDialogrejectProc
  keyPressEvent*: QFileDialogkeyPressEventProc
  closeEvent*: QFileDialogcloseEventProc
  showEvent*: QFileDialogshowEventProc
  resizeEvent*: QFileDialogresizeEventProc
  contextMenuEvent*: QFileDialogcontextMenuEventProc
  eventFilter*: QFileDialogeventFilterProc
  devType*: QFileDialogdevTypeProc
  heightForWidth*: QFileDialogheightForWidthProc
  hasHeightForWidth*: QFileDialoghasHeightForWidthProc
  paintEngine*: QFileDialogpaintEngineProc
  event*: QFileDialogeventProc
  mousePressEvent*: QFileDialogmousePressEventProc
  mouseReleaseEvent*: QFileDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QFileDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QFileDialogmouseMoveEventProc
  wheelEvent*: QFileDialogwheelEventProc
  keyReleaseEvent*: QFileDialogkeyReleaseEventProc
  focusInEvent*: QFileDialogfocusInEventProc
  focusOutEvent*: QFileDialogfocusOutEventProc
  enterEvent*: QFileDialogenterEventProc
  leaveEvent*: QFileDialogleaveEventProc
  paintEvent*: QFileDialogpaintEventProc
  moveEvent*: QFileDialogmoveEventProc
  tabletEvent*: QFileDialogtabletEventProc
  actionEvent*: QFileDialogactionEventProc
  dragEnterEvent*: QFileDialogdragEnterEventProc
  dragMoveEvent*: QFileDialogdragMoveEventProc
  dragLeaveEvent*: QFileDialogdragLeaveEventProc
  dropEvent*: QFileDialogdropEventProc
  hideEvent*: QFileDialoghideEventProc
  nativeEvent*: QFileDialognativeEventProc
  metric*: QFileDialogmetricProc
  initPainter*: QFileDialoginitPainterProc
  redirected*: QFileDialogredirectedProc
  sharedPainter*: QFileDialogsharedPainterProc
  inputMethodEvent*: QFileDialoginputMethodEventProc
  inputMethodQuery*: QFileDialoginputMethodQueryProc
  focusNextPrevChild*: QFileDialogfocusNextPrevChildProc
  timerEvent*: QFileDialogtimerEventProc
  childEvent*: QFileDialogchildEventProc
  customEvent*: QFileDialogcustomEventProc
  connectNotify*: QFileDialogconnectNotifyProc
  disconnectNotify*: QFileDialogdisconnectNotifyProc
proc QFileDialogmetaObject*(self: gen_qfiledialog_types.QFileDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_virtualbase_metaObject(self.h), owned: false)

proc cQFileDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialogmetacast*(self: gen_qfiledialog_types.QFileDialog, param1: cstring): pointer =
  fcQFileDialog_virtualbase_metacast(self.h, param1)

proc cQFileDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileDialogmetacall*(self: gen_qfiledialog_types.QFileDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFileDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileDialogsetVisible*(self: gen_qfiledialog_types.QFileDialog, visible: bool): void =
  fcQFileDialog_virtualbase_setVisible(self.h, visible)

proc cQFileDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFileDialogdone*(self: gen_qfiledialog_types.QFileDialog, resultVal: cint): void =
  fcQFileDialog_virtualbase_done(self.h, resultVal)

proc cQFileDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QFileDialogaccept*(self: gen_qfiledialog_types.QFileDialog): void =
  fcQFileDialog_virtualbase_accept(self.h)

proc cQFileDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  vtbl[].accept(self)

proc QFileDialogchangeEvent*(self: gen_qfiledialog_types.QFileDialog, e: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_changeEvent(self.h, e.h)

proc cQFileDialog_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QFileDialogsizeHint*(self: gen_qfiledialog_types.QFileDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFileDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQFileDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialogminimumSizeHint*(self: gen_qfiledialog_types.QFileDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFileDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQFileDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialogopen*(self: gen_qfiledialog_types.QFileDialog): void =
  fcQFileDialog_virtualbase_open(self.h)

proc cQFileDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  vtbl[].open(self)

proc QFileDialogexec*(self: gen_qfiledialog_types.QFileDialog): cint =
  fcQFileDialog_virtualbase_exec(self.h)

proc cQFileDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QFileDialogreject*(self: gen_qfiledialog_types.QFileDialog): void =
  fcQFileDialog_virtualbase_reject(self.h)

proc cQFileDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  vtbl[].reject(self)

proc QFileDialogkeyPressEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQFileDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQFileDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QFileDialogcloseEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQFileDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQFileDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QFileDialogshowEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQFileDialog_virtualbase_showEvent(self.h, param1.h)

proc cQFileDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QFileDialogresizeEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQFileDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQFileDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QFileDialogcontextMenuEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQFileDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQFileDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFileDialogeventFilter*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQFileDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQFileDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileDialogdevType*(self: gen_qfiledialog_types.QFileDialog): cint =
  fcQFileDialog_virtualbase_devType(self.h)

proc cQFileDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFileDialogheightForWidth*(self: gen_qfiledialog_types.QFileDialog, param1: cint): cint =
  fcQFileDialog_virtualbase_heightForWidth(self.h, param1)

proc cQFileDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFileDialoghasHeightForWidth*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_virtualbase_hasHeightForWidth(self.h)

proc cQFileDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFileDialogpaintEngine*(self: gen_qfiledialog_types.QFileDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFileDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQFileDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialogevent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileDialog_virtualbase_event(self.h, event.h)

proc cQFileDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileDialogmousePressEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QFileDialogmouseReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFileDialogmouseDoubleClickEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFileDialogmouseMoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFileDialogwheelEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQFileDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QFileDialogkeyReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQFileDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFileDialogfocusInEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFileDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QFileDialogfocusOutEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFileDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QFileDialogenterEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_enterEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QFileDialogleaveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QFileDialogpaintEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQFileDialog_virtualbase_paintEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QFileDialogmoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQFileDialog_virtualbase_moveEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QFileDialogtabletEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQFileDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QFileDialogactionEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QActionEvent): void =
  fcQFileDialog_virtualbase_actionEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QFileDialogdragEnterEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFileDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFileDialogdragMoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFileDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFileDialogdragLeaveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFileDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFileDialogdropEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDropEvent): void =
  fcQFileDialog_virtualbase_dropEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QFileDialoghideEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QHideEvent): void =
  fcQFileDialog_virtualbase_hideEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QFileDialognativeEvent*(self: gen_qfiledialog_types.QFileDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQFileDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQFileDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileDialogmetric*(self: gen_qfiledialog_types.QFileDialog, param1: cint): cint =
  fcQFileDialog_virtualbase_metric(self.h, cint(param1))

proc cQFileDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFileDialoginitPainter*(self: gen_qfiledialog_types.QFileDialog, painter: gen_qpainter_types.QPainter): void =
  fcQFileDialog_virtualbase_initPainter(self.h, painter.h)

proc cQFileDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QFileDialogredirected*(self: gen_qfiledialog_types.QFileDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFileDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQFileDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialogsharedPainter*(self: gen_qfiledialog_types.QFileDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFileDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQFileDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialoginputMethodEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFileDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQFileDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFileDialoginputMethodQuery*(self: gen_qfiledialog_types.QFileDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQFileDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileDialogfocusNextPrevChild*(self: gen_qfiledialog_types.QFileDialog, next: bool): bool =
  fcQFileDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQFileDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFileDialogtimerEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileDialog_virtualbase_timerEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFileDialogchildEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileDialog_virtualbase_childEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFileDialogcustomEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_customEvent(self.h, event.h)

proc cQFileDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFileDialogconnectNotify*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQFileDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFileDialogdisconnectNotify*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFileDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](fcQFileDialog_vdata(self))
  let self = QFileDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFileDialog* {.inheritable.} = ref object of QFileDialog
  vtbl*: cQFileDialogVTable
method metaObject*(self: VirtualQFileDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFileDialogmetaObject(self[])
proc cQFileDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFileDialog, param1: cstring): pointer {.base.} =
  QFileDialogmetacast(self[], param1)
proc cQFileDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFileDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFileDialogmetacall(self[], param1, param2, param3)
proc cQFileDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setVisible*(self: VirtualQFileDialog, visible: bool): void {.base.} =
  QFileDialogsetVisible(self[], visible)
proc cQFileDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method done*(self: VirtualQFileDialog, resultVal: cint): void {.base.} =
  QFileDialogdone(self[], resultVal)
proc cQFileDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

method accept*(self: VirtualQFileDialog): void {.base.} =
  QFileDialogaccept(self[])
proc cQFileDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  inst.accept()

method changeEvent*(self: VirtualQFileDialog, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileDialogchangeEvent(self[], e)
proc cQFileDialog_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method sizeHint*(self: VirtualQFileDialog): gen_qsize_types.QSize {.base.} =
  QFileDialogsizeHint(self[])
proc cQFileDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQFileDialog): gen_qsize_types.QSize {.base.} =
  QFileDialogminimumSizeHint(self[])
proc cQFileDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQFileDialog): void {.base.} =
  QFileDialogopen(self[])
proc cQFileDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  inst.open()

method exec*(self: VirtualQFileDialog): cint {.base.} =
  QFileDialogexec(self[])
proc cQFileDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method reject*(self: VirtualQFileDialog): void {.base.} =
  QFileDialogreject(self[])
proc cQFileDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQFileDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QFileDialogkeyPressEvent(self[], param1)
proc cQFileDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQFileDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QFileDialogcloseEvent(self[], param1)
proc cQFileDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQFileDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QFileDialogshowEvent(self[], param1)
proc cQFileDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQFileDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QFileDialogresizeEvent(self[], param1)
proc cQFileDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQFileDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QFileDialogcontextMenuEvent(self[], param1)
proc cQFileDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQFileDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileDialogeventFilter(self[], param1, param2)
proc cQFileDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQFileDialog): cint {.base.} =
  QFileDialogdevType(self[])
proc cQFileDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQFileDialog, param1: cint): cint {.base.} =
  QFileDialogheightForWidth(self[], param1)
proc cQFileDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQFileDialog): bool {.base.} =
  QFileDialoghasHeightForWidth(self[])
proc cQFileDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQFileDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QFileDialogpaintEngine(self[])
proc cQFileDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQFileDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileDialogevent(self[], event)
proc cQFileDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFileDialogmousePressEvent(self[], event)
proc cQFileDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFileDialogmouseReleaseEvent(self[], event)
proc cQFileDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFileDialogmouseDoubleClickEvent(self[], event)
proc cQFileDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFileDialogmouseMoveEvent(self[], event)
proc cQFileDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QFileDialogwheelEvent(self[], event)
proc cQFileDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QFileDialogkeyReleaseEvent(self[], event)
proc cQFileDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFileDialogfocusInEvent(self[], event)
proc cQFileDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFileDialogfocusOutEvent(self[], event)
proc cQFileDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQFileDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileDialogenterEvent(self[], event)
proc cQFileDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQFileDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileDialogleaveEvent(self[], event)
proc cQFileDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QFileDialogpaintEvent(self[], event)
proc cQFileDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QFileDialogmoveEvent(self[], event)
proc cQFileDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QFileDialogtabletEvent(self[], event)
proc cQFileDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QFileDialogactionEvent(self[], event)
proc cQFileDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QFileDialogdragEnterEvent(self[], event)
proc cQFileDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QFileDialogdragMoveEvent(self[], event)
proc cQFileDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QFileDialogdragLeaveEvent(self[], event)
proc cQFileDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QFileDialogdropEvent(self[], event)
proc cQFileDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQFileDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QFileDialoghideEvent(self[], event)
proc cQFileDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQFileDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QFileDialognativeEvent(self[], eventType, message, resultVal)
proc cQFileDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQFileDialog, param1: cint): cint {.base.} =
  QFileDialogmetric(self[], param1)
proc cQFileDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQFileDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QFileDialoginitPainter(self[], painter)
proc cQFileDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQFileDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QFileDialogredirected(self[], offset)
proc cQFileDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQFileDialog): gen_qpainter_types.QPainter {.base.} =
  QFileDialogsharedPainter(self[])
proc cQFileDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQFileDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QFileDialoginputMethodEvent(self[], param1)
proc cQFileDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQFileDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QFileDialoginputMethodQuery(self[], param1)
proc cQFileDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQFileDialog, next: bool): bool {.base.} =
  QFileDialogfocusNextPrevChild(self[], next)
proc cQFileDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQFileDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFileDialogtimerEvent(self[], event)
proc cQFileDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQFileDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFileDialogchildEvent(self[], event)
proc cQFileDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFileDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileDialogcustomEvent(self[], event)
proc cQFileDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileDialogconnectNotify(self[], signal)
proc cQFileDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileDialogdisconnectNotify(self[], signal)
proc cQFileDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileDialog](fcQFileDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qwidget_types.QWidget): void =
  fcQFileDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qfiledialog_types.QFileDialog): void =
  fcQFileDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qfiledialog_types.QFileDialog): void =
  fcQFileDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qfiledialog_types.QFileDialog): void =
  fcQFileDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfiledialog_types.QFileDialog): bool =
  fcQFileDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfiledialog_types.QFileDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfiledialog_types.QFileDialog): cint =
  fcQFileDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfiledialog_types.QFileDialog, signal: cstring): cint =
  fcQFileDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](fcQFileDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFileDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQFileDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQFileDialog_vtable_callback_accept
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFileDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFileDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFileDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQFileDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQFileDialog_vtable_callback_exec
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQFileDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFileDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFileDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFileDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFileDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFileDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFileDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFileDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFileDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFileDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFileDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFileDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFileDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFileDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFileDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFileDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFileDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFileDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFileDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFileDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFileDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFileDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFileDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFileDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFileDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFileDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFileDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFileDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFileDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFileDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFileDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFileDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFileDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFileDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFileDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFileDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFileDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileDialog_vtable_callback_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](fcQFileDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFileDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQFileDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQFileDialog_vtable_callback_accept
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFileDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFileDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFileDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQFileDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQFileDialog_vtable_callback_exec
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQFileDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFileDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFileDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFileDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFileDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFileDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFileDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFileDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFileDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFileDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFileDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFileDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFileDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFileDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFileDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFileDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFileDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFileDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFileDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFileDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFileDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFileDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFileDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFileDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFileDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFileDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFileDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFileDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFileDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFileDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFileDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFileDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFileDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFileDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFileDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFileDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFileDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileDialog_vtable_callback_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(f)), owned: true)

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](fcQFileDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFileDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQFileDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQFileDialog_vtable_callback_accept
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFileDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFileDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFileDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQFileDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQFileDialog_vtable_callback_exec
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQFileDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFileDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFileDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFileDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFileDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFileDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFileDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFileDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFileDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFileDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFileDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFileDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFileDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFileDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFileDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFileDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFileDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFileDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFileDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFileDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFileDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFileDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFileDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFileDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFileDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFileDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFileDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFileDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFileDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFileDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFileDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFileDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFileDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFileDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFileDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFileDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFileDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileDialog_vtable_callback_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new3(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: openArray[char],
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](fcQFileDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFileDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQFileDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQFileDialog_vtable_callback_accept
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFileDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFileDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFileDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQFileDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQFileDialog_vtable_callback_exec
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQFileDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFileDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFileDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFileDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFileDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFileDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFileDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFileDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFileDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFileDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFileDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFileDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFileDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFileDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFileDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFileDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFileDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFileDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFileDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFileDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFileDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFileDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFileDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFileDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFileDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFileDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFileDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFileDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFileDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFileDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFileDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFileDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFileDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFileDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFileDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFileDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFileDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileDialog_vtable_callback_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption)))), owned: true)

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: openArray[char], directory: openArray[char],
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](fcQFileDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFileDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQFileDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQFileDialog_vtable_callback_accept
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFileDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFileDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFileDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQFileDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQFileDialog_vtable_callback_exec
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQFileDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFileDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFileDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFileDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFileDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFileDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFileDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFileDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFileDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFileDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFileDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFileDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFileDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFileDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFileDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFileDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFileDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFileDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFileDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFileDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFileDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFileDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFileDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFileDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFileDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFileDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFileDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFileDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFileDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFileDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFileDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFileDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFileDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFileDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFileDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFileDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFileDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileDialog_vtable_callback_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new5(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory)))), owned: true)

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: openArray[char], directory: openArray[char], filter: openArray[char],
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](fcQFileDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFileDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQFileDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQFileDialog_vtable_callback_accept
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFileDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFileDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFileDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQFileDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQFileDialog_vtable_callback_exec
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQFileDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFileDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFileDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFileDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFileDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFileDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFileDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFileDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFileDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFileDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFileDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFileDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFileDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFileDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFileDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFileDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFileDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFileDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFileDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFileDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFileDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFileDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFileDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFileDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFileDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFileDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFileDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFileDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFileDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFileDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFileDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFileDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFileDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFileDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFileDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFileDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFileDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileDialog_vtable_callback_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new6(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))), struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter)))), owned: true)

const cQFileDialog_mvtbl = cQFileDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileDialog()[])](self.fcQFileDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFileDialog_method_callback_metaObject,
  metacast: cQFileDialog_method_callback_metacast,
  metacall: cQFileDialog_method_callback_metacall,
  setVisible: cQFileDialog_method_callback_setVisible,
  done: cQFileDialog_method_callback_done,
  accept: cQFileDialog_method_callback_accept,
  changeEvent: cQFileDialog_method_callback_changeEvent,
  sizeHint: cQFileDialog_method_callback_sizeHint,
  minimumSizeHint: cQFileDialog_method_callback_minimumSizeHint,
  open: cQFileDialog_method_callback_open,
  exec: cQFileDialog_method_callback_exec,
  reject: cQFileDialog_method_callback_reject,
  keyPressEvent: cQFileDialog_method_callback_keyPressEvent,
  closeEvent: cQFileDialog_method_callback_closeEvent,
  showEvent: cQFileDialog_method_callback_showEvent,
  resizeEvent: cQFileDialog_method_callback_resizeEvent,
  contextMenuEvent: cQFileDialog_method_callback_contextMenuEvent,
  eventFilter: cQFileDialog_method_callback_eventFilter,
  devType: cQFileDialog_method_callback_devType,
  heightForWidth: cQFileDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQFileDialog_method_callback_hasHeightForWidth,
  paintEngine: cQFileDialog_method_callback_paintEngine,
  event: cQFileDialog_method_callback_event,
  mousePressEvent: cQFileDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQFileDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQFileDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQFileDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQFileDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQFileDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQFileDialog_method_callback_focusInEvent,
  focusOutEvent: cQFileDialog_method_callback_focusOutEvent,
  enterEvent: cQFileDialog_method_callback_enterEvent,
  leaveEvent: cQFileDialog_method_callback_leaveEvent,
  paintEvent: cQFileDialog_method_callback_paintEvent,
  moveEvent: cQFileDialog_method_callback_moveEvent,
  tabletEvent: cQFileDialog_method_callback_tabletEvent,
  actionEvent: cQFileDialog_method_callback_actionEvent,
  dragEnterEvent: cQFileDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQFileDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQFileDialog_method_callback_dragLeaveEvent,
  dropEvent: cQFileDialog_method_callback_dropEvent,
  hideEvent: cQFileDialog_method_callback_hideEvent,
  nativeEvent: cQFileDialog_method_callback_nativeEvent,
  metric: cQFileDialog_method_callback_metric,
  initPainter: cQFileDialog_method_callback_initPainter,
  redirected: cQFileDialog_method_callback_redirected,
  sharedPainter: cQFileDialog_method_callback_sharedPainter,
  inputMethodEvent: cQFileDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQFileDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQFileDialog_method_callback_focusNextPrevChild,
  timerEvent: cQFileDialog_method_callback_timerEvent,
  childEvent: cQFileDialog_method_callback_childEvent,
  customEvent: cQFileDialog_method_callback_customEvent,
  connectNotify: cQFileDialog_method_callback_connectNotify,
  disconnectNotify: cQFileDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQFileDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileDialog_new(addr(cQFileDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQFileDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileDialog_new2(addr(cQFileDialog_mvtbl), addr(inst[]), parent.h, cint(f))
  inst[].owned = true

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    inst: VirtualQFileDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileDialog_new3(addr(cQFileDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: openArray[char],
    inst: VirtualQFileDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileDialog_new4(addr(cQFileDialog_mvtbl), addr(inst[]), parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))))
  inst[].owned = true

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: openArray[char], directory: openArray[char],
    inst: VirtualQFileDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileDialog_new5(addr(cQFileDialog_mvtbl), addr(inst[]), parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))))
  inst[].owned = true

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: openArray[char], directory: openArray[char], filter: openArray[char],
    inst: VirtualQFileDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileDialog_new6(addr(cQFileDialog_mvtbl), addr(inst[]), parent.h, struct_miqt_string(data: if len(caption) > 0: addr caption[0] else: nil, len: csize_t(len(caption))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))), struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfiledialog_types.QFileDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_staticMetaObject())
