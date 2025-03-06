import ./Qt5Core_libs

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


type QXmlStreamReaderTokenTypeEnum* = distinct cint
template NoToken*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 0
template Invalid*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 1
template StartDocument*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 2
template EndDocument*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 3
template StartElement*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 4
template EndElement*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 5
template Characters*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 6
template Comment*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 7
template DTD*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 8
template EntityReference*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 9
template ProcessingInstruction*(_: type QXmlStreamReaderTokenTypeEnum): untyped = 10


type QXmlStreamReaderReadElementTextBehaviourEnum* = distinct cint
template ErrorOnUnexpectedElement*(_: type QXmlStreamReaderReadElementTextBehaviourEnum): untyped = 0
template IncludeChildElements*(_: type QXmlStreamReaderReadElementTextBehaviourEnum): untyped = 1
template SkipChildElements*(_: type QXmlStreamReaderReadElementTextBehaviourEnum): untyped = 2


type QXmlStreamReaderErrorEnum* = distinct cint
template NoError*(_: type QXmlStreamReaderErrorEnum): untyped = 0
template UnexpectedElementError*(_: type QXmlStreamReaderErrorEnum): untyped = 1
template CustomError*(_: type QXmlStreamReaderErrorEnum): untyped = 2
template NotWellFormedError*(_: type QXmlStreamReaderErrorEnum): untyped = 3
template PrematureEndOfDocumentError*(_: type QXmlStreamReaderErrorEnum): untyped = 4


import ./gen_qxmlstream_types
export gen_qxmlstream_types

import
  ./gen_qiodevice_types,
  ./gen_qtextcodec_types
export
  gen_qiodevice_types,
  gen_qtextcodec_types

type cQXmlStreamStringRef*{.exportc: "QXmlStreamStringRef", incompleteStruct.} = object
type cQXmlStreamAttribute*{.exportc: "QXmlStreamAttribute", incompleteStruct.} = object
type cQXmlStreamNamespaceDeclaration*{.exportc: "QXmlStreamNamespaceDeclaration", incompleteStruct.} = object
type cQXmlStreamNotationDeclaration*{.exportc: "QXmlStreamNotationDeclaration", incompleteStruct.} = object
type cQXmlStreamEntityDeclaration*{.exportc: "QXmlStreamEntityDeclaration", incompleteStruct.} = object
type cQXmlStreamEntityResolver*{.exportc: "QXmlStreamEntityResolver", incompleteStruct.} = object
type cQXmlStreamReader*{.exportc: "QXmlStreamReader", incompleteStruct.} = object
type cQXmlStreamWriter*{.exportc: "QXmlStreamWriter", incompleteStruct.} = object

