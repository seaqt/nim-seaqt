#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEWEBAUTHUXREQUEST_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEWEBAUTHUXREQUEST_H

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
class QWebEngineWebAuthPinRequest;
class QWebEngineWebAuthUxRequest;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QWebEngineWebAuthPinRequest QWebEngineWebAuthPinRequest;
typedef struct QWebEngineWebAuthUxRequest QWebEngineWebAuthUxRequest;
#endif

void QWebEngineWebAuthUxRequest_virtbase(QWebEngineWebAuthUxRequest* src, QObject** outptr_QObject);
QMetaObject* QWebEngineWebAuthUxRequest_metaObject(const QWebEngineWebAuthUxRequest* self);
void* QWebEngineWebAuthUxRequest_metacast(QWebEngineWebAuthUxRequest* self, const char* param1);
int QWebEngineWebAuthUxRequest_metacall(QWebEngineWebAuthUxRequest* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineWebAuthUxRequest_tr_s(const char* s);
struct seaqt_array /* of struct seaqt_string */  QWebEngineWebAuthUxRequest_userNames(const QWebEngineWebAuthUxRequest* self);
struct seaqt_string QWebEngineWebAuthUxRequest_relyingPartyId(const QWebEngineWebAuthUxRequest* self);
QWebEngineWebAuthPinRequest* QWebEngineWebAuthUxRequest_pinRequest(const QWebEngineWebAuthUxRequest* self);
int QWebEngineWebAuthUxRequest_state(const QWebEngineWebAuthUxRequest* self);
int QWebEngineWebAuthUxRequest_requestFailureReason(const QWebEngineWebAuthUxRequest* self);
void QWebEngineWebAuthUxRequest_stateChanged(QWebEngineWebAuthUxRequest* self, int state);
void QWebEngineWebAuthUxRequest_connect_stateChanged(QWebEngineWebAuthUxRequest* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebEngineWebAuthUxRequest_cancel(QWebEngineWebAuthUxRequest* self);
void QWebEngineWebAuthUxRequest_retry(QWebEngineWebAuthUxRequest* self);
void QWebEngineWebAuthUxRequest_setSelectedAccount(QWebEngineWebAuthUxRequest* self, struct seaqt_string selectedAccount);
void QWebEngineWebAuthUxRequest_setPin(QWebEngineWebAuthUxRequest* self, struct seaqt_string pin);
struct seaqt_string QWebEngineWebAuthUxRequest_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineWebAuthUxRequest_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QWebEngineWebAuthUxRequest_staticMetaObject();
void QWebEngineWebAuthUxRequest_delete(QWebEngineWebAuthUxRequest* self);

int QWebEngineWebAuthPinRequest_reason(const QWebEngineWebAuthPinRequest* self);
void QWebEngineWebAuthPinRequest_setReason(QWebEngineWebAuthPinRequest* self, int reason);
int QWebEngineWebAuthPinRequest_error(const QWebEngineWebAuthPinRequest* self);
void QWebEngineWebAuthPinRequest_setError(QWebEngineWebAuthPinRequest* self, int error);
int QWebEngineWebAuthPinRequest_minPinLength(const QWebEngineWebAuthPinRequest* self);
void QWebEngineWebAuthPinRequest_setMinPinLength(QWebEngineWebAuthPinRequest* self, int minPinLength);
int QWebEngineWebAuthPinRequest_remainingAttempts(const QWebEngineWebAuthPinRequest* self);
void QWebEngineWebAuthPinRequest_setRemainingAttempts(QWebEngineWebAuthPinRequest* self, int remainingAttempts);

const QMetaObject* QWebEngineWebAuthPinRequest_staticMetaObject();
void QWebEngineWebAuthPinRequest_delete(QWebEngineWebAuthPinRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
