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

typedef struct VirtualQSctpServer VirtualQSctpServer;
typedef struct QSctpServer_VTable{
	void (*destructor)(VirtualQSctpServer* self);
	QMetaObject* (*metaObject)(const VirtualQSctpServer* self);
	void* (*metacast)(VirtualQSctpServer* self, const char* param1);
	int (*metacall)(VirtualQSctpServer* self, int param1, int param2, void** param3);
	void (*incomingConnection)(VirtualQSctpServer* self, intptr_t handle);
	bool (*hasPendingConnections)(const VirtualQSctpServer* self);
	QTcpSocket* (*nextPendingConnection)(VirtualQSctpServer* self);
	bool (*event)(VirtualQSctpServer* self, QEvent* event);
	bool (*eventFilter)(VirtualQSctpServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSctpServer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSctpServer* self, QChildEvent* event);
	void (*customEvent)(VirtualQSctpServer* self, QEvent* event);
	void (*connectNotify)(VirtualQSctpServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSctpServer* self, QMetaMethod* signal);
}QSctpServer_VTable;

const QSctpServer_VTable* QSctpServer_vtbl(const VirtualQSctpServer* self);
void* QSctpServer_vdata(const VirtualQSctpServer* self);
void QSctpServer_setVdata(VirtualQSctpServer* self, void* vdata);

VirtualQSctpServer* QSctpServer_new(const QSctpServer_VTable* vtbl, void* vdata);
VirtualQSctpServer* QSctpServer_new2(const QSctpServer_VTable* vtbl, void* vdata, QObject* parent);

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

QMetaObject* QSctpServer_virtualbase_metaObject(const VirtualQSctpServer* self);
void* QSctpServer_virtualbase_metacast(VirtualQSctpServer* self, const char* param1);
int QSctpServer_virtualbase_metacall(VirtualQSctpServer* self, int param1, int param2, void** param3);
void QSctpServer_virtualbase_incomingConnection(VirtualQSctpServer* self, intptr_t handle);
bool QSctpServer_virtualbase_hasPendingConnections(const VirtualQSctpServer* self);
QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(VirtualQSctpServer* self);
bool QSctpServer_virtualbase_event(VirtualQSctpServer* self, QEvent* event);
bool QSctpServer_virtualbase_eventFilter(VirtualQSctpServer* self, QObject* watched, QEvent* event);
void QSctpServer_virtualbase_timerEvent(VirtualQSctpServer* self, QTimerEvent* event);
void QSctpServer_virtualbase_childEvent(VirtualQSctpServer* self, QChildEvent* event);
void QSctpServer_virtualbase_customEvent(VirtualQSctpServer* self, QEvent* event);
void QSctpServer_virtualbase_connectNotify(VirtualQSctpServer* self, QMetaMethod* signal);
void QSctpServer_virtualbase_disconnectNotify(VirtualQSctpServer* self, QMetaMethod* signal);

void QSctpServer_protectedbase_addPendingConnection(VirtualQSctpServer* self, QTcpSocket* socket);
QObject* QSctpServer_protectedbase_sender(const VirtualQSctpServer* self);
int QSctpServer_protectedbase_senderSignalIndex(const VirtualQSctpServer* self);
int QSctpServer_protectedbase_receivers(const VirtualQSctpServer* self, const char* signal);
bool QSctpServer_protectedbase_isSignalConnected(const VirtualQSctpServer* self, QMetaMethod* signal);

const QMetaObject* QSctpServer_staticMetaObject();
void QSctpServer_delete(QSctpServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
