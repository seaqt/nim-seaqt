#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTNODE_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTNODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QAbstractItemModelReplica;
class QChildEvent;
class QEvent;
class QIODevice;
class QItemSelectionModel;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRemoteObjectAbstractPersistedStore;
class QRemoteObjectDynamicReplica;
class QRemoteObjectHost;
class QRemoteObjectHostBase;
class QRemoteObjectNode;
class QRemoteObjectRegistry;
class QRemoteObjectRegistryHost;
class QRemoteObjectSourceLocationInfo;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemModelReplica QAbstractItemModelReplica;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRemoteObjectAbstractPersistedStore QRemoteObjectAbstractPersistedStore;
typedef struct QRemoteObjectDynamicReplica QRemoteObjectDynamicReplica;
typedef struct QRemoteObjectHost QRemoteObjectHost;
typedef struct QRemoteObjectHostBase QRemoteObjectHostBase;
typedef struct QRemoteObjectNode QRemoteObjectNode;
typedef struct QRemoteObjectRegistry QRemoteObjectRegistry;
typedef struct QRemoteObjectRegistryHost QRemoteObjectRegistryHost;
typedef struct QRemoteObjectSourceLocationInfo QRemoteObjectSourceLocationInfo;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQRemoteObjectAbstractPersistedStore VirtualQRemoteObjectAbstractPersistedStore;
typedef struct QRemoteObjectAbstractPersistedStore_VTable{
	void (*destructor)(VirtualQRemoteObjectAbstractPersistedStore* self);
	QMetaObject* (*metaObject)(const VirtualQRemoteObjectAbstractPersistedStore* self);
	void* (*metacast)(VirtualQRemoteObjectAbstractPersistedStore* self, const char* param1);
	int (*metacall)(VirtualQRemoteObjectAbstractPersistedStore* self, int param1, int param2, void** param3);
	void (*saveProperties)(VirtualQRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);
	struct seaqt_array /* of QVariant* */  (*restoreProperties)(VirtualQRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig);
	bool (*event)(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event);
	bool (*eventFilter)(VirtualQRemoteObjectAbstractPersistedStore* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRemoteObjectAbstractPersistedStore* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRemoteObjectAbstractPersistedStore* self, QChildEvent* event);
	void (*customEvent)(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event);
	void (*connectNotify)(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);
}QRemoteObjectAbstractPersistedStore_VTable;

void* QRemoteObjectAbstractPersistedStore_vdata(VirtualQRemoteObjectAbstractPersistedStore* self);
VirtualQRemoteObjectAbstractPersistedStore* vdata_QRemoteObjectAbstractPersistedStore(void* vdata);

VirtualQRemoteObjectAbstractPersistedStore* QRemoteObjectAbstractPersistedStore_new(const QRemoteObjectAbstractPersistedStore_VTable* vtbl, size_t vdata);
VirtualQRemoteObjectAbstractPersistedStore* QRemoteObjectAbstractPersistedStore_new_parent(const QRemoteObjectAbstractPersistedStore_VTable* vtbl, size_t vdata, QObject* parent);

