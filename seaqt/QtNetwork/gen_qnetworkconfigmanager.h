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

typedef struct VirtualQNetworkConfigurationManager VirtualQNetworkConfigurationManager;
typedef struct QNetworkConfigurationManager_VTable{
	void (*destructor)(VirtualQNetworkConfigurationManager* self);
	QMetaObject* (*metaObject)(const VirtualQNetworkConfigurationManager* self);
	void* (*metacast)(VirtualQNetworkConfigurationManager* self, const char* param1);
	int (*metacall)(VirtualQNetworkConfigurationManager* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQNetworkConfigurationManager* self, QEvent* event);
	bool (*eventFilter)(VirtualQNetworkConfigurationManager* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQNetworkConfigurationManager* self, QTimerEvent* event);
	void (*childEvent)(VirtualQNetworkConfigurationManager* self, QChildEvent* event);
	void (*customEvent)(VirtualQNetworkConfigurationManager* self, QEvent* event);
	void (*connectNotify)(VirtualQNetworkConfigurationManager* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQNetworkConfigurationManager* self, QMetaMethod* signal);
}QNetworkConfigurationManager_VTable;

const QNetworkConfigurationManager_VTable* QNetworkConfigurationManager_vtbl(const VirtualQNetworkConfigurationManager* self);
void* QNetworkConfigurationManager_vdata(const VirtualQNetworkConfigurationManager* self);
void QNetworkConfigurationManager_setVdata(VirtualQNetworkConfigurationManager* self, void* vdata);

VirtualQNetworkConfigurationManager* QNetworkConfigurationManager_new(const QNetworkConfigurationManager_VTable* vtbl, void* vdata);
VirtualQNetworkConfigurationManager* QNetworkConfigurationManager_new2(const QNetworkConfigurationManager_VTable* vtbl, void* vdata, QObject* parent);

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
void QNetworkConfigurationManager_connect_configurationAdded(VirtualQNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
void QNetworkConfigurationManager_configurationRemoved(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_connect_configurationRemoved(VirtualQNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
void QNetworkConfigurationManager_configurationChanged(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_connect_configurationChanged(VirtualQNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
void QNetworkConfigurationManager_onlineStateChanged(QNetworkConfigurationManager* self, bool isOnline);
void QNetworkConfigurationManager_connect_onlineStateChanged(VirtualQNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QNetworkConfigurationManager_updateCompleted(QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_connect_updateCompleted(VirtualQNetworkConfigurationManager* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QNetworkConfigurationManager_tr2(const char* s, const char* c);
struct miqt_string QNetworkConfigurationManager_tr3(const char* s, const char* c, int n);
struct miqt_string QNetworkConfigurationManager_trUtf82(const char* s, const char* c);
struct miqt_string QNetworkConfigurationManager_trUtf83(const char* s, const char* c, int n);
struct miqt_array /* of QNetworkConfiguration* */  QNetworkConfigurationManager_allConfigurations1(const QNetworkConfigurationManager* self, int flags);

QMetaObject* QNetworkConfigurationManager_virtualbase_metaObject(const VirtualQNetworkConfigurationManager* self);
void* QNetworkConfigurationManager_virtualbase_metacast(VirtualQNetworkConfigurationManager* self, const char* param1);
int QNetworkConfigurationManager_virtualbase_metacall(VirtualQNetworkConfigurationManager* self, int param1, int param2, void** param3);
bool QNetworkConfigurationManager_virtualbase_event(VirtualQNetworkConfigurationManager* self, QEvent* event);
bool QNetworkConfigurationManager_virtualbase_eventFilter(VirtualQNetworkConfigurationManager* self, QObject* watched, QEvent* event);
void QNetworkConfigurationManager_virtualbase_timerEvent(VirtualQNetworkConfigurationManager* self, QTimerEvent* event);
void QNetworkConfigurationManager_virtualbase_childEvent(VirtualQNetworkConfigurationManager* self, QChildEvent* event);
void QNetworkConfigurationManager_virtualbase_customEvent(VirtualQNetworkConfigurationManager* self, QEvent* event);
void QNetworkConfigurationManager_virtualbase_connectNotify(VirtualQNetworkConfigurationManager* self, QMetaMethod* signal);
void QNetworkConfigurationManager_virtualbase_disconnectNotify(VirtualQNetworkConfigurationManager* self, QMetaMethod* signal);

QObject* QNetworkConfigurationManager_protectedbase_sender(const VirtualQNetworkConfigurationManager* self);
int QNetworkConfigurationManager_protectedbase_senderSignalIndex(const VirtualQNetworkConfigurationManager* self);
int QNetworkConfigurationManager_protectedbase_receivers(const VirtualQNetworkConfigurationManager* self, const char* signal);
bool QNetworkConfigurationManager_protectedbase_isSignalConnected(const VirtualQNetworkConfigurationManager* self, QMetaMethod* signal);

const QMetaObject* QNetworkConfigurationManager_staticMetaObject();
void QNetworkConfigurationManager_delete(QNetworkConfigurationManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