proc fcQXmlStreamStringRef_operatorAssign(self: pointer, other: pointer): void {.importc: "QXmlStreamStringRef_operatorAssign".}
proc fcQXmlStreamStringRef_swap(self: pointer, other: pointer): void {.importc: "QXmlStreamStringRef_swap".}
proc fcQXmlStreamStringRef_clear(self: pointer, ): void {.importc: "QXmlStreamStringRef_clear".}
proc fcQXmlStreamStringRef_string(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamStringRef_string".}
proc fcQXmlStreamStringRef_position(self: pointer, ): cint {.importc: "QXmlStreamStringRef_position".}
proc fcQXmlStreamStringRef_size(self: pointer, ): cint {.importc: "QXmlStreamStringRef_size".}
proc fcQXmlStreamStringRef_new(): ptr cQXmlStreamStringRef {.importc: "QXmlStreamStringRef_new".}
proc fcQXmlStreamStringRef_new2(aString: struct_miqt_string): ptr cQXmlStreamStringRef {.importc: "QXmlStreamStringRef_new2".}
proc fcQXmlStreamStringRef_new3(other: pointer): ptr cQXmlStreamStringRef {.importc: "QXmlStreamStringRef_new3".}
proc fcQXmlStreamAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QXmlStreamAttribute_operatorAssign".}
proc fcQXmlStreamAttribute_isDefault(self: pointer, ): bool {.importc: "QXmlStreamAttribute_isDefault".}
proc fcQXmlStreamAttribute_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamAttribute_operatorEqual".}
proc fcQXmlStreamAttribute_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamAttribute_operatorNotEqual".}
proc fcQXmlStreamAttribute_new(): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new".}
proc fcQXmlStreamAttribute_new2(qualifiedName: struct_miqt_string, value: struct_miqt_string): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new2".}
proc fcQXmlStreamAttribute_new3(namespaceUri: struct_miqt_string, name: struct_miqt_string, value: struct_miqt_string): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new3".}
proc fcQXmlStreamAttribute_new4(param1: pointer): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new4".}
proc fcQXmlStreamNamespaceDeclaration_operatorAssign(self: pointer, param1: pointer): void {.importc: "QXmlStreamNamespaceDeclaration_operatorAssign".}
proc fcQXmlStreamNamespaceDeclaration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNamespaceDeclaration_operatorEqual".}
proc fcQXmlStreamNamespaceDeclaration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNamespaceDeclaration_operatorNotEqual".}
proc fcQXmlStreamNamespaceDeclaration_new(): ptr cQXmlStreamNamespaceDeclaration {.importc: "QXmlStreamNamespaceDeclaration_new".}
proc fcQXmlStreamNamespaceDeclaration_new2(prefix: struct_miqt_string, namespaceUri: struct_miqt_string): ptr cQXmlStreamNamespaceDeclaration {.importc: "QXmlStreamNamespaceDeclaration_new2".}
proc fcQXmlStreamNamespaceDeclaration_new3(param1: pointer): ptr cQXmlStreamNamespaceDeclaration {.importc: "QXmlStreamNamespaceDeclaration_new3".}
proc fcQXmlStreamNotationDeclaration_operatorAssign(self: pointer, param1: pointer): void {.importc: "QXmlStreamNotationDeclaration_operatorAssign".}
proc fcQXmlStreamNotationDeclaration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNotationDeclaration_operatorEqual".}
proc fcQXmlStreamNotationDeclaration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNotationDeclaration_operatorNotEqual".}
proc fcQXmlStreamNotationDeclaration_new(): ptr cQXmlStreamNotationDeclaration {.importc: "QXmlStreamNotationDeclaration_new".}
proc fcQXmlStreamNotationDeclaration_new2(param1: pointer): ptr cQXmlStreamNotationDeclaration {.importc: "QXmlStreamNotationDeclaration_new2".}
proc fcQXmlStreamEntityDeclaration_operatorAssign(self: pointer, param1: pointer): void {.importc: "QXmlStreamEntityDeclaration_operatorAssign".}
proc fcQXmlStreamEntityDeclaration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamEntityDeclaration_operatorEqual".}
proc fcQXmlStreamEntityDeclaration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamEntityDeclaration_operatorNotEqual".}
proc fcQXmlStreamEntityDeclaration_new(): ptr cQXmlStreamEntityDeclaration {.importc: "QXmlStreamEntityDeclaration_new".}
proc fcQXmlStreamEntityDeclaration_new2(param1: pointer): ptr cQXmlStreamEntityDeclaration {.importc: "QXmlStreamEntityDeclaration_new2".}
proc fcQXmlStreamEntityResolver_resolveEntity(self: pointer, publicId: struct_miqt_string, systemId: struct_miqt_string): struct_miqt_string {.importc: "QXmlStreamEntityResolver_resolveEntity".}
proc fcQXmlStreamEntityResolver_resolveUndeclaredEntity(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QXmlStreamEntityResolver_resolveUndeclaredEntity".}
proc fcQXmlStreamReader_setDevice(self: pointer, device: pointer): void {.importc: "QXmlStreamReader_setDevice".}
proc fcQXmlStreamReader_device(self: pointer, ): pointer {.importc: "QXmlStreamReader_device".}
proc fcQXmlStreamReader_addData(self: pointer, data: struct_miqt_string): void {.importc: "QXmlStreamReader_addData".}
proc fcQXmlStreamReader_addDataWithData(self: pointer, data: struct_miqt_string): void {.importc: "QXmlStreamReader_addDataWithData".}
proc fcQXmlStreamReader_addData2(self: pointer, data: cstring): void {.importc: "QXmlStreamReader_addData2".}
proc fcQXmlStreamReader_clear(self: pointer, ): void {.importc: "QXmlStreamReader_clear".}
proc fcQXmlStreamReader_atEnd(self: pointer, ): bool {.importc: "QXmlStreamReader_atEnd".}
proc fcQXmlStreamReader_readNext(self: pointer, ): cint {.importc: "QXmlStreamReader_readNext".}
proc fcQXmlStreamReader_readNextStartElement(self: pointer, ): bool {.importc: "QXmlStreamReader_readNextStartElement".}
proc fcQXmlStreamReader_skipCurrentElement(self: pointer, ): void {.importc: "QXmlStreamReader_skipCurrentElement".}
proc fcQXmlStreamReader_tokenType(self: pointer, ): cint {.importc: "QXmlStreamReader_tokenType".}
proc fcQXmlStreamReader_tokenString(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamReader_tokenString".}
proc fcQXmlStreamReader_setNamespaceProcessing(self: pointer, namespaceProcessing: bool): void {.importc: "QXmlStreamReader_setNamespaceProcessing".}
proc fcQXmlStreamReader_namespaceProcessing(self: pointer, ): bool {.importc: "QXmlStreamReader_namespaceProcessing".}
proc fcQXmlStreamReader_isStartDocument(self: pointer, ): bool {.importc: "QXmlStreamReader_isStartDocument".}
proc fcQXmlStreamReader_isEndDocument(self: pointer, ): bool {.importc: "QXmlStreamReader_isEndDocument".}
proc fcQXmlStreamReader_isStartElement(self: pointer, ): bool {.importc: "QXmlStreamReader_isStartElement".}
proc fcQXmlStreamReader_isEndElement(self: pointer, ): bool {.importc: "QXmlStreamReader_isEndElement".}
proc fcQXmlStreamReader_isCharacters(self: pointer, ): bool {.importc: "QXmlStreamReader_isCharacters".}
proc fcQXmlStreamReader_isWhitespace(self: pointer, ): bool {.importc: "QXmlStreamReader_isWhitespace".}
proc fcQXmlStreamReader_isCDATA(self: pointer, ): bool {.importc: "QXmlStreamReader_isCDATA".}
proc fcQXmlStreamReader_isComment(self: pointer, ): bool {.importc: "QXmlStreamReader_isComment".}
proc fcQXmlStreamReader_isDTD(self: pointer, ): bool {.importc: "QXmlStreamReader_isDTD".}
proc fcQXmlStreamReader_isEntityReference(self: pointer, ): bool {.importc: "QXmlStreamReader_isEntityReference".}
proc fcQXmlStreamReader_isProcessingInstruction(self: pointer, ): bool {.importc: "QXmlStreamReader_isProcessingInstruction".}
proc fcQXmlStreamReader_isStandaloneDocument(self: pointer, ): bool {.importc: "QXmlStreamReader_isStandaloneDocument".}
proc fcQXmlStreamReader_lineNumber(self: pointer, ): clonglong {.importc: "QXmlStreamReader_lineNumber".}
proc fcQXmlStreamReader_columnNumber(self: pointer, ): clonglong {.importc: "QXmlStreamReader_columnNumber".}
proc fcQXmlStreamReader_characterOffset(self: pointer, ): clonglong {.importc: "QXmlStreamReader_characterOffset".}
proc fcQXmlStreamReader_readElementText(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamReader_readElementText".}
proc fcQXmlStreamReader_namespaceDeclarations(self: pointer, ): struct_miqt_array {.importc: "QXmlStreamReader_namespaceDeclarations".}
proc fcQXmlStreamReader_addExtraNamespaceDeclaration(self: pointer, extraNamespaceDeclaraction: pointer): void {.importc: "QXmlStreamReader_addExtraNamespaceDeclaration".}
proc fcQXmlStreamReader_addExtraNamespaceDeclarations(self: pointer, extraNamespaceDeclaractions: struct_miqt_array): void {.importc: "QXmlStreamReader_addExtraNamespaceDeclarations".}
proc fcQXmlStreamReader_notationDeclarations(self: pointer, ): struct_miqt_array {.importc: "QXmlStreamReader_notationDeclarations".}
proc fcQXmlStreamReader_entityDeclarations(self: pointer, ): struct_miqt_array {.importc: "QXmlStreamReader_entityDeclarations".}
proc fcQXmlStreamReader_entityExpansionLimit(self: pointer, ): cint {.importc: "QXmlStreamReader_entityExpansionLimit".}
proc fcQXmlStreamReader_setEntityExpansionLimit(self: pointer, limit: cint): void {.importc: "QXmlStreamReader_setEntityExpansionLimit".}
proc fcQXmlStreamReader_raiseError(self: pointer, ): void {.importc: "QXmlStreamReader_raiseError".}
proc fcQXmlStreamReader_errorString(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamReader_errorString".}
proc fcQXmlStreamReader_error(self: pointer, ): cint {.importc: "QXmlStreamReader_error".}
proc fcQXmlStreamReader_hasError(self: pointer, ): bool {.importc: "QXmlStreamReader_hasError".}
proc fcQXmlStreamReader_setEntityResolver(self: pointer, resolver: pointer): void {.importc: "QXmlStreamReader_setEntityResolver".}
proc fcQXmlStreamReader_entityResolver(self: pointer, ): pointer {.importc: "QXmlStreamReader_entityResolver".}
proc fcQXmlStreamReader_readElementText1(self: pointer, behaviour: cint): struct_miqt_string {.importc: "QXmlStreamReader_readElementText1".}
proc fcQXmlStreamReader_raiseError1(self: pointer, message: struct_miqt_string): void {.importc: "QXmlStreamReader_raiseError1".}
proc fcQXmlStreamReader_new(): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new".}
proc fcQXmlStreamReader_new2(device: pointer): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new2".}
proc fcQXmlStreamReader_new3(data: struct_miqt_string): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new3".}
proc fcQXmlStreamReader_new4(data: struct_miqt_string): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new4".}
proc fcQXmlStreamReader_new5(data: cstring): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new5".}
proc fcQXmlStreamWriter_setDevice(self: pointer, device: pointer): void {.importc: "QXmlStreamWriter_setDevice".}
proc fcQXmlStreamWriter_device(self: pointer, ): pointer {.importc: "QXmlStreamWriter_device".}
proc fcQXmlStreamWriter_setCodec(self: pointer, codec: pointer): void {.importc: "QXmlStreamWriter_setCodec".}
proc fcQXmlStreamWriter_setCodecWithCodecName(self: pointer, codecName: cstring): void {.importc: "QXmlStreamWriter_setCodecWithCodecName".}
proc fcQXmlStreamWriter_codec(self: pointer, ): pointer {.importc: "QXmlStreamWriter_codec".}
proc fcQXmlStreamWriter_setAutoFormatting(self: pointer, autoFormatting: bool): void {.importc: "QXmlStreamWriter_setAutoFormatting".}
proc fcQXmlStreamWriter_autoFormatting(self: pointer, ): bool {.importc: "QXmlStreamWriter_autoFormatting".}
proc fcQXmlStreamWriter_setAutoFormattingIndent(self: pointer, spacesOrTabs: cint): void {.importc: "QXmlStreamWriter_setAutoFormattingIndent".}
proc fcQXmlStreamWriter_autoFormattingIndent(self: pointer, ): cint {.importc: "QXmlStreamWriter_autoFormattingIndent".}
proc fcQXmlStreamWriter_writeAttribute(self: pointer, qualifiedName: struct_miqt_string, value: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeAttribute".}
proc fcQXmlStreamWriter_writeAttribute2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeAttribute2".}
proc fcQXmlStreamWriter_writeAttributeWithAttribute(self: pointer, attribute: pointer): void {.importc: "QXmlStreamWriter_writeAttributeWithAttribute".}
proc fcQXmlStreamWriter_writeCDATA(self: pointer, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeCDATA".}
proc fcQXmlStreamWriter_writeCharacters(self: pointer, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeCharacters".}
proc fcQXmlStreamWriter_writeComment(self: pointer, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeComment".}
proc fcQXmlStreamWriter_writeDTD(self: pointer, dtd: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeDTD".}
proc fcQXmlStreamWriter_writeEmptyElement(self: pointer, qualifiedName: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeEmptyElement".}
proc fcQXmlStreamWriter_writeEmptyElement2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeEmptyElement2".}
proc fcQXmlStreamWriter_writeTextElement(self: pointer, qualifiedName: struct_miqt_string, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeTextElement".}
proc fcQXmlStreamWriter_writeTextElement2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeTextElement2".}
proc fcQXmlStreamWriter_writeEndDocument(self: pointer, ): void {.importc: "QXmlStreamWriter_writeEndDocument".}
proc fcQXmlStreamWriter_writeEndElement(self: pointer, ): void {.importc: "QXmlStreamWriter_writeEndElement".}
proc fcQXmlStreamWriter_writeEntityReference(self: pointer, name: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeEntityReference".}
proc fcQXmlStreamWriter_writeNamespace(self: pointer, namespaceUri: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeNamespace".}
proc fcQXmlStreamWriter_writeDefaultNamespace(self: pointer, namespaceUri: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeDefaultNamespace".}
proc fcQXmlStreamWriter_writeProcessingInstruction(self: pointer, target: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeProcessingInstruction".}
proc fcQXmlStreamWriter_writeStartDocument(self: pointer, ): void {.importc: "QXmlStreamWriter_writeStartDocument".}
proc fcQXmlStreamWriter_writeStartDocumentWithVersion(self: pointer, version: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeStartDocumentWithVersion".}
proc fcQXmlStreamWriter_writeStartDocument2(self: pointer, version: struct_miqt_string, standalone: bool): void {.importc: "QXmlStreamWriter_writeStartDocument2".}
proc fcQXmlStreamWriter_writeStartElement(self: pointer, qualifiedName: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeStartElement".}
proc fcQXmlStreamWriter_writeStartElement2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeStartElement2".}
proc fcQXmlStreamWriter_writeCurrentToken(self: pointer, reader: pointer): void {.importc: "QXmlStreamWriter_writeCurrentToken".}
proc fcQXmlStreamWriter_hasError(self: pointer, ): bool {.importc: "QXmlStreamWriter_hasError".}
proc fcQXmlStreamWriter_writeNamespace2(self: pointer, namespaceUri: struct_miqt_string, prefix: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeNamespace2".}
proc fcQXmlStreamWriter_writeProcessingInstruction2(self: pointer, target: struct_miqt_string, data: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeProcessingInstruction2".}
proc fcQXmlStreamWriter_new(): ptr cQXmlStreamWriter {.importc: "QXmlStreamWriter_new".}
proc fcQXmlStreamWriter_new2(device: pointer): ptr cQXmlStreamWriter {.importc: "QXmlStreamWriter_new2".}

proc operatorAssign*(self: gen_qxmlstream_types.QXmlStreamStringRef, other: gen_qxmlstream_types.QXmlStreamStringRef): void =
  fcQXmlStreamStringRef_operatorAssign(self.h, other.h)

proc swap*(self: gen_qxmlstream_types.QXmlStreamStringRef, other: gen_qxmlstream_types.QXmlStreamStringRef): void =
  fcQXmlStreamStringRef_swap(self.h, other.h)

proc clear*(self: gen_qxmlstream_types.QXmlStreamStringRef, ): void =
  fcQXmlStreamStringRef_clear(self.h)

proc string*(self: gen_qxmlstream_types.QXmlStreamStringRef, ): string =
  let v_ms = fcQXmlStreamStringRef_string(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qxmlstream_types.QXmlStreamStringRef, ): cint =
  fcQXmlStreamStringRef_position(self.h)

proc size*(self: gen_qxmlstream_types.QXmlStreamStringRef, ): cint =
  fcQXmlStreamStringRef_size(self.h)

proc create*(T: type gen_qxmlstream_types.QXmlStreamStringRef): gen_qxmlstream_types.QXmlStreamStringRef =
  gen_qxmlstream_types.QXmlStreamStringRef(h: fcQXmlStreamStringRef_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamStringRef,
    aString: string): gen_qxmlstream_types.QXmlStreamStringRef =
  gen_qxmlstream_types.QXmlStreamStringRef(h: fcQXmlStreamStringRef_new2(struct_miqt_string(data: aString, len: csize_t(len(aString)))), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamStringRef,
    other: gen_qxmlstream_types.QXmlStreamStringRef): gen_qxmlstream_types.QXmlStreamStringRef =
  gen_qxmlstream_types.QXmlStreamStringRef(h: fcQXmlStreamStringRef_new3(other.h), owned: true)

proc operatorAssign*(self: gen_qxmlstream_types.QXmlStreamAttribute, param1: gen_qxmlstream_types.QXmlStreamAttribute): void =
  fcQXmlStreamAttribute_operatorAssign(self.h, param1.h)

proc isDefault*(self: gen_qxmlstream_types.QXmlStreamAttribute, ): bool =
  fcQXmlStreamAttribute_isDefault(self.h)

proc operatorEqual*(self: gen_qxmlstream_types.QXmlStreamAttribute, other: gen_qxmlstream_types.QXmlStreamAttribute): bool =
  fcQXmlStreamAttribute_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qxmlstream_types.QXmlStreamAttribute, other: gen_qxmlstream_types.QXmlStreamAttribute): bool =
  fcQXmlStreamAttribute_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qxmlstream_types.QXmlStreamAttribute): gen_qxmlstream_types.QXmlStreamAttribute =
  gen_qxmlstream_types.QXmlStreamAttribute(h: fcQXmlStreamAttribute_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamAttribute,
    qualifiedName: string, value: string): gen_qxmlstream_types.QXmlStreamAttribute =
  gen_qxmlstream_types.QXmlStreamAttribute(h: fcQXmlStreamAttribute_new2(struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))), struct_miqt_string(data: value, len: csize_t(len(value)))), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamAttribute,
    namespaceUri: string, name: string, value: string): gen_qxmlstream_types.QXmlStreamAttribute =
  gen_qxmlstream_types.QXmlStreamAttribute(h: fcQXmlStreamAttribute_new3(struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value)))), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamAttribute,
    param1: gen_qxmlstream_types.QXmlStreamAttribute): gen_qxmlstream_types.QXmlStreamAttribute =
  gen_qxmlstream_types.QXmlStreamAttribute(h: fcQXmlStreamAttribute_new4(param1.h), owned: true)

proc operatorAssign*(self: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration, param1: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration): void =
  fcQXmlStreamNamespaceDeclaration_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration, other: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration): bool =
  fcQXmlStreamNamespaceDeclaration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration, other: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration): bool =
  fcQXmlStreamNamespaceDeclaration_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qxmlstream_types.QXmlStreamNamespaceDeclaration): gen_qxmlstream_types.QXmlStreamNamespaceDeclaration =
  gen_qxmlstream_types.QXmlStreamNamespaceDeclaration(h: fcQXmlStreamNamespaceDeclaration_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamNamespaceDeclaration,
    prefix: string, namespaceUri: string): gen_qxmlstream_types.QXmlStreamNamespaceDeclaration =
  gen_qxmlstream_types.QXmlStreamNamespaceDeclaration(h: fcQXmlStreamNamespaceDeclaration_new2(struct_miqt_string(data: prefix, len: csize_t(len(prefix))), struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri)))), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamNamespaceDeclaration,
    param1: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration): gen_qxmlstream_types.QXmlStreamNamespaceDeclaration =
  gen_qxmlstream_types.QXmlStreamNamespaceDeclaration(h: fcQXmlStreamNamespaceDeclaration_new3(param1.h), owned: true)

proc operatorAssign*(self: gen_qxmlstream_types.QXmlStreamNotationDeclaration, param1: gen_qxmlstream_types.QXmlStreamNotationDeclaration): void =
  fcQXmlStreamNotationDeclaration_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qxmlstream_types.QXmlStreamNotationDeclaration, other: gen_qxmlstream_types.QXmlStreamNotationDeclaration): bool =
  fcQXmlStreamNotationDeclaration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qxmlstream_types.QXmlStreamNotationDeclaration, other: gen_qxmlstream_types.QXmlStreamNotationDeclaration): bool =
  fcQXmlStreamNotationDeclaration_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qxmlstream_types.QXmlStreamNotationDeclaration): gen_qxmlstream_types.QXmlStreamNotationDeclaration =
  gen_qxmlstream_types.QXmlStreamNotationDeclaration(h: fcQXmlStreamNotationDeclaration_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamNotationDeclaration,
    param1: gen_qxmlstream_types.QXmlStreamNotationDeclaration): gen_qxmlstream_types.QXmlStreamNotationDeclaration =
  gen_qxmlstream_types.QXmlStreamNotationDeclaration(h: fcQXmlStreamNotationDeclaration_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qxmlstream_types.QXmlStreamEntityDeclaration, param1: gen_qxmlstream_types.QXmlStreamEntityDeclaration): void =
  fcQXmlStreamEntityDeclaration_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qxmlstream_types.QXmlStreamEntityDeclaration, other: gen_qxmlstream_types.QXmlStreamEntityDeclaration): bool =
  fcQXmlStreamEntityDeclaration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qxmlstream_types.QXmlStreamEntityDeclaration, other: gen_qxmlstream_types.QXmlStreamEntityDeclaration): bool =
  fcQXmlStreamEntityDeclaration_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qxmlstream_types.QXmlStreamEntityDeclaration): gen_qxmlstream_types.QXmlStreamEntityDeclaration =
  gen_qxmlstream_types.QXmlStreamEntityDeclaration(h: fcQXmlStreamEntityDeclaration_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamEntityDeclaration,
    param1: gen_qxmlstream_types.QXmlStreamEntityDeclaration): gen_qxmlstream_types.QXmlStreamEntityDeclaration =
  gen_qxmlstream_types.QXmlStreamEntityDeclaration(h: fcQXmlStreamEntityDeclaration_new2(param1.h), owned: true)

