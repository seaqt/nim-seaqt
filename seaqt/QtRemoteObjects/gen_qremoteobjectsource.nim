import ./qtremoteobjects_pkg

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


import ./gen_qremoteobjectsource_types
export gen_qremoteobjectsource_types

import
  ../QtCore/gen_qabstractitemmodel_types
export
  gen_qabstractitemmodel_types

type cModelInfo*{.exportc: "ModelInfo", incompleteStruct.} = object
type cSourceApiMap*{.exportc: "SourceApiMap", incompleteStruct.} = object

proc fcModelInfo_ptrX(self: pointer): pointer {.importc: "ModelInfo_ptr".}
proc fcModelInfo_setPtr(self: pointer, ptrVal: pointer): void {.importc: "ModelInfo_setPtr".}
proc fcModelInfo_name(self: pointer): struct_seaqt_string {.importc: "ModelInfo_name".}
proc fcModelInfo_setName(self: pointer, name: struct_seaqt_string): void {.importc: "ModelInfo_setName".}
proc fcModelInfo_roles(self: pointer): struct_seaqt_string {.importc: "ModelInfo_roles".}
proc fcModelInfo_setRoles(self: pointer, roles: struct_seaqt_string): void {.importc: "ModelInfo_setRoles".}
proc fcModelInfo_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "ModelInfo_operatorAssign".}
proc fcModelInfo_new(fromVal: pointer): ptr cModelInfo {.importc: "ModelInfo_new".}
proc fcSourceApiMap_name(self: pointer): struct_seaqt_string {.importc: "SourceApiMap_name".}
proc fcSourceApiMap_typeName(self: pointer): struct_seaqt_string {.importc: "SourceApiMap_typeName".}
proc fcSourceApiMap_className(self: pointer): struct_seaqt_string {.importc: "SourceApiMap_className".}
proc fcSourceApiMap_enumCount(self: pointer): cint {.importc: "SourceApiMap_enumCount".}
proc fcSourceApiMap_propertyCount(self: pointer): cint {.importc: "SourceApiMap_propertyCount".}
proc fcSourceApiMap_signalCount(self: pointer): cint {.importc: "SourceApiMap_signalCount".}
proc fcSourceApiMap_methodCount(self: pointer): cint {.importc: "SourceApiMap_methodCount".}
proc fcSourceApiMap_sourceEnumIndex(self: pointer, index: cint): cint {.importc: "SourceApiMap_sourceEnumIndex".}
proc fcSourceApiMap_sourcePropertyIndex(self: pointer, index: cint): cint {.importc: "SourceApiMap_sourcePropertyIndex".}
proc fcSourceApiMap_sourceSignalIndex(self: pointer, index: cint): cint {.importc: "SourceApiMap_sourceSignalIndex".}
proc fcSourceApiMap_sourceMethodIndex(self: pointer, index: cint): cint {.importc: "SourceApiMap_sourceMethodIndex".}
proc fcSourceApiMap_signalParameterCount(self: pointer, index: cint): cint {.importc: "SourceApiMap_signalParameterCount".}
proc fcSourceApiMap_signalParameterType(self: pointer, sigIndex: cint, paramIndex: cint): cint {.importc: "SourceApiMap_signalParameterType".}
proc fcSourceApiMap_signalSignature(self: pointer, index: cint): struct_seaqt_string {.importc: "SourceApiMap_signalSignature".}
proc fcSourceApiMap_signalParameterNames(self: pointer, index: cint): struct_seaqt_array {.importc: "SourceApiMap_signalParameterNames".}
proc fcSourceApiMap_methodParameterCount(self: pointer, index: cint): cint {.importc: "SourceApiMap_methodParameterCount".}
proc fcSourceApiMap_methodParameterType(self: pointer, methodIndex: cint, paramIndex: cint): cint {.importc: "SourceApiMap_methodParameterType".}
proc fcSourceApiMap_methodSignature(self: pointer, index: cint): struct_seaqt_string {.importc: "SourceApiMap_methodSignature".}
proc fcSourceApiMap_methodType(self: pointer, index: cint): cint {.importc: "SourceApiMap_methodType".}
proc fcSourceApiMap_typeNameIndex(self: pointer, index: cint): struct_seaqt_string {.importc: "SourceApiMap_typeName_index".}
proc fcSourceApiMap_methodParameterNames(self: pointer, index: cint): struct_seaqt_array {.importc: "SourceApiMap_methodParameterNames".}
proc fcSourceApiMap_propertyIndexFromSignal(self: pointer, index: cint): cint {.importc: "SourceApiMap_propertyIndexFromSignal".}
proc fcSourceApiMap_propertyRawIndexFromSignal(self: pointer, index: cint): cint {.importc: "SourceApiMap_propertyRawIndexFromSignal".}
proc fcSourceApiMap_objectSignature(self: pointer): struct_seaqt_string {.importc: "SourceApiMap_objectSignature".}
proc fcSourceApiMap_isDynamic(self: pointer): bool {.importc: "SourceApiMap_isDynamic".}
proc fcSourceApiMap_isAdapterSignal(self: pointer, param1: cint): bool {.importc: "SourceApiMap_isAdapterSignal".}
proc fcSourceApiMap_isAdapterMethod(self: pointer, param1: cint): bool {.importc: "SourceApiMap_isAdapterMethod".}
proc fcSourceApiMap_isAdapterProperty(self: pointer, param1: cint): bool {.importc: "SourceApiMap_isAdapterProperty".}
proc fcSourceApiMap_mModels(self: pointer): struct_seaqt_array {.importc: "SourceApiMap_m_models".}
proc fcSourceApiMap_setMModels(self: pointer, m_models: struct_seaqt_array): void {.importc: "SourceApiMap_setM_models".}
proc fcSourceApiMap_mSubclasses(self: pointer): struct_seaqt_array {.importc: "SourceApiMap_m_subclasses".}
proc fcSourceApiMap_setMSubclasses(self: pointer, m_subclasses: struct_seaqt_array): void {.importc: "SourceApiMap_setM_subclasses".}
proc fcSourceApiMap_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "SourceApiMap_operatorAssign".}

