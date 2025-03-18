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


type QFileIconProviderIconTypeEnum* = distinct cint
template Computer*(_: type QFileIconProviderIconTypeEnum): untyped = 0
template Desktop*(_: type QFileIconProviderIconTypeEnum): untyped = 1
template Trashcan*(_: type QFileIconProviderIconTypeEnum): untyped = 2
template Network*(_: type QFileIconProviderIconTypeEnum): untyped = 3
template Drive*(_: type QFileIconProviderIconTypeEnum): untyped = 4
template Folder*(_: type QFileIconProviderIconTypeEnum): untyped = 5
template File*(_: type QFileIconProviderIconTypeEnum): untyped = 6


type QFileIconProviderOptionEnum* = distinct cint
template DontUseCustomDirectoryIcons*(_: type QFileIconProviderOptionEnum): untyped = 1


import ./gen_qfileiconprovider_types
export gen_qfileiconprovider_types

import
  ../QtCore/gen_qfileinfo_types,
  ../QtGui/gen_qicon_types
export
  gen_qfileinfo_types,
  gen_qicon_types

type cQFileIconProvider*{.exportc: "QFileIconProvider", incompleteStruct.} = object

proc fcQFileIconProvider_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_icon".}
proc fcQFileIconProvider_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_iconWithInfo".}
proc fcQFileIconProvider_typeX(self: pointer, info: pointer): struct_miqt_string {.importc: "QFileIconProvider_type".}
proc fcQFileIconProvider_setOptions(self: pointer, options: cint): void {.importc: "QFileIconProvider_setOptions".}
proc fcQFileIconProvider_options(self: pointer): cint {.importc: "QFileIconProvider_options".}
proc fcQFileIconProvider_vtbl(self: pointer): pointer {.importc: "QFileIconProvider_vtbl".}
proc fcQFileIconProvider_vdata(self: pointer): pointer {.importc: "QFileIconProvider_vdata".}

type cQFileIconProviderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  icon*: proc(self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  iconWithInfo*: proc(self: pointer, info: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer, info: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
proc fcQFileIconProvider_virtualbase_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_virtualbase_icon".}
proc fcQFileIconProvider_virtualbase_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_virtualbase_iconWithInfo".}
proc fcQFileIconProvider_virtualbase_typeX(self: pointer, info: pointer): struct_miqt_string {.importc: "QFileIconProvider_virtualbase_type".}
proc fcQFileIconProvider_new(vtbl, vdata: pointer): ptr cQFileIconProvider {.importc: "QFileIconProvider_new".}

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_icon(self.h, cint(typeVal)), owned: true)

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_iconWithInfo(self.h, info.h), owned: true)

proc typeX*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_typeX(self.h, info.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOptions*(self: gen_qfileiconprovider_types.QFileIconProvider, options: cint): void =
  fcQFileIconProvider_setOptions(self.h, cint(options))

proc options*(self: gen_qfileiconprovider_types.QFileIconProvider): cint =
  cint(fcQFileIconProvider_options(self.h))

type QFileIconProvidericonProc* = proc(self: QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QFileIconProvidericonWithInfoProc* = proc(self: QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QFileIconProvidertypeXProc* = proc(self: QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string {.raises: [], gcsafe.}

type QFileIconProviderVTable* {.inheritable, pure.} = object
  vtbl: cQFileIconProviderVTable
  icon*: QFileIconProvidericonProc
  iconWithInfo*: QFileIconProvidericonWithInfoProc
  typeX*: QFileIconProvidertypeXProc

proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_icon(self.h, cint(typeVal)), owned: true)

proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_iconWithInfo(self.h, info.h), owned: true)

proc QFileIconProvidertypeX*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_virtualbase_typeX(self.h, info.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret


proc fcQFileIconProvider_vtable_callback_icon(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].icon(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileIconProvider_vtable_callback_iconWithInfo(self: pointer, info: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = vtbl[].iconWithInfo(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileIconProvider_vtable_callback_typeX(self: pointer, info: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = vtbl[].typeX(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

type VirtualQFileIconProvider* {.inheritable.} = ref object of QFileIconProvider
  vtbl*: cQFileIconProviderVTable

method icon*(self: VirtualQFileIconProvider, typeVal: cint): gen_qicon_types.QIcon {.base.} =
  QFileIconProvidericon(self[], typeVal)
method icon*(self: VirtualQFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.base.} =
  QFileIconProvidericon(self[], info)
method typeX*(self: VirtualQFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string {.base.} =
  QFileIconProvidertypeX(self[], info)

proc fcQFileIconProvider_method_callback_icon(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = cint(typeVal)
  var virtualReturn = inst.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileIconProvider_method_callback_iconWithInfo(self: pointer, info: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = inst.icon(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileIconProvider_method_callback_typeX(self: pointer, info: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQFileIconProvider](fcQFileIconProvider_vdata(self))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info, owned: false)
  var virtualReturn = inst.typeX(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))


proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    vtbl: ref QFileIconProviderVTable = nil): gen_qfileiconprovider_types.QFileIconProvider =
  let vtbl = if vtbl == nil: new QFileIconProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileIconProviderVTable](fcQFileIconProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].icon):
    vtbl[].vtbl.icon = fcQFileIconProvider_vtable_callback_icon
  if not isNil(vtbl[].iconWithInfo):
    vtbl[].vtbl.iconWithInfo = fcQFileIconProvider_vtable_callback_iconWithInfo
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQFileIconProvider_vtable_callback_typeX
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQFileIconProvider_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQFileIconProvider_mvtbl = cQFileIconProviderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileIconProvider()[])](self.fcQFileIconProvider_vdata())
    inst[].h = nil
    inst[].owned = false,

  icon: fcQFileIconProvider_method_callback_icon,
  iconWithInfo: fcQFileIconProvider_method_callback_iconWithInfo,
  typeX: fcQFileIconProvider_method_callback_typeX,
)
proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    inst: VirtualQFileIconProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileIconProvider_new(addr(cQFileIconProvider_mvtbl), addr(inst[]))
  inst[].owned = true