proc resolveEntity*(self: gen_qxmlstream_types.QXmlStreamEntityResolver, publicId: string, systemId: string): string =
  let v_ms = fcQXmlStreamEntityResolver_resolveEntity(self.h, struct_miqt_string(data: publicId, len: csize_t(len(publicId))), struct_miqt_string(data: systemId, len: csize_t(len(systemId))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolveUndeclaredEntity*(self: gen_qxmlstream_types.QXmlStreamEntityResolver, name: string): string =
  let v_ms = fcQXmlStreamEntityResolver_resolveUndeclaredEntity(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDevice*(self: gen_qxmlstream_types.QXmlStreamReader, device: gen_qiodevice_types.QIODevice): void =
  fcQXmlStreamReader_setDevice(self.h, device.h)

proc device*(self: gen_qxmlstream_types.QXmlStreamReader, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQXmlStreamReader_device(self.h), owned: false)

proc addData*(self: gen_qxmlstream_types.QXmlStreamReader, data: seq[byte]): void =
  fcQXmlStreamReader_addData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addData*(self: gen_qxmlstream_types.QXmlStreamReader, data: string): void =
  fcQXmlStreamReader_addDataWithData(self.h, struct_miqt_string(data: data, len: csize_t(len(data))))

proc addData*(self: gen_qxmlstream_types.QXmlStreamReader, data: cstring): void =
  fcQXmlStreamReader_addData2(self.h, data)

proc clear*(self: gen_qxmlstream_types.QXmlStreamReader, ): void =
  fcQXmlStreamReader_clear(self.h)

proc atEnd*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_atEnd(self.h)

proc readNext*(self: gen_qxmlstream_types.QXmlStreamReader, ): cint =
  cint(fcQXmlStreamReader_readNext(self.h))

proc readNextStartElement*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_readNextStartElement(self.h)

proc skipCurrentElement*(self: gen_qxmlstream_types.QXmlStreamReader, ): void =
  fcQXmlStreamReader_skipCurrentElement(self.h)

proc tokenType*(self: gen_qxmlstream_types.QXmlStreamReader, ): cint =
  cint(fcQXmlStreamReader_tokenType(self.h))

proc tokenString*(self: gen_qxmlstream_types.QXmlStreamReader, ): string =
  let v_ms = fcQXmlStreamReader_tokenString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setNamespaceProcessing*(self: gen_qxmlstream_types.QXmlStreamReader, namespaceProcessing: bool): void =
  fcQXmlStreamReader_setNamespaceProcessing(self.h, namespaceProcessing)

proc namespaceProcessing*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_namespaceProcessing(self.h)

proc isStartDocument*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isStartDocument(self.h)

proc isEndDocument*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isEndDocument(self.h)

proc isStartElement*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isStartElement(self.h)

proc isEndElement*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isEndElement(self.h)

proc isCharacters*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isCharacters(self.h)

proc isWhitespace*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isWhitespace(self.h)

proc isCDATA*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isCDATA(self.h)

proc isComment*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isComment(self.h)

proc isDTD*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isDTD(self.h)

proc isEntityReference*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isEntityReference(self.h)

proc isProcessingInstruction*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isProcessingInstruction(self.h)

proc isStandaloneDocument*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_isStandaloneDocument(self.h)

proc lineNumber*(self: gen_qxmlstream_types.QXmlStreamReader, ): clonglong =
  fcQXmlStreamReader_lineNumber(self.h)

proc columnNumber*(self: gen_qxmlstream_types.QXmlStreamReader, ): clonglong =
  fcQXmlStreamReader_columnNumber(self.h)

proc characterOffset*(self: gen_qxmlstream_types.QXmlStreamReader, ): clonglong =
  fcQXmlStreamReader_characterOffset(self.h)

proc readElementText*(self: gen_qxmlstream_types.QXmlStreamReader, ): string =
  let v_ms = fcQXmlStreamReader_readElementText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc namespaceDeclarations*(self: gen_qxmlstream_types.QXmlStreamReader, ): seq[gen_qxmlstream_types.QXmlStreamNamespaceDeclaration] =
  var v_ma = fcQXmlStreamReader_namespaceDeclarations(self.h)
  var vx_ret = newSeq[gen_qxmlstream_types.QXmlStreamNamespaceDeclaration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qxmlstream_types.QXmlStreamNamespaceDeclaration(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc addExtraNamespaceDeclaration*(self: gen_qxmlstream_types.QXmlStreamReader, extraNamespaceDeclaraction: gen_qxmlstream_types.QXmlStreamNamespaceDeclaration): void =
  fcQXmlStreamReader_addExtraNamespaceDeclaration(self.h, extraNamespaceDeclaraction.h)

proc addExtraNamespaceDeclarations*(self: gen_qxmlstream_types.QXmlStreamReader, extraNamespaceDeclaractions: seq[gen_qxmlstream_types.QXmlStreamNamespaceDeclaration]): void =
  var extraNamespaceDeclaractions_CArray = newSeq[pointer](len(extraNamespaceDeclaractions))
  for i in 0..<len(extraNamespaceDeclaractions):
    extraNamespaceDeclaractions_CArray[i] = extraNamespaceDeclaractions[i].h

  fcQXmlStreamReader_addExtraNamespaceDeclarations(self.h, struct_miqt_array(len: csize_t(len(extraNamespaceDeclaractions)), data: if len(extraNamespaceDeclaractions) == 0: nil else: addr(extraNamespaceDeclaractions_CArray[0])))

proc notationDeclarations*(self: gen_qxmlstream_types.QXmlStreamReader, ): seq[gen_qxmlstream_types.QXmlStreamNotationDeclaration] =
  var v_ma = fcQXmlStreamReader_notationDeclarations(self.h)
  var vx_ret = newSeq[gen_qxmlstream_types.QXmlStreamNotationDeclaration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qxmlstream_types.QXmlStreamNotationDeclaration(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc entityDeclarations*(self: gen_qxmlstream_types.QXmlStreamReader, ): seq[gen_qxmlstream_types.QXmlStreamEntityDeclaration] =
  var v_ma = fcQXmlStreamReader_entityDeclarations(self.h)
  var vx_ret = newSeq[gen_qxmlstream_types.QXmlStreamEntityDeclaration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qxmlstream_types.QXmlStreamEntityDeclaration(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc entityExpansionLimit*(self: gen_qxmlstream_types.QXmlStreamReader, ): cint =
  fcQXmlStreamReader_entityExpansionLimit(self.h)

proc setEntityExpansionLimit*(self: gen_qxmlstream_types.QXmlStreamReader, limit: cint): void =
  fcQXmlStreamReader_setEntityExpansionLimit(self.h, limit)

proc raiseError*(self: gen_qxmlstream_types.QXmlStreamReader, ): void =
  fcQXmlStreamReader_raiseError(self.h)

proc errorString*(self: gen_qxmlstream_types.QXmlStreamReader, ): string =
  let v_ms = fcQXmlStreamReader_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc error*(self: gen_qxmlstream_types.QXmlStreamReader, ): cint =
  cint(fcQXmlStreamReader_error(self.h))

proc hasError*(self: gen_qxmlstream_types.QXmlStreamReader, ): bool =
  fcQXmlStreamReader_hasError(self.h)

proc setEntityResolver*(self: gen_qxmlstream_types.QXmlStreamReader, resolver: gen_qxmlstream_types.QXmlStreamEntityResolver): void =
  fcQXmlStreamReader_setEntityResolver(self.h, resolver.h)

proc entityResolver*(self: gen_qxmlstream_types.QXmlStreamReader, ): gen_qxmlstream_types.QXmlStreamEntityResolver =
  gen_qxmlstream_types.QXmlStreamEntityResolver(h: fcQXmlStreamReader_entityResolver(self.h), owned: false)

proc readElementText*(self: gen_qxmlstream_types.QXmlStreamReader, behaviour: cint): string =
  let v_ms = fcQXmlStreamReader_readElementText1(self.h, cint(behaviour))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc raiseError*(self: gen_qxmlstream_types.QXmlStreamReader, message: string): void =
  fcQXmlStreamReader_raiseError1(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc create*(T: type gen_qxmlstream_types.QXmlStreamReader): gen_qxmlstream_types.QXmlStreamReader =
  gen_qxmlstream_types.QXmlStreamReader(h: fcQXmlStreamReader_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamReader,
    device: gen_qiodevice_types.QIODevice): gen_qxmlstream_types.QXmlStreamReader =
  gen_qxmlstream_types.QXmlStreamReader(h: fcQXmlStreamReader_new2(device.h), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamReader,
    data: seq[byte]): gen_qxmlstream_types.QXmlStreamReader =
  gen_qxmlstream_types.QXmlStreamReader(h: fcQXmlStreamReader_new3(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamReader,
    data: string): gen_qxmlstream_types.QXmlStreamReader =
  gen_qxmlstream_types.QXmlStreamReader(h: fcQXmlStreamReader_new4(struct_miqt_string(data: data, len: csize_t(len(data)))), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamReader,
    data: cstring): gen_qxmlstream_types.QXmlStreamReader =
  gen_qxmlstream_types.QXmlStreamReader(h: fcQXmlStreamReader_new5(data), owned: true)

proc setDevice*(self: gen_qxmlstream_types.QXmlStreamWriter, device: gen_qiodevice_types.QIODevice): void =
  fcQXmlStreamWriter_setDevice(self.h, device.h)

proc device*(self: gen_qxmlstream_types.QXmlStreamWriter, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQXmlStreamWriter_device(self.h), owned: false)

proc setCodec*(self: gen_qxmlstream_types.QXmlStreamWriter, codec: gen_qtextcodec_types.QTextCodec): void =
  fcQXmlStreamWriter_setCodec(self.h, codec.h)

proc setCodec*(self: gen_qxmlstream_types.QXmlStreamWriter, codecName: cstring): void =
  fcQXmlStreamWriter_setCodecWithCodecName(self.h, codecName)

proc codec*(self: gen_qxmlstream_types.QXmlStreamWriter, ): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQXmlStreamWriter_codec(self.h), owned: false)

proc setAutoFormatting*(self: gen_qxmlstream_types.QXmlStreamWriter, autoFormatting: bool): void =
  fcQXmlStreamWriter_setAutoFormatting(self.h, autoFormatting)

proc autoFormatting*(self: gen_qxmlstream_types.QXmlStreamWriter, ): bool =
  fcQXmlStreamWriter_autoFormatting(self.h)

proc setAutoFormattingIndent*(self: gen_qxmlstream_types.QXmlStreamWriter, spacesOrTabs: cint): void =
  fcQXmlStreamWriter_setAutoFormattingIndent(self.h, spacesOrTabs)

proc autoFormattingIndent*(self: gen_qxmlstream_types.QXmlStreamWriter, ): cint =
  fcQXmlStreamWriter_autoFormattingIndent(self.h)

proc writeAttribute*(self: gen_qxmlstream_types.QXmlStreamWriter, qualifiedName: string, value: string): void =
  fcQXmlStreamWriter_writeAttribute(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc writeAttribute*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string, name: string, value: string): void =
  fcQXmlStreamWriter_writeAttribute2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc writeAttribute*(self: gen_qxmlstream_types.QXmlStreamWriter, attribute: gen_qxmlstream_types.QXmlStreamAttribute): void =
  fcQXmlStreamWriter_writeAttributeWithAttribute(self.h, attribute.h)

proc writeCDATA*(self: gen_qxmlstream_types.QXmlStreamWriter, text: string): void =
  fcQXmlStreamWriter_writeCDATA(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeCharacters*(self: gen_qxmlstream_types.QXmlStreamWriter, text: string): void =
  fcQXmlStreamWriter_writeCharacters(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeComment*(self: gen_qxmlstream_types.QXmlStreamWriter, text: string): void =
  fcQXmlStreamWriter_writeComment(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeDTD*(self: gen_qxmlstream_types.QXmlStreamWriter, dtd: string): void =
  fcQXmlStreamWriter_writeDTD(self.h, struct_miqt_string(data: dtd, len: csize_t(len(dtd))))

proc writeEmptyElement*(self: gen_qxmlstream_types.QXmlStreamWriter, qualifiedName: string): void =
  fcQXmlStreamWriter_writeEmptyElement(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))))

proc writeEmptyElement*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string, name: string): void =
  fcQXmlStreamWriter_writeEmptyElement2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc writeTextElement*(self: gen_qxmlstream_types.QXmlStreamWriter, qualifiedName: string, text: string): void =
  fcQXmlStreamWriter_writeTextElement(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))), struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeTextElement*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string, name: string, text: string): void =
  fcQXmlStreamWriter_writeTextElement2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeEndDocument*(self: gen_qxmlstream_types.QXmlStreamWriter, ): void =
  fcQXmlStreamWriter_writeEndDocument(self.h)

proc writeEndElement*(self: gen_qxmlstream_types.QXmlStreamWriter, ): void =
  fcQXmlStreamWriter_writeEndElement(self.h)

proc writeEntityReference*(self: gen_qxmlstream_types.QXmlStreamWriter, name: string): void =
  fcQXmlStreamWriter_writeEntityReference(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc writeNamespace*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string): void =
  fcQXmlStreamWriter_writeNamespace(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))))

proc writeDefaultNamespace*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string): void =
  fcQXmlStreamWriter_writeDefaultNamespace(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))))

