#pragma once
#ifndef SEAQT_QTWEBCHANNEL_GEN_QWEBCHANNEL_H
#define SEAQT_QTWEBCHANNEL_GEN_QWEBCHANNEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
class QWebChannel;
class QWebChannelAbstractTransport;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWebChannel QWebChannel;
typedef struct QWebChannelAbstractTransport QWebChannelAbstractTransport;
#endif

typedef struct VirtualQWebChannel VirtualQWebChannel;
typedef struct QWebChannel_VTable{
	void (*destructor)(VirtualQWebChannel* self);
	QMetaObject* (*metaObject)(const VirtualQWebChannel* self);
	void* (*metacast)(VirtualQWebChannel* self, const char* param1);
	int (*metacall)(VirtualQWebChannel* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQWebChannel* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebChannel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebChannel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebChannel* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebChannel* self, QEvent* event);
	void (*connectNotify)(VirtualQWebChannel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebChannel* self, QMetaMethod* signal);
}QWebChannel_VTable;

void* QWebChannel_vdata(VirtualQWebChannel* self);
VirtualQWebChannel* vdata_QWebChannel(void* vdata);

VirtualQWebChannel* QWebChannel_new(const QWebChannel_VTable* vtbl, size_t vdata);
VirtualQWebChannel* QWebChannel_new_parent(const QWebChannel_VTable* vtbl, size_t vdata, QObject* parent);

void QWebChannel_virtbase(QWebChannel* src, QObject** outptr_QObject);
QMetaObject* QWebChannel_metaObject(const QWebChannel* self);
void* QWebChannel_metacast(QWebChannel* self, const char* param1);
int QWebChannel_metacall(QWebChannel* self, int param1, int param2, void** param3);
struct seaqt_string QWebChannel_tr_s(const char* s);
void QWebChannel_registerObjects(QWebChannel* self, struct seaqt_map /* of struct seaqt_string to QObject* */  objects);
struct seaqt_map /* of struct seaqt_string to QObject* */  QWebChannel_registeredObjects(const QWebChannel* self);
void QWebChannel_registerObject(QWebChannel* self, struct seaqt_string id, QObject* object);
void QWebChannel_deregisterObject(QWebChannel* self, QObject* object);
bool QWebChannel_blockUpdates(const QWebChannel* self);
void QWebChannel_setBlockUpdates(QWebChannel* self, bool block);
int QWebChannel_propertyUpdateInterval(const QWebChannel* self);
void QWebChannel_setPropertyUpdateInterval(QWebChannel* self, int ms);
void QWebChannel_blockUpdatesChanged(QWebChannel* self, bool block);
void QWebChannel_connect_blockUpdatesChanged(QWebChannel* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebChannel_connectTo(QWebChannel* self, QWebChannelAbstractTransport* transport);
void QWebChannel_disconnectFrom(QWebChannel* self, QWebChannelAbstractTransport* transport);
struct seaqt_string QWebChannel_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebChannel_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QWebChannel_virtualbase_metaObject(const VirtualQWebChannel* self);
void* QWebChannel_virtualbase_metacast(VirtualQWebChannel* self, const char* param1);
int QWebChannel_virtualbase_metacall(VirtualQWebChannel* self, int param1, int param2, void** param3);
bool QWebChannel_virtualbase_event(VirtualQWebChannel* self, QEvent* event);
bool QWebChannel_virtualbase_eventFilter(VirtualQWebChannel* self, QObject* watched, QEvent* event);
void QWebChannel_virtualbase_timerEvent(VirtualQWebChannel* self, QTimerEvent* event);
void QWebChannel_virtualbase_childEvent(VirtualQWebChannel* self, QChildEvent* event);
void QWebChannel_virtualbase_customEvent(VirtualQWebChannel* self, QEvent* event);
void QWebChannel_virtualbase_connectNotify(VirtualQWebChannel* self, QMetaMethod* signal);
void QWebChannel_virtualbase_disconnectNotify(VirtualQWebChannel* self, QMetaMethod* signal);

QObject* QWebChannel_protectedbase_sender(const VirtualQWebChannel* self);
int QWebChannel_protectedbase_senderSignalIndex(const VirtualQWebChannel* self);
int QWebChannel_protectedbase_receivers(const VirtualQWebChannel* self, const char* signal);
bool QWebChannel_protectedbase_isSignalConnected(const VirtualQWebChannel* self, QMetaMethod* signal);

void QWebChannel_delete(QWebChannel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
