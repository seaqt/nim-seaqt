#pragma once
#ifndef SEAQT_QTQML_GEN_QJSVALUEITERATOR_H
#define SEAQT_QTQML_GEN_QJSVALUEITERATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJSValue;
class QJSValueIterator;
#else
typedef struct QJSValue QJSValue;
typedef struct QJSValueIterator QJSValueIterator;
#endif

bool QJSValueIterator_hasNext(const QJSValueIterator* self);
bool QJSValueIterator_next(QJSValueIterator* self);
struct seaqt_string QJSValueIterator_name(const QJSValueIterator* self);
QJSValue* QJSValueIterator_value(const QJSValueIterator* self);

void QJSValueIterator_delete(QJSValueIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
