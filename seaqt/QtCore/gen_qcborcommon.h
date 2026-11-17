#pragma once
#ifndef SEAQT_QTCORE_GEN_QCBORCOMMON_H
#define SEAQT_QTCORE_GEN_QCBORCOMMON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCborError;
class QMetaObject;
#else
typedef struct QCborError QCborError;
typedef struct QMetaObject QMetaObject;
#endif

int QCborError_c(const QCborError* self);
void QCborError_setC(QCborError* self, int c);
int QCborError_ToQCborError__Code(const QCborError* self);
struct seaqt_string QCborError_toString(const QCborError* self);

const QMetaObject* QCborError_staticMetaObject();
void QCborError_delete(QCborError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
