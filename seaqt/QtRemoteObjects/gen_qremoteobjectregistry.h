#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTREGISTRY_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTREGISTRY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QRemoteObjectNode;
class QRemoteObjectPendingCall;
class QRemoteObjectRegistry;
class QRemoteObjectReplica;
class QRemoteObjectSourceLocationInfo;
class QVariant;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRemoteObjectNode QRemoteObjectNode;
typedef struct QRemoteObjectPendingCall QRemoteObjectPendingCall;
typedef struct QRemoteObjectRegistry QRemoteObjectRegistry;
typedef struct QRemoteObjectReplica QRemoteObjectReplica;
typedef struct QRemoteObjectSourceLocationInfo QRemoteObjectSourceLocationInfo;
typedef struct QVariant QVariant;
#endif

void QRemoteObjectRegistry_virtbase(QRemoteObjectRegistry* src, QRemoteObjectReplica** outptr_QRemoteObjectReplica);
QMetaObject* QRemoteObjectRegistry_metaObject(const QRemoteObjectRegistry* self);
void* QRemoteObjectRegistry_metacast(QRemoteObjectRegistry* self, const char* param1);
int QRemoteObjectRegistry_metacall(QRemoteObjectRegistry* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectRegistry_tr_s(const char* s);
void QRemoteObjectRegistry_registerMetatypes();
struct seaqt_map /* of struct seaqt_string to QRemoteObjectSourceLocationInfo* */  QRemoteObjectRegistry_sourceLocations(const QRemoteObjectRegistry* self);
void QRemoteObjectRegistry_remoteObjectAdded(QRemoteObjectRegistry* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  entry);
void QRemoteObjectRegistry_connect_remoteObjectAdded(QRemoteObjectRegistry* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t));
void QRemoteObjectRegistry_remoteObjectRemoved(QRemoteObjectRegistry* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  entry);
void QRemoteObjectRegistry_connect_remoteObjectRemoved(QRemoteObjectRegistry* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t));
struct seaqt_string QRemoteObjectRegistry_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectRegistry_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QRemoteObjectRegistry_staticMetaObject();
void QRemoteObjectRegistry_delete(QRemoteObjectRegistry* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
