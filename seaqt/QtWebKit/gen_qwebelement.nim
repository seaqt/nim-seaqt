import ./Qt5WebKit_libs

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


type QWebElementStyleResolveStrategyEnum* = distinct cint
template InlineStyle*(_: type QWebElementStyleResolveStrategyEnum): untyped = 0
template CascadedStyle*(_: type QWebElementStyleResolveStrategyEnum): untyped = 1
template ComputedStyle*(_: type QWebElementStyleResolveStrategyEnum): untyped = 2


import ./gen_qwebelement_types
export gen_qwebelement_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qpainter_types
export
  gen_qrect_types,
  gen_qvariant_types,
  gen_qpainter_types

type cQWebElement*{.exportc: "QWebElement", incompleteStruct.} = object
type cQWebElementCollection*{.exportc: "QWebElementCollection", incompleteStruct.} = object
type cQWebElementCollectionconst_iterator*{.exportc: "QWebElementCollection__const_iterator", incompleteStruct.} = object
type cQWebElementCollectioniterator*{.exportc: "QWebElementCollection__iterator", incompleteStruct.} = object

proc fcQWebElement_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebElement_operatorAssign".}
proc fcQWebElement_operatorEqual(self: pointer, o: pointer): bool {.importc: "QWebElement_operatorEqual".}
proc fcQWebElement_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QWebElement_operatorNotEqual".}
proc fcQWebElement_isNull(self: pointer): bool {.importc: "QWebElement_isNull".}
proc fcQWebElement_findAll(self: pointer, selectorQuery: struct_miqt_string): pointer {.importc: "QWebElement_findAll".}
proc fcQWebElement_findFirst(self: pointer, selectorQuery: struct_miqt_string): pointer {.importc: "QWebElement_findFirst".}
proc fcQWebElement_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QWebElement_setPlainText".}
proc fcQWebElement_toPlainText(self: pointer): struct_miqt_string {.importc: "QWebElement_toPlainText".}
proc fcQWebElement_setOuterXml(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_setOuterXml".}
proc fcQWebElement_toOuterXml(self: pointer): struct_miqt_string {.importc: "QWebElement_toOuterXml".}
proc fcQWebElement_setInnerXml(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_setInnerXml".}
proc fcQWebElement_toInnerXml(self: pointer): struct_miqt_string {.importc: "QWebElement_toInnerXml".}
proc fcQWebElement_setAttribute(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebElement_setAttribute".}
proc fcQWebElement_setAttributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebElement_setAttributeNS".}
proc fcQWebElement_attribute(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attribute".}
proc fcQWebElement_attributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attributeNS".}
proc fcQWebElement_hasAttribute(self: pointer, name: struct_miqt_string): bool {.importc: "QWebElement_hasAttribute".}
proc fcQWebElement_hasAttributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): bool {.importc: "QWebElement_hasAttributeNS".}
proc fcQWebElement_removeAttribute(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_removeAttribute".}
proc fcQWebElement_removeAttributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): void {.importc: "QWebElement_removeAttributeNS".}
proc fcQWebElement_hasAttributes(self: pointer): bool {.importc: "QWebElement_hasAttributes".}
proc fcQWebElement_attributeNames(self: pointer): struct_miqt_array {.importc: "QWebElement_attributeNames".}
proc fcQWebElement_classes(self: pointer): struct_miqt_array {.importc: "QWebElement_classes".}
proc fcQWebElement_hasClass(self: pointer, name: struct_miqt_string): bool {.importc: "QWebElement_hasClass".}
proc fcQWebElement_addClass(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_addClass".}
proc fcQWebElement_removeClass(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_removeClass".}
proc fcQWebElement_toggleClass(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_toggleClass".}
proc fcQWebElement_hasFocus(self: pointer): bool {.importc: "QWebElement_hasFocus".}
proc fcQWebElement_setFocus(self: pointer): void {.importc: "QWebElement_setFocus".}
proc fcQWebElement_geometry(self: pointer): pointer {.importc: "QWebElement_geometry".}
proc fcQWebElement_tagName(self: pointer): struct_miqt_string {.importc: "QWebElement_tagName".}
proc fcQWebElement_prefix(self: pointer): struct_miqt_string {.importc: "QWebElement_prefix".}
proc fcQWebElement_localName(self: pointer): struct_miqt_string {.importc: "QWebElement_localName".}
proc fcQWebElement_namespaceUri(self: pointer): struct_miqt_string {.importc: "QWebElement_namespaceUri".}
proc fcQWebElement_parent(self: pointer): pointer {.importc: "QWebElement_parent".}
proc fcQWebElement_firstChild(self: pointer): pointer {.importc: "QWebElement_firstChild".}
proc fcQWebElement_lastChild(self: pointer): pointer {.importc: "QWebElement_lastChild".}
proc fcQWebElement_nextSibling(self: pointer): pointer {.importc: "QWebElement_nextSibling".}
proc fcQWebElement_previousSibling(self: pointer): pointer {.importc: "QWebElement_previousSibling".}
proc fcQWebElement_document(self: pointer): pointer {.importc: "QWebElement_document".}
proc fcQWebElement_appendInside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_appendInside".}
proc fcQWebElement_appendInsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_appendInsideWithElement".}
proc fcQWebElement_prependInside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_prependInside".}
proc fcQWebElement_prependInsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_prependInsideWithElement".}
proc fcQWebElement_appendOutside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_appendOutside".}
proc fcQWebElement_appendOutsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_appendOutsideWithElement".}
proc fcQWebElement_prependOutside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_prependOutside".}
proc fcQWebElement_prependOutsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_prependOutsideWithElement".}
proc fcQWebElement_encloseContentsWith(self: pointer, element: pointer): void {.importc: "QWebElement_encloseContentsWith".}
proc fcQWebElement_encloseContentsWithWithMarkup(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_encloseContentsWithWithMarkup".}
proc fcQWebElement_encloseWith(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_encloseWith".}
proc fcQWebElement_encloseWithWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_encloseWithWithElement".}
proc fcQWebElement_replace(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_replace".}
proc fcQWebElement_replaceWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_replaceWithElement".}
proc fcQWebElement_clone(self: pointer): pointer {.importc: "QWebElement_clone".}
proc fcQWebElement_takeFromDocument(self: pointer): pointer {.importc: "QWebElement_takeFromDocument".}
proc fcQWebElement_removeFromDocument(self: pointer): void {.importc: "QWebElement_removeFromDocument".}
proc fcQWebElement_removeAllChildren(self: pointer): void {.importc: "QWebElement_removeAllChildren".}
proc fcQWebElement_evaluateJavaScript(self: pointer, scriptSource: struct_miqt_string): pointer {.importc: "QWebElement_evaluateJavaScript".}
proc fcQWebElement_styleProperty(self: pointer, name: struct_miqt_string, strategy: cint): struct_miqt_string {.importc: "QWebElement_styleProperty".}
proc fcQWebElement_setStyleProperty(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebElement_setStyleProperty".}
proc fcQWebElement_render(self: pointer, painter: pointer): void {.importc: "QWebElement_render".}
proc fcQWebElement_render2(self: pointer, painter: pointer, clipRect: pointer): void {.importc: "QWebElement_render2".}
proc fcQWebElement_attribute2(self: pointer, name: struct_miqt_string, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attribute2".}
proc fcQWebElement_attributeNS3(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attributeNS3".}
proc fcQWebElement_attributeNames1(self: pointer, namespaceUri: struct_miqt_string): struct_miqt_array {.importc: "QWebElement_attributeNames1".}
proc fcQWebElement_new(): ptr cQWebElement {.importc: "QWebElement_new".}
proc fcQWebElement_new2(param1: pointer): ptr cQWebElement {.importc: "QWebElement_new2".}
proc fcQWebElementCollection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebElementCollection_operatorAssign".}
proc fcQWebElementCollection_operatorPlus(self: pointer, other: pointer): pointer {.importc: "QWebElementCollection_operatorPlus".}
proc fcQWebElementCollection_operatorPlusAssign(self: pointer, other: pointer): pointer {.importc: "QWebElementCollection_operatorPlusAssign".}
proc fcQWebElementCollection_append(self: pointer, collection: pointer): void {.importc: "QWebElementCollection_append".}
proc fcQWebElementCollection_count(self: pointer): cint {.importc: "QWebElementCollection_count".}
proc fcQWebElementCollection_at(self: pointer, i: cint): pointer {.importc: "QWebElementCollection_at".}
proc fcQWebElementCollection_operatorSubscript(self: pointer, i: cint): pointer {.importc: "QWebElementCollection_operatorSubscript".}
proc fcQWebElementCollection_first(self: pointer): pointer {.importc: "QWebElementCollection_first".}
proc fcQWebElementCollection_last(self: pointer): pointer {.importc: "QWebElementCollection_last".}
proc fcQWebElementCollection_toList(self: pointer): struct_miqt_array {.importc: "QWebElementCollection_toList".}
proc fcQWebElementCollection_begin(self: pointer): pointer {.importc: "QWebElementCollection_begin".}
proc fcQWebElementCollection_endX(self: pointer): pointer {.importc: "QWebElementCollection_end".}
proc fcQWebElementCollection_constBegin(self: pointer): pointer {.importc: "QWebElementCollection_constBegin".}
proc fcQWebElementCollection_constEnd(self: pointer): pointer {.importc: "QWebElementCollection_constEnd".}
proc fcQWebElementCollection_begin2(self: pointer): pointer {.importc: "QWebElementCollection_begin2".}
proc fcQWebElementCollection_end2(self: pointer): pointer {.importc: "QWebElementCollection_end2".}
proc fcQWebElementCollection_new(): ptr cQWebElementCollection {.importc: "QWebElementCollection_new".}
proc fcQWebElementCollection_new2(contextElement: pointer, query: struct_miqt_string): ptr cQWebElementCollection {.importc: "QWebElementCollection_new2".}
proc fcQWebElementCollection_new3(param1: pointer): ptr cQWebElementCollection {.importc: "QWebElementCollection_new3".}
proc fcQWebElementCollectionconst_iterator_operatorMultiply(self: pointer): pointer {.importc: "QWebElementCollection__const_iterator_operatorMultiply".}
proc fcQWebElementCollectionconst_iterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorEqual".}
proc fcQWebElementCollectionconst_iterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorNotEqual".}
proc fcQWebElementCollectionconst_iterator_operatorLesser(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorLesser".}
proc fcQWebElementCollectionconst_iterator_operatorLesserOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorLesserOrEqual".}
proc fcQWebElementCollectionconst_iterator_operatorGreater(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorGreater".}
proc fcQWebElementCollectionconst_iterator_operatorGreaterOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorGreaterOrEqual".}
proc fcQWebElementCollectionconst_iterator_operatorPlusPlus(self: pointer): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlusPlus".}
proc fcQWebElementCollectionconst_iterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlusPlusWithInt".}
proc fcQWebElementCollectionconst_iterator_operatorMinusMinus(self: pointer): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinusMinus".}
proc fcQWebElementCollectionconst_iterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinusMinusWithInt".}
proc fcQWebElementCollectionconst_iterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlusAssign".}
proc fcQWebElementCollectionconst_iterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinusAssign".}
proc fcQWebElementCollectionconst_iterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlus".}
proc fcQWebElementCollectionconst_iterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinus".}
proc fcQWebElementCollectionconst_iterator_operatorMinusWithQWebElementCollectionconstIterator(self: pointer, j: pointer): cint {.importc: "QWebElementCollection__const_iterator_operatorMinusWithQWebElementCollectionconstIterator".}
proc fcQWebElementCollectionconst_iterator_new(collection_x: pointer, index: cint): ptr cQWebElementCollectionconst_iterator {.importc: "QWebElementCollection__const_iterator_new".}
proc fcQWebElementCollectionconst_iterator_new2(o: pointer): ptr cQWebElementCollectionconst_iterator {.importc: "QWebElementCollection__const_iterator_new2".}
proc fcQWebElementCollectioniterator_operatorMultiply(self: pointer): pointer {.importc: "QWebElementCollection__iterator_operatorMultiply".}
proc fcQWebElementCollectioniterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorEqual".}
proc fcQWebElementCollectioniterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorNotEqual".}
proc fcQWebElementCollectioniterator_operatorLesser(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorLesser".}
proc fcQWebElementCollectioniterator_operatorLesserOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorLesserOrEqual".}
proc fcQWebElementCollectioniterator_operatorGreater(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorGreater".}
proc fcQWebElementCollectioniterator_operatorGreaterOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorGreaterOrEqual".}
proc fcQWebElementCollectioniterator_operatorPlusPlus(self: pointer): pointer {.importc: "QWebElementCollection__iterator_operatorPlusPlus".}
proc fcQWebElementCollectioniterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__iterator_operatorPlusPlusWithInt".}
proc fcQWebElementCollectioniterator_operatorMinusMinus(self: pointer): pointer {.importc: "QWebElementCollection__iterator_operatorMinusMinus".}
proc fcQWebElementCollectioniterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__iterator_operatorMinusMinusWithInt".}
proc fcQWebElementCollectioniterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorPlusAssign".}
proc fcQWebElementCollectioniterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorMinusAssign".}
proc fcQWebElementCollectioniterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorPlus".}
proc fcQWebElementCollectioniterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorMinus".}
proc fcQWebElementCollectioniterator_operatorMinusWithQWebElementCollectioniterator(self: pointer, j: pointer): cint {.importc: "QWebElementCollection__iterator_operatorMinusWithQWebElementCollectioniterator".}
proc fcQWebElementCollectioniterator_new(collection_x: pointer, index: cint): ptr cQWebElementCollectioniterator {.importc: "QWebElementCollection__iterator_new".}
proc fcQWebElementCollectioniterator_new2(o: pointer): ptr cQWebElementCollectioniterator {.importc: "QWebElementCollection__iterator_new2".}

proc operatorAssign*(self: gen_qwebelement_types.QWebElement, param1: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qwebelement_types.QWebElement, o: gen_qwebelement_types.QWebElement): bool =
  fcQWebElement_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qwebelement_types.QWebElement, o: gen_qwebelement_types.QWebElement): bool =
  fcQWebElement_operatorNotEqual(self.h, o.h)

proc isNull*(self: gen_qwebelement_types.QWebElement): bool =
  fcQWebElement_isNull(self.h)

proc findAll*(self: gen_qwebelement_types.QWebElement, selectorQuery: string): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebElement_findAll(self.h, struct_miqt_string(data: selectorQuery, len: csize_t(len(selectorQuery)))), owned: true)

proc findFirst*(self: gen_qwebelement_types.QWebElement, selectorQuery: string): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_findFirst(self.h, struct_miqt_string(data: selectorQuery, len: csize_t(len(selectorQuery)))), owned: true)

proc setPlainText*(self: gen_qwebelement_types.QWebElement, text: string): void =
  fcQWebElement_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc toPlainText*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOuterXml*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_setOuterXml(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc toOuterXml*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_toOuterXml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInnerXml*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_setInnerXml(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc toInnerXml*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_toInnerXml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAttribute*(self: gen_qwebelement_types.QWebElement, name: string, value: string): void =
  fcQWebElement_setAttribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc setAttributeNS*(self: gen_qwebelement_types.QWebElement, namespaceUri: string, name: string, value: string): void =
  fcQWebElement_setAttributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc attribute*(self: gen_qwebelement_types.QWebElement, name: string): string =
  let v_ms = fcQWebElement_attribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc attributeNS*(self: gen_qwebelement_types.QWebElement, namespaceUri: string, name: string): string =
  let v_ms = fcQWebElement_attributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasAttribute*(self: gen_qwebelement_types.QWebElement, name: string): bool =
  fcQWebElement_hasAttribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasAttributeNS*(self: gen_qwebelement_types.QWebElement, namespaceUri: string, name: string): bool =
  fcQWebElement_hasAttributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc removeAttribute*(self: gen_qwebelement_types.QWebElement, name: string): void =
  fcQWebElement_removeAttribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc removeAttributeNS*(self: gen_qwebelement_types.QWebElement, namespaceUri: string, name: string): void =
  fcQWebElement_removeAttributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasAttributes*(self: gen_qwebelement_types.QWebElement): bool =
  fcQWebElement_hasAttributes(self.h)

proc attributeNames*(self: gen_qwebelement_types.QWebElement): seq[string] =
  var v_ma = fcQWebElement_attributeNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc classes*(self: gen_qwebelement_types.QWebElement): seq[string] =
  var v_ma = fcQWebElement_classes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc hasClass*(self: gen_qwebelement_types.QWebElement, name: string): bool =
  fcQWebElement_hasClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc addClass*(self: gen_qwebelement_types.QWebElement, name: string): void =
  fcQWebElement_addClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc removeClass*(self: gen_qwebelement_types.QWebElement, name: string): void =
  fcQWebElement_removeClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc toggleClass*(self: gen_qwebelement_types.QWebElement, name: string): void =
  fcQWebElement_toggleClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasFocus*(self: gen_qwebelement_types.QWebElement): bool =
  fcQWebElement_hasFocus(self.h)

proc setFocus*(self: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_setFocus(self.h)

proc geometry*(self: gen_qwebelement_types.QWebElement): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWebElement_geometry(self.h), owned: true)

proc tagName*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_tagName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc prefix*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_prefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc localName*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_localName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc namespaceUri*(self: gen_qwebelement_types.QWebElement): string =
  let v_ms = fcQWebElement_namespaceUri(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc parent*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_parent(self.h), owned: true)

proc firstChild*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_firstChild(self.h), owned: true)

proc lastChild*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_lastChild(self.h), owned: true)

proc nextSibling*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_nextSibling(self.h), owned: true)

proc previousSibling*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_previousSibling(self.h), owned: true)

proc document*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_document(self.h), owned: true)

proc appendInside*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_appendInside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc appendInside*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_appendInsideWithElement(self.h, element.h)

proc prependInside*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_prependInside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc prependInside*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_prependInsideWithElement(self.h, element.h)

proc appendOutside*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_appendOutside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc appendOutside*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_appendOutsideWithElement(self.h, element.h)

proc prependOutside*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_prependOutside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc prependOutside*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_prependOutsideWithElement(self.h, element.h)

proc encloseContentsWith*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_encloseContentsWith(self.h, element.h)

proc encloseContentsWith*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_encloseContentsWithWithMarkup(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc encloseWith*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_encloseWith(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc encloseWith*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_encloseWithWithElement(self.h, element.h)

proc replace*(self: gen_qwebelement_types.QWebElement, markup: string): void =
  fcQWebElement_replace(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc replace*(self: gen_qwebelement_types.QWebElement, element: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_replaceWithElement(self.h, element.h)

proc clone*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_clone(self.h), owned: true)

proc takeFromDocument*(self: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_takeFromDocument(self.h), owned: false)

proc removeFromDocument*(self: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_removeFromDocument(self.h)

proc removeAllChildren*(self: gen_qwebelement_types.QWebElement): void =
  fcQWebElement_removeAllChildren(self.h)

proc evaluateJavaScript*(self: gen_qwebelement_types.QWebElement, scriptSource: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebElement_evaluateJavaScript(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource)))), owned: true)

proc styleProperty*(self: gen_qwebelement_types.QWebElement, name: string, strategy: cint): string =
  let v_ms = fcQWebElement_styleProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), cint(strategy))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleProperty*(self: gen_qwebelement_types.QWebElement, name: string, value: string): void =
  fcQWebElement_setStyleProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc render*(self: gen_qwebelement_types.QWebElement, painter: gen_qpainter_types.QPainter): void =
  fcQWebElement_render(self.h, painter.h)

proc render*(self: gen_qwebelement_types.QWebElement, painter: gen_qpainter_types.QPainter, clipRect: gen_qrect_types.QRect): void =
  fcQWebElement_render2(self.h, painter.h, clipRect.h)

proc attribute*(self: gen_qwebelement_types.QWebElement, name: string, defaultValue: string): string =
  let v_ms = fcQWebElement_attribute2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc attributeNS*(self: gen_qwebelement_types.QWebElement, namespaceUri: string, name: string, defaultValue: string): string =
  let v_ms = fcQWebElement_attributeNS3(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc attributeNames*(self: gen_qwebelement_types.QWebElement, namespaceUri: string): seq[string] =
  var v_ma = fcQWebElement_attributeNames1(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_new(), owned: true)

proc create*(T: type gen_qwebelement_types.QWebElement,
    param1: gen_qwebelement_types.QWebElement): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElement_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qwebelement_types.QWebElementCollection, param1: gen_qwebelement_types.QWebElementCollection): void =
  fcQWebElementCollection_operatorAssign(self.h, param1.h)

proc operatorPlus*(self: gen_qwebelement_types.QWebElementCollection, other: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebElementCollection_operatorPlus(self.h, other.h), owned: true)

proc operatorPlusAssign*(self: gen_qwebelement_types.QWebElementCollection, other: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebElementCollection_operatorPlusAssign(self.h, other.h), owned: false)

proc append*(self: gen_qwebelement_types.QWebElementCollection, collection: gen_qwebelement_types.QWebElementCollection): void =
  fcQWebElementCollection_append(self.h, collection.h)

proc count*(self: gen_qwebelement_types.QWebElementCollection): cint =
  fcQWebElementCollection_count(self.h)

proc at*(self: gen_qwebelement_types.QWebElementCollection, i: cint): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElementCollection_at(self.h, i), owned: true)

proc operatorSubscript*(self: gen_qwebelement_types.QWebElementCollection, i: cint): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElementCollection_operatorSubscript(self.h, i), owned: true)

proc first*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElementCollection_first(self.h), owned: true)

proc last*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElementCollection_last(self.h), owned: true)

proc toList*(self: gen_qwebelement_types.QWebElementCollection): seq[gen_qwebelement_types.QWebElement] =
  var v_ma = fcQWebElementCollection_toList(self.h)
  var vx_ret = newSeq[gen_qwebelement_types.QWebElement](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebelement_types.QWebElement(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc begin*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollection_begin(self.h), owned: true)

proc endX*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollection_endX(self.h), owned: true)

proc constBegin*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollection_constBegin(self.h), owned: true)

proc constEnd*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollection_constEnd(self.h), owned: true)

proc begin2*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollection_begin2(self.h), owned: true)

proc endX2*(self: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollection_end2(self.h), owned: true)

proc create*(T: type gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebElementCollection_new(), owned: true)

proc create*(T: type gen_qwebelement_types.QWebElementCollection,
    contextElement: gen_qwebelement_types.QWebElement, query: string): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebElementCollection_new2(contextElement.h, struct_miqt_string(data: query, len: csize_t(len(query)))), owned: true)

proc create*(T: type gen_qwebelement_types.QWebElementCollection,
    param1: gen_qwebelement_types.QWebElementCollection): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebElementCollection_new3(param1.h), owned: true)

