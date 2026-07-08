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


{.compile("gen_abstractintegration.cpp", QtDesignerCFlags).}


type QDesignerIntegrationInterfaceResourceFileWatcherBehaviourEnum* = distinct cint
template NoResourceFileWatcher*(_: type QDesignerIntegrationInterfaceResourceFileWatcherBehaviourEnum): untyped = 0
template ReloadResourceFileSilently*(_: type QDesignerIntegrationInterfaceResourceFileWatcherBehaviourEnum): untyped = 1
template PromptToReloadResourceFile*(_: type QDesignerIntegrationInterfaceResourceFileWatcherBehaviourEnum): untyped = 2


type QDesignerIntegrationInterfaceFeatureFlagEnum* = distinct cint
template ResourceEditorFeature*(_: type QDesignerIntegrationInterfaceFeatureFlagEnum): untyped = 1
template SlotNavigationFeature*(_: type QDesignerIntegrationInterfaceFeatureFlagEnum): untyped = 2
template DefaultWidgetActionFeature*(_: type QDesignerIntegrationInterfaceFeatureFlagEnum): untyped = 4
template DefaultFeature*(_: type QDesignerIntegrationInterfaceFeatureFlagEnum): untyped = 5


import ./gen_abstractintegration_types
export gen_abstractintegration_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_abstractformwindow_types,
  ./gen_abstractresourcebrowser_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qwidget_types,
  gen_abstractformwindow_types,
  gen_abstractresourcebrowser_types

type cQDesignerIntegrationInterface*{.exportc: "QDesignerIntegrationInterface", incompleteStruct.} = object
type cQDesignerIntegration*{.exportc: "QDesignerIntegration", incompleteStruct.} = object

