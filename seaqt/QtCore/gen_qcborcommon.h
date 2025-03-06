#pragma once
#ifndef SEAQT_QTCORE_GEN_QCBORCOMMON_H
#define SEAQT_QTCORE_GEN_QCBORCOMMON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCborError;
#else
typedef struct QCborError QCborError;
#endif

int QCborError_ToQCborError__Code(const QCborError* self);
struct miqt_string QCborError_toString(const QCborError* self);
void QCborError_delete(QCborError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
