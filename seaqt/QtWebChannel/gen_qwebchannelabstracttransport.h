#pragma once
#ifndef SEAQT_QTWEBCHANNEL_GEN_QWEBCHANNELABSTRACTTRANSPORT_H
#define SEAQT_QTWEBCHANNEL_GEN_QWEBCHANNELABSTRACTTRANSPORT_H

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
class QJsonObject;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QWebChannelAbstractTransport;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJsonObject QJsonObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWebChannelAbstractTransport QWebChannelAbstractTransport;
#endif

typedef struct VirtualQWebChannelAbstractTransport VirtualQWebChannelAbstractTransport;
typedef struct QWebChannelAbstractTransport_VTable{
	void (*destructor)(VirtualQWebChannelAbstractTransport* self);
	QMetaObject* (*metaObject)(const VirtualQWebChannelAbstractTransport* self);
	void* (*metacast)(VirtualQWebChannelAbstractTransport* self, const char* param1);
	int (*metacall)(VirtualQWebChannelAbstractTransport* self, int param1, int param2, void** param3);
	void (*sendMessage)(VirtualQWebChannelAbstractTransport* self, QJsonObject* message);
	bool (*event)(VirtualQWebChannelAbstractTransport* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebChannelAbstractTransport* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebChannelAbstractTransport* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebChannelAbstractTransport* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebChannelAbstractTransport* self, QEvent* event);
	void (*connectNotify)(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);
}QWebChannelAbstractTransport_VTable;

const QWebChannelAbstractTransport_VTable* QWebChannelAbstractTransport_vtbl(const VirtualQWebChannelAbstractTransport* self);
void* QWebChannelAbstractTransport_vdata(const VirtualQWebChannelAbstractTransport* self);
void QWebChannelAbstractTransport_setVdata(VirtualQWebChannelAbstractTransport* self, void* vdata);

VirtualQWebChannelAbstractTransport* QWebChannelAbstractTransport_new(const QWebChannelAbstractTransport_VTable* vtbl, void* vdata);
VirtualQWebChannelAbstractTransport* QWebChannelAbstractTransport_new2(const QWebChannelAbstractTransport_VTable* vtbl, void* vdata, QObject* parent);

void QWebChannelAbstractTransport_virtbase(QWebChannelAbstractTransport* src, QObject** outptr_QObject);
QMetaObject* QWebChannelAbstractTransport_metaObject(const QWebChannelAbstractTransport* self);
void* QWebChannelAbstractTransport_metacast(QWebChannelAbstractTransport* self, const char* param1);
int QWebChannelAbstractTransport_metacall(QWebChannelAbstractTransport* self, int param1, int param2, void** param3);
struct miqt_string QWebChannelAbstractTransport_tr(const char* s);
void QWebChannelAbstractTransport_sendMessage(QWebChannelAbstractTransport* self, QJsonObject* message);
void QWebChannelAbstractTransport_messageReceived(QWebChannelAbstractTransport* self, QJsonObject* message, QWebChannelAbstractTransport* transport);
void QWebChannelAbstractTransport_connect_messageReceived(VirtualQWebChannelAbstractTransport* self, intptr_t slot, void (*callback)(intptr_t, QJsonObject*, QWebChannelAbstractTransport*), void (*release)(intptr_t));
struct miqt_string QWebChannelAbstractTransport_tr2(const char* s, const char* c);
struct miqt_string QWebChannelAbstractTransport_tr3(const char* s, const char* c, int n);

QMetaObject* QWebChannelAbstractTransport_virtualbase_metaObject(const VirtualQWebChannelAbstractTransport* self);
void* QWebChannelAbstractTransport_virtualbase_metacast(VirtualQWebChannelAbstractTransport* self, const char* param1);
int QWebChannelAbstractTransport_virtualbase_metacall(VirtualQWebChannelAbstractTransport* self, int param1, int param2, void** param3);
void QWebChannelAbstractTransport_virtualbase_sendMessage(VirtualQWebChannelAbstractTransport* self, QJsonObject* message);
bool QWebChannelAbstractTransport_virtualbase_event(VirtualQWebChannelAbstractTransport* self, QEvent* event);
bool QWebChannelAbstractTransport_virtualbase_eventFilter(VirtualQWebChannelAbstractTransport* self, QObject* watched, QEvent* event);
void QWebChannelAbstractTransport_virtualbase_timerEvent(VirtualQWebChannelAbstractTransport* self, QTimerEvent* event);
void QWebChannelAbstractTransport_virtualbase_childEvent(VirtualQWebChannelAbstractTransport* self, QChildEvent* event);
void QWebChannelAbstractTransport_virtualbase_customEvent(VirtualQWebChannelAbstractTransport* self, QEvent* event);
void QWebChannelAbstractTransport_virtualbase_connectNotify(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);
void QWebChannelAbstractTransport_virtualbase_disconnectNotify(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);

QObject* QWebChannelAbstractTransport_protectedbase_sender(const VirtualQWebChannelAbstractTransport* self);
int QWebChannelAbstractTransport_protectedbase_senderSignalIndex(const VirtualQWebChannelAbstractTransport* self);
int QWebChannelAbstractTransport_protectedbase_receivers(const VirtualQWebChannelAbstractTransport* self, const char* signal);
bool QWebChannelAbstractTransport_protectedbase_isSignalConnected(const VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);

const QMetaObject* QWebChannelAbstractTransport_staticMetaObject();
void QWebChannelAbstractTransport_delete(QWebChannelAbstractTransport* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
