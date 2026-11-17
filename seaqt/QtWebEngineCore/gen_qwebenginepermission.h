#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPERMISSION_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPERMISSION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QUrl;
class QWebEnginePermission;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QUrl QUrl;
typedef struct QWebEnginePermission QWebEnginePermission;
#endif

QWebEnginePermission* QWebEnginePermission_new();
QWebEnginePermission* QWebEnginePermission_new_from(QWebEnginePermission* from);

void QWebEnginePermission_operatorAssign(QWebEnginePermission* self, QWebEnginePermission* from);
void QWebEnginePermission_swap(QWebEnginePermission* self, QWebEnginePermission* other);
QUrl* QWebEnginePermission_origin(const QWebEnginePermission* self);
uint8_t QWebEnginePermission_permissionType(const QWebEnginePermission* self);
uint8_t QWebEnginePermission_state(const QWebEnginePermission* self);
bool QWebEnginePermission_isValid(const QWebEnginePermission* self);
void QWebEnginePermission_grant(const QWebEnginePermission* self);
void QWebEnginePermission_deny(const QWebEnginePermission* self);
void QWebEnginePermission_reset(const QWebEnginePermission* self);
bool QWebEnginePermission_isPersistent(uint8_t permissionType);

const QMetaObject* QWebEnginePermission_staticMetaObject();
void QWebEnginePermission_delete(QWebEnginePermission* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
