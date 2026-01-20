#pragma once
#ifndef SEAQT_QTCORE_GEN_QXMLSTREAM_H
#define SEAQT_QTCORE_GEN_QXMLSTREAM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIODevice;
class QXmlStreamAttribute;
class QXmlStreamEntityDeclaration;
class QXmlStreamEntityResolver;
class QXmlStreamNamespaceDeclaration;
class QXmlStreamNotationDeclaration;
class QXmlStreamReader;
class QXmlStreamWriter;
#else
typedef struct QIODevice QIODevice;
typedef struct QXmlStreamAttribute QXmlStreamAttribute;
typedef struct QXmlStreamEntityDeclaration QXmlStreamEntityDeclaration;
typedef struct QXmlStreamEntityResolver QXmlStreamEntityResolver;
typedef struct QXmlStreamNamespaceDeclaration QXmlStreamNamespaceDeclaration;
typedef struct QXmlStreamNotationDeclaration QXmlStreamNotationDeclaration;
typedef struct QXmlStreamReader QXmlStreamReader;
typedef struct QXmlStreamWriter QXmlStreamWriter;
#endif

QXmlStreamAttribute* QXmlStreamAttribute_new();
QXmlStreamAttribute* QXmlStreamAttribute_new_qualifiedName_value(struct seaqt_string qualifiedName, struct seaqt_string value);
QXmlStreamAttribute* QXmlStreamAttribute_new_namespaceUri_name_value(struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string value);
QXmlStreamAttribute* QXmlStreamAttribute_new_from(QXmlStreamAttribute* from);

bool QXmlStreamAttribute_isDefault(const QXmlStreamAttribute* self);
bool QXmlStreamAttribute_operatorEqual(const QXmlStreamAttribute* self, QXmlStreamAttribute* other);
bool QXmlStreamAttribute_operatorNotEqual(const QXmlStreamAttribute* self, QXmlStreamAttribute* other);
void QXmlStreamAttribute_operatorAssign(QXmlStreamAttribute* self, QXmlStreamAttribute* from);

void QXmlStreamAttribute_delete(QXmlStreamAttribute* self);

QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new();
QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new_prefix_namespaceUri(struct seaqt_string prefix, struct seaqt_string namespaceUri);

bool QXmlStreamNamespaceDeclaration_operatorEqual(const QXmlStreamNamespaceDeclaration* self, QXmlStreamNamespaceDeclaration* other);
bool QXmlStreamNamespaceDeclaration_operatorNotEqual(const QXmlStreamNamespaceDeclaration* self, QXmlStreamNamespaceDeclaration* other);

void QXmlStreamNamespaceDeclaration_delete(QXmlStreamNamespaceDeclaration* self);

QXmlStreamNotationDeclaration* QXmlStreamNotationDeclaration_new();

bool QXmlStreamNotationDeclaration_operatorEqual(const QXmlStreamNotationDeclaration* self, QXmlStreamNotationDeclaration* other);
bool QXmlStreamNotationDeclaration_operatorNotEqual(const QXmlStreamNotationDeclaration* self, QXmlStreamNotationDeclaration* other);

void QXmlStreamNotationDeclaration_delete(QXmlStreamNotationDeclaration* self);

QXmlStreamEntityDeclaration* QXmlStreamEntityDeclaration_new();

bool QXmlStreamEntityDeclaration_operatorEqual(const QXmlStreamEntityDeclaration* self, QXmlStreamEntityDeclaration* other);
bool QXmlStreamEntityDeclaration_operatorNotEqual(const QXmlStreamEntityDeclaration* self, QXmlStreamEntityDeclaration* other);

void QXmlStreamEntityDeclaration_delete(QXmlStreamEntityDeclaration* self);

struct seaqt_string QXmlStreamEntityResolver_resolveEntity(QXmlStreamEntityResolver* self, struct seaqt_string publicId, struct seaqt_string systemId);
struct seaqt_string QXmlStreamEntityResolver_resolveUndeclaredEntity(QXmlStreamEntityResolver* self, struct seaqt_string name);

void QXmlStreamEntityResolver_delete(QXmlStreamEntityResolver* self);

