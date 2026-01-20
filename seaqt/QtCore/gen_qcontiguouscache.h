#pragma once
#ifndef SEAQT_QTCORE_GEN_QCONTIGUOUSCACHE_H
#define SEAQT_QTCORE_GEN_QCONTIGUOUSCACHE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QContiguousCacheData;
#else
typedef struct QContiguousCacheData QContiguousCacheData;
#endif

ptrdiff_t QContiguousCacheData_alloc(const QContiguousCacheData* self);
void QContiguousCacheData_setAlloc(QContiguousCacheData* self, ptrdiff_t alloc);
ptrdiff_t QContiguousCacheData_count(const QContiguousCacheData* self);
void QContiguousCacheData_setCount(QContiguousCacheData* self, ptrdiff_t count);
ptrdiff_t QContiguousCacheData_start(const QContiguousCacheData* self);
void QContiguousCacheData_setStart(QContiguousCacheData* self, ptrdiff_t start);
ptrdiff_t QContiguousCacheData_offset(const QContiguousCacheData* self);
void QContiguousCacheData_setOffset(QContiguousCacheData* self, ptrdiff_t offset);
QContiguousCacheData* QContiguousCacheData_allocateData(ptrdiff_t size, ptrdiff_t alignment);
void QContiguousCacheData_freeData(QContiguousCacheData* data);

void QContiguousCacheData_delete(QContiguousCacheData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