proc fcQDesignerIntegrationInterface_metaObject(self: pointer): pointer {.importc: "QDesignerIntegrationInterface_metaObject".}
proc fcQDesignerIntegrationInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerIntegrationInterface_metacast".}
proc fcQDesignerIntegrationInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerIntegrationInterface_metacall".}
proc fcQDesignerIntegrationInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerIntegrationInterface_tr".}
proc fcQDesignerIntegrationInterface_containerWindow(self: pointer, widget: pointer): pointer {.importc: "QDesignerIntegrationInterface_containerWindow".}
proc fcQDesignerIntegrationInterface_createResourceBrowser(self: pointer, parent: pointer): pointer {.importc: "QDesignerIntegrationInterface_createResourceBrowser".}
proc fcQDesignerIntegrationInterface_headerSuffix(self: pointer): struct_seaqt_string {.importc: "QDesignerIntegrationInterface_headerSuffix".}
proc fcQDesignerIntegrationInterface_setHeaderSuffix(self: pointer, headerSuffix: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_setHeaderSuffix".}
proc fcQDesignerIntegrationInterface_isHeaderLowercase(self: pointer): bool {.importc: "QDesignerIntegrationInterface_isHeaderLowercase".}
proc fcQDesignerIntegrationInterface_setHeaderLowercase(self: pointer, headerLowerCase: bool): void {.importc: "QDesignerIntegrationInterface_setHeaderLowercase".}
proc fcQDesignerIntegrationInterface_features(self: pointer): cint {.importc: "QDesignerIntegrationInterface_features".}
proc fcQDesignerIntegrationInterface_hasFeature(self: pointer, f: cint): bool {.importc: "QDesignerIntegrationInterface_hasFeature".}
proc fcQDesignerIntegrationInterface_resourceFileWatcherBehaviour(self: pointer): cint {.importc: "QDesignerIntegrationInterface_resourceFileWatcherBehaviour".}
proc fcQDesignerIntegrationInterface_setResourceFileWatcherBehaviour(self: pointer, behaviour: cint): void {.importc: "QDesignerIntegrationInterface_setResourceFileWatcherBehaviour".}
proc fcQDesignerIntegrationInterface_contextHelpId(self: pointer): struct_seaqt_string {.importc: "QDesignerIntegrationInterface_contextHelpId".}
proc fcQDesignerIntegrationInterface_emitObjectNameChanged(self: pointer, formWindow: pointer, objectVal: pointer, newName: struct_seaqt_string, oldName: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_emitObjectNameChanged".}
proc fcQDesignerIntegrationInterface_emitNavigateToSlot(self: pointer, objectName: struct_seaqt_string, signalSignature: struct_seaqt_string, parameterNames: struct_seaqt_array): void {.importc: "QDesignerIntegrationInterface_emitNavigateToSlot".}
proc fcQDesignerIntegrationInterface_emitNavigateToSlotWithSlotSignature(self: pointer, slotSignature: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_emitNavigateToSlotWithSlotSignature".}
proc fcQDesignerIntegrationInterface_emitHelpRequested(self: pointer, manual: struct_seaqt_string, document: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_emitHelpRequested".}
proc fcQDesignerIntegrationInterface_propertyChanged(self: pointer, formWindow: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerIntegrationInterface_propertyChanged".}
proc fcQDesignerIntegrationInterface_connect_propertyChanged(self: pointer, slot: int, callback: proc (slot: int, formWindow: pointer, name: struct_seaqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerIntegrationInterface_connect_propertyChanged".}
proc fcQDesignerIntegrationInterface_objectNameChanged(self: pointer, formWindow: pointer, objectVal: pointer, newName: struct_seaqt_string, oldName: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_objectNameChanged".}
proc fcQDesignerIntegrationInterface_connect_objectNameChanged(self: pointer, slot: int, callback: proc (slot: int, formWindow: pointer, objectVal: pointer, newName: struct_seaqt_string, oldName: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerIntegrationInterface_connect_objectNameChanged".}
proc fcQDesignerIntegrationInterface_helpRequested(self: pointer, manual: struct_seaqt_string, document: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_helpRequested".}
proc fcQDesignerIntegrationInterface_connect_helpRequested(self: pointer, slot: int, callback: proc (slot: int, manual: struct_seaqt_string, document: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerIntegrationInterface_connect_helpRequested".}
proc fcQDesignerIntegrationInterface_navigateToSlot(self: pointer, objectName: struct_seaqt_string, signalSignature: struct_seaqt_string, parameterNames: struct_seaqt_array): void {.importc: "QDesignerIntegrationInterface_navigateToSlot".}
proc fcQDesignerIntegrationInterface_connect_navigateToSlot(self: pointer, slot: int, callback: proc (slot: int, objectName: struct_seaqt_string, signalSignature: struct_seaqt_string, parameterNames: struct_seaqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerIntegrationInterface_connect_navigateToSlot".}
proc fcQDesignerIntegrationInterface_navigateToSlotWithSlotSignature(self: pointer, slotSignature: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_navigateToSlotWithSlotSignature".}
proc fcQDesignerIntegrationInterface_connect_navigateToSlotWithSlotSignature(self: pointer, slot: int, callback: proc (slot: int, slotSignature: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerIntegrationInterface_connect_navigateToSlotWithSlotSignature".}
proc fcQDesignerIntegrationInterface_setFeatures(self: pointer, f: cint): void {.importc: "QDesignerIntegrationInterface_setFeatures".}
proc fcQDesignerIntegrationInterface_updateProperty(self: pointer, name: struct_seaqt_string, value: pointer, enableSubPropertyHandling: bool): void {.importc: "QDesignerIntegrationInterface_updateProperty".}
proc fcQDesignerIntegrationInterface_updateProperty2(self: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerIntegrationInterface_updateProperty2".}
proc fcQDesignerIntegrationInterface_resetProperty(self: pointer, name: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_resetProperty".}
proc fcQDesignerIntegrationInterface_addDynamicProperty(self: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerIntegrationInterface_addDynamicProperty".}
proc fcQDesignerIntegrationInterface_removeDynamicProperty(self: pointer, name: struct_seaqt_string): void {.importc: "QDesignerIntegrationInterface_removeDynamicProperty".}
proc fcQDesignerIntegrationInterface_updateActiveFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerIntegrationInterface_updateActiveFormWindow".}
proc fcQDesignerIntegrationInterface_setupFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerIntegrationInterface_setupFormWindow".}
proc fcQDesignerIntegrationInterface_updateSelection(self: pointer): void {.importc: "QDesignerIntegrationInterface_updateSelection".}
proc fcQDesignerIntegrationInterface_updateCustomWidgetPlugins(self: pointer): void {.importc: "QDesignerIntegrationInterface_updateCustomWidgetPlugins".}
proc fcQDesignerIntegrationInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerIntegrationInterface_tr2".}
proc fcQDesignerIntegrationInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerIntegrationInterface_tr3".}
proc fcQDesignerIntegrationInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerIntegrationInterface_protectedbase_sender".}
proc fcQDesignerIntegrationInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerIntegrationInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerIntegrationInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerIntegrationInterface_protectedbase_receivers".}
proc fcQDesignerIntegrationInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerIntegrationInterface_protectedbase_isSignalConnected".}
proc fcQDesignerIntegrationInterface_staticMetaObject(): pointer {.importc: "QDesignerIntegrationInterface_staticMetaObject".}
proc fcQDesignerIntegrationInterface_delete(self: pointer) {.importc: "QDesignerIntegrationInterface_delete".}
proc fcQDesignerIntegration_metaObject(self: pointer): pointer {.importc: "QDesignerIntegration_metaObject".}
proc fcQDesignerIntegration_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerIntegration_metacast".}
proc fcQDesignerIntegration_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerIntegration_metacall".}
proc fcQDesignerIntegration_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerIntegration_tr".}
proc fcQDesignerIntegration_headerSuffix(self: pointer): struct_seaqt_string {.importc: "QDesignerIntegration_headerSuffix".}
proc fcQDesignerIntegration_setHeaderSuffix(self: pointer, headerSuffix: struct_seaqt_string): void {.importc: "QDesignerIntegration_setHeaderSuffix".}
proc fcQDesignerIntegration_isHeaderLowercase(self: pointer): bool {.importc: "QDesignerIntegration_isHeaderLowercase".}
proc fcQDesignerIntegration_setHeaderLowercase(self: pointer, headerLowerCase: bool): void {.importc: "QDesignerIntegration_setHeaderLowercase".}
proc fcQDesignerIntegration_features(self: pointer): cint {.importc: "QDesignerIntegration_features".}
proc fcQDesignerIntegration_setFeatures(self: pointer, f: cint): void {.importc: "QDesignerIntegration_setFeatures".}
proc fcQDesignerIntegration_resourceFileWatcherBehaviour(self: pointer): cint {.importc: "QDesignerIntegration_resourceFileWatcherBehaviour".}
proc fcQDesignerIntegration_setResourceFileWatcherBehaviour(self: pointer, behaviour: cint): void {.importc: "QDesignerIntegration_setResourceFileWatcherBehaviour".}
proc fcQDesignerIntegration_containerWindow(self: pointer, widget: pointer): pointer {.importc: "QDesignerIntegration_containerWindow".}
proc fcQDesignerIntegration_createResourceBrowser(self: pointer, parent: pointer): pointer {.importc: "QDesignerIntegration_createResourceBrowser".}
proc fcQDesignerIntegration_contextHelpId(self: pointer): struct_seaqt_string {.importc: "QDesignerIntegration_contextHelpId".}
proc fcQDesignerIntegration_updateProperty(self: pointer, name: struct_seaqt_string, value: pointer, enableSubPropertyHandling: bool): void {.importc: "QDesignerIntegration_updateProperty".}
proc fcQDesignerIntegration_updateProperty2(self: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerIntegration_updateProperty2".}
proc fcQDesignerIntegration_resetProperty(self: pointer, name: struct_seaqt_string): void {.importc: "QDesignerIntegration_resetProperty".}
proc fcQDesignerIntegration_addDynamicProperty(self: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerIntegration_addDynamicProperty".}
proc fcQDesignerIntegration_removeDynamicProperty(self: pointer, name: struct_seaqt_string): void {.importc: "QDesignerIntegration_removeDynamicProperty".}
proc fcQDesignerIntegration_updateActiveFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerIntegration_updateActiveFormWindow".}
proc fcQDesignerIntegration_setupFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerIntegration_setupFormWindow".}
proc fcQDesignerIntegration_updateSelection(self: pointer): void {.importc: "QDesignerIntegration_updateSelection".}
proc fcQDesignerIntegration_updateCustomWidgetPlugins(self: pointer): void {.importc: "QDesignerIntegration_updateCustomWidgetPlugins".}
proc fcQDesignerIntegration_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerIntegration_tr2".}
proc fcQDesignerIntegration_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerIntegration_tr3".}
proc fcQDesignerIntegration_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerIntegration_protectedbase_sender".}
proc fcQDesignerIntegration_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerIntegration_protectedbase_senderSignalIndex".}
proc fcQDesignerIntegration_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerIntegration_protectedbase_receivers".}
proc fcQDesignerIntegration_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerIntegration_protectedbase_isSignalConnected".}
proc fcQDesignerIntegration_staticMetaObject(): pointer {.importc: "QDesignerIntegration_staticMetaObject".}
proc fcQDesignerIntegration_delete(self: pointer) {.importc: "QDesignerIntegration_delete".}

proc metaObject*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerIntegrationInterface_metaObject(self.h))

proc metacast*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, param1: cstring): pointer =
  fcQDesignerIntegrationInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerIntegrationInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractintegration_types.QDesignerIntegrationInterface, s: cstring): string =
  let v_ms = fcQDesignerIntegrationInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc containerWindow*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, widget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerIntegrationInterface_containerWindow(self.h, widget.h))

proc createResourceBrowser*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, parent: gen_qwidget_types.QWidget): gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface =
  gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface(h: fcQDesignerIntegrationInterface_createResourceBrowser(self.h, parent.h))

proc headerSuffix*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): string =
  let v_ms = fcQDesignerIntegrationInterface_headerSuffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHeaderSuffix*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, headerSuffix: openArray[char]): void =
  fcQDesignerIntegrationInterface_setHeaderSuffix(self.h, struct_seaqt_string(data: if len(headerSuffix) > 0: addr headerSuffix[0] else: nil, len: csize_t(len(headerSuffix))))

proc isHeaderLowercase*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): bool =
  fcQDesignerIntegrationInterface_isHeaderLowercase(self.h)

proc setHeaderLowercase*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, headerLowerCase: bool): void =
  fcQDesignerIntegrationInterface_setHeaderLowercase(self.h, headerLowerCase)

proc features*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): cint =
  cint(fcQDesignerIntegrationInterface_features(self.h))

proc hasFeature*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, f: cint): bool =
  fcQDesignerIntegrationInterface_hasFeature(self.h, cint(f))

proc resourceFileWatcherBehaviour*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): cint =
  cint(fcQDesignerIntegrationInterface_resourceFileWatcherBehaviour(self.h))

proc setResourceFileWatcherBehaviour*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, behaviour: cint): void =
  fcQDesignerIntegrationInterface_setResourceFileWatcherBehaviour(self.h, cint(behaviour))

proc contextHelpId*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): string =
  let v_ms = fcQDesignerIntegrationInterface_contextHelpId(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc emitObjectNameChanged*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface, objectVal: gen_qobject_types.QObject, newName: openArray[char], oldName: openArray[char]): void =
  fcQDesignerIntegrationInterface_emitObjectNameChanged(self.h, formWindow.h, objectVal.h, struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))), struct_seaqt_string(data: if len(oldName) > 0: addr oldName[0] else: nil, len: csize_t(len(oldName))))

proc emitNavigateToSlot*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, objectName: openArray[char], signalSignature: openArray[char], parameterNames: openArray[string]): void =
  var parameterNames_CArray = newSeq[struct_seaqt_string](len(parameterNames))
  for i in 0..<len(parameterNames):
    parameterNames_CArray[i] = struct_seaqt_string(data: if len(parameterNames[i]) > 0: addr parameterNames[i][0] else: nil, len: csize_t(len(parameterNames[i])))

  fcQDesignerIntegrationInterface_emitNavigateToSlot(self.h, struct_seaqt_string(data: if len(objectName) > 0: addr objectName[0] else: nil, len: csize_t(len(objectName))), struct_seaqt_string(data: if len(signalSignature) > 0: addr signalSignature[0] else: nil, len: csize_t(len(signalSignature))), struct_seaqt_array(len: csize_t(len(parameterNames)), data: if len(parameterNames) == 0: nil else: addr(parameterNames_CArray[0])))

proc emitNavigateToSlot*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slotSignature: openArray[char]): void =
  fcQDesignerIntegrationInterface_emitNavigateToSlotWithSlotSignature(self.h, struct_seaqt_string(data: if len(slotSignature) > 0: addr slotSignature[0] else: nil, len: csize_t(len(slotSignature))))

proc emitHelpRequested*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, manual: openArray[char], document: openArray[char]): void =
  fcQDesignerIntegrationInterface_emitHelpRequested(self.h, struct_seaqt_string(data: if len(manual) > 0: addr manual[0] else: nil, len: csize_t(len(manual))), struct_seaqt_string(data: if len(document) > 0: addr document[0] else: nil, len: csize_t(len(document))))

proc propertyChanged*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerIntegrationInterface_propertyChanged(self.h, formWindow.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

type QDesignerIntegrationInterfacepropertyChangedSlot* = proc(formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface, name: openArray[char], value: gen_qvariant_types.QVariant)
proc fcQDesignerIntegrationInterface_slot_callback_propertyChanged(slot: int, formWindow: pointer, name: struct_seaqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerIntegrationInterfacepropertyChangedSlot](cast[pointer](slot))
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow)

  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2, slotval3)

proc fcQDesignerIntegrationInterface_slot_callback_propertyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerIntegrationInterfacepropertyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPropertyChanged*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slot: QDesignerIntegrationInterfacepropertyChangedSlot) =
  var tmp = new QDesignerIntegrationInterfacepropertyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerIntegrationInterface_connect_propertyChanged(self.h, cast[int](addr tmp[]), fcQDesignerIntegrationInterface_slot_callback_propertyChanged, fcQDesignerIntegrationInterface_slot_callback_propertyChanged_release)

proc objectNameChanged*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface, objectVal: gen_qobject_types.QObject, newName: openArray[char], oldName: openArray[char]): void =
  fcQDesignerIntegrationInterface_objectNameChanged(self.h, formWindow.h, objectVal.h, struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))), struct_seaqt_string(data: if len(oldName) > 0: addr oldName[0] else: nil, len: csize_t(len(oldName))))

