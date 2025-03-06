#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSCTPSERVER_H
#define SEAQT_QTNETWORK_GEN_QSCTPSERVER_H

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
class QSctpServer;
class QSctpSocket;
class QTcpServer;
class QTcpSocket;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSctpServer QSctpServer;
typedef struct QSctpSocket QSctpSocket;
typedef struct QTcpServer QTcpServer;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSctpServer_VTable {
	void (*destructor)(struct QSctpServer_VTable* vtbl, QSctpServer* self);
	QMetaObject* (*metaObject)(struct QSctpServer_VTable* vtbl, const QSctpServer* self);
	void* (*metacast)(struct QSctpServer_VTable* vtbl, QSctpServer* self, const char* param1);
	int (*metacall)(struct QSctpServer_VTable* vtbl, QSctpServer* self, int param1, int param2, void** param3);
	void (*incomingConnection)(struct QSctpServer_VTable* vtbl, QSctpServer* self, intptr_t handle);
	bool (*hasPendingConnections)(struct QSctpServer_VTable* vtbl, const QSctpServer* self);
	QTcpSocket* (*nextPendingConnection)(struct QSctpServer_VTable* vtbl, QSctpServer* self);
	bool (*event)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QEvent* event);
	bool (*eventFilter)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QTimerEvent* event);
	void (*childEvent)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QChildEvent* event);
	void (*customEvent)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QEvent* event);
	void (*connectNotify)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSctpServer_VTable* vtbl, QSctpServer* self, QMetaMethod* signal);
};
QSctpServer* QSctpServer_new(struct QSctpServer_VTable* vtbl);
QSctpServer* QSctpServer_new2(struct QSctpServer_VTable* vtbl, QObject* parent);
void QSctpServer_virtbase(QSctpServer* src, QTcpServer** outptr_QTcpServer);
QMetaObject* QSctpServer_metaObject(const QSctpServer* self);
void* QSctpServer_metacast(QSctpServer* self, const char* param1);
int QSctpServer_metacall(QSctpServer* self, int param1, int param2, void** param3);
struct miqt_string QSctpServer_tr(const char* s);
void QSctpServer_setMaximumChannelCount(QSctpServer* self, int count);
int QSctpServer_maximumChannelCount(const QSctpServer* self);
QSctpSocket* QSctpServer_nextPendingDatagramConnection(QSctpServer* self);
void QSctpServer_incomingConnection(QSctpServer* self, intptr_t handle);
struct miqt_string QSctpServer_tr2(const char* s, const char* c);
struct miqt_string QSctpServer_tr3(const char* s, const char* c, int n);
QMetaObject* QSctpServer_virtualbase_metaObject(const void* self);
void* QSctpServer_virtualbase_metacast(void* self, const char* param1);
int QSctpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSctpServer_virtualbase_incomingConnection(void* self, intptr_t handle);
bool QSctpServer_virtualbase_hasPendingConnections(const void* self);
QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(void* self);
bool QSctpServer_virtualbase_event(void* self, QEvent* event);
bool QSctpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSctpServer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSctpServer_virtualbase_childEvent(void* self, QChildEvent* event);
void QSctpServer_virtualbase_customEvent(void* self, QEvent* event);
void QSctpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSctpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSctpServer_protectedbase_addPendingConnection(bool* _dynamic_cast_ok, void* self, QTcpSocket* socket);
QObject* QSctpServer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSctpServer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSctpServer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSctpServer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSctpServer_staticMetaObject();
void QSctpServer_delete(QSctpServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
