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
type cQFileDialogVTable = object
  destructor*: proc(vtbl: ptr cQFileDialogVTable, self: ptr cQFileDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFileDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFileDialog_virtualbase_metaObject".}
proc fcQFileDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDialog_virtualbase_metacast".}
proc fcQFileDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDialog_virtualbase_metacall".}
proc fcQFileDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFileDialog_virtualbase_setVisible".}
proc fcQFileDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QFileDialog_virtualbase_done".}
proc fcQFileDialog_virtualbase_accept(self: pointer, ): void {.importc: "QFileDialog_virtualbase_accept".}
proc fcQFileDialog_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QFileDialog_virtualbase_changeEvent".}
proc fcQFileDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QFileDialog_virtualbase_sizeHint".}
proc fcQFileDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QFileDialog_virtualbase_minimumSizeHint".}
proc fcQFileDialog_virtualbase_open(self: pointer, ): void {.importc: "QFileDialog_virtualbase_open".}
proc fcQFileDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QFileDialog_virtualbase_exec".}
proc fcQFileDialog_virtualbase_reject(self: pointer, ): void {.importc: "QFileDialog_virtualbase_reject".}
proc fcQFileDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_keyPressEvent".}
proc fcQFileDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_closeEvent".}
proc fcQFileDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_showEvent".}
proc fcQFileDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_resizeEvent".}
proc fcQFileDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_contextMenuEvent".}
proc fcQFileDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QFileDialog_virtualbase_eventFilter".}
proc fcQFileDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QFileDialog_virtualbase_devType".}
proc fcQFileDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFileDialog_virtualbase_heightForWidth".}
proc fcQFileDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QFileDialog_virtualbase_hasHeightForWidth".}
proc fcQFileDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QFileDialog_virtualbase_paintEngine".}
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
proc fcQFileDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QFileDialog_virtualbase_nativeEvent".}
proc fcQFileDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFileDialog_virtualbase_metric".}
proc fcQFileDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFileDialog_virtualbase_initPainter".}
proc fcQFileDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFileDialog_virtualbase_redirected".}
proc fcQFileDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QFileDialog_virtualbase_sharedPainter".}
proc fcQFileDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFileDialog_virtualbase_inputMethodEvent".}
proc fcQFileDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFileDialog_virtualbase_inputMethodQuery".}
proc fcQFileDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFileDialog_virtualbase_focusNextPrevChild".}
proc fcQFileDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_timerEvent".}
proc fcQFileDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_childEvent".}
proc fcQFileDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileDialog_virtualbase_customEvent".}
proc fcQFileDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileDialog_virtualbase_connectNotify".}
proc fcQFileDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileDialog_virtualbase_disconnectNotify".}
proc fcQFileDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QFileDialog_protectedbase_adjustPosition".}
proc fcQFileDialog_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QFileDialog_protectedbase_updateMicroFocus".}
proc fcQFileDialog_protectedbase_create(self: pointer, ): void {.importc: "QFileDialog_protectedbase_create".}
proc fcQFileDialog_protectedbase_destroy(self: pointer, ): void {.importc: "QFileDialog_protectedbase_destroy".}
proc fcQFileDialog_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QFileDialog_protectedbase_focusNextChild".}
proc fcQFileDialog_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QFileDialog_protectedbase_focusPreviousChild".}
proc fcQFileDialog_protectedbase_sender(self: pointer, ): pointer {.importc: "QFileDialog_protectedbase_sender".}
proc fcQFileDialog_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFileDialog_protectedbase_senderSignalIndex".}
proc fcQFileDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileDialog_protectedbase_receivers".}
proc fcQFileDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileDialog_protectedbase_isSignalConnected".}
proc fcQFileDialog_new(vtbl: pointer, parent: pointer): ptr cQFileDialog {.importc: "QFileDialog_new".}
proc fcQFileDialog_new2(vtbl: pointer, parent: pointer, f: cint): ptr cQFileDialog {.importc: "QFileDialog_new2".}
proc fcQFileDialog_new3(vtbl: pointer, ): ptr cQFileDialog {.importc: "QFileDialog_new3".}
proc fcQFileDialog_new4(vtbl: pointer, parent: pointer, caption: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new4".}
proc fcQFileDialog_new5(vtbl: pointer, parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new5".}
proc fcQFileDialog_new6(vtbl: pointer, parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string, filter: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new6".}
proc fcQFileDialog_staticMetaObject(): pointer {.importc: "QFileDialog_staticMetaObject".}
proc fcQFileDialog_delete(self: pointer) {.importc: "QFileDialog_delete".}

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
proc miqt_exec_callback_cQFileDialog_fileSelected(slot: int, file: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogfileSelectedSlot](cast[pointer](slot))
  let vfile_ms = file
  let vfilex_ret = string.fromBytes(toOpenArrayByte(vfile_ms.data, 0, int(vfile_ms.len)-1))
  c_free(vfile_ms.data)
  let slotval1 = vfilex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_fileSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogfileSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfileSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfileSelectedSlot) =
  var tmp = new QFileDialogfileSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_fileSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_fileSelected, miqt_exec_callback_cQFileDialog_fileSelected_release)

proc filesSelected*(self: gen_qfiledialog_types.QFileDialog, files: seq[string]): void =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  fcQFileDialog_filesSelected(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))

type QFileDialogfilesSelectedSlot* = proc(files: seq[string])
proc miqt_exec_callback_cQFileDialog_filesSelected(slot: int, files: struct_miqt_array) {.cdecl.} =
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

proc miqt_exec_callback_cQFileDialog_filesSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogfilesSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilesSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfilesSelectedSlot) =
  var tmp = new QFileDialogfilesSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_filesSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_filesSelected, miqt_exec_callback_cQFileDialog_filesSelected_release)