type QDesignerIntegrationInterfaceobjectNameChangedSlot* = proc(formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface, objectVal: gen_qobject_types.QObject, newName: openArray[char], oldName: openArray[char])
proc fcQDesignerIntegrationInterface_slot_callback_objectNameChanged(slot: int, formWindow: pointer, objectVal: pointer, newName: struct_seaqt_string, oldName: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerIntegrationInterfaceobjectNameChangedSlot](cast[pointer](slot))
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow)

  let slotval2 = gen_qobject_types.QObject(h: objectVal)

  let vnewName_ms = newName
  let vnewNamex_ret = string.fromBytes(vnewName_ms)
  c_free(vnewName_ms.data)
  let slotval3 = vnewNamex_ret

  let voldName_ms = oldName
  let voldNamex_ret = string.fromBytes(voldName_ms)
  c_free(voldName_ms.data)
  let slotval4 = voldNamex_ret

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc fcQDesignerIntegrationInterface_slot_callback_objectNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerIntegrationInterfaceobjectNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onObjectNameChanged*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slot: QDesignerIntegrationInterfaceobjectNameChangedSlot) =
  var tmp = new QDesignerIntegrationInterfaceobjectNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerIntegrationInterface_connect_objectNameChanged(self.h, cast[int](addr tmp[]), fcQDesignerIntegrationInterface_slot_callback_objectNameChanged, fcQDesignerIntegrationInterface_slot_callback_objectNameChanged_release)

