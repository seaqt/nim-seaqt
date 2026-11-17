#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTDYNAMICREPLICA_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTDYNAMICREPLICA_H

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
class QRemoteObjectDynamicReplica;
class QRemoteObjectNode;
class QRemoteObjectPendingCall;
class QRemoteObjectReplica;
class QVariant;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRemoteObjectDynamicReplica QRemoteObjectDynamicReplica;
typedef struct QRemoteObjectNode QRemoteObjectNode;
typedef struct QRemoteObjectPendingCall QRemoteObjectPendingCall;
typedef struct QRemoteObjectReplica QRemoteObjectReplica;
typedef struct QVariant QVariant;
#endif

void QRemoteObjectDynamicReplica_virtbase(QRemoteObjectDynamicReplica* src, QRemoteObjectReplica** outptr_QRemoteObjectReplica);
QMetaObject* QRemoteObjectDynamicReplica_metaObject(const QRemoteObjectDynamicReplica* self);
void* QRemoteObjectDynamicReplica_metacast(QRemoteObjectDynamicReplica* self, const char* name);
int QRemoteObjectDynamicReplica_metacall(QRemoteObjectDynamicReplica* self, int call, int id, void** argv);

void QRemoteObjectDynamicReplica_delete(QRemoteObjectDynamicReplica* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
