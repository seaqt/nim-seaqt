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

struct QNetworkSession_VTable {
	void (*destructor)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self);
	QMetaObject* (*metaObject)(struct QNetworkSession_VTable* vtbl, const QNetworkSession* self);
	void* (*metacast)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, const char* param1);
	int (*metacall)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, int param1, int param2, void** param3);
	void (*connectNotify)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QMetaMethod* signal);
	bool (*event)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QEvent* event);
	bool (*eventFilter)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QTimerEvent* event);
	void (*childEvent)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QChildEvent* event);
	void (*customEvent)(struct QNetworkSession_VTable* vtbl, QNetworkSession* self, QEvent* event);
};
QNetworkSession* QNetworkSession_new(struct QNetworkSession_VTable* vtbl, QNetworkConfiguration* connConfig);
QNetworkSession* QNetworkSession_new2(struct QNetworkSession_VTable* vtbl, QNetworkConfiguration* connConfig, QObject* parent);
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
void QNetworkSession_connect_stateChanged(QNetworkSession* self, intptr_t slot);
void QNetworkSession_opened(QNetworkSession* self);
void QNetworkSession_connect_opened(QNetworkSession* self, intptr_t slot);
void QNetworkSession_closed(QNetworkSession* self);
void QNetworkSession_connect_closed(QNetworkSession* self, intptr_t slot);
void QNetworkSession_errorWithQNetworkSessionSessionError(QNetworkSession* self, int param1);
void QNetworkSession_connect_errorWithQNetworkSessionSessionError(QNetworkSession* self, intptr_t slot);
void QNetworkSession_preferredConfigurationChanged(QNetworkSession* self, QNetworkConfiguration* config, bool isSeamless);
void QNetworkSession_connect_preferredConfigurationChanged(QNetworkSession* self, intptr_t slot);
void QNetworkSession_newConfigurationActivated(QNetworkSession* self);
void QNetworkSession_connect_newConfigurationActivated(QNetworkSession* self, intptr_t slot);
void QNetworkSession_usagePoliciesChanged(QNetworkSession* self, int usagePolicies);
void QNetworkSession_connect_usagePoliciesChanged(QNetworkSession* self, intptr_t slot);
void QNetworkSession_connectNotify(QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_disconnectNotify(QNetworkSession* self, QMetaMethod* signal);
struct miqt_string QNetworkSession_tr2(const char* s, const char* c);
struct miqt_string QNetworkSession_tr3(const char* s, const char* c, int n);
struct miqt_string QNetworkSession_trUtf82(const char* s, const char* c);
struct miqt_string QNetworkSession_trUtf83(const char* s, const char* c, int n);
bool QNetworkSession_waitForOpened1(QNetworkSession* self, int msecs);
QMetaObject* QNetworkSession_virtualbase_metaObject(const void* self);
void* QNetworkSession_virtualbase_metacast(void* self, const char* param1);
int QNetworkSession_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QNetworkSession_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QNetworkSession_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QNetworkSession_virtualbase_event(void* self, QEvent* event);
bool QNetworkSession_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QNetworkSession_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QNetworkSession_virtualbase_childEvent(void* self, QChildEvent* event);
void QNetworkSession_virtualbase_customEvent(void* self, QEvent* event);
QObject* QNetworkSession_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QNetworkSession_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QNetworkSession_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QNetworkSession_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QNetworkSession_staticMetaObject();
void QNetworkSession_delete(QNetworkSession* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