proc helpRequested*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, manual: openArray[char], document: openArray[char]): void =
  fcQDesignerIntegrationInterface_helpRequested(self.h, struct_seaqt_string(data: if len(manual) > 0: addr manual[0] else: nil, len: csize_t(len(manual))), struct_seaqt_string(data: if len(document) > 0: addr document[0] else: nil, len: csize_t(len(document))))

type QDesignerIntegrationInterfacehelpRequestedSlot* = proc(manual: openArray[char], document: openArray[char])
proc fcQDesignerIntegrationInterface_slot_callback_helpRequested(slot: int, manual: struct_seaqt_string, document: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerIntegrationInterfacehelpRequestedSlot](cast[pointer](slot))
  let vmanual_ms = manual
  let vmanualx_ret = string.fromBytes(vmanual_ms)
  c_free(vmanual_ms.data)
  let slotval1 = vmanualx_ret

  let vdocument_ms = document
  let vdocumentx_ret = string.fromBytes(vdocument_ms)
  c_free(vdocument_ms.data)
  let slotval2 = vdocumentx_ret

  nimfunc[](slotval1, slotval2)

proc fcQDesignerIntegrationInterface_slot_callback_helpRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerIntegrationInterfacehelpRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHelpRequested*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slot: QDesignerIntegrationInterfacehelpRequestedSlot) =
  var tmp = new QDesignerIntegrationInterfacehelpRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerIntegrationInterface_connect_helpRequested(self.h, cast[int](addr tmp[]), fcQDesignerIntegrationInterface_slot_callback_helpRequested, fcQDesignerIntegrationInterface_slot_callback_helpRequested_release)

