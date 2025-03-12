#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINENAVIGATIONREQUEST_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINENAVIGATIONREQUEST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QUrl;
class QWebEngineNavigationRequest;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineNavigationRequest QWebEngineNavigationRequest;
#endif

void QWebEngineNavigationRequest_virtbase(QWebEngineNavigationRequest* src, QObject** outptr_QObject);
QMetaObject* QWebEngineNavigationRequest_metaObject(const QWebEngineNavigationRequest* self);
void* QWebEngineNavigationRequest_metacast(QWebEngineNavigationRequest* self, const char* param1);
int QWebEngineNavigationRequest_metacall(QWebEngineNavigationRequest* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineNavigationRequest_tr(const char* s);
QUrl* QWebEngineNavigationRequest_url(const QWebEngineNavigationRequest* self);
bool QWebEngineNavigationRequest_isMainFrame(const QWebEngineNavigationRequest* self);
int QWebEngineNavigationRequest_navigationType(const QWebEngineNavigationRequest* self);
void QWebEngineNavigationRequest_accept(QWebEngineNavigationRequest* self);
void QWebEngineNavigationRequest_reject(QWebEngineNavigationRequest* self);
void QWebEngineNavigationRequest_actionChanged(QWebEngineNavigationRequest* self);
void QWebEngineNavigationRequest_connect_actionChanged(QWebEngineNavigationRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QWebEngineNavigationRequest_tr2(const char* s, const char* c);
struct miqt_string QWebEngineNavigationRequest_tr3(const char* s, const char* c, int n);

const QMetaObject* QWebEngineNavigationRequest_staticMetaObject();
void QWebEngineNavigationRequest_delete(QWebEngineNavigationRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
