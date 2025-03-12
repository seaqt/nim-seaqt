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

typedef struct VirtualQWebEngineUrlRequestInterceptor VirtualQWebEngineUrlRequestInterceptor;
typedef struct QWebEngineUrlRequestInterceptor_VTable{
	void (*destructor)(VirtualQWebEngineUrlRequestInterceptor* self);
	QMetaObject* (*metaObject)(const VirtualQWebEngineUrlRequestInterceptor* self);
	void* (*metacast)(VirtualQWebEngineUrlRequestInterceptor* self, const char* param1);
	int (*metacall)(VirtualQWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3);
	void (*interceptRequest)(VirtualQWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info);
	bool (*event)(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebEngineUrlRequestInterceptor* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebEngineUrlRequestInterceptor* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebEngineUrlRequestInterceptor* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event);
	void (*connectNotify)(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);
}QWebEngineUrlRequestInterceptor_VTable;

const QWebEngineUrlRequestInterceptor_VTable* QWebEngineUrlRequestInterceptor_vtbl(const VirtualQWebEngineUrlRequestInterceptor* self);
void* QWebEngineUrlRequestInterceptor_vdata(const VirtualQWebEngineUrlRequestInterceptor* self);
void QWebEngineUrlRequestInterceptor_setVdata(VirtualQWebEngineUrlRequestInterceptor* self, void* vdata);

VirtualQWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new(const QWebEngineUrlRequestInterceptor_VTable* vtbl, void* vdata);
VirtualQWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new2(const QWebEngineUrlRequestInterceptor_VTable* vtbl, void* vdata, QObject* p);

void QWebEngineUrlRequestInterceptor_virtbase(QWebEngineUrlRequestInterceptor* src, QObject** outptr_QObject);
QMetaObject* QWebEngineUrlRequestInterceptor_metaObject(const QWebEngineUrlRequestInterceptor* self);
void* QWebEngineUrlRequestInterceptor_metacast(QWebEngineUrlRequestInterceptor* self, const char* param1);
int QWebEngineUrlRequestInterceptor_metacall(QWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineUrlRequestInterceptor_tr(const char* s);
struct miqt_string QWebEngineUrlRequestInterceptor_trUtf8(const char* s);
void QWebEngineUrlRequestInterceptor_interceptRequest(QWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info);
struct miqt_string QWebEngineUrlRequestInterceptor_tr2(const char* s, const char* c);
struct miqt_string QWebEngineUrlRequestInterceptor_tr3(const char* s, const char* c, int n);
struct miqt_string QWebEngineUrlRequestInterceptor_trUtf82(const char* s, const char* c);
struct miqt_string QWebEngineUrlRequestInterceptor_trUtf83(const char* s, const char* c, int n);

QMetaObject* QWebEngineUrlRequestInterceptor_virtualbase_metaObject(const VirtualQWebEngineUrlRequestInterceptor* self);
void* QWebEngineUrlRequestInterceptor_virtualbase_metacast(VirtualQWebEngineUrlRequestInterceptor* self, const char* param1);
int QWebEngineUrlRequestInterceptor_virtualbase_metacall(VirtualQWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3);
void QWebEngineUrlRequestInterceptor_virtualbase_interceptRequest(VirtualQWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info);
bool QWebEngineUrlRequestInterceptor_virtualbase_event(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event);
bool QWebEngineUrlRequestInterceptor_virtualbase_eventFilter(VirtualQWebEngineUrlRequestInterceptor* self, QObject* watched, QEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_timerEvent(VirtualQWebEngineUrlRequestInterceptor* self, QTimerEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_childEvent(VirtualQWebEngineUrlRequestInterceptor* self, QChildEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_customEvent(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event);
void QWebEngineUrlRequestInterceptor_virtualbase_connectNotify(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);
void QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);

QObject* QWebEngineUrlRequestInterceptor_protectedbase_sender(const VirtualQWebEngineUrlRequestInterceptor* self);
int QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(const VirtualQWebEngineUrlRequestInterceptor* self);
int QWebEngineUrlRequestInterceptor_protectedbase_receivers(const VirtualQWebEngineUrlRequestInterceptor* self, const char* signal);
bool QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(const VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);

const QMetaObject* QWebEngineUrlRequestInterceptor_staticMetaObject();
void QWebEngineUrlRequestInterceptor_delete(QWebEngineUrlRequestInterceptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