proc navigateToSlot*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, objectName: openArray[char], signalSignature: openArray[char], parameterNames: openArray[string]): void =
  var parameterNames_CArray = newSeq[struct_seaqt_string](len(parameterNames))
  for i in 0..<len(parameterNames):
    parameterNames_CArray[i] = struct_seaqt_string(data: if len(parameterNames[i]) > 0: addr parameterNames[i][0] else: nil, len: csize_t(len(parameterNames[i])))

  fcQDesignerIntegrationInterface_navigateToSlot(self.h, struct_seaqt_string(data: if len(objectName) > 0: addr objectName[0] else: nil, len: csize_t(len(objectName))), struct_seaqt_string(data: if len(signalSignature) > 0: addr signalSignature[0] else: nil, len: csize_t(len(signalSignature))), struct_seaqt_array(len: csize_t(len(parameterNames)), data: if len(parameterNames) == 0: nil else: addr(parameterNames_CArray[0])))

type QDesignerIntegrationInterfacenavigateToSlotSlot* = proc(objectName: openArray[char], signalSignature: openArray[char], parameterNames: openArray[string])
proc fcQDesignerIntegrationInterface_slot_callback_navigateToSlot(slot: int, objectName: struct_seaqt_string, signalSignature: struct_seaqt_string, parameterNames: struct_seaqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerIntegrationInterfacenavigateToSlotSlot](cast[pointer](slot))
  let vobjectName_ms = objectName
  let vobjectNamex_ret = string.fromBytes(vobjectName_ms)
  c_free(vobjectName_ms.data)
  let slotval1 = vobjectNamex_ret

  let vsignalSignature_ms = signalSignature
  let vsignalSignaturex_ret = string.fromBytes(vsignalSignature_ms)
  c_free(vsignalSignature_ms.data)
  let slotval2 = vsignalSignaturex_ret

  var vparameterNames_ma = parameterNames
  var vparameterNamesx_ret = newSeq[string](int(vparameterNames_ma.len))
  let vparameterNames_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](vparameterNames_ma.data)
  for i in 0 ..< vparameterNames_ma.len:
    let vparameterNames_lv_ms = vparameterNames_outCast[i]
    let vparameterNames_lvx_ret = string.fromBytes(vparameterNames_lv_ms)
    c_free(vparameterNames_lv_ms.data)
    vparameterNamesx_ret[i] = vparameterNames_lvx_ret
  c_free(vparameterNames_ma.data)
  let slotval3 = vparameterNamesx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc fcQDesignerIntegrationInterface_slot_callback_navigateToSlot_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerIntegrationInterfacenavigateToSlotSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNavigateToSlot*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slot: QDesignerIntegrationInterfacenavigateToSlotSlot) =
  var tmp = new QDesignerIntegrationInterfacenavigateToSlotSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerIntegrationInterface_connect_navigateToSlot(self.h, cast[int](addr tmp[]), fcQDesignerIntegrationInterface_slot_callback_navigateToSlot, fcQDesignerIntegrationInterface_slot_callback_navigateToSlot_release)