proc writeProcessingInstruction*(self: gen_qxmlstream_types.QXmlStreamWriter, target: string): void =
  fcQXmlStreamWriter_writeProcessingInstruction(self.h, struct_miqt_string(data: target, len: csize_t(len(target))))

proc writeStartDocument*(self: gen_qxmlstream_types.QXmlStreamWriter, ): void =
  fcQXmlStreamWriter_writeStartDocument(self.h)

proc writeStartDocument*(self: gen_qxmlstream_types.QXmlStreamWriter, version: string): void =
  fcQXmlStreamWriter_writeStartDocumentWithVersion(self.h, struct_miqt_string(data: version, len: csize_t(len(version))))

proc writeStartDocument*(self: gen_qxmlstream_types.QXmlStreamWriter, version: string, standalone: bool): void =
  fcQXmlStreamWriter_writeStartDocument2(self.h, struct_miqt_string(data: version, len: csize_t(len(version))), standalone)

proc writeStartElement*(self: gen_qxmlstream_types.QXmlStreamWriter, qualifiedName: string): void =
  fcQXmlStreamWriter_writeStartElement(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))))

proc writeStartElement*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string, name: string): void =
  fcQXmlStreamWriter_writeStartElement2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc writeCurrentToken*(self: gen_qxmlstream_types.QXmlStreamWriter, reader: gen_qxmlstream_types.QXmlStreamReader): void =
  fcQXmlStreamWriter_writeCurrentToken(self.h, reader.h)

proc hasError*(self: gen_qxmlstream_types.QXmlStreamWriter, ): bool =
  fcQXmlStreamWriter_hasError(self.h)

proc writeNamespace*(self: gen_qxmlstream_types.QXmlStreamWriter, namespaceUri: string, prefix: string): void =
  fcQXmlStreamWriter_writeNamespace2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProcessingInstruction*(self: gen_qxmlstream_types.QXmlStreamWriter, target: string, data: string): void =
  fcQXmlStreamWriter_writeProcessingInstruction2(self.h, struct_miqt_string(data: target, len: csize_t(len(target))), struct_miqt_string(data: data, len: csize_t(len(data))))

proc create*(T: type gen_qxmlstream_types.QXmlStreamWriter): gen_qxmlstream_types.QXmlStreamWriter =
  gen_qxmlstream_types.QXmlStreamWriter(h: fcQXmlStreamWriter_new(), owned: true)

proc create*(T: type gen_qxmlstream_types.QXmlStreamWriter,
    device: gen_qiodevice_types.QIODevice): gen_qxmlstream_types.QXmlStreamWriter =
  gen_qxmlstream_types.QXmlStreamWriter(h: fcQXmlStreamWriter_new2(device.h), owned: true)