proc operatorMultiply*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElementCollectionconst_iterator_operatorMultiply(self.h), owned: true)

proc operatorEqual*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, o: gen_qwebelement_types.QWebElementCollectionconst_iterator): bool =
  fcQWebElementCollectionconst_iterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, o: gen_qwebelement_types.QWebElementCollectionconst_iterator): bool =
  fcQWebElementCollectionconst_iterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, o: gen_qwebelement_types.QWebElementCollectionconst_iterator): bool =
  fcQWebElementCollectionconst_iterator_operatorLesser(self.h, o.h)

proc operatorLesserOrEqual*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, o: gen_qwebelement_types.QWebElementCollectionconst_iterator): bool =
  fcQWebElementCollectionconst_iterator_operatorLesserOrEqual(self.h, o.h)

proc operatorGreater*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, o: gen_qwebelement_types.QWebElementCollectionconst_iterator): bool =
  fcQWebElementCollectionconst_iterator_operatorGreater(self.h, o.h)

proc operatorGreaterOrEqual*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, o: gen_qwebelement_types.QWebElementCollectionconst_iterator): bool =
  fcQWebElementCollectionconst_iterator_operatorGreaterOrEqual(self.h, o.h)

proc operatorPlusPlus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, param1: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, param1: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, j: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, j: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, j: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, j: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qwebelement_types.QWebElementCollectionconst_iterator, j: gen_qwebelement_types.QWebElementCollectionconst_iterator): cint =
  fcQWebElementCollectionconst_iterator_operatorMinusWithQWebElementCollectionconstIterator(self.h, j.h)