void QRemoteObjectAbstractPersistedStore_virtbase(QRemoteObjectAbstractPersistedStore* src, QObject** outptr_QObject);
QMetaObject* QRemoteObjectAbstractPersistedStore_metaObject(const QRemoteObjectAbstractPersistedStore* self);
void* QRemoteObjectAbstractPersistedStore_metacast(QRemoteObjectAbstractPersistedStore* self, const char* param1);
int QRemoteObjectAbstractPersistedStore_metacall(QRemoteObjectAbstractPersistedStore* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectAbstractPersistedStore_tr_s(const char* s);
void QRemoteObjectAbstractPersistedStore_saveProperties(QRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);
struct seaqt_array /* of QVariant* */  QRemoteObjectAbstractPersistedStore_restoreProperties(QRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig);
struct seaqt_string QRemoteObjectAbstractPersistedStore_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectAbstractPersistedStore_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRemoteObjectAbstractPersistedStore_virtualbase_metaObject(const VirtualQRemoteObjectAbstractPersistedStore* self);
void* QRemoteObjectAbstractPersistedStore_virtualbase_metacast(VirtualQRemoteObjectAbstractPersistedStore* self, const char* param1);
int QRemoteObjectAbstractPersistedStore_virtualbase_metacall(VirtualQRemoteObjectAbstractPersistedStore* self, int param1, int param2, void** param3);
void QRemoteObjectAbstractPersistedStore_virtualbase_saveProperties(VirtualQRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);
struct seaqt_array /* of QVariant* */  QRemoteObjectAbstractPersistedStore_virtualbase_restoreProperties(VirtualQRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig);
bool QRemoteObjectAbstractPersistedStore_virtualbase_event(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event);
bool QRemoteObjectAbstractPersistedStore_virtualbase_eventFilter(VirtualQRemoteObjectAbstractPersistedStore* self, QObject* watched, QEvent* event);
void QRemoteObjectAbstractPersistedStore_virtualbase_timerEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QTimerEvent* event);
void QRemoteObjectAbstractPersistedStore_virtualbase_childEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QChildEvent* event);
void QRemoteObjectAbstractPersistedStore_virtualbase_customEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event);
void QRemoteObjectAbstractPersistedStore_virtualbase_connectNotify(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);
void QRemoteObjectAbstractPersistedStore_virtualbase_disconnectNotify(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);

QObject* QRemoteObjectAbstractPersistedStore_protectedbase_sender(const VirtualQRemoteObjectAbstractPersistedStore* self);
int QRemoteObjectAbstractPersistedStore_protectedbase_senderSignalIndex(const VirtualQRemoteObjectAbstractPersistedStore* self);
int QRemoteObjectAbstractPersistedStore_protectedbase_receivers(const VirtualQRemoteObjectAbstractPersistedStore* self, const char* signal);
bool QRemoteObjectAbstractPersistedStore_protectedbase_isSignalConnected(const VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);

const QMetaObject* QRemoteObjectAbstractPersistedStore_staticMetaObject();
void QRemoteObjectAbstractPersistedStore_delete(QRemoteObjectAbstractPersistedStore* self);

typedef struct VirtualQRemoteObjectNode VirtualQRemoteObjectNode;
typedef struct QRemoteObjectNode_VTable{
	void (*destructor)(VirtualQRemoteObjectNode* self);
	QMetaObject* (*metaObject)(const VirtualQRemoteObjectNode* self);
	void* (*metacast)(VirtualQRemoteObjectNode* self, const char* param1);
	int (*metacall)(VirtualQRemoteObjectNode* self, int param1, int param2, void** param3);
	void (*setName)(VirtualQRemoteObjectNode* self, struct seaqt_string name);
	bool (*setRegistryUrl)(VirtualQRemoteObjectNode* self, QUrl* registryAddress);
	void (*timerEvent)(VirtualQRemoteObjectNode* self, QTimerEvent* param1);
	bool (*event)(VirtualQRemoteObjectNode* self, QEvent* event);
	bool (*eventFilter)(VirtualQRemoteObjectNode* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQRemoteObjectNode* self, QChildEvent* event);
	void (*customEvent)(VirtualQRemoteObjectNode* self, QEvent* event);
	void (*connectNotify)(VirtualQRemoteObjectNode* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRemoteObjectNode* self, QMetaMethod* signal);
}QRemoteObjectNode_VTable;

void* QRemoteObjectNode_vdata(VirtualQRemoteObjectNode* self);
VirtualQRemoteObjectNode* vdata_QRemoteObjectNode(void* vdata);

