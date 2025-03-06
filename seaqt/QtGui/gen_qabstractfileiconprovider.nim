import ./Qt6Gui_libs

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


type QAbstractFileIconProviderIconTypeEnum* = distinct cint
template Computer*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 0
template Desktop*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 1
template Trashcan*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 2
template Network*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 3
template Drive*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 4
template Folder*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 5
template File*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 6


type QAbstractFileIconProviderOptionEnum* = distinct cint
template DontUseCustomDirectoryIcons*(_: type QAbstractFileIconProviderOptionEnum): untyped = 1


import ./gen_qabstractfileiconprovider_types
export gen_qabstractfileiconprovider_types

import
  ../QtCore/gen_qfileinfo_types,
  ./gen_qicon_types
export
  gen_qfileinfo_types,
  gen_qicon_types

type cQAbstractFileIconProvider*{.exportc: "QAbstractFileIconProvider", incompleteStruct.} = object

proc fcQAbstractFileIconProvider_icon(self: pointer, param1: cint): pointer {.importc: "QAbstractFileIconProvider_icon".}
proc fcQAbstractFileIconProvider_iconWithQFileInfo(self: pointer, param1: pointer): pointer {.importc: "QAbstractFileIconProvider_iconWithQFileInfo".}
proc fcQAbstractFileIconProvider_typeX(self: pointer, param1: pointer): struct_miqt_string {.importc: "QAbstractFileIconProvider_type".}
proc fcQAbstractFileIconProvider_setOptions(self: pointer, options: cint): void {.importc: "QAbstractFileIconProvider_setOptions".}
proc fcQAbstractFileIconProvider_options(self: pointer, ): cint {.importc: "QAbstractFileIconProvider_options".}
type cQAbstractFileIconProviderVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQAbstractFileIconProviderVTable, self: ptr cQAbstractFileIconProvider) {.cdecl, raises:[], gcsafe.}
  icon*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  iconWithQFileInfo*: proc(vtbl, self: pointer, param1: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, param1: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  setOptions*: proc(vtbl, self: pointer, options: cint): void {.cdecl, raises: [], gcsafe.}
  options*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
proc fcQAbstractFileIconProvider_virtualbase_icon(self: pointer, param1: cint): pointer {.importc: "QAbstractFileIconProvider_virtualbase_icon".}
proc fcQAbstractFileIconProvider_virtualbase_iconWithQFileInfo(self: pointer, param1: pointer): pointer {.importc: "QAbstractFileIconProvider_virtualbase_iconWithQFileInfo".}
proc fcQAbstractFileIconProvider_virtualbase_typeX(self: pointer, param1: pointer): struct_miqt_string {.importc: "QAbstractFileIconProvider_virtualbase_type".}
proc fcQAbstractFileIconProvider_virtualbase_setOptions(self: pointer, options: cint): void {.importc: "QAbstractFileIconProvider_virtualbase_setOptions".}
proc fcQAbstractFileIconProvider_virtualbase_options(self: pointer, ): cint {.importc: "QAbstractFileIconProvider_virtualbase_options".}
proc fcQAbstractFileIconProvider_new(vtbl: pointer, ): ptr cQAbstractFileIconProvider {.importc: "QAbstractFileIconProvider_new".}

proc icon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractFileIconProvider_icon(self.h, cint(param1)), owned: true)

proc icon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractFileIconProvider_iconWithQFileInfo(self.h, param1.h), owned: true)

proc typeX*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQAbstractFileIconProvider_typeX(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, options: cint): void =
  fcQAbstractFileIconProvider_setOptions(self.h, cint(options))

proc options*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, ): cint =
  cint(fcQAbstractFileIconProvider_options(self.h))

