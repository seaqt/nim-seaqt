import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qfileiconprovider.cpp", cflags).}


import ./gen_qfileiconprovider_types
export gen_qfileiconprovider_types

import
  ../QtCore/gen_qfileinfo_types,
  ../QtGui/gen_qabstractfileiconprovider,
  ../QtGui/gen_qicon_types
export
  gen_qfileinfo_types,
  gen_qabstractfileiconprovider,
  gen_qicon_types

type cQFileIconProvider*{.exportc: "QFileIconProvider", incompleteStruct.} = object

proc fcQFileIconProvider_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_icon".}
proc fcQFileIconProvider_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_iconWithInfo".}
proc fcQFileIconProvider_vtbl(self: pointer): pointer {.importc: "QFileIconProvider_vtbl".}
proc fcQFileIconProvider_vdata(self: pointer): pointer {.importc: "QFileIconProvider_vdata".}
type cQFileIconProviderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  icon*: proc(self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  iconWithInfo*: proc(self: pointer, info: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer, param1: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  setOptions*: proc(self: pointer, options: cint): void {.cdecl, raises: [], gcsafe.}
  options*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQFileIconProvider_virtualbase_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_virtualbase_icon".}
proc fcQFileIconProvider_virtualbase_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_virtualbase_iconWithInfo".}
proc fcQFileIconProvider_virtualbase_typeX(self: pointer, param1: pointer): struct_miqt_string {.importc: "QFileIconProvider_virtualbase_type".}
proc fcQFileIconProvider_virtualbase_setOptions(self: pointer, options: cint): void {.importc: "QFileIconProvider_virtualbase_setOptions".}
proc fcQFileIconProvider_virtualbase_options(self: pointer): cint {.importc: "QFileIconProvider_virtualbase_options".}
proc fcQFileIconProvider_new(vtbl, vdata: pointer): ptr cQFileIconProvider {.importc: "QFileIconProvider_new".}

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_icon(self.h, cint(typeVal)), owned: true)

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_iconWithInfo(self.h, info.h), owned: true)

type QFileIconProvidericonProc* = proc(self: QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QFileIconProvidericonWithInfoProc* = proc(self: QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QFileIconProvidertypeXProc* = proc(self: QFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string {.raises: [], gcsafe.}
type QFileIconProvidersetOptionsProc* = proc(self: QFileIconProvider, options: cint): void {.raises: [], gcsafe.}
type QFileIconProvideroptionsProc* = proc(self: QFileIconProvider): cint {.raises: [], gcsafe.}
type QFileIconProviderVTable* {.inheritable, pure.} = object
  vtbl: cQFileIconProviderVTable
  icon*: QFileIconProvidericonProc
  iconWithInfo*: QFileIconProvidericonWithInfoProc
  typeX*: QFileIconProvidertypeXProc
  setOptions*: QFileIconProvidersetOptionsProc
  options*: QFileIconProvideroptionsProc
proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_icon(self.h, cint(typeVal)), owned: true)

proc cQFileIconProvider_vtable_callback_icon(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].icon(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_iconWithInfo(self.h, info.h), owned: true)

proc cQFileIconProvider_vtable_callback_iconWithInfo(self: pointer, info: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = vtbl[].iconWithInfo(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileIconProvidertypeX*(self: gen_qfileiconprovider_types.QFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_virtualbase_typeX(self.h, param1.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cQFileIconProvider_vtable_callback_typeX(self: pointer, param1: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl[].typeX(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QFileIconProvidersetOptions*(self: gen_qfileiconprovider_types.QFileIconProvider, options: cint): void =
  fcQFileIconProvider_virtualbase_setOptions(self.h, cint(options))

proc cQFileIconProvider_vtable_callback_setOptions(self: pointer, options: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = cint(options)
  vtbl[].setOptions(self, slotval1)

proc QFileIconProvideroptions*(self: gen_qfileiconprovider_types.QFileIconProvider): cint =
  cint(fcQFileIconProvider_virtualbase_options(self.h))

proc cQFileIconProvider_vtable_callback_options(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  var virtualReturn = vtbl[].options(self)
  cint(virtualReturn)

type VirtualQFileIconProvider* {.inheritable.} = ref object of QFileIconProvider
  vtbl*: cQFileIconProviderVTable
method icon*(self: VirtualQFileIconProvider, typeVal: cint): gen_qicon_types.QIcon {.base.} =
  QFileIconProvidericon(self[], typeVal)
proc cQFileIconProvider_method_callback_icon(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = cint(typeVal)
  var virtualReturn = inst.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method icon*(self: VirtualQFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.base.} =
  QFileIconProvidericon(self[], info)
proc cQFileIconProvider_method_callback_iconWithInfo(self: pointer, info: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = inst.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method typeX*(self: VirtualQFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string {.base.} =
  QFileIconProvidertypeX(self[], param1)
proc cQFileIconProvider_method_callback_typeX(self: pointer, param1: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = inst.typeX(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method setOptions*(self: VirtualQFileIconProvider, options: cint): void {.base.} =
  QFileIconProvidersetOptions(self[], options)
proc cQFileIconProvider_method_callback_setOptions(self: pointer, options: cint): void {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = cint(options)
  inst.setOptions(slotval1)

method options*(self: VirtualQFileIconProvider): cint {.base.} =
  QFileIconProvideroptions(self[])
proc cQFileIconProvider_method_callback_options(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  var virtualReturn = inst.options()
  cint(virtualReturn)

proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    vtbl: ref QFileIconProviderVTable = nil): gen_qfileiconprovider_types.QFileIconProvider =
  let vtbl = if vtbl == nil: new QFileIconProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].icon):
    vtbl[].vtbl.icon = cQFileIconProvider_vtable_callback_icon
  if not isNil(vtbl[].iconWithInfo):
    vtbl[].vtbl.iconWithInfo = cQFileIconProvider_vtable_callback_iconWithInfo
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQFileIconProvider_vtable_callback_typeX
  if not isNil(vtbl[].setOptions):
    vtbl[].vtbl.setOptions = cQFileIconProvider_vtable_callback_setOptions
  if not isNil(vtbl[].options):
    vtbl[].vtbl.options = cQFileIconProvider_vtable_callback_options
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQFileIconProvider_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQFileIconProvider_mvtbl = cQFileIconProviderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileIconProvider()[])](self.fcQFileIconProvider_vtbl())
    inst[].h = nil
    inst[].owned = false,
  icon: cQFileIconProvider_method_callback_icon,
  iconWithInfo: cQFileIconProvider_method_callback_iconWithInfo,
  typeX: cQFileIconProvider_method_callback_typeX,
  setOptions: cQFileIconProvider_method_callback_setOptions,
  options: cQFileIconProvider_method_callback_options,
)
proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    inst: VirtualQFileIconProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileIconProvider_new(addr(cQFileIconProvider_mvtbl), addr(inst[]))
  inst[].owned = true

