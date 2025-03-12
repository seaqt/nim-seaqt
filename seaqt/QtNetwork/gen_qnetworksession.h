#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKSESSION_H
#define SEAQT_QTNETWORK_GEN_QNETWORKSESSION_H

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
class QNetworkConfiguration;
class QNetworkInterface;
class QNetworkSession;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QNetworkInterface QNetworkInterface;
typedef struct QNetworkSession QNetworkSession;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQNetworkSession VirtualQNetworkSession;
typedef struct QNetworkSession_VTable{
	void (*destructor)(VirtualQNetworkSession* self);
	QMetaObject* (*metaObject)(const VirtualQNetworkSession* self);
	void* (*metacast)(VirtualQNetworkSession* self, const char* param1);
	int (*metacall)(VirtualQNetworkSession* self, int param1, int param2, void** param3);
	void (*connectNotify)(VirtualQNetworkSession* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQNetworkSession* self, QMetaMethod* signal);
	bool (*event)(VirtualQNetworkSession* self, QEvent* event);
	bool (*eventFilter)(VirtualQNetworkSession* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQNetworkSession* self, QTimerEvent* event);
	void (*childEvent)(VirtualQNetworkSession* self, QChildEvent* event);
	void (*customEvent)(VirtualQNetworkSession* self, QEvent* event);
}QNetworkSession_VTable;

const QNetworkSession_VTable* QNetworkSession_vtbl(const VirtualQNetworkSession* self);
void* QNetworkSession_vdata(const VirtualQNetworkSession* self);
void QNetworkSession_setVdata(VirtualQNetworkSession* self, void* vdata);

VirtualQNetworkSession* QNetworkSession_new(const QNetworkSession_VTable* vtbl, void* vdata, QNetworkConfiguration* connConfig);
VirtualQNetworkSession* QNetworkSession_new2(const QNetworkSession_VTable* vtbl, void* vdata, QNetworkConfiguration* connConfig, QObject* parent);

void QNetworkSession_virtbase(QNetworkSession* src, QObject** outptr_QObject);
QMetaObject* QNetworkSession_metaObject(const QNetworkSession* self);
void* QNetworkSession_metacast(QNetworkSession* self, const char* param1);
int QNetworkSession_metacall(QNetworkSession* self, int param1, int param2, void** param3);
struct miqt_string QNetworkSession_tr(const char* s);
struct miqt_string QNetworkSession_trUtf8(const char* s);
bool QNetworkSession_isOpen(const QNetworkSession* self);
QNetworkConfiguration* QNetworkSession_configuration(const QNetworkSession* self);
QNetworkInterface* QNetworkSession_interface(const QNetworkSession* self);
int QNetworkSession_state(const QNetworkSession* self);
int QNetworkSession_error(const QNetworkSession* self);
struct miqt_string QNetworkSession_errorString(const QNetworkSession* self);
QVariant* QNetworkSession_sessionProperty(const QNetworkSession* self, struct miqt_string key);
void QNetworkSession_setSessionProperty(QNetworkSession* self, struct miqt_string key, QVariant* value);
unsigned long long QNetworkSession_bytesWritten(const QNetworkSession* self);
unsigned long long QNetworkSession_bytesReceived(const QNetworkSession* self);
unsigned long long QNetworkSession_activeTime(const QNetworkSession* self);
int QNetworkSession_usagePolicies(const QNetworkSession* self);
bool QNetworkSession_waitForOpened(QNetworkSession* self);
void QNetworkSession_open(QNetworkSession* self);
void QNetworkSession_close(QNetworkSession* self);
void QNetworkSession_stop(QNetworkSession* self);
void QNetworkSession_migrate(QNetworkSession* self);
void QNetworkSession_ignore(QNetworkSession* self);
void QNetworkSession_accept(QNetworkSession* self);
void QNetworkSession_reject(QNetworkSession* self);
void QNetworkSession_stateChanged(QNetworkSession* self, int param1);
void QNetworkSession_connect_stateChanged(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QNetworkSession_opened(QNetworkSession* self);
void QNetworkSession_connect_opened(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QNetworkSession_closed(QNetworkSession* self);
void QNetworkSession_connect_closed(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QNetworkSession_errorWithQNetworkSessionSessionError(QNetworkSession* self, int param1);
void QNetworkSession_connect_errorWithQNetworkSessionSessionError(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QNetworkSession_preferredConfigurationChanged(QNetworkSession* self, QNetworkConfiguration* config, bool isSeamless);
void QNetworkSession_connect_preferredConfigurationChanged(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*, bool), void (*release)(intptr_t));
void QNetworkSession_newConfigurationActivated(QNetworkSession* self);
void QNetworkSession_connect_newConfigurationActivated(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QNetworkSession_usagePoliciesChanged(QNetworkSession* self, int usagePolicies);
void QNetworkSession_connect_usagePoliciesChanged(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QNetworkSession_connectNotify(QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_disconnectNotify(QNetworkSession* self, QMetaMethod* signal);
struct miqt_string QNetworkSession_tr2(const char* s, const char* c);
struct miqt_string QNetworkSession_tr3(const char* s, const char* c, int n);
struct miqt_string QNetworkSession_trUtf82(const char* s, const char* c);
struct miqt_string QNetworkSession_trUtf83(const char* s, const char* c, int n);
bool QNetworkSession_waitForOpened1(QNetworkSession* self, int msecs);

QMetaObject* QNetworkSession_virtualbase_metaObject(const VirtualQNetworkSession* self);
void* QNetworkSession_virtualbase_metacast(VirtualQNetworkSession* self, const char* param1);
int QNetworkSession_virtualbase_metacall(VirtualQNetworkSession* self, int param1, int param2, void** param3);
void QNetworkSession_virtualbase_connectNotify(VirtualQNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_virtualbase_disconnectNotify(VirtualQNetworkSession* self, QMetaMethod* signal);
bool QNetworkSession_virtualbase_event(VirtualQNetworkSession* self, QEvent* event);
bool QNetworkSession_virtualbase_eventFilter(VirtualQNetworkSession* self, QObject* watched, QEvent* event);
void QNetworkSession_virtualbase_timerEvent(VirtualQNetworkSession* self, QTimerEvent* event);
void QNetworkSession_virtualbase_childEvent(VirtualQNetworkSession* self, QChildEvent* event);
void QNetworkSession_virtualbase_customEvent(VirtualQNetworkSession* self, QEvent* event);

QObject* QNetworkSession_protectedbase_sender(const VirtualQNetworkSession* self);
int QNetworkSession_protectedbase_senderSignalIndex(const VirtualQNetworkSession* self);
int QNetworkSession_protectedbase_receivers(const VirtualQNetworkSession* self, const char* signal);
bool QNetworkSession_protectedbase_isSignalConnected(const VirtualQNetworkSession* self, QMetaMethod* signal);

const QMetaObject* QNetworkSession_staticMetaObject();
void QNetworkSession_delete(QNetworkSession* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