proc currentChanged*(self: gen_qfiledialog_types.QFileDialog, path: string): void =
  fcQFileDialog_currentChanged(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

type QFileDialogcurrentChangedSlot* = proc(path: string)
proc miqt_exec_callback_cQFileDialog_currentChanged(slot: int, path: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogcurrentChangedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcurrentChangedSlot) =
  var tmp = new QFileDialogcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_currentChanged, miqt_exec_callback_cQFileDialog_currentChanged_release)

proc directoryEntered*(self: gen_qfiledialog_types.QFileDialog, directory: string): void =
  fcQFileDialog_directoryEntered(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

type QFileDialogdirectoryEnteredSlot* = proc(directory: string)
proc miqt_exec_callback_cQFileDialog_directoryEntered(slot: int, directory: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogdirectoryEnteredSlot](cast[pointer](slot))
  let vdirectory_ms = directory
  let vdirectoryx_ret = string.fromBytes(toOpenArrayByte(vdirectory_ms.data, 0, int(vdirectory_ms.len)-1))
  c_free(vdirectory_ms.data)
  let slotval1 = vdirectoryx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_directoryEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogdirectoryEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectoryEntered*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdirectoryEnteredSlot) =
  var tmp = new QFileDialogdirectoryEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_directoryEntered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_directoryEntered, miqt_exec_callback_cQFileDialog_directoryEntered_release)

proc urlSelected*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_urlSelected(self.h, url.h)

type QFileDialogurlSelectedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQFileDialog_urlSelected(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogurlSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_urlSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogurlSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogurlSelectedSlot) =
  var tmp = new QFileDialogurlSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_urlSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_urlSelected, miqt_exec_callback_cQFileDialog_urlSelected_release)

