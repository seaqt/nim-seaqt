import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
type cQFileIconProviderVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQFileIconProviderVTable, self: ptr cQFileIconProvider) {.cdecl, raises:[], gcsafe.}
  icon*: proc(vtbl, self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  iconWithInfo*: proc(vtbl, self: pointer, info: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, param1: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  setOptions*: proc(vtbl, self: pointer, options: cint): void {.cdecl, raises: [], gcsafe.}
  options*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
proc fcQFileIconProvider_virtualbase_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_virtualbase_icon".}
proc fcQFileIconProvider_virtualbase_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_virtualbase_iconWithInfo".}
proc fcQFileIconProvider_virtualbase_typeX(self: pointer, param1: pointer): struct_miqt_string {.importc: "QFileIconProvider_virtualbase_type".}
proc fcQFileIconProvider_virtualbase_setOptions(self: pointer, options: cint): void {.importc: "QFileIconProvider_virtualbase_setOptions".}
proc fcQFileIconProvider_virtualbase_options(self: pointer, ): cint {.importc: "QFileIconProvider_virtualbase_options".}
proc fcQFileIconProvider_new(vtbl: pointer, ): ptr cQFileIconProvider {.importc: "QFileIconProvider_new".}

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

proc miqt_exec_callback_cQFileIconProvider_icon(vtbl: pointer, self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].icon(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_iconWithInfo(self.h, info.h), owned: true)

proc miqt_exec_callback_cQFileIconProvider_iconWithInfo(vtbl: pointer, self: pointer, info: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = vtbl[].iconWithInfo(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileIconProvidertypeX*(self: gen_qfileiconprovider_types.QFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_virtualbase_typeX(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQFileIconProvider_typeX(vtbl: pointer, self: pointer, param1: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl[].typeX(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QFileIconProvidersetOptions*(self: gen_qfileiconprovider_types.QFileIconProvider, options: cint): void =
  fcQFileIconProvider_virtualbase_setOptions(self.h, cint(options))

proc miqt_exec_callback_cQFileIconProvider_setOptions(vtbl: pointer, self: pointer, options: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = cint(options)
  vtbl[].setOptions(self, slotval1)

proc QFileIconProvideroptions*(self: gen_qfileiconprovider_types.QFileIconProvider, ): cint =
  cint(fcQFileIconProvider_virtualbase_options(self.h))

proc miqt_exec_callback_cQFileIconProvider_options(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  var virtualReturn = vtbl[].options(self)
  cint(virtualReturn)

type VirtualQFileIconProvider* {.inheritable.} = ref object of QFileIconProvider
  vtbl*: cQFileIconProviderVTable
method icon*(self: VirtualQFileIconProvider, typeVal: cint): gen_qicon_types.QIcon {.base.} =
  QFileIconProvidericon(self[], typeVal)
proc miqt_exec_method_cQFileIconProvider_icon(vtbl: pointer, inst: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQFileIconProvider, vtbl)))
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method icon*(self: VirtualQFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.base.} =
  QFileIconProvidericon(self[], info)
proc miqt_exec_method_cQFileIconProvider_iconWithInfo(vtbl: pointer, inst: pointer, info: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQFileIconProvider, vtbl)))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = vtbl.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method typeX*(self: VirtualQFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string {.base.} =
  QFileIconProvidertypeX(self[], param1)
proc miqt_exec_method_cQFileIconProvider_typeX(vtbl: pointer, inst: pointer, param1: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[VirtualQFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQFileIconProvider, vtbl)))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl.typeX(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method setOptions*(self: VirtualQFileIconProvider, options: cint): void {.base.} =
  QFileIconProvidersetOptions(self[], options)
proc miqt_exec_method_cQFileIconProvider_setOptions(vtbl: pointer, inst: pointer, options: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQFileIconProvider, vtbl)))
  let slotval1 = cint(options)
  vtbl.setOptions(slotval1)

method options*(self: VirtualQFileIconProvider, ): cint {.base.} =
  QFileIconProvideroptions(self[])
proc miqt_exec_method_cQFileIconProvider_options(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQFileIconProvider, vtbl)))
  var virtualReturn = vtbl.options()
  cint(virtualReturn)

proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    vtbl: ref QFileIconProviderVTable = nil): gen_qfileiconprovider_types.QFileIconProvider =
  let vtbl = if vtbl == nil: new QFileIconProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileIconProviderVTable, _: ptr cQFileIconProvider) {.cdecl.} =
    let vtbl = cast[ref QFileIconProviderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].icon):
    vtbl[].vtbl.icon = miqt_exec_callback_cQFileIconProvider_icon
  if not isNil(vtbl[].iconWithInfo):
    vtbl[].vtbl.iconWithInfo = miqt_exec_callback_cQFileIconProvider_iconWithInfo
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQFileIconProvider_typeX
  if not isNil(vtbl[].setOptions):
    vtbl[].vtbl.setOptions = miqt_exec_callback_cQFileIconProvider_setOptions
  if not isNil(vtbl[].options):
    vtbl[].vtbl.options = miqt_exec_callback_cQFileIconProvider_options
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQFileIconProvider_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    vtbl: VirtualQFileIconProvider) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileIconProviderVTable, _: ptr cQFileIconProvider) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQFileIconProvider()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQFileIconProvider, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.icon = miqt_exec_method_cQFileIconProvider_icon
  vtbl[].vtbl.icon = miqt_exec_method_cQFileIconProvider_iconWithInfo
  vtbl[].vtbl.typeX = miqt_exec_method_cQFileIconProvider_typeX
  vtbl[].vtbl.setOptions = miqt_exec_method_cQFileIconProvider_setOptions
  vtbl[].vtbl.options = miqt_exec_method_cQFileIconProvider_options
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQFileIconProvider_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

