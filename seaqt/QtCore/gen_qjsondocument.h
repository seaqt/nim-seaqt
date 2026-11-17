#pragma once
#ifndef SEAQT_QTCORE_GEN_QJSONDOCUMENT_H
#define SEAQT_QTCORE_GEN_QJSONDOCUMENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJsonArray;
class QJsonDocument;
class QJsonObject;
class QJsonParseError;
class QJsonValue;
class QVariant;
#else
typedef struct QJsonArray QJsonArray;
typedef struct QJsonDocument QJsonDocument;
typedef struct QJsonObject QJsonObject;
typedef struct QJsonParseError QJsonParseError;
typedef struct QJsonValue QJsonValue;
typedef struct QVariant QVariant;
#endif

struct seaqt_string QJsonParseError_errorString(const QJsonParseError* self);
int QJsonParseError_offset(const QJsonParseError* self);
void QJsonParseError_setOffset(QJsonParseError* self, int offset);
int QJsonParseError_error(const QJsonParseError* self);
void QJsonParseError_setError(QJsonParseError* self, int error);

void QJsonParseError_delete(QJsonParseError* self);

QJsonDocument* QJsonDocument_new();
QJsonDocument* QJsonDocument_new_object(QJsonObject* object);
QJsonDocument* QJsonDocument_new_array(QJsonArray* array);
QJsonDocument* QJsonDocument_new_from(QJsonDocument* from);

void QJsonDocument_operatorAssign(QJsonDocument* self, QJsonDocument* from);
void QJsonDocument_swap(QJsonDocument* self, QJsonDocument* other);
QJsonDocument* QJsonDocument_fromVariant(QVariant* variant);
QVariant* QJsonDocument_toVariant(const QJsonDocument* self);
QJsonDocument* QJsonDocument_fromJson_json(struct seaqt_string json);
struct seaqt_string QJsonDocument_toJson(const QJsonDocument* self);
bool QJsonDocument_isEmpty(const QJsonDocument* self);
bool QJsonDocument_isArray(const QJsonDocument* self);
bool QJsonDocument_isObject(const QJsonDocument* self);
QJsonObject* QJsonDocument_object(const QJsonDocument* self);
QJsonArray* QJsonDocument_array(const QJsonDocument* self);
void QJsonDocument_setObject(QJsonDocument* self, QJsonObject* object);
void QJsonDocument_setArray(QJsonDocument* self, QJsonArray* array);
QJsonValue* QJsonDocument_operatorSubscript_QString(const QJsonDocument* self, struct seaqt_string key);
QJsonValue* QJsonDocument_operatorSubscript_qsizetype(const QJsonDocument* self, ptrdiff_t i);
bool QJsonDocument_isNull(const QJsonDocument* self);
QJsonDocument* QJsonDocument_fromJson_json_error(struct seaqt_string json, QJsonParseError* error);
struct seaqt_string QJsonDocument_toJson_format(const QJsonDocument* self, int format);

void QJsonDocument_delete(QJsonDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
