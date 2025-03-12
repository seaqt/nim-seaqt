#pragma once
#ifndef SEAQT_QTWEBCHANNEL_GEN_QQMLWEBCHANNEL_H
#define SEAQT_QTWEBCHANNEL_GEN_QQMLWEBCHANNEL_H

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
class QQmlWebChannel;
class QTimerEvent;
class QVariant;
class QWebChannel;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlWebChannel QQmlWebChannel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWebChannel QWebChannel;
#endif

typedef struct VirtualQQmlWebChannel VirtualQQmlWebChannel;
typedef struct QQmlWebChannel_VTable{
	void (*destructor)(VirtualQQmlWebChannel* self);
	QMetaObject* (*metaObject)(const VirtualQQmlWebChannel* self);
	void* (*metacast)(VirtualQQmlWebChannel* self, const char* param1);
	int (*metacall)(VirtualQQmlWebChannel* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQmlWebChannel* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlWebChannel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlWebChannel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlWebChannel* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlWebChannel* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlWebChannel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlWebChannel* self, QMetaMethod* signal);
}QQmlWebChannel_VTable;

const QQmlWebChannel_VTable* QQmlWebChannel_vtbl(const VirtualQQmlWebChannel* self);
void* QQmlWebChannel_vdata(const VirtualQQmlWebChannel* self);
void QQmlWebChannel_setVdata(VirtualQQmlWebChannel* self, void* vdata);

VirtualQQmlWebChannel* QQmlWebChannel_new(const QQmlWebChannel_VTable* vtbl, void* vdata);
VirtualQQmlWebChannel* QQmlWebChannel_new2(const QQmlWebChannel_VTable* vtbl, void* vdata, QObject* parent);

void QQmlWebChannel_virtbase(QQmlWebChannel* src, QWebChannel** outptr_QWebChannel);
QMetaObject* QQmlWebChannel_metaObject(const QQmlWebChannel* self);
void* QQmlWebChannel_metacast(QQmlWebChannel* self, const char* param1);
int QQmlWebChannel_metacall(QQmlWebChannel* self, int param1, int param2, void** param3);
struct miqt_string QQmlWebChannel_tr(const char* s);
void QQmlWebChannel_registerObjects(QQmlWebChannel* self, struct miqt_map /* of struct miqt_string to QVariant* */  objects);
void QQmlWebChannel_connectTo(QQmlWebChannel* self, QObject* transport);
void QQmlWebChannel_disconnectFrom(QQmlWebChannel* self, QObject* transport);
struct miqt_string QQmlWebChannel_tr2(const char* s, const char* c);
struct miqt_string QQmlWebChannel_tr3(const char* s, const char* c, int n);

QMetaObject* QQmlWebChannel_virtualbase_metaObject(const VirtualQQmlWebChannel* self);
void* QQmlWebChannel_virtualbase_metacast(VirtualQQmlWebChannel* self, const char* param1);
int QQmlWebChannel_virtualbase_metacall(VirtualQQmlWebChannel* self, int param1, int param2, void** param3);
bool QQmlWebChannel_virtualbase_event(VirtualQQmlWebChannel* self, QEvent* event);
bool QQmlWebChannel_virtualbase_eventFilter(VirtualQQmlWebChannel* self, QObject* watched, QEvent* event);
void QQmlWebChannel_virtualbase_timerEvent(VirtualQQmlWebChannel* self, QTimerEvent* event);
void QQmlWebChannel_virtualbase_childEvent(VirtualQQmlWebChannel* self, QChildEvent* event);
void QQmlWebChannel_virtualbase_customEvent(VirtualQQmlWebChannel* self, QEvent* event);
void QQmlWebChannel_virtualbase_connectNotify(VirtualQQmlWebChannel* self, QMetaMethod* signal);
void QQmlWebChannel_virtualbase_disconnectNotify(VirtualQQmlWebChannel* self, QMetaMethod* signal);

QObject* QQmlWebChannel_protectedbase_sender(const VirtualQQmlWebChannel* self);
int QQmlWebChannel_protectedbase_senderSignalIndex(const VirtualQQmlWebChannel* self);
int QQmlWebChannel_protectedbase_receivers(const VirtualQQmlWebChannel* self, const char* signal);
bool QQmlWebChannel_protectedbase_isSignalConnected(const VirtualQQmlWebChannel* self, QMetaMethod* signal);

const QMetaObject* QQmlWebChannel_staticMetaObject();
void QQmlWebChannel_delete(QQmlWebChannel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
