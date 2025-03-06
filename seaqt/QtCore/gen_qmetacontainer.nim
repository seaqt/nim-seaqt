import ./Qt6Core_libs

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


type QtMetaContainerPrivateIteratorCapabilityEnum* = distinct uint8
template InputCapability*(_: type QtMetaContainerPrivateIteratorCapabilityEnum): untyped = 1
template ForwardCapability*(_: type QtMetaContainerPrivateIteratorCapabilityEnum): untyped = 2
template BiDirectionalCapability*(_: type QtMetaContainerPrivateIteratorCapabilityEnum): untyped = 4
template RandomAccessCapability*(_: type QtMetaContainerPrivateIteratorCapabilityEnum): untyped = 8


type QtMetaContainerPrivateAddRemoveCapabilityEnum* = distinct uint8
template CanAddAtBegin*(_: type QtMetaContainerPrivateAddRemoveCapabilityEnum): untyped = 1
template CanRemoveAtBegin*(_: type QtMetaContainerPrivateAddRemoveCapabilityEnum): untyped = 2
template CanAddAtEnd*(_: type QtMetaContainerPrivateAddRemoveCapabilityEnum): untyped = 4
template CanRemoveAtEnd*(_: type QtMetaContainerPrivateAddRemoveCapabilityEnum): untyped = 8


type QtMetaContainerPrivateQMetaContainerInterfacePositionEnum* = distinct uint8
template AtBegin*(_: type QtMetaContainerPrivateQMetaContainerInterfacePositionEnum): untyped = 0
template AtEnd*(_: type QtMetaContainerPrivateQMetaContainerInterfacePositionEnum): untyped = 1
template Unspecified*(_: type QtMetaContainerPrivateQMetaContainerInterfacePositionEnum): untyped = 2


import ./gen_qmetacontainer_types
export gen_qmetacontainer_types

import
  ./gen_qmetatype_types
export
  gen_qmetatype_types

type cQMetaContainer*{.exportc: "QMetaContainer", incompleteStruct.} = object
type cQMetaSequence*{.exportc: "QMetaSequence", incompleteStruct.} = object
type cQMetaAssociation*{.exportc: "QMetaAssociation", incompleteStruct.} = object

