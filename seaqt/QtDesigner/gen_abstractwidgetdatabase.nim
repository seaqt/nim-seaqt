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


import ./gen_abstractwidgetdatabase_types
export gen_abstractwidgetdatabase_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qicon_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qicon_types

type cQDesignerWidgetDataBaseItemInterface*{.exportc: "QDesignerWidgetDataBaseItemInterface", incompleteStruct.} = object
type cQDesignerWidgetDataBaseInterface*{.exportc: "QDesignerWidgetDataBaseInterface", incompleteStruct.} = object

proc fcQDesignerWidgetDataBaseItemInterface_name(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_name".}
proc fcQDesignerWidgetDataBaseItemInterface_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setName".}
proc fcQDesignerWidgetDataBaseItemInterface_group(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_group".}
proc fcQDesignerWidgetDataBaseItemInterface_setGroup(self: pointer, group: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setGroup".}
proc fcQDesignerWidgetDataBaseItemInterface_toolTip(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_toolTip".}
proc fcQDesignerWidgetDataBaseItemInterface_setToolTip(self: pointer, toolTip: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setToolTip".}
proc fcQDesignerWidgetDataBaseItemInterface_whatsThis(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_whatsThis".}
proc fcQDesignerWidgetDataBaseItemInterface_setWhatsThis(self: pointer, whatsThis: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setWhatsThis".}
proc fcQDesignerWidgetDataBaseItemInterface_includeFile(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_includeFile".}
proc fcQDesignerWidgetDataBaseItemInterface_setIncludeFile(self: pointer, includeFile: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setIncludeFile".}
proc fcQDesignerWidgetDataBaseItemInterface_icon(self: pointer): pointer {.importc: "QDesignerWidgetDataBaseItemInterface_icon".}
proc fcQDesignerWidgetDataBaseItemInterface_setIcon(self: pointer, icon: pointer): void {.importc: "QDesignerWidgetDataBaseItemInterface_setIcon".}
proc fcQDesignerWidgetDataBaseItemInterface_isCompat(self: pointer): bool {.importc: "QDesignerWidgetDataBaseItemInterface_isCompat".}
proc fcQDesignerWidgetDataBaseItemInterface_setCompat(self: pointer, compat: bool): void {.importc: "QDesignerWidgetDataBaseItemInterface_setCompat".}
proc fcQDesignerWidgetDataBaseItemInterface_isContainer(self: pointer): bool {.importc: "QDesignerWidgetDataBaseItemInterface_isContainer".}
proc fcQDesignerWidgetDataBaseItemInterface_setContainer(self: pointer, container: bool): void {.importc: "QDesignerWidgetDataBaseItemInterface_setContainer".}
proc fcQDesignerWidgetDataBaseItemInterface_isCustom(self: pointer): bool {.importc: "QDesignerWidgetDataBaseItemInterface_isCustom".}
proc fcQDesignerWidgetDataBaseItemInterface_setCustom(self: pointer, custom: bool): void {.importc: "QDesignerWidgetDataBaseItemInterface_setCustom".}
proc fcQDesignerWidgetDataBaseItemInterface_pluginPath(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_pluginPath".}
proc fcQDesignerWidgetDataBaseItemInterface_setPluginPath(self: pointer, path: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setPluginPath".}
proc fcQDesignerWidgetDataBaseItemInterface_isPromoted(self: pointer): bool {.importc: "QDesignerWidgetDataBaseItemInterface_isPromoted".}
proc fcQDesignerWidgetDataBaseItemInterface_setPromoted(self: pointer, b: bool): void {.importc: "QDesignerWidgetDataBaseItemInterface_setPromoted".}
proc fcQDesignerWidgetDataBaseItemInterface_extends(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseItemInterface_extends".}
proc fcQDesignerWidgetDataBaseItemInterface_setExtends(self: pointer, s: struct_seaqt_string): void {.importc: "QDesignerWidgetDataBaseItemInterface_setExtends".}
proc fcQDesignerWidgetDataBaseItemInterface_setDefaultPropertyValues(self: pointer, list: struct_seaqt_array): void {.importc: "QDesignerWidgetDataBaseItemInterface_setDefaultPropertyValues".}
proc fcQDesignerWidgetDataBaseItemInterface_defaultPropertyValues(self: pointer): struct_seaqt_array {.importc: "QDesignerWidgetDataBaseItemInterface_defaultPropertyValues".}
proc fcQDesignerWidgetDataBaseItemInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerWidgetDataBaseItemInterface_vdata".}
proc fvdata_cQDesignerWidgetDataBaseItemInterface(self: pointer): pointer {.importc: "vdata_QDesignerWidgetDataBaseItemInterface".}

type cQDesignerWidgetDataBaseItemInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  name*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setName*: proc(self: pointer, name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  group*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setGroup*: proc(self: pointer, group: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  toolTip*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setToolTip*: proc(self: pointer, toolTip: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  whatsThis*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setWhatsThis*: proc(self: pointer, whatsThis: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  includeFile*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setIncludeFile*: proc(self: pointer, includeFile: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  icon*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setIcon*: proc(self: pointer, icon: pointer): void {.cdecl, raises: [], gcsafe.}
  isCompat*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setCompat*: proc(self: pointer, compat: bool): void {.cdecl, raises: [], gcsafe.}
  isContainer*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setContainer*: proc(self: pointer, container: bool): void {.cdecl, raises: [], gcsafe.}
  isCustom*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setCustom*: proc(self: pointer, custom: bool): void {.cdecl, raises: [], gcsafe.}
  pluginPath*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setPluginPath*: proc(self: pointer, path: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  isPromoted*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPromoted*: proc(self: pointer, b: bool): void {.cdecl, raises: [], gcsafe.}
  extends*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setExtends*: proc(self: pointer, s: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  setDefaultPropertyValues*: proc(self: pointer, list: struct_seaqt_array): void {.cdecl, raises: [], gcsafe.}
  defaultPropertyValues*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
proc fcQDesignerWidgetDataBaseItemInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerWidgetDataBaseItemInterface {.importc: "QDesignerWidgetDataBaseItemInterface_new".}
proc fcQDesignerWidgetDataBaseInterface_metaObject(self: pointer): pointer {.importc: "QDesignerWidgetDataBaseInterface_metaObject".}
proc fcQDesignerWidgetDataBaseInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerWidgetDataBaseInterface_metacast".}
proc fcQDesignerWidgetDataBaseInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_metacall".}
proc fcQDesignerWidgetDataBaseInterface_trS(s: cstring): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseInterface_tr_s".}
proc fcQDesignerWidgetDataBaseInterface_count(self: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_count".}
proc fcQDesignerWidgetDataBaseInterface_item(self: pointer, index: cint): pointer {.importc: "QDesignerWidgetDataBaseInterface_item".}
proc fcQDesignerWidgetDataBaseInterface_indexOf(self: pointer, item: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_indexOf".}
proc fcQDesignerWidgetDataBaseInterface_insert(self: pointer, index: cint, item: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_insert".}
proc fcQDesignerWidgetDataBaseInterface_append(self: pointer, item: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_append".}
proc fcQDesignerWidgetDataBaseInterface_indexOfObject(self: pointer, objectVal: pointer, resolveName: bool): cint {.importc: "QDesignerWidgetDataBaseInterface_indexOfObject".}
proc fcQDesignerWidgetDataBaseInterface_indexOfClassName(self: pointer, className: struct_seaqt_string, resolveName: bool): cint {.importc: "QDesignerWidgetDataBaseInterface_indexOfClassName".}
proc fcQDesignerWidgetDataBaseInterface_isContainerObject(self: pointer, objectVal: pointer): bool {.importc: "QDesignerWidgetDataBaseInterface_isContainer_object".}
proc fcQDesignerWidgetDataBaseInterface_isCustomObject(self: pointer, objectVal: pointer): bool {.importc: "QDesignerWidgetDataBaseInterface_isCustom_object".}
proc fcQDesignerWidgetDataBaseInterface_changed(self: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_changed".}
proc fcQDesignerWidgetDataBaseInterface_connect_changed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerWidgetDataBaseInterface_connect_changed".}
proc fcQDesignerWidgetDataBaseInterface_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseInterface_tr_s_c".}
proc fcQDesignerWidgetDataBaseInterface_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerWidgetDataBaseInterface_tr_s_c_n".}
proc fcQDesignerWidgetDataBaseInterface_isContainerObjectResolveName(self: pointer, objectVal: pointer, resolveName: bool): bool {.importc: "QDesignerWidgetDataBaseInterface_isContainer_object_resolveName".}
proc fcQDesignerWidgetDataBaseInterface_isCustomObjectResolveName(self: pointer, objectVal: pointer, resolveName: bool): bool {.importc: "QDesignerWidgetDataBaseInterface_isCustom_object_resolveName".}
proc fcQDesignerWidgetDataBaseInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerWidgetDataBaseInterface_vdata".}
proc fvdata_cQDesignerWidgetDataBaseInterface(self: pointer): pointer {.importc: "vdata_QDesignerWidgetDataBaseInterface".}

type cQDesignerWidgetDataBaseInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  item*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, item: pointer): cint {.cdecl, raises: [], gcsafe.}
  insert*: proc(self: pointer, index: cint, item: pointer): void {.cdecl, raises: [], gcsafe.}
  append*: proc(self: pointer, item: pointer): void {.cdecl, raises: [], gcsafe.}
  indexOfObject*: proc(self: pointer, objectVal: pointer, resolveName: bool): cint {.cdecl, raises: [], gcsafe.}
  indexOfClassName*: proc(self: pointer, className: struct_seaqt_string, resolveName: bool): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_metaObject".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_metacast".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_metacall".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_count(self: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_count".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_item(self: pointer, index: cint): pointer {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_item".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_indexOf(self: pointer, item: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_indexOf".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_insert(self: pointer, index: cint, item: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_insert".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_append(self: pointer, item: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_append".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_indexOfObject(self: pointer, objectVal: pointer, resolveName: bool): cint {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_indexOfObject".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_indexOfClassName(self: pointer, className: struct_seaqt_string, resolveName: bool): cint {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_indexOfClassName".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_event".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_eventFilter".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_timerEvent".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_childEvent".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_customEvent".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_connectNotify".}
proc fcQDesignerWidgetDataBaseInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerWidgetDataBaseInterface_virtualbase_disconnectNotify".}
proc fcQDesignerWidgetDataBaseInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerWidgetDataBaseInterface_protectedbase_sender".}
proc fcQDesignerWidgetDataBaseInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerWidgetDataBaseInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerWidgetDataBaseInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerWidgetDataBaseInterface_protectedbase_receivers".}
proc fcQDesignerWidgetDataBaseInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerWidgetDataBaseInterface_protectedbase_isSignalConnected".}
proc fcQDesignerWidgetDataBaseInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerWidgetDataBaseInterface {.importc: "QDesignerWidgetDataBaseInterface_new".}
proc fcQDesignerWidgetDataBaseInterface_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQDesignerWidgetDataBaseInterface {.importc: "QDesignerWidgetDataBaseInterface_new_parent".}
proc fcQDesignerWidgetDataBaseInterface_staticMetaObject(): pointer {.importc: "QDesignerWidgetDataBaseInterface_staticMetaObject".}

proc name*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, name: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc group*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_group(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setGroup*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, group: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setGroup(self.h, struct_seaqt_string(data: if len(group) > 0: addr group[0] else: nil, len: csize_t(len(group))))

proc toolTip*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_toolTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, toolTip: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setToolTip(self.h, struct_seaqt_string(data: if len(toolTip) > 0: addr toolTip[0] else: nil, len: csize_t(len(toolTip))))

proc whatsThis*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, whatsThis: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setWhatsThis(self.h, struct_seaqt_string(data: if len(whatsThis) > 0: addr whatsThis[0] else: nil, len: csize_t(len(whatsThis))))

proc includeFile*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_includeFile(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setIncludeFile*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, includeFile: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setIncludeFile(self.h, struct_seaqt_string(data: if len(includeFile) > 0: addr includeFile[0] else: nil, len: csize_t(len(includeFile))))

proc icon*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQDesignerWidgetDataBaseItemInterface_icon(self.h), owned: true)

proc setIcon*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, icon: gen_qicon_types.QIcon): void =
  fcQDesignerWidgetDataBaseItemInterface_setIcon(self.h, icon.h)

proc isCompat*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): bool =
  fcQDesignerWidgetDataBaseItemInterface_isCompat(self.h)

proc setCompat*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, compat: bool): void =
  fcQDesignerWidgetDataBaseItemInterface_setCompat(self.h, compat)

proc isContainer*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): bool =
  fcQDesignerWidgetDataBaseItemInterface_isContainer(self.h)

proc setContainer*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, container: bool): void =
  fcQDesignerWidgetDataBaseItemInterface_setContainer(self.h, container)

proc isCustom*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): bool =
  fcQDesignerWidgetDataBaseItemInterface_isCustom(self.h)

proc setCustom*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, custom: bool): void =
  fcQDesignerWidgetDataBaseItemInterface_setCustom(self.h, custom)

proc pluginPath*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_pluginPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPluginPath*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, path: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setPluginPath(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc isPromoted*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): bool =
  fcQDesignerWidgetDataBaseItemInterface_isPromoted(self.h)

proc setPromoted*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, b: bool): void =
  fcQDesignerWidgetDataBaseItemInterface_setPromoted(self.h, b)

proc extends*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): string =
  let v_ms = fcQDesignerWidgetDataBaseItemInterface_extends(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setExtends*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, s: openArray[char]): void =
  fcQDesignerWidgetDataBaseItemInterface_setExtends(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc setDefaultPropertyValues*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface, list: openArray[gen_qvariant_types.QVariant]): void =
  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  fcQDesignerWidgetDataBaseItemInterface_setDefaultPropertyValues(self.h, struct_seaqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc defaultPropertyValues*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQDesignerWidgetDataBaseItemInterface_defaultPropertyValues(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

type QDesignerWidgetDataBaseItemInterfacenameProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetNameProc* = proc(self: QDesignerWidgetDataBaseItemInterface, name: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacegroupProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetGroupProc* = proc(self: QDesignerWidgetDataBaseItemInterface, group: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacetoolTipProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetToolTipProc* = proc(self: QDesignerWidgetDataBaseItemInterface, toolTip: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacewhatsThisProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetWhatsThisProc* = proc(self: QDesignerWidgetDataBaseItemInterface, whatsThis: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceincludeFileProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetIncludeFileProc* = proc(self: QDesignerWidgetDataBaseItemInterface, includeFile: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceiconProc* = proc(self: QDesignerWidgetDataBaseItemInterface): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetIconProc* = proc(self: QDesignerWidgetDataBaseItemInterface, icon: gen_qicon_types.QIcon): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceisCompatProc* = proc(self: QDesignerWidgetDataBaseItemInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetCompatProc* = proc(self: QDesignerWidgetDataBaseItemInterface, compat: bool): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceisContainerProc* = proc(self: QDesignerWidgetDataBaseItemInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetContainerProc* = proc(self: QDesignerWidgetDataBaseItemInterface, container: bool): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceisCustomProc* = proc(self: QDesignerWidgetDataBaseItemInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetCustomProc* = proc(self: QDesignerWidgetDataBaseItemInterface, custom: bool): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacepluginPathProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetPluginPathProc* = proc(self: QDesignerWidgetDataBaseItemInterface, path: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceisPromotedProc* = proc(self: QDesignerWidgetDataBaseItemInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetPromotedProc* = proc(self: QDesignerWidgetDataBaseItemInterface, b: bool): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfaceextendsProc* = proc(self: QDesignerWidgetDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetExtendsProc* = proc(self: QDesignerWidgetDataBaseItemInterface, s: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacesetDefaultPropertyValuesProc* = proc(self: QDesignerWidgetDataBaseItemInterface, list: openArray[gen_qvariant_types.QVariant]): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseItemInterfacedefaultPropertyValuesProc* = proc(self: QDesignerWidgetDataBaseItemInterface): seq[gen_qvariant_types.QVariant] {.raises: [], gcsafe.}

type QDesignerWidgetDataBaseItemInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerWidgetDataBaseItemInterfaceVTable
  name*: QDesignerWidgetDataBaseItemInterfacenameProc
  setName*: QDesignerWidgetDataBaseItemInterfacesetNameProc
  group*: QDesignerWidgetDataBaseItemInterfacegroupProc
  setGroup*: QDesignerWidgetDataBaseItemInterfacesetGroupProc
  toolTip*: QDesignerWidgetDataBaseItemInterfacetoolTipProc
  setToolTip*: QDesignerWidgetDataBaseItemInterfacesetToolTipProc
  whatsThis*: QDesignerWidgetDataBaseItemInterfacewhatsThisProc
  setWhatsThis*: QDesignerWidgetDataBaseItemInterfacesetWhatsThisProc
  includeFile*: QDesignerWidgetDataBaseItemInterfaceincludeFileProc
  setIncludeFile*: QDesignerWidgetDataBaseItemInterfacesetIncludeFileProc
  icon*: QDesignerWidgetDataBaseItemInterfaceiconProc
  setIcon*: QDesignerWidgetDataBaseItemInterfacesetIconProc
  isCompat*: QDesignerWidgetDataBaseItemInterfaceisCompatProc
  setCompat*: QDesignerWidgetDataBaseItemInterfacesetCompatProc
  isContainer*: QDesignerWidgetDataBaseItemInterfaceisContainerProc
  setContainer*: QDesignerWidgetDataBaseItemInterfacesetContainerProc
  isCustom*: QDesignerWidgetDataBaseItemInterfaceisCustomProc
  setCustom*: QDesignerWidgetDataBaseItemInterfacesetCustomProc
  pluginPath*: QDesignerWidgetDataBaseItemInterfacepluginPathProc
  setPluginPath*: QDesignerWidgetDataBaseItemInterfacesetPluginPathProc
  isPromoted*: QDesignerWidgetDataBaseItemInterfaceisPromotedProc
  setPromoted*: QDesignerWidgetDataBaseItemInterfacesetPromotedProc
  extends*: QDesignerWidgetDataBaseItemInterfaceextendsProc
  setExtends*: QDesignerWidgetDataBaseItemInterfacesetExtendsProc
  setDefaultPropertyValues*: QDesignerWidgetDataBaseItemInterfacesetDefaultPropertyValuesProc
  defaultPropertyValues*: QDesignerWidgetDataBaseItemInterfacedefaultPropertyValuesProc


proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].name(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  vtbl[].setName(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_group(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].group(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setGroup(self: pointer, group: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vgroup_ms = group
  let vgroupx_ret = string.fromBytes(vgroup_ms)
  c_free(vgroup_ms.data)
  let slotval1 = vgroupx_ret
  vtbl[].setGroup(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_toolTip(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].toolTip(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setToolTip(self: pointer, toolTip: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vtoolTip_ms = toolTip
  let vtoolTipx_ret = string.fromBytes(vtoolTip_ms)
  c_free(vtoolTip_ms.data)
  let slotval1 = vtoolTipx_ret
  vtbl[].setToolTip(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_whatsThis(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].whatsThis(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setWhatsThis(self: pointer, whatsThis: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vwhatsThis_ms = whatsThis
  let vwhatsThisx_ret = string.fromBytes(vwhatsThis_ms)
  c_free(vwhatsThis_ms.data)
  let slotval1 = vwhatsThisx_ret
  vtbl[].setWhatsThis(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_includeFile(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].includeFile(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setIncludeFile(self: pointer, includeFile: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vincludeFile_ms = includeFile
  let vincludeFilex_ret = string.fromBytes(vincludeFile_ms)
  c_free(vincludeFile_ms.data)
  let slotval1 = vincludeFilex_ret
  vtbl[].setIncludeFile(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_icon(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].icon(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setIcon(self: pointer, icon: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let slotval1 = gen_qicon_types.QIcon(h: icon, owned: false)
  vtbl[].setIcon(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isCompat(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].isCompat(self)
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setCompat(self: pointer, compat: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let slotval1 = compat
  vtbl[].setCompat(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isContainer(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].isContainer(self)
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setContainer(self: pointer, container: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let slotval1 = container
  vtbl[].setContainer(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isCustom(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].isCustom(self)
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setCustom(self: pointer, custom: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let slotval1 = custom
  vtbl[].setCustom(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_pluginPath(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].pluginPath(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setPluginPath(self: pointer, path: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret
  vtbl[].setPluginPath(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isPromoted(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].isPromoted(self)
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setPromoted(self: pointer, b: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let slotval1 = b
  vtbl[].setPromoted(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_extends(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].extends(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setExtends(self: pointer, s: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  let vs_ms = s
  let vsx_ret = string.fromBytes(vs_ms)
  c_free(vs_ms.data)
  let slotval1 = vsx_ret
  vtbl[].setExtends(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setDefaultPropertyValues(self: pointer, list: struct_seaqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var vlist_ma = list
  var vlistx_ret = newSeq[gen_qvariant_types.QVariant](int(vlist_ma.len))
  let vlist_outCast = cast[ptr UncheckedArray[pointer]](vlist_ma.data)
  for i in 0 ..< vlist_ma.len:
    vlistx_ret[i] = gen_qvariant_types.QVariant(h: vlist_outCast[i], owned: true)
  c_free(vlist_ma.data)
  let slotval1 = vlistx_ret
  vtbl[].setDefaultPropertyValues(self, slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_vtable_callback_defaultPropertyValues(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].defaultPropertyValues(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

type VirtualQDesignerWidgetDataBaseItemInterface* {.inheritable.} = ref object of QDesignerWidgetDataBaseItemInterface
  vtbl*: cQDesignerWidgetDataBaseItemInterfaceVTable

method name*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.name")
method setName*(self: VirtualQDesignerWidgetDataBaseItemInterface, name: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setName")
method group*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.group")
method setGroup*(self: VirtualQDesignerWidgetDataBaseItemInterface, group: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setGroup")
method toolTip*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.toolTip")
method setToolTip*(self: VirtualQDesignerWidgetDataBaseItemInterface, toolTip: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setToolTip")
method whatsThis*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.whatsThis")
method setWhatsThis*(self: VirtualQDesignerWidgetDataBaseItemInterface, whatsThis: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setWhatsThis")
method includeFile*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.includeFile")
method setIncludeFile*(self: VirtualQDesignerWidgetDataBaseItemInterface, includeFile: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setIncludeFile")
method icon*(self: VirtualQDesignerWidgetDataBaseItemInterface): gen_qicon_types.QIcon {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.icon")
method setIcon*(self: VirtualQDesignerWidgetDataBaseItemInterface, icon: gen_qicon_types.QIcon): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setIcon")
method isCompat*(self: VirtualQDesignerWidgetDataBaseItemInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.isCompat")
method setCompat*(self: VirtualQDesignerWidgetDataBaseItemInterface, compat: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setCompat")
method isContainer*(self: VirtualQDesignerWidgetDataBaseItemInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.isContainer")
method setContainer*(self: VirtualQDesignerWidgetDataBaseItemInterface, container: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setContainer")
method isCustom*(self: VirtualQDesignerWidgetDataBaseItemInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.isCustom")
method setCustom*(self: VirtualQDesignerWidgetDataBaseItemInterface, custom: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setCustom")
method pluginPath*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.pluginPath")
method setPluginPath*(self: VirtualQDesignerWidgetDataBaseItemInterface, path: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setPluginPath")
method isPromoted*(self: VirtualQDesignerWidgetDataBaseItemInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.isPromoted")
method setPromoted*(self: VirtualQDesignerWidgetDataBaseItemInterface, b: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setPromoted")
method extends*(self: VirtualQDesignerWidgetDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.extends")
method setExtends*(self: VirtualQDesignerWidgetDataBaseItemInterface, s: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setExtends")
method setDefaultPropertyValues*(self: VirtualQDesignerWidgetDataBaseItemInterface, list: openArray[gen_qvariant_types.QVariant]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.setDefaultPropertyValues")
method defaultPropertyValues*(self: VirtualQDesignerWidgetDataBaseItemInterface): seq[gen_qvariant_types.QVariant] {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetDataBaseItemInterface.defaultPropertyValues")

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.name()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  inst.setName(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_group(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.group()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setGroup(self: pointer, group: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vgroup_ms = group
  let vgroupx_ret = string.fromBytes(vgroup_ms)
  c_free(vgroup_ms.data)
  let slotval1 = vgroupx_ret
  inst.setGroup(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_toolTip(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.toolTip()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setToolTip(self: pointer, toolTip: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vtoolTip_ms = toolTip
  let vtoolTipx_ret = string.fromBytes(vtoolTip_ms)
  c_free(vtoolTip_ms.data)
  let slotval1 = vtoolTipx_ret
  inst.setToolTip(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_whatsThis(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.whatsThis()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setWhatsThis(self: pointer, whatsThis: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vwhatsThis_ms = whatsThis
  let vwhatsThisx_ret = string.fromBytes(vwhatsThis_ms)
  c_free(vwhatsThis_ms.data)
  let slotval1 = vwhatsThisx_ret
  inst.setWhatsThis(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_includeFile(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.includeFile()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setIncludeFile(self: pointer, includeFile: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vincludeFile_ms = includeFile
  let vincludeFilex_ret = string.fromBytes(vincludeFile_ms)
  c_free(vincludeFile_ms.data)
  let slotval1 = vincludeFilex_ret
  inst.setIncludeFile(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_icon(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.icon()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setIcon(self: pointer, icon: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let slotval1 = gen_qicon_types.QIcon(h: icon, owned: false)
  inst.setIcon(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_isCompat(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.isCompat()
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setCompat(self: pointer, compat: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let slotval1 = compat
  inst.setCompat(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_isContainer(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.isContainer()
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setContainer(self: pointer, container: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let slotval1 = container
  inst.setContainer(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_isCustom(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.isCustom()
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setCustom(self: pointer, custom: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let slotval1 = custom
  inst.setCustom(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_pluginPath(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.pluginPath()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setPluginPath(self: pointer, path: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret
  inst.setPluginPath(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_isPromoted(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.isPromoted()
  virtualReturn

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setPromoted(self: pointer, b: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let slotval1 = b
  inst.setPromoted(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_extends(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.extends()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setExtends(self: pointer, s: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  let vs_ms = s
  let vsx_ret = string.fromBytes(vs_ms)
  c_free(vs_ms.data)
  let slotval1 = vsx_ret
  inst.setExtends(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_setDefaultPropertyValues(self: pointer, list: struct_seaqt_array): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var vlist_ma = list
  var vlistx_ret = newSeq[gen_qvariant_types.QVariant](int(vlist_ma.len))
  let vlist_outCast = cast[ptr UncheckedArray[pointer]](vlist_ma.data)
  for i in 0 ..< vlist_ma.len:
    vlistx_ret[i] = gen_qvariant_types.QVariant(h: vlist_outCast[i], owned: true)
  c_free(vlist_ma.data)
  let slotval1 = vlistx_ret
  inst.setDefaultPropertyValues(slotval1)

proc fcQDesignerWidgetDataBaseItemInterface_method_callback_defaultPropertyValues(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseItemInterface](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.defaultPropertyValues()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))


proc create*(T: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface,
    vtbl: ref QDesignerWidgetDataBaseItemInterfaceVTable = nil): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface =
  let vtbl = if vtbl == nil: new QDesignerWidgetDataBaseItemInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerWidgetDataBaseItemInterfaceVTable](fcQDesignerWidgetDataBaseItemInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].name):
    vtbl[].vtbl.name = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_name
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setName
  if not isNil(vtbl[].group):
    vtbl[].vtbl.group = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_group
  if not isNil(vtbl[].setGroup):
    vtbl[].vtbl.setGroup = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setGroup
  if not isNil(vtbl[].toolTip):
    vtbl[].vtbl.toolTip = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_toolTip
  if not isNil(vtbl[].setToolTip):
    vtbl[].vtbl.setToolTip = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setToolTip
  if not isNil(vtbl[].whatsThis):
    vtbl[].vtbl.whatsThis = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_whatsThis
  if not isNil(vtbl[].setWhatsThis):
    vtbl[].vtbl.setWhatsThis = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setWhatsThis
  if not isNil(vtbl[].includeFile):
    vtbl[].vtbl.includeFile = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_includeFile
  if not isNil(vtbl[].setIncludeFile):
    vtbl[].vtbl.setIncludeFile = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setIncludeFile
  if not isNil(vtbl[].icon):
    vtbl[].vtbl.icon = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_icon
  if not isNil(vtbl[].setIcon):
    vtbl[].vtbl.setIcon = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setIcon
  if not isNil(vtbl[].isCompat):
    vtbl[].vtbl.isCompat = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isCompat
  if not isNil(vtbl[].setCompat):
    vtbl[].vtbl.setCompat = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setCompat
  if not isNil(vtbl[].isContainer):
    vtbl[].vtbl.isContainer = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isContainer
  if not isNil(vtbl[].setContainer):
    vtbl[].vtbl.setContainer = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setContainer
  if not isNil(vtbl[].isCustom):
    vtbl[].vtbl.isCustom = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isCustom
  if not isNil(vtbl[].setCustom):
    vtbl[].vtbl.setCustom = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setCustom
  if not isNil(vtbl[].pluginPath):
    vtbl[].vtbl.pluginPath = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_pluginPath
  if not isNil(vtbl[].setPluginPath):
    vtbl[].vtbl.setPluginPath = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setPluginPath
  if not isNil(vtbl[].isPromoted):
    vtbl[].vtbl.isPromoted = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_isPromoted
  if not isNil(vtbl[].setPromoted):
    vtbl[].vtbl.setPromoted = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setPromoted
  if not isNil(vtbl[].extends):
    vtbl[].vtbl.extends = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_extends
  if not isNil(vtbl[].setExtends):
    vtbl[].vtbl.setExtends = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setExtends
  if not isNil(vtbl[].setDefaultPropertyValues):
    vtbl[].vtbl.setDefaultPropertyValues = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_setDefaultPropertyValues
  if not isNil(vtbl[].defaultPropertyValues):
    vtbl[].vtbl.defaultPropertyValues = fcQDesignerWidgetDataBaseItemInterface_vtable_callback_defaultPropertyValues
  let tmp = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: fcQDesignerWidgetDataBaseItemInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerWidgetDataBaseItemInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerWidgetDataBaseItemInterface_mvtbl = cQDesignerWidgetDataBaseItemInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerWidgetDataBaseItemInterface()[])](self.fcQDesignerWidgetDataBaseItemInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  name: fcQDesignerWidgetDataBaseItemInterface_method_callback_name,
  setName: fcQDesignerWidgetDataBaseItemInterface_method_callback_setName,
  group: fcQDesignerWidgetDataBaseItemInterface_method_callback_group,
  setGroup: fcQDesignerWidgetDataBaseItemInterface_method_callback_setGroup,
  toolTip: fcQDesignerWidgetDataBaseItemInterface_method_callback_toolTip,
  setToolTip: fcQDesignerWidgetDataBaseItemInterface_method_callback_setToolTip,
  whatsThis: fcQDesignerWidgetDataBaseItemInterface_method_callback_whatsThis,
  setWhatsThis: fcQDesignerWidgetDataBaseItemInterface_method_callback_setWhatsThis,
  includeFile: fcQDesignerWidgetDataBaseItemInterface_method_callback_includeFile,
  setIncludeFile: fcQDesignerWidgetDataBaseItemInterface_method_callback_setIncludeFile,
  icon: fcQDesignerWidgetDataBaseItemInterface_method_callback_icon,
  setIcon: fcQDesignerWidgetDataBaseItemInterface_method_callback_setIcon,
  isCompat: fcQDesignerWidgetDataBaseItemInterface_method_callback_isCompat,
  setCompat: fcQDesignerWidgetDataBaseItemInterface_method_callback_setCompat,
  isContainer: fcQDesignerWidgetDataBaseItemInterface_method_callback_isContainer,
  setContainer: fcQDesignerWidgetDataBaseItemInterface_method_callback_setContainer,
  isCustom: fcQDesignerWidgetDataBaseItemInterface_method_callback_isCustom,
  setCustom: fcQDesignerWidgetDataBaseItemInterface_method_callback_setCustom,
  pluginPath: fcQDesignerWidgetDataBaseItemInterface_method_callback_pluginPath,
  setPluginPath: fcQDesignerWidgetDataBaseItemInterface_method_callback_setPluginPath,
  isPromoted: fcQDesignerWidgetDataBaseItemInterface_method_callback_isPromoted,
  setPromoted: fcQDesignerWidgetDataBaseItemInterface_method_callback_setPromoted,
  extends: fcQDesignerWidgetDataBaseItemInterface_method_callback_extends,
  setExtends: fcQDesignerWidgetDataBaseItemInterface_method_callback_setExtends,
  setDefaultPropertyValues: fcQDesignerWidgetDataBaseItemInterface_method_callback_setDefaultPropertyValues,
  defaultPropertyValues: fcQDesignerWidgetDataBaseItemInterface_method_callback_defaultPropertyValues,
)
proc create*(T: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface,
    inst: VirtualQDesignerWidgetDataBaseItemInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerWidgetDataBaseItemInterface_new(addr(cQDesignerWidgetDataBaseItemInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerWidgetDataBaseItemInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc metaObject*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetDataBaseInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, param1: cstring): pointer =
  fcQDesignerWidgetDataBaseInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerWidgetDataBaseInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, s: cstring): string =
  let v_ms = fcQDesignerWidgetDataBaseInterface_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc count*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): cint =
  fcQDesignerWidgetDataBaseInterface_count(self.h)

proc item*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, index: cint): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface =
  gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: fcQDesignerWidgetDataBaseInterface_item(self.h, index), owned: false)

proc indexOf*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): cint =
  fcQDesignerWidgetDataBaseInterface_indexOf(self.h, item.h)

proc insert*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, index: cint, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void =
  fcQDesignerWidgetDataBaseInterface_insert(self.h, index, item.h)

proc append*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void =
  fcQDesignerWidgetDataBaseInterface_append(self.h, item.h)

proc indexOfObject*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject, resolveName: bool): cint =
  fcQDesignerWidgetDataBaseInterface_indexOfObject(self.h, objectVal.h, resolveName)

proc indexOfClassName*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, className: openArray[char], resolveName: bool): cint =
  fcQDesignerWidgetDataBaseInterface_indexOfClassName(self.h, struct_seaqt_string(data: if len(className) > 0: addr className[0] else: nil, len: csize_t(len(className))), resolveName)

proc isContainer*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject): bool =
  fcQDesignerWidgetDataBaseInterface_isContainerObject(self.h, objectVal.h)

proc isCustom*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject): bool =
  fcQDesignerWidgetDataBaseInterface_isCustomObject(self.h, objectVal.h)

proc changed*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): void =
  fcQDesignerWidgetDataBaseInterface_changed(self.h)

type QDesignerWidgetDataBaseInterfacechangedSlot* = proc()
proc fcQDesignerWidgetDataBaseInterface_slot_callback_changed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerWidgetDataBaseInterfacechangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerWidgetDataBaseInterface_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerWidgetDataBaseInterfacechangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onChanged*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, slot: QDesignerWidgetDataBaseInterfacechangedSlot) =
  var tmp = new QDesignerWidgetDataBaseInterfacechangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerWidgetDataBaseInterface_connect_changed(self.h, cast[int](addr tmp[]), fcQDesignerWidgetDataBaseInterface_slot_callback_changed, fcQDesignerWidgetDataBaseInterface_slot_callback_changed_release)

proc tr*(_: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerWidgetDataBaseInterface_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerWidgetDataBaseInterface_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isContainer*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject, resolveName: bool): bool =
  fcQDesignerWidgetDataBaseInterface_isContainerObjectResolveName(self.h, objectVal.h, resolveName)

proc isCustom*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject, resolveName: bool): bool =
  fcQDesignerWidgetDataBaseInterface_isCustomObjectResolveName(self.h, objectVal.h, resolveName)

type QDesignerWidgetDataBaseInterfacemetaObjectProc* = proc(self: QDesignerWidgetDataBaseInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacemetacastProc* = proc(self: QDesignerWidgetDataBaseInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacemetacallProc* = proc(self: QDesignerWidgetDataBaseInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacecountProc* = proc(self: QDesignerWidgetDataBaseInterface): cint {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceitemProc* = proc(self: QDesignerWidgetDataBaseInterface, index: cint): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceindexOfProc* = proc(self: QDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): cint {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceinsertProc* = proc(self: QDesignerWidgetDataBaseInterface, index: cint, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceappendProc* = proc(self: QDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceindexOfObjectProc* = proc(self: QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject, resolveName: bool): cint {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceindexOfClassNameProc* = proc(self: QDesignerWidgetDataBaseInterface, className: openArray[char], resolveName: bool): cint {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceeventProc* = proc(self: QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceeventFilterProc* = proc(self: QDesignerWidgetDataBaseInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacetimerEventProc* = proc(self: QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacechildEventProc* = proc(self: QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacecustomEventProc* = proc(self: QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfaceconnectNotifyProc* = proc(self: QDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerWidgetDataBaseInterfacedisconnectNotifyProc* = proc(self: QDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDesignerWidgetDataBaseInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerWidgetDataBaseInterfaceVTable
  metaObject*: QDesignerWidgetDataBaseInterfacemetaObjectProc
  metacast*: QDesignerWidgetDataBaseInterfacemetacastProc
  metacall*: QDesignerWidgetDataBaseInterfacemetacallProc
  count*: QDesignerWidgetDataBaseInterfacecountProc
  item*: QDesignerWidgetDataBaseInterfaceitemProc
  indexOf*: QDesignerWidgetDataBaseInterfaceindexOfProc
  insert*: QDesignerWidgetDataBaseInterfaceinsertProc
  append*: QDesignerWidgetDataBaseInterfaceappendProc
  indexOfObject*: QDesignerWidgetDataBaseInterfaceindexOfObjectProc
  indexOfClassName*: QDesignerWidgetDataBaseInterfaceindexOfClassNameProc
  event*: QDesignerWidgetDataBaseInterfaceeventProc
  eventFilter*: QDesignerWidgetDataBaseInterfaceeventFilterProc
  timerEvent*: QDesignerWidgetDataBaseInterfacetimerEventProc
  childEvent*: QDesignerWidgetDataBaseInterfacechildEventProc
  customEvent*: QDesignerWidgetDataBaseInterfacecustomEventProc
  connectNotify*: QDesignerWidgetDataBaseInterfaceconnectNotifyProc
  disconnectNotify*: QDesignerWidgetDataBaseInterfacedisconnectNotifyProc

proc QDesignerWidgetDataBaseInterfacemetaObject*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetDataBaseInterface_virtualbase_metaObject(self.h), owned: false)

proc QDesignerWidgetDataBaseInterfacemetacast*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, param1: cstring): pointer =
  fcQDesignerWidgetDataBaseInterface_virtualbase_metacast(self.h, param1)

proc QDesignerWidgetDataBaseInterfacemetacall*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerWidgetDataBaseInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesignerWidgetDataBaseInterfacecount*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): cint =
  fcQDesignerWidgetDataBaseInterface_virtualbase_count(self.h)

proc QDesignerWidgetDataBaseInterfaceitem*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, index: cint): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface =
  gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: fcQDesignerWidgetDataBaseInterface_virtualbase_item(self.h, index), owned: false)

proc QDesignerWidgetDataBaseInterfaceindexOf*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): cint =
  fcQDesignerWidgetDataBaseInterface_virtualbase_indexOf(self.h, item.h)

proc QDesignerWidgetDataBaseInterfaceinsert*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, index: cint, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_insert(self.h, index, item.h)

proc QDesignerWidgetDataBaseInterfaceappend*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_append(self.h, item.h)

proc QDesignerWidgetDataBaseInterfaceindexOfObject*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject, resolveName: bool): cint =
  fcQDesignerWidgetDataBaseInterface_virtualbase_indexOfObject(self.h, objectVal.h, resolveName)

proc QDesignerWidgetDataBaseInterfaceindexOfClassName*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, className: openArray[char], resolveName: bool): cint =
  fcQDesignerWidgetDataBaseInterface_virtualbase_indexOfClassName(self.h, struct_seaqt_string(data: if len(className) > 0: addr className[0] else: nil, len: csize_t(len(className))), resolveName)

proc QDesignerWidgetDataBaseInterfaceevent*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerWidgetDataBaseInterface_virtualbase_event(self.h, event.h)

proc QDesignerWidgetDataBaseInterfaceeventFilter*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerWidgetDataBaseInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesignerWidgetDataBaseInterfacetimerEvent*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_timerEvent(self.h, event.h)

proc QDesignerWidgetDataBaseInterfacechildEvent*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_childEvent(self.h, event.h)

proc QDesignerWidgetDataBaseInterfacecustomEvent*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_customEvent(self.h, event.h)

proc QDesignerWidgetDataBaseInterfaceconnectNotify*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_connectNotify(self.h, signal.h)

proc QDesignerWidgetDataBaseInterfacedisconnectNotify*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerWidgetDataBaseInterface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesignerWidgetDataBaseInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_item(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].item(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOf(self: pointer, item: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: item, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_insert(self: pointer, index: cint, item: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = index
  let slotval2 = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: item, owned: false)
  vtbl[].insert(self, slotval1, slotval2)

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_append(self: pointer, item: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: item, owned: false)
  vtbl[].append(self, slotval1)

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOfObject(self: pointer, objectVal: pointer, resolveName: bool): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = resolveName
  var virtualReturn = vtbl[].indexOfObject(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOfClassName(self: pointer, className: struct_seaqt_string, resolveName: bool): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let vclassName_ms = className
  let vclassNamex_ret = string.fromBytes(vclassName_ms)
  c_free(vclassName_ms.data)
  let slotval1 = vclassNamex_ret
  let slotval2 = resolveName
  var virtualReturn = vtbl[].indexOfClassName(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesignerWidgetDataBaseInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let self = QDesignerWidgetDataBaseInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesignerWidgetDataBaseInterface* {.inheritable.} = ref object of QDesignerWidgetDataBaseInterface
  vtbl*: cQDesignerWidgetDataBaseInterfaceVTable

method metaObject*(self: VirtualQDesignerWidgetDataBaseInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesignerWidgetDataBaseInterfacemetaObject(self[])
method metacast*(self: VirtualQDesignerWidgetDataBaseInterface, param1: cstring): pointer {.base.} =
  QDesignerWidgetDataBaseInterfacemetacast(self[], param1)
method metacall*(self: VirtualQDesignerWidgetDataBaseInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesignerWidgetDataBaseInterfacemetacall(self[], param1, param2, param3)
method count*(self: VirtualQDesignerWidgetDataBaseInterface): cint {.base.} =
  QDesignerWidgetDataBaseInterfacecount(self[])
method item*(self: VirtualQDesignerWidgetDataBaseInterface, index: cint): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface {.base.} =
  QDesignerWidgetDataBaseInterfaceitem(self[], index)
method indexOf*(self: VirtualQDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): cint {.base.} =
  QDesignerWidgetDataBaseInterfaceindexOf(self[], item)
method insert*(self: VirtualQDesignerWidgetDataBaseInterface, index: cint, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void {.base.} =
  QDesignerWidgetDataBaseInterfaceinsert(self[], index, item)
method append*(self: VirtualQDesignerWidgetDataBaseInterface, item: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void {.base.} =
  QDesignerWidgetDataBaseInterfaceappend(self[], item)
method indexOfObject*(self: VirtualQDesignerWidgetDataBaseInterface, objectVal: gen_qobject_types.QObject, resolveName: bool): cint {.base.} =
  QDesignerWidgetDataBaseInterfaceindexOfObject(self[], objectVal, resolveName)
method indexOfClassName*(self: VirtualQDesignerWidgetDataBaseInterface, className: openArray[char], resolveName: bool): cint {.base.} =
  QDesignerWidgetDataBaseInterfaceindexOfClassName(self[], className, resolveName)
method event*(self: VirtualQDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerWidgetDataBaseInterfaceevent(self[], event)
method eventFilter*(self: VirtualQDesignerWidgetDataBaseInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerWidgetDataBaseInterfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesignerWidgetDataBaseInterfacetimerEvent(self[], event)
method childEvent*(self: VirtualQDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesignerWidgetDataBaseInterfacechildEvent(self[], event)
method customEvent*(self: VirtualQDesignerWidgetDataBaseInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerWidgetDataBaseInterfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerWidgetDataBaseInterfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerWidgetDataBaseInterfacedisconnectNotify(self[], signal)

proc fcQDesignerWidgetDataBaseInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetDataBaseInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  var virtualReturn = inst.count()
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_item(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.item(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetDataBaseInterface_method_callback_indexOf(self: pointer, item: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: item, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_insert(self: pointer, index: cint, item: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = index
  let slotval2 = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: item, owned: false)
  inst.insert(slotval1, slotval2)

proc fcQDesignerWidgetDataBaseInterface_method_callback_append(self: pointer, item: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: item, owned: false)
  inst.append(slotval1)

proc fcQDesignerWidgetDataBaseInterface_method_callback_indexOfObject(self: pointer, objectVal: pointer, resolveName: bool): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = resolveName
  var virtualReturn = inst.indexOfObject(slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_indexOfClassName(self: pointer, className: struct_seaqt_string, resolveName: bool): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let vclassName_ms = className
  let vclassNamex_ret = string.fromBytes(vclassName_ms)
  c_free(vclassName_ms.data)
  let slotval1 = vclassNamex_ret
  let slotval2 = resolveName
  var virtualReturn = inst.indexOfClassName(slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetDataBaseInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDesignerWidgetDataBaseInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDesignerWidgetDataBaseInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDesignerWidgetDataBaseInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDesignerWidgetDataBaseInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetDataBaseInterface](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerWidgetDataBaseInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): cint =
  fcQDesignerWidgetDataBaseInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, signal: cstring): cint =
  fcQDesignerWidgetDataBaseInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerWidgetDataBaseInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface,
    vtbl: ref QDesignerWidgetDataBaseInterfaceVTable = nil): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface =
  let vtbl = if vtbl == nil: new QDesignerWidgetDataBaseInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerWidgetDataBaseInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerWidgetDataBaseInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerWidgetDataBaseInterface_vtable_callback_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQDesignerWidgetDataBaseInterface_vtable_callback_count
  if not isNil(vtbl[].item):
    vtbl[].vtbl.item = fcQDesignerWidgetDataBaseInterface_vtable_callback_item
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOf
  if not isNil(vtbl[].insert):
    vtbl[].vtbl.insert = fcQDesignerWidgetDataBaseInterface_vtable_callback_insert
  if not isNil(vtbl[].append):
    vtbl[].vtbl.append = fcQDesignerWidgetDataBaseInterface_vtable_callback_append
  if not isNil(vtbl[].indexOfObject):
    vtbl[].vtbl.indexOfObject = fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOfObject
  if not isNil(vtbl[].indexOfClassName):
    vtbl[].vtbl.indexOfClassName = fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOfClassName
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerWidgetDataBaseInterface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerWidgetDataBaseInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerWidgetDataBaseInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerWidgetDataBaseInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerWidgetDataBaseInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerWidgetDataBaseInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerWidgetDataBaseInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface(h: fcQDesignerWidgetDataBaseInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerWidgetDataBaseInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDesignerWidgetDataBaseInterfaceVTable = nil): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface =
  let vtbl = if vtbl == nil: new QDesignerWidgetDataBaseInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerWidgetDataBaseInterfaceVTable](fcQDesignerWidgetDataBaseInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerWidgetDataBaseInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerWidgetDataBaseInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerWidgetDataBaseInterface_vtable_callback_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQDesignerWidgetDataBaseInterface_vtable_callback_count
  if not isNil(vtbl[].item):
    vtbl[].vtbl.item = fcQDesignerWidgetDataBaseInterface_vtable_callback_item
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOf
  if not isNil(vtbl[].insert):
    vtbl[].vtbl.insert = fcQDesignerWidgetDataBaseInterface_vtable_callback_insert
  if not isNil(vtbl[].append):
    vtbl[].vtbl.append = fcQDesignerWidgetDataBaseInterface_vtable_callback_append
  if not isNil(vtbl[].indexOfObject):
    vtbl[].vtbl.indexOfObject = fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOfObject
  if not isNil(vtbl[].indexOfClassName):
    vtbl[].vtbl.indexOfClassName = fcQDesignerWidgetDataBaseInterface_vtable_callback_indexOfClassName
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerWidgetDataBaseInterface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerWidgetDataBaseInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerWidgetDataBaseInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerWidgetDataBaseInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerWidgetDataBaseInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerWidgetDataBaseInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerWidgetDataBaseInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface(h: fcQDesignerWidgetDataBaseInterface_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQDesignerWidgetDataBaseInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerWidgetDataBaseInterface_mvtbl = cQDesignerWidgetDataBaseInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerWidgetDataBaseInterface()[])](self.fcQDesignerWidgetDataBaseInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDesignerWidgetDataBaseInterface_method_callback_metaObject,
  metacast: fcQDesignerWidgetDataBaseInterface_method_callback_metacast,
  metacall: fcQDesignerWidgetDataBaseInterface_method_callback_metacall,
  count: fcQDesignerWidgetDataBaseInterface_method_callback_count,
  item: fcQDesignerWidgetDataBaseInterface_method_callback_item,
  indexOf: fcQDesignerWidgetDataBaseInterface_method_callback_indexOf,
  insert: fcQDesignerWidgetDataBaseInterface_method_callback_insert,
  append: fcQDesignerWidgetDataBaseInterface_method_callback_append,
  indexOfObject: fcQDesignerWidgetDataBaseInterface_method_callback_indexOfObject,
  indexOfClassName: fcQDesignerWidgetDataBaseInterface_method_callback_indexOfClassName,
  event: fcQDesignerWidgetDataBaseInterface_method_callback_event,
  eventFilter: fcQDesignerWidgetDataBaseInterface_method_callback_eventFilter,
  timerEvent: fcQDesignerWidgetDataBaseInterface_method_callback_timerEvent,
  childEvent: fcQDesignerWidgetDataBaseInterface_method_callback_childEvent,
  customEvent: fcQDesignerWidgetDataBaseInterface_method_callback_customEvent,
  connectNotify: fcQDesignerWidgetDataBaseInterface_method_callback_connectNotify,
  disconnectNotify: fcQDesignerWidgetDataBaseInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface,
    inst: VirtualQDesignerWidgetDataBaseInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerWidgetDataBaseInterface_new(addr(cQDesignerWidgetDataBaseInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerWidgetDataBaseInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface,
    parent: gen_qobject_types.QObject,
    inst: VirtualQDesignerWidgetDataBaseInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerWidgetDataBaseInterface_new2(addr(cQDesignerWidgetDataBaseInterface_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQDesignerWidgetDataBaseInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetDataBaseInterface_staticMetaObject())
