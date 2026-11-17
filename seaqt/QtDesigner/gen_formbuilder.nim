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


{.compile("gen_formbuilder.cpp", QtDesignerCFlags).}


import ./gen_formbuilder_types
export gen_formbuilder_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qactiongroup_types,
  ../QtWidgets/gen_qlayout_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_abstractformbuilder
export
  gen_qiodevice_types,
  gen_qobject_types,
  gen_qvariant_types,
  gen_qaction_types,
  gen_qactiongroup_types,
  gen_qlayout_types,
  gen_qwidget_types,
  gen_abstractformbuilder

type cQFormBuilder*{.exportc: "QFormBuilder", incompleteStruct.} = object

proc fcQFormBuilder_pluginPaths(self: pointer): struct_seaqt_array {.importc: "QFormBuilder_pluginPaths".}
proc fcQFormBuilder_clearPluginPaths(self: pointer): void {.importc: "QFormBuilder_clearPluginPaths".}
proc fcQFormBuilder_addPluginPath(self: pointer, pluginPath: struct_seaqt_string): void {.importc: "QFormBuilder_addPluginPath".}
proc fcQFormBuilder_setPluginPath(self: pointer, pluginPaths: struct_seaqt_array): void {.importc: "QFormBuilder_setPluginPath".}
proc fcQFormBuilder_vdata(self: pointer): ptr pointer {.importc: "QFormBuilder_vdata".}
proc fvdata_cQFormBuilder(self: pointer): pointer {.importc: "vdata_QFormBuilder".}

type cQFormBuilderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  createWidget*: proc(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createLayout*: proc(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  updateCustomWidgets*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  load*: proc(self: pointer, dev: pointer, parentWidget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  save*: proc(self: pointer, dev: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  addMenuAction*: proc(self: pointer, action: pointer): void {.cdecl, raises: [], gcsafe.}
  createAction*: proc(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createActionGroup*: proc(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  checkProperty*: proc(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
proc fcQFormBuilder_virtualbase_createWidget(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.importc: "QFormBuilder_virtualbase_createWidget".}
proc fcQFormBuilder_virtualbase_createLayout(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QFormBuilder_virtualbase_createLayout".}
proc fcQFormBuilder_virtualbase_updateCustomWidgets(self: pointer): void {.importc: "QFormBuilder_virtualbase_updateCustomWidgets".}
proc fcQFormBuilder_virtualbase_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.importc: "QFormBuilder_virtualbase_load".}
proc fcQFormBuilder_virtualbase_save(self: pointer, dev: pointer, widget: pointer): void {.importc: "QFormBuilder_virtualbase_save".}
proc fcQFormBuilder_virtualbase_addMenuAction(self: pointer, action: pointer): void {.importc: "QFormBuilder_virtualbase_addMenuAction".}
proc fcQFormBuilder_virtualbase_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QFormBuilder_virtualbase_createAction".}
proc fcQFormBuilder_virtualbase_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QFormBuilder_virtualbase_createActionGroup".}
proc fcQFormBuilder_virtualbase_checkProperty(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.importc: "QFormBuilder_virtualbase_checkProperty".}
proc fcQFormBuilder_protectedbase_applyPropertyInternally(self: pointer, o: pointer, propertyName: struct_seaqt_string, value: pointer): bool {.importc: "QFormBuilder_protectedbase_applyPropertyInternally".}
proc fcQFormBuilder_protectedbase_reset(self: pointer): void {.importc: "QFormBuilder_protectedbase_reset".}
proc fcQFormBuilder_new(vtbl: pointer, vdata: csize_t): ptr cQFormBuilder {.importc: "QFormBuilder_new".}
proc fcQFormBuilder_delete(self: pointer) {.importc: "QFormBuilder_delete".}

proc pluginPaths*(self: gen_formbuilder_types.QFormBuilder): seq[string] =
  var v_ma = fcQFormBuilder_pluginPaths(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc clearPluginPaths*(self: gen_formbuilder_types.QFormBuilder): void =
  fcQFormBuilder_clearPluginPaths(self.h)

proc addPluginPath*(self: gen_formbuilder_types.QFormBuilder, pluginPath: openArray[char]): void =
  fcQFormBuilder_addPluginPath(self.h, struct_seaqt_string(data: if len(pluginPath) > 0: addr pluginPath[0] else: nil, len: csize_t(len(pluginPath))))

proc setPluginPath*(self: gen_formbuilder_types.QFormBuilder, pluginPaths: openArray[string]): void =
  var pluginPaths_CArray = newSeq[struct_seaqt_string](len(pluginPaths))
  for i in 0..<len(pluginPaths):
    pluginPaths_CArray[i] = struct_seaqt_string(data: if len(pluginPaths[i]) > 0: addr pluginPaths[i][0] else: nil, len: csize_t(len(pluginPaths[i])))

  fcQFormBuilder_setPluginPath(self.h, struct_seaqt_array(len: csize_t(len(pluginPaths)), data: if len(pluginPaths) == 0: nil else: addr(pluginPaths_CArray[0])))

type QFormBuildercreateWidgetProc* = proc(self: QFormBuilder, widgetName: openArray[char], parentWidget: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QFormBuildercreateLayoutProc* = proc(self: QFormBuilder, layoutName: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QFormBuilderupdateCustomWidgetsProc* = proc(self: QFormBuilder): void {.raises: [], gcsafe.}
type QFormBuilderloadProc* = proc(self: QFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QFormBuildersaveProc* = proc(self: QFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QFormBuilderaddMenuActionProc* = proc(self: QFormBuilder, action: gen_qaction_types.QAction): void {.raises: [], gcsafe.}
type QFormBuildercreateActionProc* = proc(self: QFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction {.raises: [], gcsafe.}
type QFormBuildercreateActionGroupProc* = proc(self: QFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup {.raises: [], gcsafe.}
type QFormBuildercheckPropertyProc* = proc(self: QFormBuilder, obj: gen_qobject_types.QObject, prop: openArray[char]): bool {.raises: [], gcsafe.}
type QFormBuilderVTable* = object
  vtbl: cQFormBuilderVTable
  createWidget*: QFormBuildercreateWidgetProc
  createLayout*: QFormBuildercreateLayoutProc
  updateCustomWidgets*: QFormBuilderupdateCustomWidgetsProc
  load*: QFormBuilderloadProc
  save*: QFormBuildersaveProc
  addMenuAction*: QFormBuilderaddMenuActionProc
  createAction*: QFormBuildercreateActionProc
  createActionGroup*: QFormBuildercreateActionGroupProc
  checkProperty*: QFormBuildercheckPropertyProc

proc QFormBuildercreateWidget*(self: gen_formbuilder_types.QFormBuilder, widgetName: openArray[char], parentWidget: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormBuilder_virtualbase_createWidget(self.h, struct_seaqt_string(data: if len(widgetName) > 0: addr widgetName[0] else: nil, len: csize_t(len(widgetName))), parentWidget.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QFormBuildercreateLayout*(self: gen_formbuilder_types.QFormBuilder, layoutName: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQFormBuilder_virtualbase_createLayout(self.h, struct_seaqt_string(data: if len(layoutName) > 0: addr layoutName[0] else: nil, len: csize_t(len(layoutName))), parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QFormBuilderupdateCustomWidgets*(self: gen_formbuilder_types.QFormBuilder): void =
  fcQFormBuilder_virtualbase_updateCustomWidgets(self.h)

proc QFormBuilderload*(self: gen_formbuilder_types.QFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormBuilder_virtualbase_load(self.h, dev.h, parentWidget.h))

proc QFormBuildersave*(self: gen_formbuilder_types.QFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void =
  fcQFormBuilder_virtualbase_save(self.h, dev.h, widget.h)

proc QFormBuilderaddMenuAction*(self: gen_formbuilder_types.QFormBuilder, action: gen_qaction_types.QAction): void =
  fcQFormBuilder_virtualbase_addMenuAction(self.h, action.h)

proc QFormBuildercreateAction*(self: gen_formbuilder_types.QFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQFormBuilder_virtualbase_createAction(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QFormBuildercreateActionGroup*(self: gen_formbuilder_types.QFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQFormBuilder_virtualbase_createActionGroup(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QFormBuildercheckProperty*(self: gen_formbuilder_types.QFormBuilder, obj: gen_qobject_types.QObject, prop: openArray[char]): bool =
  fcQFormBuilder_virtualbase_checkProperty(self.h, obj.h, struct_seaqt_string(data: if len(prop) > 0: addr prop[0] else: nil, len: csize_t(len(prop))))


proc fcQFormBuilder_vtable_callback_createWidget(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let vwidgetName_ms = widgetName
  let vwidgetNamex_ret = string.fromBytes(vwidgetName_ms)
  c_free(vwidgetName_ms.data)
  let slotval1 = vwidgetNamex_ret
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = vtbl[].createWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQFormBuilder_vtable_callback_createLayout(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let vlayoutName_ms = layoutName
  let vlayoutNamex_ret = string.fromBytes(vlayoutName_ms)
  c_free(vlayoutName_ms.data)
  let slotval1 = vlayoutNamex_ret
  let slotval2 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = vtbl[].createLayout(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQFormBuilder_vtable_callback_updateCustomWidgets(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  vtbl[].updateCustomWidgets(self)

proc fcQFormBuilder_vtable_callback_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev)
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget)
  var virtualReturn = vtbl[].load(self, slotval1, slotval2)
  virtualReturn.h

proc fcQFormBuilder_vtable_callback_save(self: pointer, dev: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev)
  let slotval2 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].save(self, slotval1, slotval2)

proc fcQFormBuilder_vtable_callback_addMenuAction(self: pointer, action: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let slotval1 = gen_qaction_types.QAction(h: action)
  vtbl[].addMenuAction(self, slotval1)

proc fcQFormBuilder_vtable_callback_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = vtbl[].createAction(self, slotval1, slotval2)
  virtualReturn.h

proc fcQFormBuilder_vtable_callback_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = vtbl[].createActionGroup(self, slotval1, slotval2)
  virtualReturn.h

proc fcQFormBuilder_vtable_callback_checkProperty(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
  let self = QFormBuilder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: obj)
  let vprop_ms = prop
  let vpropx_ret = string.fromBytes(vprop_ms)
  c_free(vprop_ms.data)
  let slotval2 = vpropx_ret
  var virtualReturn = vtbl[].checkProperty(self, slotval1, slotval2)
  virtualReturn

type VirtualQFormBuilder* {.inheritable.} = ref object of QFormBuilder
  vtbl*: cQFormBuilderVTable

method createWidget*(self: VirtualQFormBuilder, widgetName: openArray[char], parentWidget: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget {.base.} =
  QFormBuildercreateWidget(self[], widgetName, parentWidget, name)
method createLayout*(self: VirtualQFormBuilder, layoutName: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout {.base.} =
  QFormBuildercreateLayout(self[], layoutName, parent, name)
method updateCustomWidgets*(self: VirtualQFormBuilder): void {.base.} =
  QFormBuilderupdateCustomWidgets(self[])
method load*(self: VirtualQFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.base.} =
  QFormBuilderload(self[], dev, parentWidget)
method save*(self: VirtualQFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void {.base.} =
  QFormBuildersave(self[], dev, widget)
method addMenuAction*(self: VirtualQFormBuilder, action: gen_qaction_types.QAction): void {.base.} =
  QFormBuilderaddMenuAction(self[], action)
method createAction*(self: VirtualQFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction {.base.} =
  QFormBuildercreateAction(self[], parent, name)
method createActionGroup*(self: VirtualQFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup {.base.} =
  QFormBuildercreateActionGroup(self[], parent, name)
method checkProperty*(self: VirtualQFormBuilder, obj: gen_qobject_types.QObject, prop: openArray[char]): bool {.base.} =
  QFormBuildercheckProperty(self[], obj, prop)

proc fcQFormBuilder_method_callback_createWidget(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let vwidgetName_ms = widgetName
  let vwidgetNamex_ret = string.fromBytes(vwidgetName_ms)
  c_free(vwidgetName_ms.data)
  let slotval1 = vwidgetNamex_ret
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = inst.createWidget(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQFormBuilder_method_callback_createLayout(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let vlayoutName_ms = layoutName
  let vlayoutNamex_ret = string.fromBytes(vlayoutName_ms)
  c_free(vlayoutName_ms.data)
  let slotval1 = vlayoutNamex_ret
  let slotval2 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = inst.createLayout(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQFormBuilder_method_callback_updateCustomWidgets(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  inst.updateCustomWidgets()

proc fcQFormBuilder_method_callback_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev)
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget)
  var virtualReturn = inst.load(slotval1, slotval2)
  virtualReturn.h

proc fcQFormBuilder_method_callback_save(self: pointer, dev: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev)
  let slotval2 = gen_qwidget_types.QWidget(h: widget)
  inst.save(slotval1, slotval2)

proc fcQFormBuilder_method_callback_addMenuAction(self: pointer, action: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let slotval1 = gen_qaction_types.QAction(h: action)
  inst.addMenuAction(slotval1)

proc fcQFormBuilder_method_callback_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = inst.createAction(slotval1, slotval2)
  virtualReturn.h

proc fcQFormBuilder_method_callback_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = inst.createActionGroup(slotval1, slotval2)
  virtualReturn.h

proc fcQFormBuilder_method_callback_checkProperty(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQFormBuilder](fcQFormBuilder_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: obj)
  let vprop_ms = prop
  let vpropx_ret = string.fromBytes(vprop_ms)
  c_free(vprop_ms.data)
  let slotval2 = vpropx_ret
  var virtualReturn = inst.checkProperty(slotval1, slotval2)
  virtualReturn


proc applyPropertyInternally*(self: gen_formbuilder_types.QFormBuilder, o: gen_qobject_types.QObject, propertyName: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQFormBuilder_protectedbase_applyPropertyInternally(self.h, o.h, struct_seaqt_string(data: if len(propertyName) > 0: addr propertyName[0] else: nil, len: csize_t(len(propertyName))), value.h)

proc reset*(self: gen_formbuilder_types.QFormBuilder): void =
  fcQFormBuilder_protectedbase_reset(self.h)

proc create*(T: type gen_formbuilder_types.QFormBuilder,
    vtbl: ref QFormBuilderVTable = nil): gen_formbuilder_types.QFormBuilder =
  let vtbl = if vtbl == nil: new QFormBuilderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFormBuilderVTable](fcQFormBuilder_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].createWidget):
    vtbl[].vtbl.createWidget = fcQFormBuilder_vtable_callback_createWidget
  if not isNil(vtbl[].createLayout):
    vtbl[].vtbl.createLayout = fcQFormBuilder_vtable_callback_createLayout
  if not isNil(vtbl[].updateCustomWidgets):
    vtbl[].vtbl.updateCustomWidgets = fcQFormBuilder_vtable_callback_updateCustomWidgets
  if not isNil(vtbl[].load):
    vtbl[].vtbl.load = fcQFormBuilder_vtable_callback_load
  if not isNil(vtbl[].save):
    vtbl[].vtbl.save = fcQFormBuilder_vtable_callback_save
  if not isNil(vtbl[].addMenuAction):
    vtbl[].vtbl.addMenuAction = fcQFormBuilder_vtable_callback_addMenuAction
  if not isNil(vtbl[].createAction):
    vtbl[].vtbl.createAction = fcQFormBuilder_vtable_callback_createAction
  if not isNil(vtbl[].createActionGroup):
    vtbl[].vtbl.createActionGroup = fcQFormBuilder_vtable_callback_createActionGroup
  if not isNil(vtbl[].checkProperty):
    vtbl[].vtbl.checkProperty = fcQFormBuilder_vtable_callback_checkProperty
  let tmp = gen_formbuilder_types.QFormBuilder(h: fcQFormBuilder_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQFormBuilder_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQFormBuilder_mvtbl = cQFormBuilderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFormBuilder()[])](self.fcQFormBuilder_vdata()[])
    inst[].h = nil,

  createWidget: fcQFormBuilder_method_callback_createWidget,
  createLayout: fcQFormBuilder_method_callback_createLayout,
  updateCustomWidgets: fcQFormBuilder_method_callback_updateCustomWidgets,
  load: fcQFormBuilder_method_callback_load,
  save: fcQFormBuilder_method_callback_save,
  addMenuAction: fcQFormBuilder_method_callback_addMenuAction,
  createAction: fcQFormBuilder_method_callback_createAction,
  createActionGroup: fcQFormBuilder_method_callback_createActionGroup,
  checkProperty: fcQFormBuilder_method_callback_checkProperty,
)
proc create*(T: type gen_formbuilder_types.QFormBuilder,
    inst: VirtualQFormBuilder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFormBuilder_new(addr(cQFormBuilder_mvtbl), csize_t(sizeof(pointer)))
  fcQFormBuilder_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_formbuilder_types.QFormBuilder) =
  fcQFormBuilder_delete(self.h)
