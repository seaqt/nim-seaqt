#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEREGISTERPROTOCOLHANDLERREQUEST_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEREGISTERPROTOCOLHANDLERREQUEST_H

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
class QWebEngineRegisterProtocolHandlerRequest;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineRegisterProtocolHandlerRequest QWebEngineRegisterProtocolHandlerRequest;
#endif

QWebEngineRegisterProtocolHandlerRequest* QWebEngineRegisterProtocolHandlerRequest_new();
QWebEngineRegisterProtocolHandlerRequest* QWebEngineRegisterProtocolHandlerRequest_new_from(QWebEngineRegisterProtocolHandlerRequest* from);

void QWebEngineRegisterProtocolHandlerRequest_accept(QWebEngineRegisterProtocolHandlerRequest* self);
void QWebEngineRegisterProtocolHandlerRequest_reject(QWebEngineRegisterProtocolHandlerRequest* self);
QUrl* QWebEngineRegisterProtocolHandlerRequest_origin(const QWebEngineRegisterProtocolHandlerRequest* self);
struct seaqt_string QWebEngineRegisterProtocolHandlerRequest_scheme(const QWebEngineRegisterProtocolHandlerRequest* self);
bool QWebEngineRegisterProtocolHandlerRequest_operatorEqual(const QWebEngineRegisterProtocolHandlerRequest* self, QWebEngineRegisterProtocolHandlerRequest* that);
bool QWebEngineRegisterProtocolHandlerRequest_operatorNotEqual(const QWebEngineRegisterProtocolHandlerRequest* self, QWebEngineRegisterProtocolHandlerRequest* that);
void QWebEngineRegisterProtocolHandlerRequest_operatorAssign(QWebEngineRegisterProtocolHandlerRequest* self, QWebEngineRegisterProtocolHandlerRequest* from);

void QWebEngineRegisterProtocolHandlerRequest_delete(QWebEngineRegisterProtocolHandlerRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
