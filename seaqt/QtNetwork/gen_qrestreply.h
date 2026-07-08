#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QRESTREPLY_H
#define SEAQT_QTNETWORK_GEN_QRESTREPLY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QNetworkReply;
class QRestReply;
#else
typedef struct QNetworkReply QNetworkReply;
typedef struct QRestReply QRestReply;
#endif

QRestReply* QRestReply_new(QNetworkReply* reply);

void QRestReply_swap(QRestReply* self, QRestReply* other);
QNetworkReply* QRestReply_networkReply(const QRestReply* self);
struct seaqt_string QRestReply_readBody(QRestReply* self);
struct seaqt_string QRestReply_readText(QRestReply* self);
bool QRestReply_isSuccess(const QRestReply* self);
int QRestReply_httpStatus(const QRestReply* self);
bool QRestReply_isHttpStatusSuccess(const QRestReply* self);
bool QRestReply_hasError(const QRestReply* self);
int QRestReply_error(const QRestReply* self);
struct seaqt_string QRestReply_errorString(const QRestReply* self);

void QRestReply_delete(QRestReply* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