proc create*(T: type gen_qwebelement_types.QWebElementCollectionconst_iterator,
    collection_x: gen_qwebelement_types.QWebElementCollection, index: cint): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_new(collection_x.h, index), owned: true)

proc create*(T: type gen_qwebelement_types.QWebElementCollectionconst_iterator,
    o: gen_qwebelement_types.QWebElementCollectionconst_iterator): gen_qwebelement_types.QWebElementCollectionconst_iterator =
  gen_qwebelement_types.QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_new2(o.h), owned: true)

proc operatorMultiply*(self: gen_qwebelement_types.QWebElementCollectioniterator): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebElementCollectioniterator_operatorMultiply(self.h), owned: true)

proc operatorEqual*(self: gen_qwebelement_types.QWebElementCollectioniterator, o: gen_qwebelement_types.QWebElementCollectioniterator): bool =
  fcQWebElementCollectioniterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qwebelement_types.QWebElementCollectioniterator, o: gen_qwebelement_types.QWebElementCollectioniterator): bool =
  fcQWebElementCollectioniterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qwebelement_types.QWebElementCollectioniterator, o: gen_qwebelement_types.QWebElementCollectioniterator): bool =
  fcQWebElementCollectioniterator_operatorLesser(self.h, o.h)

proc operatorLesserOrEqual*(self: gen_qwebelement_types.QWebElementCollectioniterator, o: gen_qwebelement_types.QWebElementCollectioniterator): bool =
  fcQWebElementCollectioniterator_operatorLesserOrEqual(self.h, o.h)