proc ptrX*(self: gen_qremoteobjectsource_types.ModelInfo): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcModelInfo_ptrX(self.h), owned: false)

proc setPtr*(self: gen_qremoteobjectsource_types.ModelInfo, ptrVal: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcModelInfo_setPtr(self.h, ptrVal.h)

proc name*(self: gen_qremoteobjectsource_types.ModelInfo): string =
  let vname_ms = fcModelInfo_name(self.h)
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  vnamex_ret

proc setName*(self: gen_qremoteobjectsource_types.ModelInfo, name: openArray[char]): void =
  fcModelInfo_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc roles*(self: gen_qremoteobjectsource_types.ModelInfo): seq[byte] =
  var vroles_bytearray = fcModelInfo_roles(self.h)
  var vrolesx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vroles_bytearray.data), 0, int(vroles_bytearray.len)-1))
  c_free(vroles_bytearray.data)
  vrolesx_ret

proc setRoles*(self: gen_qremoteobjectsource_types.ModelInfo, roles: openArray[byte]): void =
  fcModelInfo_setRoles(self.h, struct_seaqt_string(data: if len(roles) > 0: addr roles[0] else: nil, len: csize_t(len(roles))))

proc operatorAssign*(self: gen_qremoteobjectsource_types.ModelInfo, fromVal: gen_qremoteobjectsource_types.ModelInfo): void =
  fcModelInfo_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qremoteobjectsource_types.ModelInfo,
    fromVal: gen_qremoteobjectsource_types.ModelInfo): gen_qremoteobjectsource_types.ModelInfo =
  let tmp = gen_qremoteobjectsource_types.ModelInfo(h: fcModelInfo_new(fromVal.h), owned: true)
  tmp
proc name*(self: gen_qremoteobjectsource_types.SourceApiMap): string =
  let v_ms = fcSourceApiMap_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc typeName*(self: gen_qremoteobjectsource_types.SourceApiMap): string =
  let v_ms = fcSourceApiMap_typeName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc className*(self: gen_qremoteobjectsource_types.SourceApiMap): seq[byte] =
  var v_bytearray = fcSourceApiMap_className(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc enumCount*(self: gen_qremoteobjectsource_types.SourceApiMap): cint =
  fcSourceApiMap_enumCount(self.h)

proc propertyCount*(self: gen_qremoteobjectsource_types.SourceApiMap): cint =
  fcSourceApiMap_propertyCount(self.h)

proc signalCount*(self: gen_qremoteobjectsource_types.SourceApiMap): cint =
  fcSourceApiMap_signalCount(self.h)

proc methodCount*(self: gen_qremoteobjectsource_types.SourceApiMap): cint =
  fcSourceApiMap_methodCount(self.h)

proc sourceEnumIndex*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_sourceEnumIndex(self.h, index)

proc sourcePropertyIndex*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_sourcePropertyIndex(self.h, index)

proc sourceSignalIndex*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_sourceSignalIndex(self.h, index)

proc sourceMethodIndex*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_sourceMethodIndex(self.h, index)

proc signalParameterCount*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_signalParameterCount(self.h, index)

proc signalParameterType*(self: gen_qremoteobjectsource_types.SourceApiMap, sigIndex: cint, paramIndex: cint): cint =
  fcSourceApiMap_signalParameterType(self.h, sigIndex, paramIndex)

proc signalSignature*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): seq[byte] =
  var v_bytearray = fcSourceApiMap_signalSignature(self.h, index)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc signalParameterNames*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): seq[seq[byte]] =
  var v_ma = fcSourceApiMap_signalParameterNames(self.h, index)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc methodParameterCount*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_methodParameterCount(self.h, index)