proc urlsSelected*(self: gen_qfiledialog_types.QFileDialog, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_urlsSelected(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

type QFileDialogurlsSelectedSlot* = proc(urls: seq[gen_qurl_types.QUrl])
proc miqt_exec_callback_cQFileDialog_urlsSelected(slot: int, urls: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogurlsSelectedSlot](cast[pointer](slot))
  var vurls_ma = urls
  var vurlsx_ret = newSeq[gen_qurl_types.QUrl](int(vurls_ma.len))
  let vurls_outCast = cast[ptr UncheckedArray[pointer]](vurls_ma.data)
  for i in 0 ..< vurls_ma.len:
    vurlsx_ret[i] = gen_qurl_types.QUrl(h: vurls_outCast[i])
  let slotval1 = vurlsx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_urlsSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogurlsSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlsSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogurlsSelectedSlot) =
  var tmp = new QFileDialogurlsSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_urlsSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_urlsSelected, miqt_exec_callback_cQFileDialog_urlsSelected_release)

proc currentUrlChanged*(self: gen_qfiledialog_types.QFileDialog, url: gen_qurl_types.QUrl): void =
  fcQFileDialog_currentUrlChanged(self.h, url.h)

type QFileDialogcurrentUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQFileDialog_currentUrlChanged(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogcurrentUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_currentUrlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogcurrentUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentUrlChanged*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogcurrentUrlChangedSlot) =
  var tmp = new QFileDialogcurrentUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_currentUrlChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_currentUrlChanged, miqt_exec_callback_cQFileDialog_currentUrlChanged_release)

proc directoryUrlEntered*(self: gen_qfiledialog_types.QFileDialog, directory: gen_qurl_types.QUrl): void =
  fcQFileDialog_directoryUrlEntered(self.h, directory.h)

type QFileDialogdirectoryUrlEnteredSlot* = proc(directory: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQFileDialog_directoryUrlEntered(slot: int, directory: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogdirectoryUrlEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: directory)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_directoryUrlEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogdirectoryUrlEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectoryUrlEntered*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogdirectoryUrlEnteredSlot) =
  var tmp = new QFileDialogdirectoryUrlEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_directoryUrlEntered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_directoryUrlEntered, miqt_exec_callback_cQFileDialog_directoryUrlEntered_release)

