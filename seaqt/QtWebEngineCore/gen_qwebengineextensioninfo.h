#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEEXTENSIONINFO_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEEXTENSIONINFO_H

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
class QWebEngineExtensionInfo;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineExtensionInfo QWebEngineExtensionInfo;
#endif

QWebEngineExtensionInfo* QWebEngineExtensionInfo_new();
QWebEngineExtensionInfo* QWebEngineExtensionInfo_new_from(QWebEngineExtensionInfo* from);

void QWebEngineExtensionInfo_operatorAssign(QWebEngineExtensionInfo* self, QWebEngineExtensionInfo* from);
void QWebEngineExtensionInfo_swap(QWebEngineExtensionInfo* self, QWebEngineExtensionInfo* other);
struct seaqt_string QWebEngineExtensionInfo_name(const QWebEngineExtensionInfo* self);
struct seaqt_string QWebEngineExtensionInfo_id(const QWebEngineExtensionInfo* self);
struct seaqt_string QWebEngineExtensionInfo_description(const QWebEngineExtensionInfo* self);
struct seaqt_string QWebEngineExtensionInfo_path(const QWebEngineExtensionInfo* self);
struct seaqt_string QWebEngineExtensionInfo_error(const QWebEngineExtensionInfo* self);
QUrl* QWebEngineExtensionInfo_actionPopupUrl(const QWebEngineExtensionInfo* self);
bool QWebEngineExtensionInfo_isEnabled(const QWebEngineExtensionInfo* self);
bool QWebEngineExtensionInfo_isLoaded(const QWebEngineExtensionInfo* self);
bool QWebEngineExtensionInfo_isInstalled(const QWebEngineExtensionInfo* self);

const QMetaObject* QWebEngineExtensionInfo_staticMetaObject();
void QWebEngineExtensionInfo_delete(QWebEngineExtensionInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