proc navigateToSlot*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slotSignature: openArray[char]): void =
  fcQDesignerIntegrationInterface_navigateToSlotWithSlotSignature(self.h, struct_seaqt_string(data: if len(slotSignature) > 0: addr slotSignature[0] else: nil, len: csize_t(len(slotSignature))))

type QDesignerIntegrationInterfacenavigateToSlotWithSlotSignatureSlot* = proc(slotSignature: openArray[char])
proc fcQDesignerIntegrationInterface_slot_callback_navigateToSlotWithSlotSignature(slot: int, slotSignature: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerIntegrationInterfacenavigateToSlotWithSlotSignatureSlot](cast[pointer](slot))
  let vslotSignature_ms = slotSignature
  let vslotSignaturex_ret = string.fromBytes(vslotSignature_ms)
  c_free(vslotSignature_ms.data)
  let slotval1 = vslotSignaturex_ret

  nimfunc[](slotval1)

proc fcQDesignerIntegrationInterface_slot_callback_navigateToSlotWithSlotSignature_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerIntegrationInterfacenavigateToSlotWithSlotSignatureSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNavigateToSlot*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, slot: QDesignerIntegrationInterfacenavigateToSlotWithSlotSignatureSlot) =
  var tmp = new QDesignerIntegrationInterfacenavigateToSlotWithSlotSignatureSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerIntegrationInterface_connect_navigateToSlotWithSlotSignature(self.h, cast[int](addr tmp[]), fcQDesignerIntegrationInterface_slot_callback_navigateToSlotWithSlotSignature, fcQDesignerIntegrationInterface_slot_callback_navigateToSlotWithSlotSignature_release)

