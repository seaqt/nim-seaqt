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

typedef struct VirtualQNetworkDiskCache VirtualQNetworkDiskCache;
typedef struct QNetworkDiskCache_VTable{
	void (*destructor)(VirtualQNetworkDiskCache* self);
	QMetaObject* (*metaObject)(const VirtualQNetworkDiskCache* self);
	void* (*metacast)(VirtualQNetworkDiskCache* self, const char* param1);
	int (*metacall)(VirtualQNetworkDiskCache* self, int param1, int param2, void** param3);
	long long (*cacheSize)(const VirtualQNetworkDiskCache* self);
	QNetworkCacheMetaData* (*metaData)(VirtualQNetworkDiskCache* self, QUrl* url);
	void (*updateMetaData)(VirtualQNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
	QIODevice* (*data)(VirtualQNetworkDiskCache* self, QUrl* url);
	bool (*remove)(VirtualQNetworkDiskCache* self, QUrl* url);
	QIODevice* (*prepare)(VirtualQNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
	void (*insert)(VirtualQNetworkDiskCache* self, QIODevice* device);
	void (*clear)(VirtualQNetworkDiskCache* self);
	long long (*expire)(VirtualQNetworkDiskCache* self);
	bool (*event)(VirtualQNetworkDiskCache* self, QEvent* event);
	bool (*eventFilter)(VirtualQNetworkDiskCache* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQNetworkDiskCache* self, QTimerEvent* event);
	void (*childEvent)(VirtualQNetworkDiskCache* self, QChildEvent* event);
	void (*customEvent)(VirtualQNetworkDiskCache* self, QEvent* event);
	void (*connectNotify)(VirtualQNetworkDiskCache* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQNetworkDiskCache* self, QMetaMethod* signal);
}QNetworkDiskCache_VTable;

const QNetworkDiskCache_VTable* QNetworkDiskCache_vtbl(const VirtualQNetworkDiskCache* self);
void* QNetworkDiskCache_vdata(const VirtualQNetworkDiskCache* self);
void QNetworkDiskCache_setVdata(VirtualQNetworkDiskCache* self, void* vdata);

VirtualQNetworkDiskCache* QNetworkDiskCache_new(const QNetworkDiskCache_VTable* vtbl, void* vdata);
VirtualQNetworkDiskCache* QNetworkDiskCache_new2(const QNetworkDiskCache_VTable* vtbl, void* vdata, QObject* parent);

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

QMetaObject* QNetworkDiskCache_virtualbase_metaObject(const VirtualQNetworkDiskCache* self);
void* QNetworkDiskCache_virtualbase_metacast(VirtualQNetworkDiskCache* self, const char* param1);
int QNetworkDiskCache_virtualbase_metacall(VirtualQNetworkDiskCache* self, int param1, int param2, void** param3);
long long QNetworkDiskCache_virtualbase_cacheSize(const VirtualQNetworkDiskCache* self);
QNetworkCacheMetaData* QNetworkDiskCache_virtualbase_metaData(VirtualQNetworkDiskCache* self, QUrl* url);
void QNetworkDiskCache_virtualbase_updateMetaData(VirtualQNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
QIODevice* QNetworkDiskCache_virtualbase_data(VirtualQNetworkDiskCache* self, QUrl* url);
bool QNetworkDiskCache_virtualbase_remove(VirtualQNetworkDiskCache* self, QUrl* url);
QIODevice* QNetworkDiskCache_virtualbase_prepare(VirtualQNetworkDiskCache* self, QNetworkCacheMetaData* metaData);
void QNetworkDiskCache_virtualbase_insert(VirtualQNetworkDiskCache* self, QIODevice* device);
void QNetworkDiskCache_virtualbase_clear(VirtualQNetworkDiskCache* self);
long long QNetworkDiskCache_virtualbase_expire(VirtualQNetworkDiskCache* self);
bool QNetworkDiskCache_virtualbase_event(VirtualQNetworkDiskCache* self, QEvent* event);
bool QNetworkDiskCache_virtualbase_eventFilter(VirtualQNetworkDiskCache* self, QObject* watched, QEvent* event);
void QNetworkDiskCache_virtualbase_timerEvent(VirtualQNetworkDiskCache* self, QTimerEvent* event);
void QNetworkDiskCache_virtualbase_childEvent(VirtualQNetworkDiskCache* self, QChildEvent* event);
void QNetworkDiskCache_virtualbase_customEvent(VirtualQNetworkDiskCache* self, QEvent* event);
void QNetworkDiskCache_virtualbase_connectNotify(VirtualQNetworkDiskCache* self, QMetaMethod* signal);
void QNetworkDiskCache_virtualbase_disconnectNotify(VirtualQNetworkDiskCache* self, QMetaMethod* signal);

QObject* QNetworkDiskCache_protectedbase_sender(const VirtualQNetworkDiskCache* self);
int QNetworkDiskCache_protectedbase_senderSignalIndex(const VirtualQNetworkDiskCache* self);
int QNetworkDiskCache_protectedbase_receivers(const VirtualQNetworkDiskCache* self, const char* signal);
bool QNetworkDiskCache_protectedbase_isSignalConnected(const VirtualQNetworkDiskCache* self, QMetaMethod* signal);

const QMetaObject* QNetworkDiskCache_staticMetaObject();
void QNetworkDiskCache_delete(QNetworkDiskCache* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