proc fcQMetaContainer_hasInputIterator(self: pointer, ): bool {.importc: "QMetaContainer_hasInputIterator".}
proc fcQMetaContainer_hasForwardIterator(self: pointer, ): bool {.importc: "QMetaContainer_hasForwardIterator".}
proc fcQMetaContainer_hasBidirectionalIterator(self: pointer, ): bool {.importc: "QMetaContainer_hasBidirectionalIterator".}
proc fcQMetaContainer_hasRandomAccessIterator(self: pointer, ): bool {.importc: "QMetaContainer_hasRandomAccessIterator".}
proc fcQMetaContainer_hasSize(self: pointer, ): bool {.importc: "QMetaContainer_hasSize".}
proc fcQMetaContainer_size(self: pointer, container: pointer): int64 {.importc: "QMetaContainer_size".}
proc fcQMetaContainer_canClear(self: pointer, ): bool {.importc: "QMetaContainer_canClear".}
proc fcQMetaContainer_clear(self: pointer, container: pointer): void {.importc: "QMetaContainer_clear".}
proc fcQMetaContainer_hasIterator(self: pointer, ): bool {.importc: "QMetaContainer_hasIterator".}
proc fcQMetaContainer_begin(self: pointer, container: pointer): pointer {.importc: "QMetaContainer_begin".}
proc fcQMetaContainer_endX(self: pointer, container: pointer): pointer {.importc: "QMetaContainer_end".}
proc fcQMetaContainer_destroyIterator(self: pointer, iteratorVal: pointer): void {.importc: "QMetaContainer_destroyIterator".}
proc fcQMetaContainer_compareIterator(self: pointer, i: pointer, j: pointer): bool {.importc: "QMetaContainer_compareIterator".}
proc fcQMetaContainer_copyIterator(self: pointer, target: pointer, source: pointer): void {.importc: "QMetaContainer_copyIterator".}
proc fcQMetaContainer_advanceIterator(self: pointer, iteratorVal: pointer, step: int64): void {.importc: "QMetaContainer_advanceIterator".}
proc fcQMetaContainer_diffIterator(self: pointer, i: pointer, j: pointer): int64 {.importc: "QMetaContainer_diffIterator".}
proc fcQMetaContainer_hasConstIterator(self: pointer, ): bool {.importc: "QMetaContainer_hasConstIterator".}
proc fcQMetaContainer_constBegin(self: pointer, container: pointer): pointer {.importc: "QMetaContainer_constBegin".}
proc fcQMetaContainer_constEnd(self: pointer, container: pointer): pointer {.importc: "QMetaContainer_constEnd".}
proc fcQMetaContainer_destroyConstIterator(self: pointer, iteratorVal: pointer): void {.importc: "QMetaContainer_destroyConstIterator".}
proc fcQMetaContainer_compareConstIterator(self: pointer, i: pointer, j: pointer): bool {.importc: "QMetaContainer_compareConstIterator".}
proc fcQMetaContainer_copyConstIterator(self: pointer, target: pointer, source: pointer): void {.importc: "QMetaContainer_copyConstIterator".}
proc fcQMetaContainer_advanceConstIterator(self: pointer, iteratorVal: pointer, step: int64): void {.importc: "QMetaContainer_advanceConstIterator".}
proc fcQMetaContainer_diffConstIterator(self: pointer, i: pointer, j: pointer): int64 {.importc: "QMetaContainer_diffConstIterator".}
proc fcQMetaContainer_new(): ptr cQMetaContainer {.importc: "QMetaContainer_new".}
proc fcQMetaContainer_new2(param1: pointer): ptr cQMetaContainer {.importc: "QMetaContainer_new2".}
proc fcQMetaSequence_valueMetaType(self: pointer, ): pointer {.importc: "QMetaSequence_valueMetaType".}
proc fcQMetaSequence_isSortable(self: pointer, ): bool {.importc: "QMetaSequence_isSortable".}
proc fcQMetaSequence_canAddValueAtBegin(self: pointer, ): bool {.importc: "QMetaSequence_canAddValueAtBegin".}
proc fcQMetaSequence_addValueAtBegin(self: pointer, container: pointer, value: pointer): void {.importc: "QMetaSequence_addValueAtBegin".}
proc fcQMetaSequence_canAddValueAtEnd(self: pointer, ): bool {.importc: "QMetaSequence_canAddValueAtEnd".}
proc fcQMetaSequence_addValueAtEnd(self: pointer, container: pointer, value: pointer): void {.importc: "QMetaSequence_addValueAtEnd".}
proc fcQMetaSequence_canRemoveValueAtBegin(self: pointer, ): bool {.importc: "QMetaSequence_canRemoveValueAtBegin".}
proc fcQMetaSequence_removeValueAtBegin(self: pointer, container: pointer): void {.importc: "QMetaSequence_removeValueAtBegin".}
proc fcQMetaSequence_canRemoveValueAtEnd(self: pointer, ): bool {.importc: "QMetaSequence_canRemoveValueAtEnd".}
proc fcQMetaSequence_removeValueAtEnd(self: pointer, container: pointer): void {.importc: "QMetaSequence_removeValueAtEnd".}
proc fcQMetaSequence_canGetValueAtIndex(self: pointer, ): bool {.importc: "QMetaSequence_canGetValueAtIndex".}
proc fcQMetaSequence_valueAtIndex(self: pointer, container: pointer, index: int64, resultVal: pointer): void {.importc: "QMetaSequence_valueAtIndex".}
proc fcQMetaSequence_canSetValueAtIndex(self: pointer, ): bool {.importc: "QMetaSequence_canSetValueAtIndex".}
proc fcQMetaSequence_setValueAtIndex(self: pointer, container: pointer, index: int64, value: pointer): void {.importc: "QMetaSequence_setValueAtIndex".}
proc fcQMetaSequence_canAddValue(self: pointer, ): bool {.importc: "QMetaSequence_canAddValue".}
proc fcQMetaSequence_addValue(self: pointer, container: pointer, value: pointer): void {.importc: "QMetaSequence_addValue".}
proc fcQMetaSequence_canRemoveValue(self: pointer, ): bool {.importc: "QMetaSequence_canRemoveValue".}
proc fcQMetaSequence_removeValue(self: pointer, container: pointer): void {.importc: "QMetaSequence_removeValue".}
proc fcQMetaSequence_canGetValueAtIterator(self: pointer, ): bool {.importc: "QMetaSequence_canGetValueAtIterator".}
proc fcQMetaSequence_valueAtIterator(self: pointer, iteratorVal: pointer, resultVal: pointer): void {.importc: "QMetaSequence_valueAtIterator".}
proc fcQMetaSequence_canSetValueAtIterator(self: pointer, ): bool {.importc: "QMetaSequence_canSetValueAtIterator".}
proc fcQMetaSequence_setValueAtIterator(self: pointer, iteratorVal: pointer, value: pointer): void {.importc: "QMetaSequence_setValueAtIterator".}
proc fcQMetaSequence_canInsertValueAtIterator(self: pointer, ): bool {.importc: "QMetaSequence_canInsertValueAtIterator".}
proc fcQMetaSequence_insertValueAtIterator(self: pointer, container: pointer, iteratorVal: pointer, value: pointer): void {.importc: "QMetaSequence_insertValueAtIterator".}
proc fcQMetaSequence_canEraseValueAtIterator(self: pointer, ): bool {.importc: "QMetaSequence_canEraseValueAtIterator".}
proc fcQMetaSequence_eraseValueAtIterator(self: pointer, container: pointer, iteratorVal: pointer): void {.importc: "QMetaSequence_eraseValueAtIterator".}
proc fcQMetaSequence_canEraseRangeAtIterator(self: pointer, ): bool {.importc: "QMetaSequence_canEraseRangeAtIterator".}
proc fcQMetaSequence_eraseRangeAtIterator(self: pointer, container: pointer, iterator1: pointer, iterator2: pointer): void {.importc: "QMetaSequence_eraseRangeAtIterator".}
proc fcQMetaSequence_canGetValueAtConstIterator(self: pointer, ): bool {.importc: "QMetaSequence_canGetValueAtConstIterator".}
proc fcQMetaSequence_valueAtConstIterator(self: pointer, iteratorVal: pointer, resultVal: pointer): void {.importc: "QMetaSequence_valueAtConstIterator".}
proc fcQMetaSequence_new(): ptr cQMetaSequence {.importc: "QMetaSequence_new".}
proc fcQMetaAssociation_keyMetaType(self: pointer, ): pointer {.importc: "QMetaAssociation_keyMetaType".}
proc fcQMetaAssociation_mappedMetaType(self: pointer, ): pointer {.importc: "QMetaAssociation_mappedMetaType".}
proc fcQMetaAssociation_canInsertKey(self: pointer, ): bool {.importc: "QMetaAssociation_canInsertKey".}
proc fcQMetaAssociation_insertKey(self: pointer, container: pointer, key: pointer): void {.importc: "QMetaAssociation_insertKey".}
proc fcQMetaAssociation_canRemoveKey(self: pointer, ): bool {.importc: "QMetaAssociation_canRemoveKey".}
proc fcQMetaAssociation_removeKey(self: pointer, container: pointer, key: pointer): void {.importc: "QMetaAssociation_removeKey".}
proc fcQMetaAssociation_canContainsKey(self: pointer, ): bool {.importc: "QMetaAssociation_canContainsKey".}
proc fcQMetaAssociation_containsKey(self: pointer, container: pointer, key: pointer): bool {.importc: "QMetaAssociation_containsKey".}
proc fcQMetaAssociation_canGetMappedAtKey(self: pointer, ): bool {.importc: "QMetaAssociation_canGetMappedAtKey".}
proc fcQMetaAssociation_mappedAtKey(self: pointer, container: pointer, key: pointer, mapped: pointer): void {.importc: "QMetaAssociation_mappedAtKey".}
proc fcQMetaAssociation_canSetMappedAtKey(self: pointer, ): bool {.importc: "QMetaAssociation_canSetMappedAtKey".}
proc fcQMetaAssociation_setMappedAtKey(self: pointer, container: pointer, key: pointer, mapped: pointer): void {.importc: "QMetaAssociation_setMappedAtKey".}
proc fcQMetaAssociation_canGetKeyAtIterator(self: pointer, ): bool {.importc: "QMetaAssociation_canGetKeyAtIterator".}
proc fcQMetaAssociation_keyAtIterator(self: pointer, iteratorVal: pointer, key: pointer): void {.importc: "QMetaAssociation_keyAtIterator".}
proc fcQMetaAssociation_canGetKeyAtConstIterator(self: pointer, ): bool {.importc: "QMetaAssociation_canGetKeyAtConstIterator".}
proc fcQMetaAssociation_keyAtConstIterator(self: pointer, iteratorVal: pointer, key: pointer): void {.importc: "QMetaAssociation_keyAtConstIterator".}
proc fcQMetaAssociation_canGetMappedAtIterator(self: pointer, ): bool {.importc: "QMetaAssociation_canGetMappedAtIterator".}
proc fcQMetaAssociation_mappedAtIterator(self: pointer, iteratorVal: pointer, mapped: pointer): void {.importc: "QMetaAssociation_mappedAtIterator".}
proc fcQMetaAssociation_canGetMappedAtConstIterator(self: pointer, ): bool {.importc: "QMetaAssociation_canGetMappedAtConstIterator".}
proc fcQMetaAssociation_mappedAtConstIterator(self: pointer, iteratorVal: pointer, mapped: pointer): void {.importc: "QMetaAssociation_mappedAtConstIterator".}
proc fcQMetaAssociation_canSetMappedAtIterator(self: pointer, ): bool {.importc: "QMetaAssociation_canSetMappedAtIterator".}
proc fcQMetaAssociation_setMappedAtIterator(self: pointer, iteratorVal: pointer, mapped: pointer): void {.importc: "QMetaAssociation_setMappedAtIterator".}
proc fcQMetaAssociation_canCreateIteratorAtKey(self: pointer, ): bool {.importc: "QMetaAssociation_canCreateIteratorAtKey".}
proc fcQMetaAssociation_createIteratorAtKey(self: pointer, container: pointer, key: pointer): pointer {.importc: "QMetaAssociation_createIteratorAtKey".}
proc fcQMetaAssociation_canCreateConstIteratorAtKey(self: pointer, ): bool {.importc: "QMetaAssociation_canCreateConstIteratorAtKey".}
proc fcQMetaAssociation_createConstIteratorAtKey(self: pointer, container: pointer, key: pointer): pointer {.importc: "QMetaAssociation_createConstIteratorAtKey".}
proc fcQMetaAssociation_new(): ptr cQMetaAssociation {.importc: "QMetaAssociation_new".}