proc setFeatures*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, f: cint): void =
  fcQDesignerIntegrationInterface_setFeatures(self.h, cint(f))

proc updateProperty*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, name: openArray[char], value: gen_qvariant_types.QVariant, enableSubPropertyHandling: bool): void =
  fcQDesignerIntegrationInterface_updateProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h, enableSubPropertyHandling)

proc updateProperty*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerIntegrationInterface_updateProperty2(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc resetProperty*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, name: openArray[char]): void =
  fcQDesignerIntegrationInterface_resetProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc addDynamicProperty*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerIntegrationInterface_addDynamicProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc removeDynamicProperty*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, name: openArray[char]): void =
  fcQDesignerIntegrationInterface_removeDynamicProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc updateActiveFormWindow*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerIntegrationInterface_updateActiveFormWindow(self.h, formWindow.h)

proc setupFormWindow*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerIntegrationInterface_setupFormWindow(self.h, formWindow.h)

proc updateSelection*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): void =
  fcQDesignerIntegrationInterface_updateSelection(self.h)

proc updateCustomWidgetPlugins*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): void =
  fcQDesignerIntegrationInterface_updateCustomWidgetPlugins(self.h)

proc tr*(_: type gen_abstractintegration_types.QDesignerIntegrationInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerIntegrationInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractintegration_types.QDesignerIntegrationInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerIntegrationInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerIntegrationInterface_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_abstractintegration_types.QDesignerIntegrationInterface): cint =
  fcQDesignerIntegrationInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, signal: cstring): cint =
  fcQDesignerIntegrationInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractintegration_types.QDesignerIntegrationInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerIntegrationInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractintegration_types.QDesignerIntegrationInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerIntegrationInterface_staticMetaObject())
proc delete*(self: gen_abstractintegration_types.QDesignerIntegrationInterface) =
  fcQDesignerIntegrationInterface_delete(self.h)
proc metaObject*(self: gen_abstractintegration_types.QDesignerIntegration): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerIntegration_metaObject(self.h))

proc metacast*(self: gen_abstractintegration_types.QDesignerIntegration, param1: cstring): pointer =
  fcQDesignerIntegration_metacast(self.h, param1)

proc metacall*(self: gen_abstractintegration_types.QDesignerIntegration, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerIntegration_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractintegration_types.QDesignerIntegration, s: cstring): string =
  let v_ms = fcQDesignerIntegration_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc headerSuffix*(self: gen_abstractintegration_types.QDesignerIntegration): string =
  let v_ms = fcQDesignerIntegration_headerSuffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHeaderSuffix*(self: gen_abstractintegration_types.QDesignerIntegration, headerSuffix: openArray[char]): void =
  fcQDesignerIntegration_setHeaderSuffix(self.h, struct_seaqt_string(data: if len(headerSuffix) > 0: addr headerSuffix[0] else: nil, len: csize_t(len(headerSuffix))))