proc filterSelected*(self: gen_qfiledialog_types.QFileDialog, filter: string): void =
  fcQFileDialog_filterSelected(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

type QFileDialogfilterSelectedSlot* = proc(filter: string)
proc miqt_exec_callback_cQFileDialog_filterSelected(slot: int, filter: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileDialogfilterSelectedSlot](cast[pointer](slot))
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(toOpenArrayByte(vfilter_ms.data, 0, int(vfilter_ms.len)-1))
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileDialog_filterSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileDialogfilterSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilterSelected*(self: gen_qfiledialog_types.QFileDialog, slot: QFileDialogfilterSelectedSlot) =
  var tmp = new QFileDialogfilterSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_connect_filterSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileDialog_filterSelected, miqt_exec_callback_cQFileDialog_filterSelected_release)

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
type QFileDialogenterEventProc* = proc(self: QFileDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QFileDialognativeEventProc* = proc(self: QFileDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QFileDialogVTable* = object
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
proc QFileDialogmetaObject*(self: gen_qfiledialog_types.QFileDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFileDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFileDialogmetacast*(self: gen_qfiledialog_types.QFileDialog, param1: cstring): pointer =
  fcQFileDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFileDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileDialogmetacall*(self: gen_qfiledialog_types.QFileDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFileDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileDialogsetVisible*(self: gen_qfiledialog_types.QFileDialog, visible: bool): void =
  fcQFileDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQFileDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFileDialogdone*(self: gen_qfiledialog_types.QFileDialog, resultVal: cint): void =
  fcQFileDialog_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQFileDialog_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QFileDialogaccept*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fcQFileDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQFileDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  vtbl[].accept(self)

proc QFileDialogchangeEvent*(self: gen_qfiledialog_types.QFileDialog, e: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQFileDialog_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QFileDialogsizeHint*(self: gen_qfiledialog_types.QFileDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFileDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQFileDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QFileDialogminimumSizeHint*(self: gen_qfiledialog_types.QFileDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFileDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQFileDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QFileDialogopen*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fcQFileDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQFileDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  vtbl[].open(self)

proc QFileDialogexec*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  fcQFileDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQFileDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QFileDialogreject*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fcQFileDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQFileDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  vtbl[].reject(self)

proc QFileDialogkeyPressEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQFileDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQFileDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QFileDialogcloseEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQFileDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQFileDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QFileDialogshowEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQFileDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQFileDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QFileDialogresizeEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQFileDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQFileDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QFileDialogcontextMenuEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQFileDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQFileDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFileDialogeventFilter*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQFileDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQFileDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileDialogdevType*(self: gen_qfiledialog_types.QFileDialog, ): cint =
  fcQFileDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQFileDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFileDialogheightForWidth*(self: gen_qfiledialog_types.QFileDialog, param1: cint): cint =
  fcQFileDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQFileDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFileDialoghasHeightForWidth*(self: gen_qfiledialog_types.QFileDialog, ): bool =
  fcQFileDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQFileDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFileDialogpaintEngine*(self: gen_qfiledialog_types.QFileDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFileDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQFileDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QFileDialogevent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileDialogmousePressEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QFileDialogmouseReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFileDialogmouseDoubleClickEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFileDialogmouseMoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFileDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFileDialogwheelEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQFileDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QFileDialogkeyReleaseEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQFileDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFileDialogfocusInEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFileDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QFileDialogfocusOutEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFileDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QFileDialogenterEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQFileDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QFileDialogleaveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QFileDialogpaintEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQFileDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QFileDialogmoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQFileDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QFileDialogtabletEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQFileDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QFileDialogactionEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QActionEvent): void =
  fcQFileDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QFileDialogdragEnterEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFileDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFileDialogdragMoveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFileDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFileDialogdragLeaveEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFileDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFileDialogdropEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QDropEvent): void =
  fcQFileDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QFileDialoghideEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qevent_types.QHideEvent): void =
  fcQFileDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QFileDialognativeEvent*(self: gen_qfiledialog_types.QFileDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQFileDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQFileDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileDialogmetric*(self: gen_qfiledialog_types.QFileDialog, param1: cint): cint =
  fcQFileDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQFileDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFileDialoginitPainter*(self: gen_qfiledialog_types.QFileDialog, painter: gen_qpainter_types.QPainter): void =
  fcQFileDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQFileDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QFileDialogredirected*(self: gen_qfiledialog_types.QFileDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFileDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQFileDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QFileDialogsharedPainter*(self: gen_qfiledialog_types.QFileDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFileDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQFileDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QFileDialoginputMethodEvent*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFileDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQFileDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFileDialoginputMethodQuery*(self: gen_qfiledialog_types.QFileDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQFileDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QFileDialogfocusNextPrevChild*(self: gen_qfiledialog_types.QFileDialog, next: bool): bool =
  fcQFileDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQFileDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFileDialogtimerEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFileDialogchildEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFileDialogcustomEvent*(self: gen_qfiledialog_types.QFileDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFileDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFileDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFileDialogconnectNotify*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFileDialogdisconnectNotify*(self: gen_qfiledialog_types.QFileDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileDialogVTable](vtbl)
  let self = QFileDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc adjustPosition*(self: gen_qfiledialog_types.QFileDialog, param1: gen_qwidget_types.QWidget): void =
  fcQFileDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fcQFileDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fcQFileDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qfiledialog_types.QFileDialog, ): void =
  fcQFileDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfiledialog_types.QFileDialog, ): bool =
  fcQFileDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfiledialog_types.QFileDialog, ): bool =
  fcQFileDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfiledialog_types.QFileDialog, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileDialog_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qfiledialog_types.QFileDialog, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileDialogVTable, _: ptr cQFileDialog) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFileDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFileDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFileDialog_accept
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFileDialog_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFileDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFileDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFileDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFileDialog_exec
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFileDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFileDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFileDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFileDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFileDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFileDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFileDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFileDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFileDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFileDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFileDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFileDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFileDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFileDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFileDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFileDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFileDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFileDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFileDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFileDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFileDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFileDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFileDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFileDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFileDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFileDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFileDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFileDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFileDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFileDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFileDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFileDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFileDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFileDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFileDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFileDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileDialog_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileDialogVTable, _: ptr cQFileDialog) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFileDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFileDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFileDialog_accept
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFileDialog_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFileDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFileDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFileDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFileDialog_exec
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFileDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFileDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFileDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFileDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFileDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFileDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFileDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFileDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFileDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFileDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFileDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFileDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFileDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFileDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFileDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFileDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFileDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFileDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFileDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFileDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFileDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFileDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFileDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFileDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFileDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFileDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFileDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFileDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFileDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFileDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFileDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFileDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFileDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFileDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFileDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFileDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileDialog_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new2(addr(vtbl[]), parent.h, cint(f)))

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileDialogVTable, _: ptr cQFileDialog) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFileDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFileDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFileDialog_accept
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFileDialog_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFileDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFileDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFileDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFileDialog_exec
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFileDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFileDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFileDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFileDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFileDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFileDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFileDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFileDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFileDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFileDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFileDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFileDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFileDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFileDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFileDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFileDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFileDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFileDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFileDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFileDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFileDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFileDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFileDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFileDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFileDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFileDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFileDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFileDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFileDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFileDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFileDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFileDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFileDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFileDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFileDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFileDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileDialog_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new3(addr(vtbl[]), ))

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: string,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileDialogVTable, _: ptr cQFileDialog) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFileDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFileDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFileDialog_accept
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFileDialog_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFileDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFileDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFileDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFileDialog_exec
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFileDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFileDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFileDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFileDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFileDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFileDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFileDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFileDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFileDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFileDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFileDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFileDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFileDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFileDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFileDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFileDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFileDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFileDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFileDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFileDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFileDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFileDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFileDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFileDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFileDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFileDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFileDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFileDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFileDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFileDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFileDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFileDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFileDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFileDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFileDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFileDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileDialog_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new4(addr(vtbl[]), parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: string, directory: string,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileDialogVTable, _: ptr cQFileDialog) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFileDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFileDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFileDialog_accept
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFileDialog_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFileDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFileDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFileDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFileDialog_exec
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFileDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFileDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFileDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFileDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFileDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFileDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFileDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFileDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFileDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFileDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFileDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFileDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFileDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFileDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFileDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFileDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFileDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFileDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFileDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFileDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFileDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFileDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFileDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFileDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFileDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFileDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFileDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFileDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFileDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFileDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFileDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFileDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFileDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFileDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFileDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFileDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileDialog_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new5(addr(vtbl[]), parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: directory, len: csize_t(len(directory)))))

