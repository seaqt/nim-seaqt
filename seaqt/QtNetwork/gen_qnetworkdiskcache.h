#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKDISKCACHE_H
#define SEAQT_QTNETWORK_GEN_QNETWORKDISKCACHE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractNetworkCache;
class QChildEvent;
class QEvent;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QNetworkCacheMetaData;
class QNetworkDiskCache;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QAbstractNetworkCache QAbstractNetworkCache;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkCacheMetaData QNetworkCacheMetaData;
typedef struct QNetworkDiskCache QNetworkDiskCache;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

struct QNetworkDiskCache_VTable {
	void (*destructor)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self);
	QMetaObject* (*metaObject)(struct QNetworkDiskCache_VTable* vtbl, const QNetworkDiskCache* self);
	void* (*metacast)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, const char* param1);
	int (*metacall)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, int param1, int param2, void** param3);
	long long (*cacheSize)(struct QNetworkDiskCache_VTable* vtbl, const QNetworkDiskCache* self);
	QNetworkCacheMetaData* (*metaData)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QUrl* url);
	void (*updateMetaData)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
	QIODevice* (*data)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QUrl* url);
	bool (*remove)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QUrl* url);
	QIODevice* (*prepare)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
	void (*insert)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QIODevice* device);
	void (*clear)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self);
	long long (*expire)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self);
	bool (*event)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QEvent* event);
	bool (*eventFilter)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QTimerEvent* event);
	void (*childEvent)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QChildEvent* event);
	void (*customEvent)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QEvent* event);
	void (*connectNotify)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QNetworkDiskCache_VTable* vtbl, QNetworkDiskCache* self, QMetaMethod* signal);
};
QNetworkDiskCache* QNetworkDiskCache_new(struct QNetworkDiskCache_VTable* vtbl);
QNetworkDiskCache* QNetworkDiskCache_new2(struct QNetworkDiskCache_VTable* vtbl, QObject* parent);
void QNetworkDiskCache_virtbase(QNetworkDiskCache* src, QAbstractNetworkCache** outptr_QAbstractNetworkCache);
QMetaObject* QNetworkDiskCache_metaObject(const QNetworkDiskCache* self);
void* QNetworkDiskCache_metacast(QNetworkDiskCache* self, const char* param1);
int QNetworkDiskCache_metacall(QNetworkDiskCache* self, int param1, int param2, void** param3);
struct miqt_string QNetworkDiskCache_tr(const char* s);
struct miqt_string QNetworkDiskCache_cacheDirectory(const QNetworkDiskCache* self);
void QNetworkDiskCache_setCacheDirectory(QNetworkDiskCache* self, struct miqt_string cacheDir);
long long QNetworkDiskCache_maximumCacheSize(const QNetworkDiskCache* self);
void QNetworkDiskCache_setMaximumCacheSize(QNetworkDiskCache* self, long long size);
long long QNetworkDiskCache_cacheSize(const QNetworkDiskCache* self);
QNetworkCacheMetaData* QNetworkDiskCache_metaData(QNetworkDiskCache* self, QUrl* url);
void QNetworkDiskCache_updateMetaData(QNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
QIODevice* QNetworkDiskCache_data(QNetworkDiskCache* self, QUrl* url);
bool QNetworkDiskCache_remove(QNetworkDiskCache* self, QUrl* url);
QIODevice* QNetworkDiskCache_prepare(QNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
void QNetworkDiskCache_insert(QNetworkDiskCache* self, QIODevice* device);
QNetworkCacheMetaData* QNetworkDiskCache_fileMetaData(const QNetworkDiskCache* self, struct miqt_string fileName);
void QNetworkDiskCache_clear(QNetworkDiskCache* self);
long long QNetworkDiskCache_expire(QNetworkDiskCache* self);
struct miqt_string QNetworkDiskCache_tr2(const char* s, const char* c);
struct miqt_string QNetworkDiskCache_tr3(const char* s, const char* c, int n);
QMetaObject* QNetworkDiskCache_virtualbase_metaObject(const void* self);
void* QNetworkDiskCache_virtualbase_metacast(void* self, const char* param1);
int QNetworkDiskCache_virtualbase_metacall(void* self, int param1, int param2, void** param3);
long long QNetworkDiskCache_virtualbase_cacheSize(const void* self);
QNetworkCacheMetaData* QNetworkDiskCache_virtualbase_metaData(void* self, QUrl* url);
void QNetworkDiskCache_virtualbase_updateMetaData(void* self, QNetworkCacheMetaData* metaData);
QIODevice* QNetworkDiskCache_virtualbase_data(void* self, QUrl* url);
bool QNetworkDiskCache_virtualbase_remove(void* self, QUrl* url);
QIODevice* QNetworkDiskCache_virtualbase_prepare(void* self, QNetworkCacheMetaData* metaData);
void QNetworkDiskCache_virtualbase_insert(void* self, QIODevice* device);
void QNetworkDiskCache_virtualbase_clear(void* self);
long long QNetworkDiskCache_virtualbase_expire(void* self);
bool QNetworkDiskCache_virtualbase_event(void* self, QEvent* event);
bool QNetworkDiskCache_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QNetworkDiskCache_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QNetworkDiskCache_virtualbase_childEvent(void* self, QChildEvent* event);
void QNetworkDiskCache_virtualbase_customEvent(void* self, QEvent* event);
void QNetworkDiskCache_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QNetworkDiskCache_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QNetworkDiskCache_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QNetworkDiskCache_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QNetworkDiskCache_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QNetworkDiskCache_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QNetworkDiskCache_staticMetaObject();
void QNetworkDiskCache_delete(QNetworkDiskCache* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