proc isHeaderLowercase*(self: gen_abstractintegration_types.QDesignerIntegration): bool =
  fcQDesignerIntegration_isHeaderLowercase(self.h)

proc setHeaderLowercase*(self: gen_abstractintegration_types.QDesignerIntegration, headerLowerCase: bool): void =
  fcQDesignerIntegration_setHeaderLowercase(self.h, headerLowerCase)

proc features*(self: gen_abstractintegration_types.QDesignerIntegration): cint =
  cint(fcQDesignerIntegration_features(self.h))

proc setFeatures*(self: gen_abstractintegration_types.QDesignerIntegration, f: cint): void =
  fcQDesignerIntegration_setFeatures(self.h, cint(f))

proc resourceFileWatcherBehaviour*(self: gen_abstractintegration_types.QDesignerIntegration): cint =
  cint(fcQDesignerIntegration_resourceFileWatcherBehaviour(self.h))

proc setResourceFileWatcherBehaviour*(self: gen_abstractintegration_types.QDesignerIntegration, behaviour: cint): void =
  fcQDesignerIntegration_setResourceFileWatcherBehaviour(self.h, cint(behaviour))

proc containerWindow*(self: gen_abstractintegration_types.QDesignerIntegration, widget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerIntegration_containerWindow(self.h, widget.h))

proc createResourceBrowser*(self: gen_abstractintegration_types.QDesignerIntegration, parent: gen_qwidget_types.QWidget): gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface =
  gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface(h: fcQDesignerIntegration_createResourceBrowser(self.h, parent.h))

proc contextHelpId*(self: gen_abstractintegration_types.QDesignerIntegration): string =
  let v_ms = fcQDesignerIntegration_contextHelpId(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc updateProperty*(self: gen_abstractintegration_types.QDesignerIntegration, name: openArray[char], value: gen_qvariant_types.QVariant, enableSubPropertyHandling: bool): void =
  fcQDesignerIntegration_updateProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h, enableSubPropertyHandling)

proc updateProperty*(self: gen_abstractintegration_types.QDesignerIntegration, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerIntegration_updateProperty2(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc resetProperty*(self: gen_abstractintegration_types.QDesignerIntegration, name: openArray[char]): void =
  fcQDesignerIntegration_resetProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc addDynamicProperty*(self: gen_abstractintegration_types.QDesignerIntegration, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerIntegration_addDynamicProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc removeDynamicProperty*(self: gen_abstractintegration_types.QDesignerIntegration, name: openArray[char]): void =
  fcQDesignerIntegration_removeDynamicProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc updateActiveFormWindow*(self: gen_abstractintegration_types.QDesignerIntegration, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerIntegration_updateActiveFormWindow(self.h, formWindow.h)

proc setupFormWindow*(self: gen_abstractintegration_types.QDesignerIntegration, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerIntegration_setupFormWindow(self.h, formWindow.h)

proc updateSelection*(self: gen_abstractintegration_types.QDesignerIntegration): void =
  fcQDesignerIntegration_updateSelection(self.h)

proc updateCustomWidgetPlugins*(self: gen_abstractintegration_types.QDesignerIntegration): void =
  fcQDesignerIntegration_updateCustomWidgetPlugins(self.h)

proc tr*(_: type gen_abstractintegration_types.QDesignerIntegration, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerIntegration_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractintegration_types.QDesignerIntegration, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerIntegration_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_abstractintegration_types.QDesignerIntegration): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerIntegration_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_abstractintegration_types.QDesignerIntegration): cint =
  fcQDesignerIntegration_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractintegration_types.QDesignerIntegration, signal: cstring): cint =
  fcQDesignerIntegration_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractintegration_types.QDesignerIntegration, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerIntegration_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractintegration_types.QDesignerIntegration): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerIntegration_staticMetaObject())
proc delete*(self: gen_abstractintegration_types.QDesignerIntegration) =
  fcQDesignerIntegration_delete(self.h)