QXmlStreamReader* QXmlStreamReader_new();
QXmlStreamReader* QXmlStreamReader_new_QIODevice(QIODevice* device);
QXmlStreamReader* QXmlStreamReader_new_QByteArray(struct seaqt_string data);
QXmlStreamReader* QXmlStreamReader_new_QString(struct seaqt_string data);
QXmlStreamReader* QXmlStreamReader_new_char(const char* data);

void QXmlStreamReader_setDevice(QXmlStreamReader* self, QIODevice* device);
QIODevice* QXmlStreamReader_device(const QXmlStreamReader* self);
void QXmlStreamReader_addData_QByteArray(QXmlStreamReader* self, struct seaqt_string data);
void QXmlStreamReader_addData_QString(QXmlStreamReader* self, struct seaqt_string data);
void QXmlStreamReader_addData_char(QXmlStreamReader* self, const char* data);
void QXmlStreamReader_clear(QXmlStreamReader* self);
bool QXmlStreamReader_atEnd(const QXmlStreamReader* self);
int QXmlStreamReader_readNext(QXmlStreamReader* self);
bool QXmlStreamReader_readNextStartElement(QXmlStreamReader* self);
void QXmlStreamReader_skipCurrentElement(QXmlStreamReader* self);
int QXmlStreamReader_tokenType(const QXmlStreamReader* self);
struct seaqt_string QXmlStreamReader_tokenString(const QXmlStreamReader* self);
void QXmlStreamReader_setNamespaceProcessing(QXmlStreamReader* self, bool namespaceProcessing);
bool QXmlStreamReader_namespaceProcessing(const QXmlStreamReader* self);
bool QXmlStreamReader_isStartDocument(const QXmlStreamReader* self);
bool QXmlStreamReader_isEndDocument(const QXmlStreamReader* self);
bool QXmlStreamReader_isStartElement(const QXmlStreamReader* self);
bool QXmlStreamReader_isEndElement(const QXmlStreamReader* self);
bool QXmlStreamReader_isCharacters(const QXmlStreamReader* self);
bool QXmlStreamReader_isWhitespace(const QXmlStreamReader* self);
bool QXmlStreamReader_isCDATA(const QXmlStreamReader* self);
bool QXmlStreamReader_isComment(const QXmlStreamReader* self);
bool QXmlStreamReader_isDTD(const QXmlStreamReader* self);
bool QXmlStreamReader_isEntityReference(const QXmlStreamReader* self);
bool QXmlStreamReader_isProcessingInstruction(const QXmlStreamReader* self);
bool QXmlStreamReader_isStandaloneDocument(const QXmlStreamReader* self);
long long QXmlStreamReader_lineNumber(const QXmlStreamReader* self);
long long QXmlStreamReader_columnNumber(const QXmlStreamReader* self);
long long QXmlStreamReader_characterOffset(const QXmlStreamReader* self);
struct seaqt_string QXmlStreamReader_readElementText(QXmlStreamReader* self);
struct seaqt_array /* of QXmlStreamNamespaceDeclaration* */  QXmlStreamReader_namespaceDeclarations(const QXmlStreamReader* self);
void QXmlStreamReader_addExtraNamespaceDeclaration(QXmlStreamReader* self, QXmlStreamNamespaceDeclaration* extraNamespaceDeclaraction);
void QXmlStreamReader_addExtraNamespaceDeclarations(QXmlStreamReader* self, struct seaqt_array /* of QXmlStreamNamespaceDeclaration* */  extraNamespaceDeclaractions);
struct seaqt_array /* of QXmlStreamNotationDeclaration* */  QXmlStreamReader_notationDeclarations(const QXmlStreamReader* self);
struct seaqt_array /* of QXmlStreamEntityDeclaration* */  QXmlStreamReader_entityDeclarations(const QXmlStreamReader* self);
int QXmlStreamReader_entityExpansionLimit(const QXmlStreamReader* self);
void QXmlStreamReader_setEntityExpansionLimit(QXmlStreamReader* self, int limit);
void QXmlStreamReader_raiseError(QXmlStreamReader* self);
struct seaqt_string QXmlStreamReader_errorString(const QXmlStreamReader* self);
int QXmlStreamReader_error(const QXmlStreamReader* self);
bool QXmlStreamReader_hasError(const QXmlStreamReader* self);
void QXmlStreamReader_setEntityResolver(QXmlStreamReader* self, QXmlStreamEntityResolver* resolver);
QXmlStreamEntityResolver* QXmlStreamReader_entityResolver(const QXmlStreamReader* self);
struct seaqt_string QXmlStreamReader_readElementText_behaviour(QXmlStreamReader* self, int behaviour);
void QXmlStreamReader_raiseError_message(QXmlStreamReader* self, struct seaqt_string message);

