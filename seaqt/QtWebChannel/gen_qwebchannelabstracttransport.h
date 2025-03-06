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

struct QWebChannelAbstractTransport_VTable {
	void (*destructor)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self);
	QMetaObject* (*metaObject)(struct QWebChannelAbstractTransport_VTable* vtbl, const QWebChannelAbstractTransport* self);
	void* (*metacast)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, const char* param1);
	int (*metacall)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, int param1, int param2, void** param3);
	void (*sendMessage)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QJsonObject* message);
	bool (*event)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QEvent* event);
	bool (*eventFilter)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QTimerEvent* event);
	void (*childEvent)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QChildEvent* event);
	void (*customEvent)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QEvent* event);
	void (*connectNotify)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWebChannelAbstractTransport_VTable* vtbl, QWebChannelAbstractTransport* self, QMetaMethod* signal);
};
QWebChannelAbstractTransport* QWebChannelAbstractTransport_new(struct QWebChannelAbstractTransport_VTable* vtbl);
QWebChannelAbstractTransport* QWebChannelAbstractTransport_new2(struct QWebChannelAbstractTransport_VTable* vtbl, QObject* parent);
void QWebChannelAbstractTransport_virtbase(QWebChannelAbstractTransport* src, QObject** outptr_QObject);
QMetaObject* QWebChannelAbstractTransport_metaObject(const QWebChannelAbstractTransport* self);
void* QWebChannelAbstractTransport_metacast(QWebChannelAbstractTransport* self, const char* param1);
int QWebChannelAbstractTransport_metacall(QWebChannelAbstractTransport* self, int param1, int param2, void** param3);
struct miqt_string QWebChannelAbstractTransport_tr(const char* s);
void QWebChannelAbstractTransport_sendMessage(QWebChannelAbstractTransport* self, QJsonObject* message);
void QWebChannelAbstractTransport_messageReceived(QWebChannelAbstractTransport* self, QJsonObject* message, QWebChannelAbstractTransport* transport);
void QWebChannelAbstractTransport_connect_messageReceived(QWebChannelAbstractTransport* self, intptr_t slot);
struct miqt_string QWebChannelAbstractTransport_tr2(const char* s, const char* c);
struct miqt_string QWebChannelAbstractTransport_tr3(const char* s, const char* c, int n);
QMetaObject* QWebChannelAbstractTransport_virtualbase_metaObject(const void* self);
void* QWebChannelAbstractTransport_virtualbase_metacast(void* self, const char* param1);
int QWebChannelAbstractTransport_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QWebChannelAbstractTransport_virtualbase_sendMessage(void* self, QJsonObject* message);
bool QWebChannelAbstractTransport_virtualbase_event(void* self, QEvent* event);
bool QWebChannelAbstractTransport_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWebChannelAbstractTransport_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWebChannelAbstractTransport_virtualbase_childEvent(void* self, QChildEvent* event);
void QWebChannelAbstractTransport_virtualbase_customEvent(void* self, QEvent* event);
void QWebChannelAbstractTransport_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWebChannelAbstractTransport_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QWebChannelAbstractTransport_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWebChannelAbstractTransport_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWebChannelAbstractTransport_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWebChannelAbstractTransport_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QWebChannelAbstractTransport_staticMetaObject();
void QWebChannelAbstractTransport_delete(QWebChannelAbstractTransport* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
