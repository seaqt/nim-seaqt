#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEEXTENSIONMANAGER_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEEXTENSIONMANAGER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QWebEngineExtensionInfo;
class QWebEngineExtensionManager;
#else
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QWebEngineExtensionInfo QWebEngineExtensionInfo;
typedef struct QWebEngineExtensionManager QWebEngineExtensionManager;
#endif

void QWebEngineExtensionManager_virtbase(QWebEngineExtensionManager* src, QObject** outptr_QObject);
QMetaObject* QWebEngineExtensionManager_metaObject(const QWebEngineExtensionManager* self);
void* QWebEngineExtensionManager_metacast(QWebEngineExtensionManager* self, const char* param1);
int QWebEngineExtensionManager_metacall(QWebEngineExtensionManager* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineExtensionManager_tr_s(const char* s);
void QWebEngineExtensionManager_loadExtension(QWebEngineExtensionManager* self, struct seaqt_string path);
void QWebEngineExtensionManager_installExtension(QWebEngineExtensionManager* self, struct seaqt_string path);
void QWebEngineExtensionManager_unloadExtension(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension);
void QWebEngineExtensionManager_uninstallExtension(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension);
void QWebEngineExtensionManager_setExtensionEnabled(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension, bool enabled);
struct seaqt_string QWebEngineExtensionManager_installPath(const QWebEngineExtensionManager* self);
struct seaqt_array /* of QWebEngineExtensionInfo* */  QWebEngineExtensionManager_extensions(const QWebEngineExtensionManager* self);
void QWebEngineExtensionManager_loadFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension);
void QWebEngineExtensionManager_connect_loadFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t));
void QWebEngineExtensionManager_installFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension);
void QWebEngineExtensionManager_connect_installFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t));
void QWebEngineExtensionManager_unloadFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension);
void QWebEngineExtensionManager_connect_unloadFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t));
void QWebEngineExtensionManager_uninstallFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension);
void QWebEngineExtensionManager_connect_uninstallFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t));
bool QWebEngineExtensionManager_event(QWebEngineExtensionManager* self, QEvent* e);
struct seaqt_string QWebEngineExtensionManager_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineExtensionManager_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QWebEngineExtensionManager_staticMetaObject();
void QWebEngineExtensionManager_delete(QWebEngineExtensionManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
