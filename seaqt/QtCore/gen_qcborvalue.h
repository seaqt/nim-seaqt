#pragma once
#ifndef SEAQT_QTCORE_GEN_QCBORVALUE_H
#define SEAQT_QTCORE_GEN_QCBORVALUE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCborArray;
class QCborError;
class QCborMap;
class QCborParserError;
class QCborStreamReader;
class QCborStreamWriter;
class QCborValue;
class QCborValueRef;
class QDateTime;
class QJsonValue;
class QMetaObject;
class QRegularExpression;
class QUrl;
class QUuid;
class QVariant;
#else
typedef struct QCborArray QCborArray;
typedef struct QCborError QCborError;
typedef struct QCborMap QCborMap;
typedef struct QCborParserError QCborParserError;
typedef struct QCborStreamReader QCborStreamReader;
typedef struct QCborStreamWriter QCborStreamWriter;
typedef struct QCborValue QCborValue;
typedef struct QCborValueRef QCborValueRef;
typedef struct QDateTime QDateTime;
typedef struct QJsonValue QJsonValue;
typedef struct QMetaObject QMetaObject;
typedef struct QRegularExpression QRegularExpression;
typedef struct QUrl QUrl;
typedef struct QUuid QUuid;
typedef struct QVariant QVariant;
#endif

long long QCborParserError_offset(const QCborParserError* self);
void QCborParserError_setOffset(QCborParserError* self, long long offset);
QCborError* QCborParserError_error(const QCborParserError* self);
void QCborParserError_setError(QCborParserError* self, QCborError* error);
struct seaqt_string QCborParserError_errorString(const QCborParserError* self);

void QCborParserError_delete(QCborParserError* self);

QCborValue* QCborValue_new();
QCborValue* QCborValue_new_QCborValue_Type(int t_);
QCborValue* QCborValue_new_bool(bool b_);
QCborValue* QCborValue_new_int(int i);
QCborValue* QCborValue_new_unsignedint(unsigned int u);
QCborValue* QCborValue_new_qint64(long long i);
QCborValue* QCborValue_new_double(double v);
QCborValue* QCborValue_new_QCborSimpleType(uint8_t st);
QCborValue* QCborValue_new_QByteArray(struct seaqt_string ba);
QCborValue* QCborValue_new_QString(struct seaqt_string s);
QCborValue* QCborValue_new_char(const char* s);
QCborValue* QCborValue_new_QCborArray(QCborArray* a);
QCborValue* QCborValue_new_QCborMap(QCborMap* m);
QCborValue* QCborValue_new_QCborTag(uint64_t tag);
QCborValue* QCborValue_new_QCborKnownTags(int t_);
QCborValue* QCborValue_new_QDateTime(QDateTime* dt);
QCborValue* QCborValue_new_QUrl(QUrl* url);
QCborValue* QCborValue_new_QRegularExpression(QRegularExpression* rx);
QCborValue* QCborValue_new_QUuid(QUuid* uuid);
QCborValue* QCborValue_new_QCborValue(QCborValue* from);
QCborValue* QCborValue_new_QCborTag_QCborValue(uint64_t tag, QCborValue* taggedValue);
QCborValue* QCborValue_new_QCborKnownTags_QCborValue(int t_, QCborValue* tv);