proc hasInputIterator*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasInputIterator(self.h)

proc hasForwardIterator*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasForwardIterator(self.h)

proc hasBidirectionalIterator*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasBidirectionalIterator(self.h)

proc hasRandomAccessIterator*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasRandomAccessIterator(self.h)

proc hasSize*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasSize(self.h)

proc size*(self: gen_qmetacontainer_types.QMetaContainer, container: pointer): int64 =
  fcQMetaContainer_size(self.h, container)

proc canClear*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_canClear(self.h)

proc clear*(self: gen_qmetacontainer_types.QMetaContainer, container: pointer): void =
  fcQMetaContainer_clear(self.h, container)

proc hasIterator*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasIterator(self.h)

proc begin*(self: gen_qmetacontainer_types.QMetaContainer, container: pointer): pointer =
  fcQMetaContainer_begin(self.h, container)

proc endX*(self: gen_qmetacontainer_types.QMetaContainer, container: pointer): pointer =
  fcQMetaContainer_endX(self.h, container)

proc destroyIterator*(self: gen_qmetacontainer_types.QMetaContainer, iteratorVal: pointer): void =
  fcQMetaContainer_destroyIterator(self.h, iteratorVal)

proc compareIterator*(self: gen_qmetacontainer_types.QMetaContainer, i: pointer, j: pointer): bool =
  fcQMetaContainer_compareIterator(self.h, i, j)