proc create*(T: type gen_qfiledialog_types.QFileDialog,
    parent: gen_qwidget_types.QWidget, caption: string, directory: string, filter: string,
    vtbl: ref QFileDialogVTable = nil): gen_qfiledialog_types.QFileDialog =
  let vtbl = if vtbl == nil: new QFileDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileDialogVTable, _: ptr cQFileDialog) {.cdecl.} =
    let vtbl = cast[ref QFileDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFileDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFileDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFileDialog_accept
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFileDialog_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFileDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFileDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFileDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFileDialog_exec
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFileDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFileDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFileDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFileDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFileDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFileDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFileDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFileDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFileDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFileDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFileDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFileDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFileDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFileDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFileDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFileDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFileDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFileDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFileDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFileDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFileDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFileDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFileDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFileDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFileDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFileDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFileDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFileDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFileDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFileDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFileDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFileDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFileDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFileDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFileDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFileDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFileDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileDialog_disconnectNotify
  gen_qfiledialog_types.QFileDialog(h: fcQFileDialog_new6(addr(vtbl[]), parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: filter, len: csize_t(len(filter)))))

proc staticMetaObject*(_: type gen_qfiledialog_types.QFileDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileDialog_staticMetaObject())
proc delete*(self: gen_qfiledialog_types.QFileDialog) =
  fcQFileDialog_delete(self.h)