type QAbstractFileIconProvidericonProc* = proc(self: QAbstractFileIconProvider, param1: cint): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QAbstractFileIconProvidericonWithQFileInfoProc* = proc(self: QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QAbstractFileIconProvidertypeXProc* = proc(self: QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string {.raises: [], gcsafe.}
type QAbstractFileIconProvidersetOptionsProc* = proc(self: QAbstractFileIconProvider, options: cint): void {.raises: [], gcsafe.}
type QAbstractFileIconProvideroptionsProc* = proc(self: QAbstractFileIconProvider): cint {.raises: [], gcsafe.}
type QAbstractFileIconProviderVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractFileIconProviderVTable
  icon*: QAbstractFileIconProvidericonProc
  iconWithQFileInfo*: QAbstractFileIconProvidericonWithQFileInfoProc
  typeX*: QAbstractFileIconProvidertypeXProc
  setOptions*: QAbstractFileIconProvidersetOptionsProc
  options*: QAbstractFileIconProvideroptionsProc
proc QAbstractFileIconProvidericon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractFileIconProvider_virtualbase_icon(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQAbstractFileIconProvider_icon(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFileIconProviderVTable](vtbl)
  let self = QAbstractFileIconProvider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].icon(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractFileIconProvidericon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractFileIconProvider_virtualbase_iconWithQFileInfo(self.h, param1.h), owned: true)

proc miqt_exec_callback_cQAbstractFileIconProvider_iconWithQFileInfo(vtbl: pointer, self: pointer, param1: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractFileIconProviderVTable](vtbl)
  let self = QAbstractFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl[].iconWithQFileInfo(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractFileIconProvidertypeX*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQAbstractFileIconProvider_virtualbase_typeX(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQAbstractFileIconProvider_typeX(vtbl: pointer, self: pointer, param1: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QAbstractFileIconProviderVTable](vtbl)
  let self = QAbstractFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl[].typeX(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QAbstractFileIconProvidersetOptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, options: cint): void =
  fcQAbstractFileIconProvider_virtualbase_setOptions(self.h, cint(options))

proc miqt_exec_callback_cQAbstractFileIconProvider_setOptions(vtbl: pointer, self: pointer, options: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractFileIconProviderVTable](vtbl)
  let self = QAbstractFileIconProvider(h: self)
  let slotval1 = cint(options)
  vtbl[].setOptions(self, slotval1)

proc QAbstractFileIconProvideroptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, ): cint =
  cint(fcQAbstractFileIconProvider_virtualbase_options(self.h))

proc miqt_exec_callback_cQAbstractFileIconProvider_options(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractFileIconProviderVTable](vtbl)
  let self = QAbstractFileIconProvider(h: self)
  var virtualReturn = vtbl[].options(self)
  cint(virtualReturn)

type VirtualQAbstractFileIconProvider* {.inheritable.} = ref object of QAbstractFileIconProvider
  vtbl*: cQAbstractFileIconProviderVTable
method icon*(self: VirtualQAbstractFileIconProvider, param1: cint): gen_qicon_types.QIcon {.base.} =
  QAbstractFileIconProvidericon(self[], param1)
proc miqt_exec_method_cQAbstractFileIconProvider_icon(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractFileIconProvider, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method icon*(self: VirtualQAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.base.} =
  QAbstractFileIconProvidericon(self[], param1)
proc miqt_exec_method_cQAbstractFileIconProvider_iconWithQFileInfo(vtbl: pointer, inst: pointer, param1: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractFileIconProvider, vtbl)))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method typeX*(self: VirtualQAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string {.base.} =
  QAbstractFileIconProvidertypeX(self[], param1)
proc miqt_exec_method_cQAbstractFileIconProvider_typeX(vtbl: pointer, inst: pointer, param1: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[VirtualQAbstractFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractFileIconProvider, vtbl)))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1, owned: false)
  var virtualReturn = vtbl.typeX(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method setOptions*(self: VirtualQAbstractFileIconProvider, options: cint): void {.base.} =
  QAbstractFileIconProvidersetOptions(self[], options)
proc miqt_exec_method_cQAbstractFileIconProvider_setOptions(vtbl: pointer, inst: pointer, options: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractFileIconProvider, vtbl)))
  let slotval1 = cint(options)
  vtbl.setOptions(slotval1)

method options*(self: VirtualQAbstractFileIconProvider, ): cint {.base.} =
  QAbstractFileIconProvideroptions(self[])
proc miqt_exec_method_cQAbstractFileIconProvider_options(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractFileIconProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractFileIconProvider, vtbl)))
  var virtualReturn = vtbl.options()
  cint(virtualReturn)

proc create*(T: type gen_qabstractfileiconprovider_types.QAbstractFileIconProvider,
    vtbl: ref QAbstractFileIconProviderVTable = nil): gen_qabstractfileiconprovider_types.QAbstractFileIconProvider =
  let vtbl = if vtbl == nil: new QAbstractFileIconProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractFileIconProviderVTable, _: ptr cQAbstractFileIconProvider) {.cdecl.} =
    let vtbl = cast[ref QAbstractFileIconProviderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].icon):
    vtbl[].vtbl.icon = miqt_exec_callback_cQAbstractFileIconProvider_icon
  if not isNil(vtbl[].iconWithQFileInfo):
    vtbl[].vtbl.iconWithQFileInfo = miqt_exec_callback_cQAbstractFileIconProvider_iconWithQFileInfo
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQAbstractFileIconProvider_typeX
  if not isNil(vtbl[].setOptions):
    vtbl[].vtbl.setOptions = miqt_exec_callback_cQAbstractFileIconProvider_setOptions
  if not isNil(vtbl[].options):
    vtbl[].vtbl.options = miqt_exec_callback_cQAbstractFileIconProvider_options
  gen_qabstractfileiconprovider_types.QAbstractFileIconProvider(h: fcQAbstractFileIconProvider_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qabstractfileiconprovider_types.QAbstractFileIconProvider,
    vtbl: VirtualQAbstractFileIconProvider) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractFileIconProviderVTable, _: ptr cQAbstractFileIconProvider) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAbstractFileIconProvider()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractFileIconProvider, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.icon = miqt_exec_method_cQAbstractFileIconProvider_icon
  vtbl[].vtbl.icon = miqt_exec_method_cQAbstractFileIconProvider_iconWithQFileInfo
  vtbl[].vtbl.typeX = miqt_exec_method_cQAbstractFileIconProvider_typeX
  vtbl[].vtbl.setOptions = miqt_exec_method_cQAbstractFileIconProvider_setOptions
  vtbl[].vtbl.options = miqt_exec_method_cQAbstractFileIconProvider_options
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAbstractFileIconProvider_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