proc methodParameterType*(self: gen_qremoteobjectsource_types.SourceApiMap, methodIndex: cint, paramIndex: cint): cint =
  fcSourceApiMap_methodParameterType(self.h, methodIndex, paramIndex)

proc methodSignature*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): seq[byte] =
  var v_bytearray = fcSourceApiMap_methodSignature(self.h, index)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc methodType*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  cint(fcSourceApiMap_methodType(self.h, index))

proc typeName*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): seq[byte] =
  var v_bytearray = fcSourceApiMap_typeNameIndex(self.h, index)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc methodParameterNames*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): seq[seq[byte]] =
  var v_ma = fcSourceApiMap_methodParameterNames(self.h, index)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc propertyIndexFromSignal*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_propertyIndexFromSignal(self.h, index)

proc propertyRawIndexFromSignal*(self: gen_qremoteobjectsource_types.SourceApiMap, index: cint): cint =
  fcSourceApiMap_propertyRawIndexFromSignal(self.h, index)

proc objectSignature*(self: gen_qremoteobjectsource_types.SourceApiMap): seq[byte] =
  var v_bytearray = fcSourceApiMap_objectSignature(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc isDynamic*(self: gen_qremoteobjectsource_types.SourceApiMap): bool =
  fcSourceApiMap_isDynamic(self.h)

proc isAdapterSignal*(self: gen_qremoteobjectsource_types.SourceApiMap, param1: cint): bool =
  fcSourceApiMap_isAdapterSignal(self.h, param1)

proc isAdapterMethod*(self: gen_qremoteobjectsource_types.SourceApiMap, param1: cint): bool =
  fcSourceApiMap_isAdapterMethod(self.h, param1)

proc isAdapterProperty*(self: gen_qremoteobjectsource_types.SourceApiMap, param1: cint): bool =
  fcSourceApiMap_isAdapterProperty(self.h, param1)

proc mModels*(self: gen_qremoteobjectsource_types.SourceApiMap): seq[gen_qremoteobjectsource_types.ModelInfo] =
  var vm_models_ma = fcSourceApiMap_mModels(self.h)
  var vm_modelsx_ret = newSeq[gen_qremoteobjectsource_types.ModelInfo](int(vm_models_ma.len))
  let vm_models_outCast = cast[ptr UncheckedArray[pointer]](vm_models_ma.data)
  for i in 0 ..< vm_models_ma.len:
    vm_modelsx_ret[i] = gen_qremoteobjectsource_types.ModelInfo(h: vm_models_outCast[i], owned: true)
  c_free(vm_models_ma.data)
  vm_modelsx_ret

proc setMModels*(self: gen_qremoteobjectsource_types.SourceApiMap, m_models: openArray[gen_qremoteobjectsource_types.ModelInfo]): void =
  var m_models_CArray = newSeq[pointer](len(m_models))
  for i in 0..<len(m_models):
    m_models_CArray[i] = m_models[i].h

  fcSourceApiMap_setMModels(self.h, struct_seaqt_array(len: csize_t(len(m_models)), data: if len(m_models) == 0: nil else: addr(m_models_CArray[0])))

proc mSubclasses*(self: gen_qremoteobjectsource_types.SourceApiMap): seq[gen_qremoteobjectsource_types.SourceApiMap] =
  var vm_subclasses_ma = fcSourceApiMap_mSubclasses(self.h)
  var vm_subclassesx_ret = newSeq[gen_qremoteobjectsource_types.SourceApiMap](int(vm_subclasses_ma.len))
  let vm_subclasses_outCast = cast[ptr UncheckedArray[pointer]](vm_subclasses_ma.data)
  for i in 0 ..< vm_subclasses_ma.len:
    vm_subclassesx_ret[i] = gen_qremoteobjectsource_types.SourceApiMap(h: vm_subclasses_outCast[i], owned: false)
  c_free(vm_subclasses_ma.data)
  vm_subclassesx_ret

proc setMSubclasses*(self: gen_qremoteobjectsource_types.SourceApiMap, m_subclasses: openArray[gen_qremoteobjectsource_types.SourceApiMap]): void =
  var m_subclasses_CArray = newSeq[pointer](len(m_subclasses))
  for i in 0..<len(m_subclasses):
    m_subclasses_CArray[i] = m_subclasses[i].h

  fcSourceApiMap_setMSubclasses(self.h, struct_seaqt_array(len: csize_t(len(m_subclasses)), data: if len(m_subclasses) == 0: nil else: addr(m_subclasses_CArray[0])))

proc operatorAssign*(self: gen_qremoteobjectsource_types.SourceApiMap, fromVal: gen_qremoteobjectsource_types.SourceApiMap): void =
  fcSourceApiMap_operatorAssign(self.h, fromVal.h)