proc operatorGreater*(self: gen_qwebelement_types.QWebElementCollectioniterator, o: gen_qwebelement_types.QWebElementCollectioniterator): bool =
  fcQWebElementCollectioniterator_operatorGreater(self.h, o.h)

proc operatorGreaterOrEqual*(self: gen_qwebelement_types.QWebElementCollectioniterator, o: gen_qwebelement_types.QWebElementCollectioniterator): bool =
  fcQWebElementCollectioniterator_operatorGreaterOrEqual(self.h, o.h)

proc operatorPlusPlus*(self: gen_qwebelement_types.QWebElementCollectioniterator): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qwebelement_types.QWebElementCollectioniterator, param1: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qwebelement_types.QWebElementCollectioniterator): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qwebelement_types.QWebElementCollectioniterator, param1: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qwebelement_types.QWebElementCollectioniterator, j: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qwebelement_types.QWebElementCollectioniterator, j: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qwebelement_types.QWebElementCollectioniterator, j: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qwebelement_types.QWebElementCollectioniterator, j: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qwebelement_types.QWebElementCollectioniterator, j: gen_qwebelement_types.QWebElementCollectioniterator): cint =
  fcQWebElementCollectioniterator_operatorMinusWithQWebElementCollectioniterator(self.h, j.h)

proc create*(T: type gen_qwebelement_types.QWebElementCollectioniterator,
    collection_x: gen_qwebelement_types.QWebElementCollection, index: cint): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_new(collection_x.h, index), owned: true)

proc create*(T: type gen_qwebelement_types.QWebElementCollectioniterator,
    o: gen_qwebelement_types.QWebElementCollectioniterator): gen_qwebelement_types.QWebElementCollectioniterator =
  gen_qwebelement_types.QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_new2(o.h), owned: true)