proc copyIterator*(self: gen_qmetacontainer_types.QMetaContainer, target: pointer, source: pointer): void =
  fcQMetaContainer_copyIterator(self.h, target, source)

proc advanceIterator*(self: gen_qmetacontainer_types.QMetaContainer, iteratorVal: pointer, step: int64): void =
  fcQMetaContainer_advanceIterator(self.h, iteratorVal, step)

proc diffIterator*(self: gen_qmetacontainer_types.QMetaContainer, i: pointer, j: pointer): int64 =
  fcQMetaContainer_diffIterator(self.h, i, j)

proc hasConstIterator*(self: gen_qmetacontainer_types.QMetaContainer, ): bool =
  fcQMetaContainer_hasConstIterator(self.h)

proc constBegin*(self: gen_qmetacontainer_types.QMetaContainer, container: pointer): pointer =
  fcQMetaContainer_constBegin(self.h, container)

proc constEnd*(self: gen_qmetacontainer_types.QMetaContainer, container: pointer): pointer =
  fcQMetaContainer_constEnd(self.h, container)

proc destroyConstIterator*(self: gen_qmetacontainer_types.QMetaContainer, iteratorVal: pointer): void =
  fcQMetaContainer_destroyConstIterator(self.h, iteratorVal)

proc compareConstIterator*(self: gen_qmetacontainer_types.QMetaContainer, i: pointer, j: pointer): bool =
  fcQMetaContainer_compareConstIterator(self.h, i, j)

