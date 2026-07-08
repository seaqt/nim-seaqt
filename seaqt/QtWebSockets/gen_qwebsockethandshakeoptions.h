#pragma once
#ifndef SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKETHANDSHAKEOPTIONS_H
#define SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKETHANDSHAKEOPTIONS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QWebSocketHandshakeOptions;
#else
typedef struct QWebSocketHandshakeOptions QWebSocketHandshakeOptions;
#endif

QWebSocketHandshakeOptions* QWebSocketHandshakeOptions_new();
QWebSocketHandshakeOptions* QWebSocketHandshakeOptions_new_from(QWebSocketHandshakeOptions* from);

void QWebSocketHandshakeOptions_operatorAssign(QWebSocketHandshakeOptions* self, QWebSocketHandshakeOptions* from);
void QWebSocketHandshakeOptions_swap(QWebSocketHandshakeOptions* self, QWebSocketHandshakeOptions* other);
struct seaqt_array /* of struct seaqt_string */  QWebSocketHandshakeOptions_subprotocols(const QWebSocketHandshakeOptions* self);
void QWebSocketHandshakeOptions_setSubprotocols(QWebSocketHandshakeOptions* self, struct seaqt_array /* of struct seaqt_string */  protocols);

void QWebSocketHandshakeOptions_delete(QWebSocketHandshakeOptions* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
