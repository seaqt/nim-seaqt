#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTREPLICA_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTREPLICA_H

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
class QRemoteObjectReplica;
class QVariant;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRemoteObjectNode QRemoteObjectNode;
typedef struct QRemoteObjectPendingCall QRemoteObjectPendingCall;
typedef struct QRemoteObjectReplica QRemoteObjectReplica;
typedef struct QVariant QVariant;
#endif

void QRemoteObjectReplica_virtbase(QRemoteObjectReplica* src, QObject** outptr_QObject);
QMetaObject* QRemoteObjectReplica_metaObject(const QRemoteObjectReplica* self);
void* QRemoteObjectReplica_metacast(QRemoteObjectReplica* self, const char* param1);
int QRemoteObjectReplica_metacall(QRemoteObjectReplica* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectReplica_tr_s(const char* s);
bool QRemoteObjectReplica_isReplicaValid(const QRemoteObjectReplica* self);
bool QRemoteObjectReplica_waitForSource(QRemoteObjectReplica* self);
bool QRemoteObjectReplica_isInitialized(const QRemoteObjectReplica* self);
int QRemoteObjectReplica_state(const QRemoteObjectReplica* self);
QRemoteObjectNode* QRemoteObjectReplica_node(const QRemoteObjectReplica* self);
void QRemoteObjectReplica_setNode(QRemoteObjectReplica* self, QRemoteObjectNode* node);
void QRemoteObjectReplica_initialized(QRemoteObjectReplica* self);
void QRemoteObjectReplica_connect_initialized(QRemoteObjectReplica* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QRemoteObjectReplica_notified(QRemoteObjectReplica* self);
void QRemoteObjectReplica_connect_notified(QRemoteObjectReplica* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QRemoteObjectReplica_stateChanged(QRemoteObjectReplica* self, int state, int oldState);
void QRemoteObjectReplica_connect_stateChanged(QRemoteObjectReplica* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QRemoteObjectReplica_initialize(QRemoteObjectReplica* self);
struct seaqt_string QRemoteObjectReplica_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectReplica_tr_s_c_n(const char* s, const char* c, int n);
bool QRemoteObjectReplica_waitForSource_timeout(QRemoteObjectReplica* self, int timeout);

const QMetaObject* QRemoteObjectReplica_staticMetaObject();
void QRemoteObjectReplica_delete(QRemoteObjectReplica* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