void QCborValue_operatorAssign(QCborValue* self, QCborValue* from);
void QCborValue_swap(QCborValue* self, QCborValue* other);
int QCborValue_type(const QCborValue* self);
bool QCborValue_isInteger(const QCborValue* self);
bool QCborValue_isByteArray(const QCborValue* self);
bool QCborValue_isString(const QCborValue* self);
bool QCborValue_isArray(const QCborValue* self);
bool QCborValue_isMap(const QCborValue* self);
bool QCborValue_isTag(const QCborValue* self);
bool QCborValue_isFalse(const QCborValue* self);
bool QCborValue_isTrue(const QCborValue* self);
bool QCborValue_isBool(const QCborValue* self);
bool QCborValue_isNull(const QCborValue* self);
bool QCborValue_isUndefined(const QCborValue* self);
bool QCborValue_isDouble(const QCborValue* self);
bool QCborValue_isDateTime(const QCborValue* self);
bool QCborValue_isUrl(const QCborValue* self);
bool QCborValue_isRegularExpression(const QCborValue* self);
bool QCborValue_isUuid(const QCborValue* self);
bool QCborValue_isInvalid(const QCborValue* self);
bool QCborValue_isContainer(const QCborValue* self);
bool QCborValue_isSimpleType(const QCborValue* self);
bool QCborValue_isSimpleType_st(const QCborValue* self, uint8_t st);
uint8_t QCborValue_toSimpleType(const QCborValue* self);
long long QCborValue_toInteger(const QCborValue* self);
bool QCborValue_toBool(const QCborValue* self);
double QCborValue_toDouble(const QCborValue* self);
uint64_t QCborValue_tag(const QCborValue* self);
QCborValue* QCborValue_taggedValue(const QCborValue* self);
struct seaqt_string QCborValue_toByteArray(const QCborValue* self);
struct seaqt_string QCborValue_toString(const QCborValue* self);
QDateTime* QCborValue_toDateTime(const QCborValue* self);
QUrl* QCborValue_toUrl(const QCborValue* self);
QRegularExpression* QCborValue_toRegularExpression(const QCborValue* self);
QUuid* QCborValue_toUuid(const QCborValue* self);
QCborArray* QCborValue_toArray(const QCborValue* self);
QCborArray* QCborValue_toArray_defaultValue(const QCborValue* self, QCborArray* defaultValue);
QCborMap* QCborValue_toMap(const QCborValue* self);
QCborMap* QCborValue_toMap_defaultValue(const QCborValue* self, QCborMap* defaultValue);
QCborValue* QCborValue_operatorSubscript_const_cQString(const QCborValue* self, struct seaqt_string key);
QCborValue* QCborValue_operatorSubscript_const_qint64(const QCborValue* self, long long key);
QCborValueRef* QCborValue_operatorSubscript_qint64(QCborValue* self, long long key);
QCborValueRef* QCborValue_operatorSubscript_cQString(QCborValue* self, struct seaqt_string key);
int QCborValue_compare(const QCborValue* self, QCborValue* other);
bool QCborValue_operatorEqual(const QCborValue* self, QCborValue* other);
bool QCborValue_operatorNotEqual(const QCborValue* self, QCborValue* other);
bool QCborValue_operatorLesser(const QCborValue* self, QCborValue* other);
QCborValue* QCborValue_fromVariant(QVariant* variant);
QVariant* QCborValue_toVariant(const QCborValue* self);
QCborValue* QCborValue_fromJsonValue(QJsonValue* v);
QJsonValue* QCborValue_toJsonValue(const QCborValue* self);
QCborValue* QCborValue_fromCbor_QCborStreamReader(QCborStreamReader* reader);
QCborValue* QCborValue_fromCbor_QByteArray(struct seaqt_string ba);
QCborValue* QCborValue_fromCbor_char_qsizetype(const char* data, ptrdiff_t len);
QCborValue* QCborValue_fromCbor_quint8_qsizetype(const unsigned char* data, ptrdiff_t len);
struct seaqt_string QCborValue_toCbor(QCborValue* self);
void QCborValue_toCbor_writer(QCborValue* self, QCborStreamWriter* writer);
struct seaqt_string QCborValue_toDiagnosticNotation(const QCborValue* self);
uint8_t QCborValue_toSimpleType_defaultValue(const QCborValue* self, uint8_t defaultValue);
long long QCborValue_toInteger_defaultValue(const QCborValue* self, long long defaultValue);
bool QCborValue_toBool_defaultValue(const QCborValue* self, bool defaultValue);
double QCborValue_toDouble_defaultValue(const QCborValue* self, double defaultValue);
uint64_t QCborValue_tag_defaultValue(const QCborValue* self, uint64_t defaultValue);
QCborValue* QCborValue_taggedValue_defaultValue(const QCborValue* self, QCborValue* defaultValue);
struct seaqt_string QCborValue_toByteArray_defaultValue(const QCborValue* self, struct seaqt_string defaultValue);
struct seaqt_string QCborValue_toString_defaultValue(const QCborValue* self, struct seaqt_string defaultValue);
QDateTime* QCborValue_toDateTime_defaultValue(const QCborValue* self, QDateTime* defaultValue);
QUrl* QCborValue_toUrl_defaultValue(const QCborValue* self, QUrl* defaultValue);
QRegularExpression* QCborValue_toRegularExpression_defaultValue(const QCborValue* self, QRegularExpression* defaultValue);
QUuid* QCborValue_toUuid_defaultValue(const QCborValue* self, QUuid* defaultValue);
QCborValue* QCborValue_fromCbor_QByteArray_QCborParserError(struct seaqt_string ba, QCborParserError* error);
QCborValue* QCborValue_fromCbor_char_qsizetype_QCborParserError(const char* data, ptrdiff_t len, QCborParserError* error);
QCborValue* QCborValue_fromCbor_quint8_qsizetype_QCborParserError(const unsigned char* data, ptrdiff_t len, QCborParserError* error);
struct seaqt_string QCborValue_toCbor_opt(QCborValue* self, int opt);
void QCborValue_toCbor_writer_opt(QCborValue* self, QCborStreamWriter* writer, int opt);
struct seaqt_string QCborValue_toDiagnosticNotation_opts(const QCborValue* self, int opts);

