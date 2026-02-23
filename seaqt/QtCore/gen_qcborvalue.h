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
class QCborValueConstRef;
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
typedef struct QCborValueConstRef QCborValueConstRef;
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
struct seaqt_string QCborValue_toCbor(const QCborValue* self);
void QCborValue_toCbor_writer(const QCborValue* self, QCborStreamWriter* writer);
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
struct seaqt_string QCborValue_toCbor_opt(const QCborValue* self, int opt);
void QCborValue_toCbor_writer_opt(const QCborValue* self, QCborStreamWriter* writer, int opt);
struct seaqt_string QCborValue_toDiagnosticNotation_opts(const QCborValue* self, int opts);

void QCborValue_delete(QCborValue* self);

QCborValueConstRef* QCborValueConstRef_new(QCborValueConstRef* from);

QCborValue* QCborValueConstRef_ToQCborValue(const QCborValueConstRef* self);
int QCborValueConstRef_type(const QCborValueConstRef* self);
bool QCborValueConstRef_isInteger(const QCborValueConstRef* self);
bool QCborValueConstRef_isByteArray(const QCborValueConstRef* self);
bool QCborValueConstRef_isString(const QCborValueConstRef* self);
bool QCborValueConstRef_isArray(const QCborValueConstRef* self);
bool QCborValueConstRef_isMap(const QCborValueConstRef* self);
bool QCborValueConstRef_isTag(const QCborValueConstRef* self);
bool QCborValueConstRef_isFalse(const QCborValueConstRef* self);
bool QCborValueConstRef_isTrue(const QCborValueConstRef* self);
bool QCborValueConstRef_isBool(const QCborValueConstRef* self);
bool QCborValueConstRef_isNull(const QCborValueConstRef* self);
bool QCborValueConstRef_isUndefined(const QCborValueConstRef* self);
bool QCborValueConstRef_isDouble(const QCborValueConstRef* self);
bool QCborValueConstRef_isDateTime(const QCborValueConstRef* self);
bool QCborValueConstRef_isUrl(const QCborValueConstRef* self);
bool QCborValueConstRef_isRegularExpression(const QCborValueConstRef* self);
bool QCborValueConstRef_isUuid(const QCborValueConstRef* self);
bool QCborValueConstRef_isInvalid(const QCborValueConstRef* self);
bool QCborValueConstRef_isContainer(const QCborValueConstRef* self);
bool QCborValueConstRef_isSimpleType(const QCborValueConstRef* self);
bool QCborValueConstRef_isSimpleType_st(const QCborValueConstRef* self, uint8_t st);
uint8_t QCborValueConstRef_toSimpleType(const QCborValueConstRef* self);
uint64_t QCborValueConstRef_tag(const QCborValueConstRef* self);
QCborValue* QCborValueConstRef_taggedValue(const QCborValueConstRef* self);
long long QCborValueConstRef_toInteger(const QCborValueConstRef* self);
bool QCborValueConstRef_toBool(const QCborValueConstRef* self);
double QCborValueConstRef_toDouble(const QCborValueConstRef* self);
struct seaqt_string QCborValueConstRef_toByteArray(const QCborValueConstRef* self);
struct seaqt_string QCborValueConstRef_toString(const QCborValueConstRef* self);
QDateTime* QCborValueConstRef_toDateTime(const QCborValueConstRef* self);
QUrl* QCborValueConstRef_toUrl(const QCborValueConstRef* self);
QRegularExpression* QCborValueConstRef_toRegularExpression(const QCborValueConstRef* self);
QUuid* QCborValueConstRef_toUuid(const QCborValueConstRef* self);
QCborArray* QCborValueConstRef_toArray(const QCborValueConstRef* self);
QCborArray* QCborValueConstRef_toArray_a(const QCborValueConstRef* self, QCborArray* a);
QCborMap* QCborValueConstRef_toMap(const QCborValueConstRef* self);
QCborMap* QCborValueConstRef_toMap_m(const QCborValueConstRef* self, QCborMap* m);
QCborValue* QCborValueConstRef_operatorSubscript_QString(const QCborValueConstRef* self, struct seaqt_string key);
QCborValue* QCborValueConstRef_operatorSubscript_qint64(const QCborValueConstRef* self, long long key);
int QCborValueConstRef_compare(const QCborValueConstRef* self, QCborValue* other);
bool QCborValueConstRef_operatorEqual(const QCborValueConstRef* self, QCborValue* other);
bool QCborValueConstRef_operatorNotEqual(const QCborValueConstRef* self, QCborValue* other);
bool QCborValueConstRef_operatorLesser(const QCborValueConstRef* self, QCborValue* other);
QVariant* QCborValueConstRef_toVariant(const QCborValueConstRef* self);
QJsonValue* QCborValueConstRef_toJsonValue(const QCborValueConstRef* self);
struct seaqt_string QCborValueConstRef_toCbor(const QCborValueConstRef* self);
void QCborValueConstRef_toCbor_writer(const QCborValueConstRef* self, QCborStreamWriter* writer);
struct seaqt_string QCborValueConstRef_toDiagnosticNotation(const QCborValueConstRef* self);
uint8_t QCborValueConstRef_toSimpleType_defaultValue(const QCborValueConstRef* self, uint8_t defaultValue);
uint64_t QCborValueConstRef_tag_defaultValue(const QCborValueConstRef* self, uint64_t defaultValue);
QCborValue* QCborValueConstRef_taggedValue_defaultValue(const QCborValueConstRef* self, QCborValue* defaultValue);
long long QCborValueConstRef_toInteger_defaultValue(const QCborValueConstRef* self, long long defaultValue);
bool QCborValueConstRef_toBool_defaultValue(const QCborValueConstRef* self, bool defaultValue);
double QCborValueConstRef_toDouble_defaultValue(const QCborValueConstRef* self, double defaultValue);
struct seaqt_string QCborValueConstRef_toByteArray_defaultValue(const QCborValueConstRef* self, struct seaqt_string defaultValue);
struct seaqt_string QCborValueConstRef_toString_defaultValue(const QCborValueConstRef* self, struct seaqt_string defaultValue);
QDateTime* QCborValueConstRef_toDateTime_defaultValue(const QCborValueConstRef* self, QDateTime* defaultValue);
QUrl* QCborValueConstRef_toUrl_defaultValue(const QCborValueConstRef* self, QUrl* defaultValue);
QRegularExpression* QCborValueConstRef_toRegularExpression_defaultValue(const QCborValueConstRef* self, QRegularExpression* defaultValue);
QUuid* QCborValueConstRef_toUuid_defaultValue(const QCborValueConstRef* self, QUuid* defaultValue);
struct seaqt_string QCborValueConstRef_toCbor_opt(const QCborValueConstRef* self, int opt);
void QCborValueConstRef_toCbor_writer_opt(const QCborValueConstRef* self, QCborStreamWriter* writer, int opt);
struct seaqt_string QCborValueConstRef_toDiagnosticNotation_opt(const QCborValueConstRef* self, int opt);

