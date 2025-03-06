#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLERROR_H
#define SEAQT_QTQML_GEN_QQMLERROR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QObject;
class QQmlError;
class QUrl;
#else
typedef struct QObject QObject;
typedef struct QQmlError QQmlError;
typedef struct QUrl QUrl;
#endif

QQmlError* QQmlError_new();
QQmlError* QQmlError_new2(QQmlError* param1);
void QQmlError_operatorAssign(QQmlError* self, QQmlError* param1);
bool QQmlError_isValid(const QQmlError* self);
QUrl* QQmlError_url(const QQmlError* self);
void QQmlError_setUrl(QQmlError* self, QUrl* url);
struct miqt_string QQmlError_description(const QQmlError* self);
void QQmlError_setDescription(QQmlError* self, struct miqt_string description);
int QQmlError_line(const QQmlError* self);
void QQmlError_setLine(QQmlError* self, int line);
int QQmlError_column(const QQmlError* self);
void QQmlError_setColumn(QQmlError* self, int column);
QObject* QQmlError_object(const QQmlError* self);
void QQmlError_setObject(QQmlError* self, QObject* object);
struct miqt_string QQmlError_toString(const QQmlError* self);
void QQmlError_delete(QQmlError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
