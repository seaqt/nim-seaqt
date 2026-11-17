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


import ./gen_abstractformbuilder_types
export gen_abstractformbuilder_types

import
  ../QtCore/gen_qdir_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qactiongroup_types,
  ../QtWidgets/gen_qlayout_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qdir_types,
  gen_qiodevice_types,
  gen_qobject_types,
  gen_qvariant_types,
  gen_qaction_types,
  gen_qactiongroup_types,
  gen_qlayout_types,
  gen_qwidget_types

type cQAbstractFormBuilder*{.exportc: "QAbstractFormBuilder", incompleteStruct.} = object

proc fcQAbstractFormBuilder_workingDirectory(self: pointer): pointer {.importc: "QAbstractFormBuilder_workingDirectory".}
proc fcQAbstractFormBuilder_setWorkingDirectory(self: pointer, directory: pointer): void {.importc: "QAbstractFormBuilder_setWorkingDirectory".}
proc fcQAbstractFormBuilder_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.importc: "QAbstractFormBuilder_load".}
proc fcQAbstractFormBuilder_save(self: pointer, dev: pointer, widget: pointer): void {.importc: "QAbstractFormBuilder_save".}
proc fcQAbstractFormBuilder_errorString(self: pointer): struct_seaqt_string {.importc: "QAbstractFormBuilder_errorString".}
proc fcQAbstractFormBuilder_vdata(self: pointer): ptr pointer {.importc: "QAbstractFormBuilder_vdata".}
proc fvdata_cQAbstractFormBuilder(self: pointer): pointer {.importc: "vdata_QAbstractFormBuilder".}

type cQAbstractFormBuilderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  load*: proc(self: pointer, dev: pointer, parentWidget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  save*: proc(self: pointer, dev: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  addMenuAction*: proc(self: pointer, action: pointer): void {.cdecl, raises: [], gcsafe.}
  createWidget*: proc(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createLayout*: proc(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createAction*: proc(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createActionGroup*: proc(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  checkProperty*: proc(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
proc fcQAbstractFormBuilder_virtualbase_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.importc: "QAbstractFormBuilder_virtualbase_load".}
proc fcQAbstractFormBuilder_virtualbase_save(self: pointer, dev: pointer, widget: pointer): void {.importc: "QAbstractFormBuilder_virtualbase_save".}
proc fcQAbstractFormBuilder_virtualbase_addMenuAction(self: pointer, action: pointer): void {.importc: "QAbstractFormBuilder_virtualbase_addMenuAction".}
proc fcQAbstractFormBuilder_virtualbase_createWidget(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.importc: "QAbstractFormBuilder_virtualbase_createWidget".}
proc fcQAbstractFormBuilder_virtualbase_createLayout(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QAbstractFormBuilder_virtualbase_createLayout".}
proc fcQAbstractFormBuilder_virtualbase_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QAbstractFormBuilder_virtualbase_createAction".}
proc fcQAbstractFormBuilder_virtualbase_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QAbstractFormBuilder_virtualbase_createActionGroup".}
proc fcQAbstractFormBuilder_virtualbase_checkProperty(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.importc: "QAbstractFormBuilder_virtualbase_checkProperty".}
proc fcQAbstractFormBuilder_protectedbase_applyPropertyInternally(self: pointer, o: pointer, propertyName: struct_seaqt_string, value: pointer): bool {.importc: "QAbstractFormBuilder_protectedbase_applyPropertyInternally".}
proc fcQAbstractFormBuilder_protectedbase_reset(self: pointer): void {.importc: "QAbstractFormBuilder_protectedbase_reset".}
proc fcQAbstractFormBuilder_new(vtbl: pointer, vdata: csize_t): ptr cQAbstractFormBuilder {.importc: "QAbstractFormBuilder_new".}

proc workingDirectory*(self: gen_abstractformbuilder_types.QAbstractFormBuilder): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQAbstractFormBuilder_workingDirectory(self.h), owned: true)

proc setWorkingDirectory*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, directory: gen_qdir_types.QDir): void =
  fcQAbstractFormBuilder_setWorkingDirectory(self.h, directory.h)

proc load*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractFormBuilder_load(self.h, dev.h, parentWidget.h), owned: false)

proc save*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractFormBuilder_save(self.h, dev.h, widget.h)

proc errorString*(self: gen_abstractformbuilder_types.QAbstractFormBuilder): string =
  let v_ms = fcQAbstractFormBuilder_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAbstractFormBuilderloadProc* = proc(self: QAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QAbstractFormBuildersaveProc* = proc(self: QAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractFormBuilderaddMenuActionProc* = proc(self: QAbstractFormBuilder, action: gen_qaction_types.QAction): void {.raises: [], gcsafe.}
type QAbstractFormBuildercreateWidgetProc* = proc(self: QAbstractFormBuilder, widgetName: openArray[char], parentWidget: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QAbstractFormBuildercreateLayoutProc* = proc(self: QAbstractFormBuilder, layoutName: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QAbstractFormBuildercreateActionProc* = proc(self: QAbstractFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction {.raises: [], gcsafe.}
type QAbstractFormBuildercreateActionGroupProc* = proc(self: QAbstractFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup {.raises: [], gcsafe.}
type QAbstractFormBuildercheckPropertyProc* = proc(self: QAbstractFormBuilder, obj: gen_qobject_types.QObject, prop: openArray[char]): bool {.raises: [], gcsafe.}

type QAbstractFormBuilderVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractFormBuilderVTable
  load*: QAbstractFormBuilderloadProc
  save*: QAbstractFormBuildersaveProc
  addMenuAction*: QAbstractFormBuilderaddMenuActionProc
  createWidget*: QAbstractFormBuildercreateWidgetProc
  createLayout*: QAbstractFormBuildercreateLayoutProc
  createAction*: QAbstractFormBuildercreateActionProc
  createActionGroup*: QAbstractFormBuildercreateActionGroupProc
  checkProperty*: QAbstractFormBuildercheckPropertyProc

proc QAbstractFormBuilderload*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractFormBuilder_virtualbase_load(self.h, dev.h, parentWidget.h), owned: false)

proc QAbstractFormBuildersave*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractFormBuilder_virtualbase_save(self.h, dev.h, widget.h)

proc QAbstractFormBuilderaddMenuAction*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, action: gen_qaction_types.QAction): void =
  fcQAbstractFormBuilder_virtualbase_addMenuAction(self.h, action.h)

proc QAbstractFormBuildercreateWidget*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, widgetName: openArray[char], parentWidget: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractFormBuilder_virtualbase_createWidget(self.h, struct_seaqt_string(data: if len(widgetName) > 0: addr widgetName[0] else: nil, len: csize_t(len(widgetName))), parentWidget.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc QAbstractFormBuildercreateLayout*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, layoutName: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQAbstractFormBuilder_virtualbase_createLayout(self.h, struct_seaqt_string(data: if len(layoutName) > 0: addr layoutName[0] else: nil, len: csize_t(len(layoutName))), parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc QAbstractFormBuildercreateAction*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQAbstractFormBuilder_virtualbase_createAction(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc QAbstractFormBuildercreateActionGroup*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQAbstractFormBuilder_virtualbase_createActionGroup(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc QAbstractFormBuildercheckProperty*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, obj: gen_qobject_types.QObject, prop: openArray[char]): bool =
  fcQAbstractFormBuilder_virtualbase_checkProperty(self.h, obj.h, struct_seaqt_string(data: if len(prop) > 0: addr prop[0] else: nil, len: csize_t(len(prop))))


proc fcQAbstractFormBuilder_vtable_callback_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget, owned: false)
  var virtualReturn = vtbl[].load(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_vtable_callback_save(self: pointer, dev: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].save(self, slotval1, slotval2)

proc fcQAbstractFormBuilder_vtable_callback_addMenuAction(self: pointer, action: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)
  vtbl[].addMenuAction(self, slotval1)

proc fcQAbstractFormBuilder_vtable_callback_createWidget(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let vwidgetName_ms = widgetName
  let vwidgetNamex_ret = string.fromBytes(vwidgetName_ms)
  c_free(vwidgetName_ms.data)
  let slotval1 = vwidgetNamex_ret
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = vtbl[].createWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_vtable_callback_createLayout(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let vlayoutName_ms = layoutName
  let vlayoutNamex_ret = string.fromBytes(vlayoutName_ms)
  c_free(vlayoutName_ms.data)
  let slotval1 = vlayoutNamex_ret
  let slotval2 = gen_qobject_types.QObject(h: parent, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = vtbl[].createLayout(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_vtable_callback_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = vtbl[].createAction(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_vtable_callback_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = vtbl[].createActionGroup(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_vtable_callback_checkProperty(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
  let self = QAbstractFormBuilder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: obj, owned: false)
  let vprop_ms = prop
  let vpropx_ret = string.fromBytes(vprop_ms)
  c_free(vprop_ms.data)
  let slotval2 = vpropx_ret
  var virtualReturn = vtbl[].checkProperty(self, slotval1, slotval2)
  virtualReturn

type VirtualQAbstractFormBuilder* {.inheritable.} = ref object of QAbstractFormBuilder
  vtbl*: cQAbstractFormBuilderVTable

method load*(self: VirtualQAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.base.} =
  QAbstractFormBuilderload(self[], dev, parentWidget)
method save*(self: VirtualQAbstractFormBuilder, dev: gen_qiodevice_types.QIODevice, widget: gen_qwidget_types.QWidget): void {.base.} =
  QAbstractFormBuildersave(self[], dev, widget)
method addMenuAction*(self: VirtualQAbstractFormBuilder, action: gen_qaction_types.QAction): void {.base.} =
  QAbstractFormBuilderaddMenuAction(self[], action)
method createWidget*(self: VirtualQAbstractFormBuilder, widgetName: openArray[char], parentWidget: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget {.base.} =
  QAbstractFormBuildercreateWidget(self[], widgetName, parentWidget, name)
method createLayout*(self: VirtualQAbstractFormBuilder, layoutName: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout {.base.} =
  QAbstractFormBuildercreateLayout(self[], layoutName, parent, name)
method createAction*(self: VirtualQAbstractFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction {.base.} =
  QAbstractFormBuildercreateAction(self[], parent, name)
method createActionGroup*(self: VirtualQAbstractFormBuilder, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup {.base.} =
  QAbstractFormBuildercreateActionGroup(self[], parent, name)
method checkProperty*(self: VirtualQAbstractFormBuilder, obj: gen_qobject_types.QObject, prop: openArray[char]): bool {.base.} =
  QAbstractFormBuildercheckProperty(self[], obj, prop)

proc fcQAbstractFormBuilder_method_callback_load(self: pointer, dev: pointer, parentWidget: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget, owned: false)
  var virtualReturn = inst.load(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_method_callback_save(self: pointer, dev: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let slotval1 = gen_qiodevice_types.QIODevice(h: dev, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.save(slotval1, slotval2)

proc fcQAbstractFormBuilder_method_callback_addMenuAction(self: pointer, action: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)
  inst.addMenuAction(slotval1)

proc fcQAbstractFormBuilder_method_callback_createWidget(self: pointer, widgetName: struct_seaqt_string, parentWidget: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let vwidgetName_ms = widgetName
  let vwidgetNamex_ret = string.fromBytes(vwidgetName_ms)
  c_free(vwidgetName_ms.data)
  let slotval1 = vwidgetNamex_ret
  let slotval2 = gen_qwidget_types.QWidget(h: parentWidget, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = inst.createWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_method_callback_createLayout(self: pointer, layoutName: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let vlayoutName_ms = layoutName
  let vlayoutNamex_ret = string.fromBytes(vlayoutName_ms)
  c_free(vlayoutName_ms.data)
  let slotval1 = vlayoutNamex_ret
  let slotval2 = gen_qobject_types.QObject(h: parent, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = inst.createLayout(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_method_callback_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = inst.createAction(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_method_callback_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent, owned: false)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = inst.createActionGroup(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractFormBuilder_method_callback_checkProperty(self: pointer, obj: pointer, prop: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractFormBuilder](fcQAbstractFormBuilder_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: obj, owned: false)
  let vprop_ms = prop
  let vpropx_ret = string.fromBytes(vprop_ms)
  c_free(vprop_ms.data)
  let slotval2 = vpropx_ret
  var virtualReturn = inst.checkProperty(slotval1, slotval2)
  virtualReturn


proc applyPropertyInternally*(self: gen_abstractformbuilder_types.QAbstractFormBuilder, o: gen_qobject_types.QObject, propertyName: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQAbstractFormBuilder_protectedbase_applyPropertyInternally(self.h, o.h, struct_seaqt_string(data: if len(propertyName) > 0: addr propertyName[0] else: nil, len: csize_t(len(propertyName))), value.h)

proc reset*(self: gen_abstractformbuilder_types.QAbstractFormBuilder): void =
  fcQAbstractFormBuilder_protectedbase_reset(self.h)

proc create*(T: type gen_abstractformbuilder_types.QAbstractFormBuilder,
    vtbl: ref QAbstractFormBuilderVTable = nil): gen_abstractformbuilder_types.QAbstractFormBuilder =
  let vtbl = if vtbl == nil: new QAbstractFormBuilderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractFormBuilderVTable](fcQAbstractFormBuilder_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].load):
    vtbl[].vtbl.load = fcQAbstractFormBuilder_vtable_callback_load
  if not isNil(vtbl[].save):
    vtbl[].vtbl.save = fcQAbstractFormBuilder_vtable_callback_save
  if not isNil(vtbl[].addMenuAction):
    vtbl[].vtbl.addMenuAction = fcQAbstractFormBuilder_vtable_callback_addMenuAction
  if not isNil(vtbl[].createWidget):
    vtbl[].vtbl.createWidget = fcQAbstractFormBuilder_vtable_callback_createWidget
  if not isNil(vtbl[].createLayout):
    vtbl[].vtbl.createLayout = fcQAbstractFormBuilder_vtable_callback_createLayout
  if not isNil(vtbl[].createAction):
    vtbl[].vtbl.createAction = fcQAbstractFormBuilder_vtable_callback_createAction
  if not isNil(vtbl[].createActionGroup):
    vtbl[].vtbl.createActionGroup = fcQAbstractFormBuilder_vtable_callback_createActionGroup
  if not isNil(vtbl[].checkProperty):
    vtbl[].vtbl.checkProperty = fcQAbstractFormBuilder_vtable_callback_checkProperty
  let tmp = gen_abstractformbuilder_types.QAbstractFormBuilder(h: fcQAbstractFormBuilder_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQAbstractFormBuilder_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQAbstractFormBuilder_mvtbl = cQAbstractFormBuilderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractFormBuilder()[])](self.fcQAbstractFormBuilder_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  load: fcQAbstractFormBuilder_method_callback_load,
  save: fcQAbstractFormBuilder_method_callback_save,
  addMenuAction: fcQAbstractFormBuilder_method_callback_addMenuAction,
  createWidget: fcQAbstractFormBuilder_method_callback_createWidget,
  createLayout: fcQAbstractFormBuilder_method_callback_createLayout,
  createAction: fcQAbstractFormBuilder_method_callback_createAction,
  createActionGroup: fcQAbstractFormBuilder_method_callback_createActionGroup,
  checkProperty: fcQAbstractFormBuilder_method_callback_checkProperty,
)
proc create*(T: type gen_abstractformbuilder_types.QAbstractFormBuilder,
    inst: VirtualQAbstractFormBuilder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractFormBuilder_new(addr(cQAbstractFormBuilder_mvtbl), csize_t(sizeof(pointer)))
  fcQAbstractFormBuilder_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