void QXmlStreamReader_delete(QXmlStreamReader* self);

QXmlStreamWriter* QXmlStreamWriter_new();
QXmlStreamWriter* QXmlStreamWriter_new_device(QIODevice* device);

void QXmlStreamWriter_setDevice(QXmlStreamWriter* self, QIODevice* device);
QIODevice* QXmlStreamWriter_device(const QXmlStreamWriter* self);
void QXmlStreamWriter_setAutoFormatting(QXmlStreamWriter* self, bool autoFormatting);
bool QXmlStreamWriter_autoFormatting(const QXmlStreamWriter* self);
void QXmlStreamWriter_setAutoFormattingIndent(QXmlStreamWriter* self, int spacesOrTabs);
int QXmlStreamWriter_autoFormattingIndent(const QXmlStreamWriter* self);
void QXmlStreamWriter_writeAttribute_qualifiedName_value(QXmlStreamWriter* self, struct seaqt_string qualifiedName, struct seaqt_string value);
void QXmlStreamWriter_writeAttribute_namespaceUri_name_value(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string value);
void QXmlStreamWriter_writeAttribute_attribute(QXmlStreamWriter* self, QXmlStreamAttribute* attribute);
void QXmlStreamWriter_writeCDATA(QXmlStreamWriter* self, struct seaqt_string text);
void QXmlStreamWriter_writeCharacters(QXmlStreamWriter* self, struct seaqt_string text);
void QXmlStreamWriter_writeComment(QXmlStreamWriter* self, struct seaqt_string text);
void QXmlStreamWriter_writeDTD(QXmlStreamWriter* self, struct seaqt_string dtd);
void QXmlStreamWriter_writeEmptyElement_qualifiedName(QXmlStreamWriter* self, struct seaqt_string qualifiedName);
void QXmlStreamWriter_writeEmptyElement_namespaceUri_name(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name);
void QXmlStreamWriter_writeTextElement_qualifiedName_text(QXmlStreamWriter* self, struct seaqt_string qualifiedName, struct seaqt_string text);
void QXmlStreamWriter_writeTextElement_namespaceUri_name_text(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string text);
void QXmlStreamWriter_writeEndDocument(QXmlStreamWriter* self);
void QXmlStreamWriter_writeEndElement(QXmlStreamWriter* self);
void QXmlStreamWriter_writeEntityReference(QXmlStreamWriter* self, struct seaqt_string name);
void QXmlStreamWriter_writeNamespace_namespaceUri(QXmlStreamWriter* self, struct seaqt_string namespaceUri);
void QXmlStreamWriter_writeDefaultNamespace(QXmlStreamWriter* self, struct seaqt_string namespaceUri);
void QXmlStreamWriter_writeProcessingInstruction_target(QXmlStreamWriter* self, struct seaqt_string target);
void QXmlStreamWriter_writeStartDocument(QXmlStreamWriter* self);
void QXmlStreamWriter_writeStartDocument_version(QXmlStreamWriter* self, struct seaqt_string version);
void QXmlStreamWriter_writeStartDocument_version_standalone(QXmlStreamWriter* self, struct seaqt_string version, bool standalone);
void QXmlStreamWriter_writeStartElement_qualifiedName(QXmlStreamWriter* self, struct seaqt_string qualifiedName);
void QXmlStreamWriter_writeStartElement_namespaceUri_name(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name);
void QXmlStreamWriter_writeCurrentToken(QXmlStreamWriter* self, QXmlStreamReader* reader);
bool QXmlStreamWriter_hasError(const QXmlStreamWriter* self);
void QXmlStreamWriter_writeNamespace_namespaceUri_prefix(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string prefix);
void QXmlStreamWriter_writeProcessingInstruction_target_data(QXmlStreamWriter* self, struct seaqt_string target, struct seaqt_string data);

void QXmlStreamWriter_delete(QXmlStreamWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
