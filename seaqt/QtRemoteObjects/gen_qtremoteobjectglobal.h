#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QTREMOTEOBJECTGLOBAL_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QTREMOTEOBJECTGLOBAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRemoteObjectSourceLocationInfo;
class QUrl;
#else
typedef struct QRemoteObjectSourceLocationInfo QRemoteObjectSourceLocationInfo;
typedef struct QUrl QUrl;
#endif

QRemoteObjectSourceLocationInfo* QRemoteObjectSourceLocationInfo_new();
QRemoteObjectSourceLocationInfo* QRemoteObjectSourceLocationInfo_new_typeName__hostUrl_(struct seaqt_string typeName_, QUrl* hostUrl_);
QRemoteObjectSourceLocationInfo* QRemoteObjectSourceLocationInfo_new_from(QRemoteObjectSourceLocationInfo* from);

bool QRemoteObjectSourceLocationInfo_operatorEqual(const QRemoteObjectSourceLocationInfo* self, QRemoteObjectSourceLocationInfo* other);
bool QRemoteObjectSourceLocationInfo_operatorNotEqual(const QRemoteObjectSourceLocationInfo* self, QRemoteObjectSourceLocationInfo* other);
struct seaqt_string QRemoteObjectSourceLocationInfo_typeName(const QRemoteObjectSourceLocationInfo* self);
void QRemoteObjectSourceLocationInfo_setTypeName(QRemoteObjectSourceLocationInfo* self, struct seaqt_string typeName);
QUrl* QRemoteObjectSourceLocationInfo_hostUrl(const QRemoteObjectSourceLocationInfo* self);
void QRemoteObjectSourceLocationInfo_setHostUrl(QRemoteObjectSourceLocationInfo* self, QUrl* hostUrl);
void QRemoteObjectSourceLocationInfo_operatorAssign(QRemoteObjectSourceLocationInfo* self, QRemoteObjectSourceLocationInfo* from);

void QRemoteObjectSourceLocationInfo_delete(QRemoteObjectSourceLocationInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