proc copyConstIterator*(self: gen_qmetacontainer_types.QMetaContainer, target: pointer, source: pointer): void =
  fcQMetaContainer_copyConstIterator(self.h, target, source)

proc advanceConstIterator*(self: gen_qmetacontainer_types.QMetaContainer, iteratorVal: pointer, step: int64): void =
  fcQMetaContainer_advanceConstIterator(self.h, iteratorVal, step)

proc diffConstIterator*(self: gen_qmetacontainer_types.QMetaContainer, i: pointer, j: pointer): int64 =
  fcQMetaContainer_diffConstIterator(self.h, i, j)

proc create*(T: type gen_qmetacontainer_types.QMetaContainer): gen_qmetacontainer_types.QMetaContainer =
  gen_qmetacontainer_types.QMetaContainer(h: fcQMetaContainer_new(), owned: true)

proc create*(T: type gen_qmetacontainer_types.QMetaContainer,
    param1: gen_qmetacontainer_types.QMetaContainer): gen_qmetacontainer_types.QMetaContainer =
  gen_qmetacontainer_types.QMetaContainer(h: fcQMetaContainer_new2(param1.h), owned: true)

proc valueMetaType*(self: gen_qmetacontainer_types.QMetaSequence, ): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaSequence_valueMetaType(self.h), owned: true)

proc isSortable*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_isSortable(self.h)

proc canAddValueAtBegin*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canAddValueAtBegin(self.h)

proc addValueAtBegin*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, value: pointer): void =
  fcQMetaSequence_addValueAtBegin(self.h, container, value)

proc canAddValueAtEnd*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canAddValueAtEnd(self.h)

proc addValueAtEnd*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, value: pointer): void =
  fcQMetaSequence_addValueAtEnd(self.h, container, value)

proc canRemoveValueAtBegin*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canRemoveValueAtBegin(self.h)

proc removeValueAtBegin*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer): void =
  fcQMetaSequence_removeValueAtBegin(self.h, container)

proc canRemoveValueAtEnd*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canRemoveValueAtEnd(self.h)

proc removeValueAtEnd*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer): void =
  fcQMetaSequence_removeValueAtEnd(self.h, container)

proc canGetValueAtIndex*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canGetValueAtIndex(self.h)

proc valueAtIndex*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, index: int64, resultVal: pointer): void =
  fcQMetaSequence_valueAtIndex(self.h, container, index, resultVal)

proc canSetValueAtIndex*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canSetValueAtIndex(self.h)

proc setValueAtIndex*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, index: int64, value: pointer): void =
  fcQMetaSequence_setValueAtIndex(self.h, container, index, value)

proc canAddValue*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canAddValue(self.h)

proc addValue*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, value: pointer): void =
  fcQMetaSequence_addValue(self.h, container, value)

proc canRemoveValue*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canRemoveValue(self.h)

proc removeValue*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer): void =
  fcQMetaSequence_removeValue(self.h, container)

proc canGetValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canGetValueAtIterator(self.h)

proc valueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, iteratorVal: pointer, resultVal: pointer): void =
  fcQMetaSequence_valueAtIterator(self.h, iteratorVal, resultVal)

proc canSetValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canSetValueAtIterator(self.h)

proc setValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, iteratorVal: pointer, value: pointer): void =
  fcQMetaSequence_setValueAtIterator(self.h, iteratorVal, value)

proc canInsertValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canInsertValueAtIterator(self.h)

proc insertValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, iteratorVal: pointer, value: pointer): void =
  fcQMetaSequence_insertValueAtIterator(self.h, container, iteratorVal, value)

proc canEraseValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canEraseValueAtIterator(self.h)

proc eraseValueAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, iteratorVal: pointer): void =
  fcQMetaSequence_eraseValueAtIterator(self.h, container, iteratorVal)

proc canEraseRangeAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canEraseRangeAtIterator(self.h)