const QMetaObject* QCborValue_staticMetaObject();
void QCborValue_delete(QCborValue* self);

QCborValueRef* QCborValueRef_new(QCborValueRef* from);

QCborValue* QCborValueRef_ToQCborValue(const QCborValueRef* self);
void QCborValueRef_operatorAssign_other(QCborValueRef* self, QCborValue* other);
void QCborValueRef_operatorAssign_from(QCborValueRef* self, QCborValueRef* from);
int QCborValueRef_type(const QCborValueRef* self);
bool QCborValueRef_isInteger(const QCborValueRef* self);
bool QCborValueRef_isByteArray(const QCborValueRef* self);
bool QCborValueRef_isString(const QCborValueRef* self);
bool QCborValueRef_isArray(const QCborValueRef* self);
bool QCborValueRef_isMap(const QCborValueRef* self);
bool QCborValueRef_isTag(const QCborValueRef* self);
bool QCborValueRef_isFalse(const QCborValueRef* self);
bool QCborValueRef_isTrue(const QCborValueRef* self);
bool QCborValueRef_isBool(const QCborValueRef* self);
bool QCborValueRef_isNull(const QCborValueRef* self);
bool QCborValueRef_isUndefined(const QCborValueRef* self);
bool QCborValueRef_isDouble(const QCborValueRef* self);
bool QCborValueRef_isDateTime(const QCborValueRef* self);
bool QCborValueRef_isUrl(const QCborValueRef* self);
bool QCborValueRef_isRegularExpression(const QCborValueRef* self);
bool QCborValueRef_isUuid(const QCborValueRef* self);
bool QCborValueRef_isInvalid(const QCborValueRef* self);
bool QCborValueRef_isContainer(const QCborValueRef* self);
bool QCborValueRef_isSimpleType(const QCborValueRef* self);
bool QCborValueRef_isSimpleType_st(const QCborValueRef* self, uint8_t st);
uint64_t QCborValueRef_tag(const QCborValueRef* self);
QCborValue* QCborValueRef_taggedValue(const QCborValueRef* self);
long long QCborValueRef_toInteger(const QCborValueRef* self);
bool QCborValueRef_toBool(const QCborValueRef* self);
double QCborValueRef_toDouble(const QCborValueRef* self);
struct seaqt_string QCborValueRef_toByteArray(const QCborValueRef* self);
struct seaqt_string QCborValueRef_toString(const QCborValueRef* self);
QDateTime* QCborValueRef_toDateTime(const QCborValueRef* self);
QUrl* QCborValueRef_toUrl(const QCborValueRef* self);
QRegularExpression* QCborValueRef_toRegularExpression(const QCborValueRef* self);
QUuid* QCborValueRef_toUuid(const QCborValueRef* self);
QCborArray* QCborValueRef_toArray(const QCborValueRef* self);
QCborArray* QCborValueRef_toArray_a(const QCborValueRef* self, QCborArray* a);
QCborMap* QCborValueRef_toMap(const QCborValueRef* self);
QCborMap* QCborValueRef_toMap_m(const QCborValueRef* self, QCborMap* m);
QCborValue* QCborValueRef_operatorSubscript_const_cQString(const QCborValueRef* self, struct seaqt_string key);
QCborValue* QCborValueRef_operatorSubscript_const_qint64(const QCborValueRef* self, long long key);
QCborValueRef* QCborValueRef_operatorSubscript_qint64(QCborValueRef* self, long long key);
QCborValueRef* QCborValueRef_operatorSubscript_cQString(QCborValueRef* self, struct seaqt_string key);
int QCborValueRef_compare(const QCborValueRef* self, QCborValue* other);
bool QCborValueRef_operatorEqual(const QCborValueRef* self, QCborValue* other);
bool QCborValueRef_operatorNotEqual(const QCborValueRef* self, QCborValue* other);
bool QCborValueRef_operatorLesser(const QCborValueRef* self, QCborValue* other);
QVariant* QCborValueRef_toVariant(const QCborValueRef* self);
QJsonValue* QCborValueRef_toJsonValue(const QCborValueRef* self);
struct seaqt_string QCborValueRef_toCbor(QCborValueRef* self);
void QCborValueRef_toCbor_writer(QCborValueRef* self, QCborStreamWriter* writer);
struct seaqt_string QCborValueRef_toDiagnosticNotation(QCborValueRef* self);
uint64_t QCborValueRef_tag_defaultValue(const QCborValueRef* self, uint64_t defaultValue);
QCborValue* QCborValueRef_taggedValue_defaultValue(const QCborValueRef* self, QCborValue* defaultValue);
long long QCborValueRef_toInteger_defaultValue(const QCborValueRef* self, long long defaultValue);
bool QCborValueRef_toBool_defaultValue(const QCborValueRef* self, bool defaultValue);
double QCborValueRef_toDouble_defaultValue(const QCborValueRef* self, double defaultValue);
struct seaqt_string QCborValueRef_toByteArray_defaultValue(const QCborValueRef* self, struct seaqt_string defaultValue);
struct seaqt_string QCborValueRef_toString_defaultValue(const QCborValueRef* self, struct seaqt_string defaultValue);
QDateTime* QCborValueRef_toDateTime_defaultValue(const QCborValueRef* self, QDateTime* defaultValue);
QUrl* QCborValueRef_toUrl_defaultValue(const QCborValueRef* self, QUrl* defaultValue);
QRegularExpression* QCborValueRef_toRegularExpression_defaultValue(const QCborValueRef* self, QRegularExpression* defaultValue);
QUuid* QCborValueRef_toUuid_defaultValue(const QCborValueRef* self, QUuid* defaultValue);
struct seaqt_string QCborValueRef_toCbor_opt(QCborValueRef* self, int opt);
void QCborValueRef_toCbor_writer_opt(QCborValueRef* self, QCborStreamWriter* writer, int opt);
struct seaqt_string QCborValueRef_toDiagnosticNotation_opt(QCborValueRef* self, int opt);

void QCborValueRef_delete(QCborValueRef* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