void QCborValueConstRef_delete(QCborValueConstRef* self);

QCborValueRef* QCborValueRef_new(QCborValueRef* from);

void QCborValueRef_virtbase(QCborValueRef* src, QCborValueConstRef** outptr_QCborValueConstRef);
void QCborValueRef_operatorAssign_other(QCborValueRef* self, QCborValue* other);
void QCborValueRef_operatorAssign_from(QCborValueRef* self, QCborValueRef* from);
QCborValueRef* QCborValueRef_operatorSubscript_qint64(QCborValueRef* self, long long key);
QCborValueRef* QCborValueRef_operatorSubscript_cQString(QCborValueRef* self, struct seaqt_string key);
QCborValue* QCborValueRef_ToQCborValue(const QCborValueRef* self);
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
uint8_t QCborValueRef_toSimpleType(const QCborValueRef* self);
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
int QCborValueRef_compare(const QCborValueRef* self, QCborValue* other);
bool QCborValueRef_operatorEqual(const QCborValueRef* self, QCborValue* other);
bool QCborValueRef_operatorNotEqual(const QCborValueRef* self, QCborValue* other);
bool QCborValueRef_operatorLesser(const QCborValueRef* self, QCborValue* other);
QVariant* QCborValueRef_toVariant(const QCborValueRef* self);
QJsonValue* QCborValueRef_toJsonValue(const QCborValueRef* self);
struct seaqt_string QCborValueRef_toCbor(QCborValueRef* self);
void QCborValueRef_toCbor_writer(QCborValueRef* self, QCborStreamWriter* writer);
struct seaqt_string QCborValueRef_toDiagnosticNotation(QCborValueRef* self);
uint8_t QCborValueRef_toSimpleType_defaultValue(const QCborValueRef* self, uint8_t defaultValue);
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