proc eraseRangeAtIterator*(self: gen_qmetacontainer_types.QMetaSequence, container: pointer, iterator1: pointer, iterator2: pointer): void =
  fcQMetaSequence_eraseRangeAtIterator(self.h, container, iterator1, iterator2)

proc canGetValueAtConstIterator*(self: gen_qmetacontainer_types.QMetaSequence, ): bool =
  fcQMetaSequence_canGetValueAtConstIterator(self.h)

proc valueAtConstIterator*(self: gen_qmetacontainer_types.QMetaSequence, iteratorVal: pointer, resultVal: pointer): void =
  fcQMetaSequence_valueAtConstIterator(self.h, iteratorVal, resultVal)

proc create*(T: type gen_qmetacontainer_types.QMetaSequence): gen_qmetacontainer_types.QMetaSequence =
  gen_qmetacontainer_types.QMetaSequence(h: fcQMetaSequence_new(), owned: true)

proc keyMetaType*(self: gen_qmetacontainer_types.QMetaAssociation, ): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaAssociation_keyMetaType(self.h), owned: true)

proc mappedMetaType*(self: gen_qmetacontainer_types.QMetaAssociation, ): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaAssociation_mappedMetaType(self.h), owned: true)

proc canInsertKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canInsertKey(self.h)

proc insertKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer): void =
  fcQMetaAssociation_insertKey(self.h, container, key)

proc canRemoveKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canRemoveKey(self.h)

proc removeKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer): void =
  fcQMetaAssociation_removeKey(self.h, container, key)

proc canContainsKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canContainsKey(self.h)

proc containsKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer): bool =
  fcQMetaAssociation_containsKey(self.h, container, key)

proc canGetMappedAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canGetMappedAtKey(self.h)

proc mappedAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer, mapped: pointer): void =
  fcQMetaAssociation_mappedAtKey(self.h, container, key, mapped)

proc canSetMappedAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canSetMappedAtKey(self.h)

proc setMappedAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer, mapped: pointer): void =
  fcQMetaAssociation_setMappedAtKey(self.h, container, key, mapped)

proc canGetKeyAtIterator*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canGetKeyAtIterator(self.h)

proc keyAtIterator*(self: gen_qmetacontainer_types.QMetaAssociation, iteratorVal: pointer, key: pointer): void =
  fcQMetaAssociation_keyAtIterator(self.h, iteratorVal, key)

proc canGetKeyAtConstIterator*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canGetKeyAtConstIterator(self.h)

proc keyAtConstIterator*(self: gen_qmetacontainer_types.QMetaAssociation, iteratorVal: pointer, key: pointer): void =
  fcQMetaAssociation_keyAtConstIterator(self.h, iteratorVal, key)

proc canGetMappedAtIterator*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canGetMappedAtIterator(self.h)

proc mappedAtIterator*(self: gen_qmetacontainer_types.QMetaAssociation, iteratorVal: pointer, mapped: pointer): void =
  fcQMetaAssociation_mappedAtIterator(self.h, iteratorVal, mapped)

proc canGetMappedAtConstIterator*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canGetMappedAtConstIterator(self.h)

proc mappedAtConstIterator*(self: gen_qmetacontainer_types.QMetaAssociation, iteratorVal: pointer, mapped: pointer): void =
  fcQMetaAssociation_mappedAtConstIterator(self.h, iteratorVal, mapped)

proc canSetMappedAtIterator*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canSetMappedAtIterator(self.h)

proc setMappedAtIterator*(self: gen_qmetacontainer_types.QMetaAssociation, iteratorVal: pointer, mapped: pointer): void =
  fcQMetaAssociation_setMappedAtIterator(self.h, iteratorVal, mapped)

proc canCreateIteratorAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canCreateIteratorAtKey(self.h)

proc createIteratorAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer): pointer =
  fcQMetaAssociation_createIteratorAtKey(self.h, container, key)

proc canCreateConstIteratorAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, ): bool =
  fcQMetaAssociation_canCreateConstIteratorAtKey(self.h)

proc createConstIteratorAtKey*(self: gen_qmetacontainer_types.QMetaAssociation, container: pointer, key: pointer): pointer =
  fcQMetaAssociation_createConstIteratorAtKey(self.h, container, key)

proc create*(T: type gen_qmetacontainer_types.QMetaAssociation): gen_qmetacontainer_types.QMetaAssociation =
  gen_qmetacontainer_types.QMetaAssociation(h: fcQMetaAssociation_new(), owned: true)

