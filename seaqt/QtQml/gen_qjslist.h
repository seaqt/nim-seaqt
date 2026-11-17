#pragma once
#ifndef SEAQT_QTQML_GEN_QJSLIST_H
#define SEAQT_QTQML_GEN_QJSLIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJSListForInIterator;
class QJSListForOfIterator;
class QJSListIndexClamp;
#else
typedef struct QJSListForInIterator QJSListForInIterator;
typedef struct QJSListForOfIterator QJSListForOfIterator;
typedef struct QJSListIndexClamp QJSListIndexClamp;
#endif

QJSListIndexClamp* QJSListIndexClamp_new_from(QJSListIndexClamp* from);
QJSListIndexClamp* QJSListIndexClamp_new();

ptrdiff_t QJSListIndexClamp_clamp_start_max(ptrdiff_t start, ptrdiff_t max);
void QJSListIndexClamp_operatorAssign(QJSListIndexClamp* self, QJSListIndexClamp* from);
ptrdiff_t QJSListIndexClamp_clamp_start_max_min(ptrdiff_t start, ptrdiff_t max, ptrdiff_t min);

void QJSListIndexClamp_delete(QJSListIndexClamp* self);

QJSListForInIterator* QJSListForInIterator_new();
QJSListForInIterator* QJSListForInIterator_new_from(QJSListForInIterator* from);

bool QJSListForInIterator_hasNext(const QJSListForInIterator* self);
ptrdiff_t QJSListForInIterator_next(QJSListForInIterator* self);

void QJSListForInIterator_delete(QJSListForInIterator* self);

QJSListForOfIterator* QJSListForOfIterator_new();
QJSListForOfIterator* QJSListForOfIterator_new_from(QJSListForOfIterator* from);

void QJSListForOfIterator_init(QJSListForOfIterator* self);

void QJSListForOfIterator_delete(QJSListForOfIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
