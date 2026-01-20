#pragma once
#ifndef SEAQT_QTCORE_GEN_QTHREADSTORAGE_H
#define SEAQT_QTCORE_GEN_QTHREADSTORAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QThreadStorageData;
#else
typedef struct QThreadStorageData QThreadStorageData;
#endif

QThreadStorageData* QThreadStorageData_new_from(QThreadStorageData* from);

void** QThreadStorageData_get(const QThreadStorageData* self);
void** QThreadStorageData_set(QThreadStorageData* self, void* p);
void QThreadStorageData_finish(void** param1);
int QThreadStorageData_id(const QThreadStorageData* self);
void QThreadStorageData_setId(QThreadStorageData* self, int id);

void QThreadStorageData_delete(QThreadStorageData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