VirtualQRemoteObjectNode* QRemoteObjectNode_new(const QRemoteObjectNode_VTable* vtbl, size_t vdata);
VirtualQRemoteObjectNode* QRemoteObjectNode_new_registryAddress(const QRemoteObjectNode_VTable* vtbl, size_t vdata, QUrl* registryAddress);
VirtualQRemoteObjectNode* QRemoteObjectNode_new_parent(const QRemoteObjectNode_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQRemoteObjectNode* QRemoteObjectNode_new_registryAddress_parent(const QRemoteObjectNode_VTable* vtbl, size_t vdata, QUrl* registryAddress, QObject* parent);

void QRemoteObjectNode_virtbase(QRemoteObjectNode* src, QObject** outptr_QObject);
QMetaObject* QRemoteObjectNode_metaObject(const QRemoteObjectNode* self);
void* QRemoteObjectNode_metacast(QRemoteObjectNode* self, const char* param1);
int QRemoteObjectNode_metacall(QRemoteObjectNode* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectNode_tr_s(const char* s);
bool QRemoteObjectNode_connectToNode(QRemoteObjectNode* self, QUrl* address);
void QRemoteObjectNode_addClientSideConnection(QRemoteObjectNode* self, QIODevice* ioDevice);
void QRemoteObjectNode_setName(QRemoteObjectNode* self, struct seaqt_string name);
QRemoteObjectDynamicReplica* QRemoteObjectNode_acquireDynamic(QRemoteObjectNode* self, struct seaqt_string name);
QAbstractItemModelReplica* QRemoteObjectNode_acquireModel_name(QRemoteObjectNode* self, struct seaqt_string name);
QUrl* QRemoteObjectNode_registryUrl(const QRemoteObjectNode* self);
bool QRemoteObjectNode_setRegistryUrl(QRemoteObjectNode* self, QUrl* registryAddress);
bool QRemoteObjectNode_waitForRegistry(QRemoteObjectNode* self);
QRemoteObjectRegistry* QRemoteObjectNode_registry(const QRemoteObjectNode* self);
QRemoteObjectAbstractPersistedStore* QRemoteObjectNode_persistedStore(const QRemoteObjectNode* self);
void QRemoteObjectNode_setPersistedStore(QRemoteObjectNode* self, QRemoteObjectAbstractPersistedStore* persistedStore);
int QRemoteObjectNode_lastError(const QRemoteObjectNode* self);
int QRemoteObjectNode_heartbeatInterval(const QRemoteObjectNode* self);
void QRemoteObjectNode_setHeartbeatInterval(QRemoteObjectNode* self, int interval);
void QRemoteObjectNode_remoteObjectAdded(QRemoteObjectNode* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  param1);
void QRemoteObjectNode_connect_remoteObjectAdded(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t));
void QRemoteObjectNode_remoteObjectRemoved(QRemoteObjectNode* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  param1);
void QRemoteObjectNode_connect_remoteObjectRemoved(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t));
void QRemoteObjectNode_error(QRemoteObjectNode* self, int errorCode);
void QRemoteObjectNode_connect_error(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRemoteObjectNode_heartbeatIntervalChanged(QRemoteObjectNode* self, int heartbeatInterval);
void QRemoteObjectNode_connect_heartbeatIntervalChanged(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRemoteObjectNode_timerEvent(QRemoteObjectNode* self, QTimerEvent* param1);
struct seaqt_string QRemoteObjectNode_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectNode_tr_s_c_n(const char* s, const char* c, int n);
QAbstractItemModelReplica* QRemoteObjectNode_acquireModel_name_action(QRemoteObjectNode* self, struct seaqt_string name, int action);
QAbstractItemModelReplica* QRemoteObjectNode_acquireModel_name_action_rolesHint(QRemoteObjectNode* self, struct seaqt_string name, int action, struct seaqt_array /* of int */  rolesHint);
bool QRemoteObjectNode_waitForRegistry_timeout(QRemoteObjectNode* self, int timeout);

QMetaObject* QRemoteObjectNode_virtualbase_metaObject(const VirtualQRemoteObjectNode* self);
void* QRemoteObjectNode_virtualbase_metacast(VirtualQRemoteObjectNode* self, const char* param1);
int QRemoteObjectNode_virtualbase_metacall(VirtualQRemoteObjectNode* self, int param1, int param2, void** param3);
void QRemoteObjectNode_virtualbase_setName(VirtualQRemoteObjectNode* self, struct seaqt_string name);
bool QRemoteObjectNode_virtualbase_setRegistryUrl(VirtualQRemoteObjectNode* self, QUrl* registryAddress);
void QRemoteObjectNode_virtualbase_timerEvent(VirtualQRemoteObjectNode* self, QTimerEvent* param1);
bool QRemoteObjectNode_virtualbase_event(VirtualQRemoteObjectNode* self, QEvent* event);
bool QRemoteObjectNode_virtualbase_eventFilter(VirtualQRemoteObjectNode* self, QObject* watched, QEvent* event);
void QRemoteObjectNode_virtualbase_childEvent(VirtualQRemoteObjectNode* self, QChildEvent* event);
void QRemoteObjectNode_virtualbase_customEvent(VirtualQRemoteObjectNode* self, QEvent* event);
void QRemoteObjectNode_virtualbase_connectNotify(VirtualQRemoteObjectNode* self, QMetaMethod* signal);
void QRemoteObjectNode_virtualbase_disconnectNotify(VirtualQRemoteObjectNode* self, QMetaMethod* signal);

QObject* QRemoteObjectNode_protectedbase_sender(const VirtualQRemoteObjectNode* self);
int QRemoteObjectNode_protectedbase_senderSignalIndex(const VirtualQRemoteObjectNode* self);
int QRemoteObjectNode_protectedbase_receivers(const VirtualQRemoteObjectNode* self, const char* signal);
bool QRemoteObjectNode_protectedbase_isSignalConnected(const VirtualQRemoteObjectNode* self, QMetaMethod* signal);

const QMetaObject* QRemoteObjectNode_staticMetaObject();
void QRemoteObjectNode_delete(QRemoteObjectNode* self);

void QRemoteObjectHostBase_virtbase(QRemoteObjectHostBase* src, QRemoteObjectNode** outptr_QRemoteObjectNode);
QMetaObject* QRemoteObjectHostBase_metaObject(const QRemoteObjectHostBase* self);
void* QRemoteObjectHostBase_metacast(QRemoteObjectHostBase* self, const char* param1);
int QRemoteObjectHostBase_metacall(QRemoteObjectHostBase* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectHostBase_tr_s(const char* s);
void QRemoteObjectHostBase_setName(QRemoteObjectHostBase* self, struct seaqt_string name);
bool QRemoteObjectHostBase_enableRemoting_object(QRemoteObjectHostBase* self, QObject* object);
bool QRemoteObjectHostBase_enableRemoting_model_name_roles(QRemoteObjectHostBase* self, QAbstractItemModel* model, struct seaqt_string name, struct seaqt_array /* of int */  roles);
bool QRemoteObjectHostBase_disableRemoting(QRemoteObjectHostBase* self, QObject* remoteObject);
void QRemoteObjectHostBase_addHostSideConnection(QRemoteObjectHostBase* self, QIODevice* ioDevice);
bool QRemoteObjectHostBase_proxy_registryUrl(QRemoteObjectHostBase* self, QUrl* registryUrl);
bool QRemoteObjectHostBase_reverseProxy(QRemoteObjectHostBase* self);
QUrl* QRemoteObjectHostBase_hostUrl(const QRemoteObjectHostBase* self);
bool QRemoteObjectHostBase_setHostUrl(QRemoteObjectHostBase* self, QUrl* hostAddress, int allowedSchemas);
struct seaqt_string QRemoteObjectHostBase_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectHostBase_tr_s_c_n(const char* s, const char* c, int n);
bool QRemoteObjectHostBase_enableRemoting_object_name(QRemoteObjectHostBase* self, QObject* object, struct seaqt_string name);
bool QRemoteObjectHostBase_enableRemoting_model_name_roles_selectionModel(QRemoteObjectHostBase* self, QAbstractItemModel* model, struct seaqt_string name, struct seaqt_array /* of int */  roles, QItemSelectionModel* selectionModel);
bool QRemoteObjectHostBase_proxy_registryUrl_hostUrl(QRemoteObjectHostBase* self, QUrl* registryUrl, QUrl* hostUrl);

const QMetaObject* QRemoteObjectHostBase_staticMetaObject();
void QRemoteObjectHostBase_delete(QRemoteObjectHostBase* self);

typedef struct VirtualQRemoteObjectHost VirtualQRemoteObjectHost;
typedef struct QRemoteObjectHost_VTable{
	void (*destructor)(VirtualQRemoteObjectHost* self);
	QMetaObject* (*metaObject)(const VirtualQRemoteObjectHost* self);
	void* (*metacast)(VirtualQRemoteObjectHost* self, const char* param1);
	int (*metacall)(VirtualQRemoteObjectHost* self, int param1, int param2, void** param3);
	QUrl* (*hostUrl)(const VirtualQRemoteObjectHost* self);
	bool (*setHostUrl)(VirtualQRemoteObjectHost* self, QUrl* hostAddress, int allowedSchemas);
	void (*setName)(VirtualQRemoteObjectHost* self, struct seaqt_string name);
	bool (*setRegistryUrl)(VirtualQRemoteObjectHost* self, QUrl* registryAddress);
	void (*timerEvent)(VirtualQRemoteObjectHost* self, QTimerEvent* param1);
	bool (*event)(VirtualQRemoteObjectHost* self, QEvent* event);
	bool (*eventFilter)(VirtualQRemoteObjectHost* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQRemoteObjectHost* self, QChildEvent* event);
	void (*customEvent)(VirtualQRemoteObjectHost* self, QEvent* event);
	void (*connectNotify)(VirtualQRemoteObjectHost* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRemoteObjectHost* self, QMetaMethod* signal);
}QRemoteObjectHost_VTable;

void* QRemoteObjectHost_vdata(VirtualQRemoteObjectHost* self);
VirtualQRemoteObjectHost* vdata_QRemoteObjectHost(void* vdata);

VirtualQRemoteObjectHost* QRemoteObjectHost_new(const QRemoteObjectHost_VTable* vtbl, size_t vdata);
VirtualQRemoteObjectHost* QRemoteObjectHost_new_address(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address);
VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_parent(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QObject* parent);
VirtualQRemoteObjectHost* QRemoteObjectHost_new_parent(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_registryAddress(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QUrl* registryAddress);
VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_registryAddress_allowedSchemas(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QUrl* registryAddress, int allowedSchemas);
VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_registryAddress_allowedSchemas_parent(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QUrl* registryAddress, int allowedSchemas, QObject* parent);

void QRemoteObjectHost_virtbase(QRemoteObjectHost* src, QRemoteObjectHostBase** outptr_QRemoteObjectHostBase);
QMetaObject* QRemoteObjectHost_metaObject(const QRemoteObjectHost* self);
void* QRemoteObjectHost_metacast(QRemoteObjectHost* self, const char* param1);
int QRemoteObjectHost_metacall(QRemoteObjectHost* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectHost_tr_s(const char* s);
QUrl* QRemoteObjectHost_hostUrl(const QRemoteObjectHost* self);
bool QRemoteObjectHost_setHostUrl(QRemoteObjectHost* self, QUrl* hostAddress, int allowedSchemas);
void QRemoteObjectHost_setLocalServerOptions(int options);
void QRemoteObjectHost_hostUrlChanged(QRemoteObjectHost* self);
void QRemoteObjectHost_connect_hostUrlChanged(QRemoteObjectHost* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QRemoteObjectHost_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectHost_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRemoteObjectHost_virtualbase_metaObject(const VirtualQRemoteObjectHost* self);
void* QRemoteObjectHost_virtualbase_metacast(VirtualQRemoteObjectHost* self, const char* param1);
int QRemoteObjectHost_virtualbase_metacall(VirtualQRemoteObjectHost* self, int param1, int param2, void** param3);
QUrl* QRemoteObjectHost_virtualbase_hostUrl(const VirtualQRemoteObjectHost* self);
bool QRemoteObjectHost_virtualbase_setHostUrl(VirtualQRemoteObjectHost* self, QUrl* hostAddress, int allowedSchemas);
void QRemoteObjectHost_virtualbase_setName(VirtualQRemoteObjectHost* self, struct seaqt_string name);
bool QRemoteObjectHost_virtualbase_setRegistryUrl(VirtualQRemoteObjectHost* self, QUrl* registryAddress);
void QRemoteObjectHost_virtualbase_timerEvent(VirtualQRemoteObjectHost* self, QTimerEvent* param1);
bool QRemoteObjectHost_virtualbase_event(VirtualQRemoteObjectHost* self, QEvent* event);
bool QRemoteObjectHost_virtualbase_eventFilter(VirtualQRemoteObjectHost* self, QObject* watched, QEvent* event);
void QRemoteObjectHost_virtualbase_childEvent(VirtualQRemoteObjectHost* self, QChildEvent* event);
void QRemoteObjectHost_virtualbase_customEvent(VirtualQRemoteObjectHost* self, QEvent* event);
void QRemoteObjectHost_virtualbase_connectNotify(VirtualQRemoteObjectHost* self, QMetaMethod* signal);
void QRemoteObjectHost_virtualbase_disconnectNotify(VirtualQRemoteObjectHost* self, QMetaMethod* signal);

QObject* QRemoteObjectHost_protectedbase_sender(const VirtualQRemoteObjectHost* self);
int QRemoteObjectHost_protectedbase_senderSignalIndex(const VirtualQRemoteObjectHost* self);
int QRemoteObjectHost_protectedbase_receivers(const VirtualQRemoteObjectHost* self, const char* signal);
bool QRemoteObjectHost_protectedbase_isSignalConnected(const VirtualQRemoteObjectHost* self, QMetaMethod* signal);

const QMetaObject* QRemoteObjectHost_staticMetaObject();
void QRemoteObjectHost_delete(QRemoteObjectHost* self);

typedef struct VirtualQRemoteObjectRegistryHost VirtualQRemoteObjectRegistryHost;
typedef struct QRemoteObjectRegistryHost_VTable{
	void (*destructor)(VirtualQRemoteObjectRegistryHost* self);
	QMetaObject* (*metaObject)(const VirtualQRemoteObjectRegistryHost* self);
	void* (*metacast)(VirtualQRemoteObjectRegistryHost* self, const char* param1);
	int (*metacall)(VirtualQRemoteObjectRegistryHost* self, int param1, int param2, void** param3);
	bool (*setRegistryUrl)(VirtualQRemoteObjectRegistryHost* self, QUrl* registryUrl);
	void (*setName)(VirtualQRemoteObjectRegistryHost* self, struct seaqt_string name);
	QUrl* (*hostUrl)(const VirtualQRemoteObjectRegistryHost* self);
	bool (*setHostUrl)(VirtualQRemoteObjectRegistryHost* self, QUrl* hostAddress, int allowedSchemas);
	void (*timerEvent)(VirtualQRemoteObjectRegistryHost* self, QTimerEvent* param1);
	bool (*event)(VirtualQRemoteObjectRegistryHost* self, QEvent* event);
	bool (*eventFilter)(VirtualQRemoteObjectRegistryHost* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQRemoteObjectRegistryHost* self, QChildEvent* event);
	void (*customEvent)(VirtualQRemoteObjectRegistryHost* self, QEvent* event);
	void (*connectNotify)(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);
}QRemoteObjectRegistryHost_VTable;

void* QRemoteObjectRegistryHost_vdata(VirtualQRemoteObjectRegistryHost* self);
VirtualQRemoteObjectRegistryHost* vdata_QRemoteObjectRegistryHost(void* vdata);

VirtualQRemoteObjectRegistryHost* QRemoteObjectRegistryHost_new(const QRemoteObjectRegistryHost_VTable* vtbl, size_t vdata);
VirtualQRemoteObjectRegistryHost* QRemoteObjectRegistryHost_new_registryAddress(const QRemoteObjectRegistryHost_VTable* vtbl, size_t vdata, QUrl* registryAddress);
VirtualQRemoteObjectRegistryHost* QRemoteObjectRegistryHost_new_registryAddress_parent(const QRemoteObjectRegistryHost_VTable* vtbl, size_t vdata, QUrl* registryAddress, QObject* parent);

void QRemoteObjectRegistryHost_virtbase(QRemoteObjectRegistryHost* src, QRemoteObjectHostBase** outptr_QRemoteObjectHostBase);
QMetaObject* QRemoteObjectRegistryHost_metaObject(const QRemoteObjectRegistryHost* self);
void* QRemoteObjectRegistryHost_metacast(QRemoteObjectRegistryHost* self, const char* param1);
int QRemoteObjectRegistryHost_metacall(QRemoteObjectRegistryHost* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectRegistryHost_tr_s(const char* s);
bool QRemoteObjectRegistryHost_setRegistryUrl(QRemoteObjectRegistryHost* self, QUrl* registryUrl);
struct seaqt_string QRemoteObjectRegistryHost_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectRegistryHost_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRemoteObjectRegistryHost_virtualbase_metaObject(const VirtualQRemoteObjectRegistryHost* self);
void* QRemoteObjectRegistryHost_virtualbase_metacast(VirtualQRemoteObjectRegistryHost* self, const char* param1);
int QRemoteObjectRegistryHost_virtualbase_metacall(VirtualQRemoteObjectRegistryHost* self, int param1, int param2, void** param3);
bool QRemoteObjectRegistryHost_virtualbase_setRegistryUrl(VirtualQRemoteObjectRegistryHost* self, QUrl* registryUrl);
void QRemoteObjectRegistryHost_virtualbase_setName(VirtualQRemoteObjectRegistryHost* self, struct seaqt_string name);
QUrl* QRemoteObjectRegistryHost_virtualbase_hostUrl(const VirtualQRemoteObjectRegistryHost* self);
bool QRemoteObjectRegistryHost_virtualbase_setHostUrl(VirtualQRemoteObjectRegistryHost* self, QUrl* hostAddress, int allowedSchemas);
void QRemoteObjectRegistryHost_virtualbase_timerEvent(VirtualQRemoteObjectRegistryHost* self, QTimerEvent* param1);
bool QRemoteObjectRegistryHost_virtualbase_event(VirtualQRemoteObjectRegistryHost* self, QEvent* event);
bool QRemoteObjectRegistryHost_virtualbase_eventFilter(VirtualQRemoteObjectRegistryHost* self, QObject* watched, QEvent* event);
void QRemoteObjectRegistryHost_virtualbase_childEvent(VirtualQRemoteObjectRegistryHost* self, QChildEvent* event);
void QRemoteObjectRegistryHost_virtualbase_customEvent(VirtualQRemoteObjectRegistryHost* self, QEvent* event);
void QRemoteObjectRegistryHost_virtualbase_connectNotify(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);
void QRemoteObjectRegistryHost_virtualbase_disconnectNotify(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);

QObject* QRemoteObjectRegistryHost_protectedbase_sender(const VirtualQRemoteObjectRegistryHost* self);
int QRemoteObjectRegistryHost_protectedbase_senderSignalIndex(const VirtualQRemoteObjectRegistryHost* self);
int QRemoteObjectRegistryHost_protectedbase_receivers(const VirtualQRemoteObjectRegistryHost* self, const char* signal);
bool QRemoteObjectRegistryHost_protectedbase_isSignalConnected(const VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);

const QMetaObject* QRemoteObjectRegistryHost_staticMetaObject();
void QRemoteObjectRegistryHost_delete(QRemoteObjectRegistryHost* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
