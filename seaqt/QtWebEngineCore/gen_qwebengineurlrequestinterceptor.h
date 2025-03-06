#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLREQUESTINTERCEPTOR_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLREQUESTINTERCEPTOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QWebEngineUrlRequestInfo;
class QWebEngineUrlRequestInterceptor;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWebEngineUrlRequestInfo QWebEngineUrlRequestInfo;
typedef struct QWebEngineUrlRequestInterceptor QWebEngineUrlRequestInterceptor;
#endif

struct QWebEngineUrlRequestInterceptor_VTable {
	void (*destructor)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self);
	QMetaObject* (*metaObject)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, const QWebEngineUrlRequestInterceptor* self);
	void* (*metacast)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, const char* param1);
	int (*metacall)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3);
	void (*interceptRequest)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info);
	bool (*event)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QEvent* event);
	bool (*eventFilter)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QTimerEvent* event);
	void (*childEvent)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QChildEvent* event);
	void (*customEvent)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QEvent* event);
	void (*connectNotify)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);
};
QWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new(struct QWebEngineUrlRequestInterceptor_VTable* vtbl);
QWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new2(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QObject* p);
void QWebEngineUrlRequestInterceptor_virtbase(QWebEngineUrlRequestInterceptor* src, QObject** outptr_QObject);
QMetaObject* QWebEngineUrlRequestInterceptor_metaObject(const QWebEngineUrlRequestInterceptor* self);
void* QWebEngineUrlRequestInterceptor_metacast(QWebEngineUrlRequestInterceptor* self, const char* param1);
int QWebEngineUrlRequestInterceptor_metacall(QWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineUrlRequestInterceptor_tr(const char* s);
void QWebEngineUrlRequestInterceptor_interceptRequest(QWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info);
struct miqt_string QWebEngineUrlRequestInterceptor_tr2(const char* s, const char* c);
struct miqt_string QWebEngineUrlRequestInterceptor_tr3(const char* s, const char* c, int n);
QMetaObject* QWebEngineUrlRequestInterceptor_virtualbase_metaObject(const void* self);
void* QWebEngineUrlRequestInterceptor_virtualbase_metacast(void* self, const char* param1);
int QWebEngineUrlRequestInterceptor_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QWebEngineUrlRequestInterceptor_virtualbase_interceptRequest(void* self, QWebEngineUrlRequestInfo* info);
bool QWebEngineUrlRequestInterceptor_virtualbase_event(void* self, QEvent* event);
bool QWebEngineUrlRequestInterceptor_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_childEvent(void* self, QChildEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_customEvent(void* self, QEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QWebEngineUrlRequestInterceptor_protectedbase_sender(const void* self);
int QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(const void* self);
int QWebEngineUrlRequestInterceptor_protectedbase_receivers(const void* self, const char* signal);
bool QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QWebEngineUrlRequestInterceptor_staticMetaObject();
void QWebEngineUrlRequestInterceptor_delete(QWebEngineUrlRequestInterceptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
