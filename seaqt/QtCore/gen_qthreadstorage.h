#pragma once
#ifndef SEAQT_QTCORE_GEN_QTHREADSTORAGE_H
#define SEAQT_QTCORE_GEN_QTHREADSTORAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QThreadStorageData;
#else
typedef struct QThreadStorageData QThreadStorageData;
#endif

QThreadStorageData* QThreadStorageData_new(QThreadStorageData* param1);
void QThreadStorageData_delete(QThreadStorageData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
