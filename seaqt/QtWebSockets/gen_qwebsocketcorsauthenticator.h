#pragma once
#ifndef SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKETCORSAUTHENTICATOR_H
#define SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKETCORSAUTHENTICATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QWebSocketCorsAuthenticator;
#else
typedef struct QWebSocketCorsAuthenticator QWebSocketCorsAuthenticator;
#endif

QWebSocketCorsAuthenticator* QWebSocketCorsAuthenticator_new_origin(struct seaqt_string origin);
QWebSocketCorsAuthenticator* QWebSocketCorsAuthenticator_new_from(QWebSocketCorsAuthenticator* from);

void QWebSocketCorsAuthenticator_swap(QWebSocketCorsAuthenticator* self, QWebSocketCorsAuthenticator* other);
void QWebSocketCorsAuthenticator_operatorAssign(QWebSocketCorsAuthenticator* self, QWebSocketCorsAuthenticator* from);
struct seaqt_string QWebSocketCorsAuthenticator_origin(const QWebSocketCorsAuthenticator* self);
void QWebSocketCorsAuthenticator_setAllowed(QWebSocketCorsAuthenticator* self, bool allowed);
bool QWebSocketCorsAuthenticator_allowed(const QWebSocketCorsAuthenticator* self);

void QWebSocketCorsAuthenticator_delete(QWebSocketCorsAuthenticator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
