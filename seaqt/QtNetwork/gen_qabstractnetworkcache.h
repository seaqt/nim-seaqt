#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QABSTRACTNETWORKCACHE_H
#define SEAQT_QTNETWORK_GEN_QABSTRACTNETWORKCACHE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractNetworkCache;
class QDateTime;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QNetworkCacheMetaData;
class QObject;
class QUrl;
class QVariant;
#else
typedef struct QAbstractNetworkCache QAbstractNetworkCache;
typedef struct QDateTime QDateTime;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkCacheMetaData QNetworkCacheMetaData;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

QNetworkCacheMetaData* QNetworkCacheMetaData_new();
QNetworkCacheMetaData* QNetworkCacheMetaData_new_from(QNetworkCacheMetaData* from);

void QNetworkCacheMetaData_operatorAssign(QNetworkCacheMetaData* self, QNetworkCacheMetaData* from);
void QNetworkCacheMetaData_swap(QNetworkCacheMetaData* self, QNetworkCacheMetaData* other);
bool QNetworkCacheMetaData_operatorEqual(const QNetworkCacheMetaData* self, QNetworkCacheMetaData* other);
bool QNetworkCacheMetaData_operatorNotEqual(const QNetworkCacheMetaData* self, QNetworkCacheMetaData* other);
bool QNetworkCacheMetaData_isValid(const QNetworkCacheMetaData* self);
QUrl* QNetworkCacheMetaData_url(const QNetworkCacheMetaData* self);
void QNetworkCacheMetaData_setUrl(QNetworkCacheMetaData* self, QUrl* url);
struct seaqt_array /* of struct seaqt_map  tuple of struct seaqt_string and struct seaqt_string   */  QNetworkCacheMetaData_rawHeaders(const QNetworkCacheMetaData* self);
void QNetworkCacheMetaData_setRawHeaders(QNetworkCacheMetaData* self, struct seaqt_array /* of struct seaqt_map  tuple of struct seaqt_string and struct seaqt_string   */  headers);
QDateTime* QNetworkCacheMetaData_lastModified(const QNetworkCacheMetaData* self);
void QNetworkCacheMetaData_setLastModified(QNetworkCacheMetaData* self, QDateTime* dateTime);
QDateTime* QNetworkCacheMetaData_expirationDate(const QNetworkCacheMetaData* self);
void QNetworkCacheMetaData_setExpirationDate(QNetworkCacheMetaData* self, QDateTime* dateTime);
bool QNetworkCacheMetaData_saveToDisk(const QNetworkCacheMetaData* self);
void QNetworkCacheMetaData_setSaveToDisk(QNetworkCacheMetaData* self, bool allow);
struct seaqt_map /* of int to QVariant* */  QNetworkCacheMetaData_attributes(const QNetworkCacheMetaData* self);
void QNetworkCacheMetaData_setAttributes(QNetworkCacheMetaData* self, struct seaqt_map /* of int to QVariant* */  attributes);

void QNetworkCacheMetaData_delete(QNetworkCacheMetaData* self);

void QAbstractNetworkCache_virtbase(QAbstractNetworkCache* src, QObject** outptr_QObject);
QMetaObject* QAbstractNetworkCache_metaObject(const QAbstractNetworkCache* self);
void* QAbstractNetworkCache_metacast(QAbstractNetworkCache* self, const char* param1);
int QAbstractNetworkCache_metacall(QAbstractNetworkCache* self, int param1, int param2, void** param3);
struct seaqt_string QAbstractNetworkCache_tr_s(const char* s);
struct seaqt_string QAbstractNetworkCache_trUtf8_s(const char* s);
QNetworkCacheMetaData* QAbstractNetworkCache_metaData(QAbstractNetworkCache* self, QUrl* url);
void QAbstractNetworkCache_updateMetaData(QAbstractNetworkCache* self, QNetworkCacheMetaData* metaData);
QIODevice* QAbstractNetworkCache_data(QAbstractNetworkCache* self, QUrl* url);
bool QAbstractNetworkCache_remove(QAbstractNetworkCache* self, QUrl* url);
long long QAbstractNetworkCache_cacheSize(const QAbstractNetworkCache* self);
QIODevice* QAbstractNetworkCache_prepare(QAbstractNetworkCache* self, QNetworkCacheMetaData* metaData);
void QAbstractNetworkCache_insert(QAbstractNetworkCache* self, QIODevice* device);
void QAbstractNetworkCache_clear(QAbstractNetworkCache* self);
struct seaqt_string QAbstractNetworkCache_tr_s_c(const char* s, const char* c);
struct seaqt_string QAbstractNetworkCache_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAbstractNetworkCache_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAbstractNetworkCache_trUtf8_s_c_n(const char* s, const char* c, int n);

void QAbstractNetworkCache_delete(QAbstractNetworkCache* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
