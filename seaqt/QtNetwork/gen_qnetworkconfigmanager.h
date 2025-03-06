#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKCONFIGMANAGER_H
#define SEAQT_QTNETWORK_GEN_QNETWORKCONFIGMANAGER_H

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
class QNetworkConfigurationManager;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QNetworkConfigurationManager QNetworkConfigurationManager;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QNetworkConfigurationManager_VTable {
	void (*destructor)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self);
	QMetaObject* (*metaObject)(struct QNetworkConfigurationManager_VTable* vtbl, const QNetworkConfigurationManager* self);
	void* (*metacast)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, const char* param1);
	int (*metacall)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, int param1, int param2, void** param3);
	bool (*event)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QEvent* event);
	bool (*eventFilter)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QTimerEvent* event);
	void (*childEvent)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QChildEvent* event);
	void (*customEvent)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QEvent* event);
	void (*connectNotify)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QNetworkConfigurationManager_VTable* vtbl, QNetworkConfigurationManager* self, QMetaMethod* signal);
};
QNetworkConfigurationManager* QNetworkConfigurationManager_new(struct QNetworkConfigurationManager_VTable* vtbl);
QNetworkConfigurationManager* QNetworkConfigurationManager_new2(struct QNetworkConfigurationManager_VTable* vtbl, QObject* parent);
void QNetworkConfigurationManager_virtbase(QNetworkConfigurationManager* src, QObject** outptr_QObject);
QMetaObject* QNetworkConfigurationManager_metaObject(const QNetworkConfigurationManager* self);
void* QNetworkConfigurationManager_metacast(QNetworkConfigurationManager* self, const char* param1);
int QNetworkConfigurationManager_metacall(QNetworkConfigurationManager* self, int param1, int param2, void** param3);
struct miqt_string QNetworkConfigurationManager_tr(const char* s);
struct miqt_string QNetworkConfigurationManager_trUtf8(const char* s);
int QNetworkConfigurationManager_capabilities(const QNetworkConfigurationManager* self);
QNetworkConfiguration* QNetworkConfigurationManager_defaultConfiguration(const QNetworkConfigurationManager* self);
struct miqt_array /* of QNetworkConfiguration* */  QNetworkConfigurationManager_allConfigurations(const QNetworkConfigurationManager* self);
QNetworkConfiguration* QNetworkConfigurationManager_configurationFromIdentifier(const QNetworkConfigurationManager* self, struct miqt_string identifier);
bool QNetworkConfigurationManager_isOnline(const QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_updateConfigurations(QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_configurationAdded(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_connect_configurationAdded(QNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
void QNetworkConfigurationManager_configurationRemoved(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_connect_configurationRemoved(QNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
void QNetworkConfigurationManager_configurationChanged(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_connect_configurationChanged(QNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
void QNetworkConfigurationManager_onlineStateChanged(QNetworkConfigurationManager* self, bool isOnline);
void QNetworkConfigurationManager_connect_onlineStateChanged(QNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QNetworkConfigurationManager_updateCompleted(QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_connect_updateCompleted(QNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QNetworkConfigurationManager_tr2(const char* s, const char* c);
struct miqt_string QNetworkConfigurationManager_tr3(const char* s, const char* c, int n);
struct miqt_string QNetworkConfigurationManager_trUtf82(const char* s, const char* c);
struct miqt_string QNetworkConfigurationManager_trUtf83(const char* s, const char* c, int n);
struct miqt_array /* of QNetworkConfiguration* */  QNetworkConfigurationManager_allConfigurations1(const QNetworkConfigurationManager* self, int flags);
QMetaObject* QNetworkConfigurationManager_virtualbase_metaObject(const void* self);
void* QNetworkConfigurationManager_virtualbase_metacast(void* self, const char* param1);
int QNetworkConfigurationManager_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QNetworkConfigurationManager_virtualbase_event(void* self, QEvent* event);
bool QNetworkConfigurationManager_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QNetworkConfigurationManager_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QNetworkConfigurationManager_virtualbase_childEvent(void* self, QChildEvent* event);
void QNetworkConfigurationManager_virtualbase_customEvent(void* self, QEvent* event);
void QNetworkConfigurationManager_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QNetworkConfigurationManager_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QNetworkConfigurationManager_protectedbase_sender(const void* self);
int QNetworkConfigurationManager_protectedbase_senderSignalIndex(const void* self);
int QNetworkConfigurationManager_protectedbase_receivers(const void* self, const char* signal);
bool QNetworkConfigurationManager_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QNetworkConfigurationManager_staticMetaObject();
void QNetworkConfigurationManager_delete(QNetworkConfigurationManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
