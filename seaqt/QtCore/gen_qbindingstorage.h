#pragma once
#ifndef SEAQT_QTCORE_GEN_QBINDINGSTORAGE_H
#define SEAQT_QTCORE_GEN_QBINDINGSTORAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBindingStatus;
class QBindingStorage;
class QUntypedPropertyData;
#else
typedef struct QBindingStatus QBindingStatus;
typedef struct QBindingStorage QBindingStorage;
typedef struct QUntypedPropertyData QUntypedPropertyData;
#endif

void QBindingStatus_delete(QBindingStatus* self);

QBindingStorage* QBindingStorage_new();

bool QBindingStorage_isEmpty(QBindingStorage* self);
bool QBindingStorage_isValid(const QBindingStorage* self);
void QBindingStorage_registerDependency(const QBindingStorage* self, QUntypedPropertyData* data);
void* QBindingStorage_bindingData(const QBindingStorage* self, QUntypedPropertyData* data);
void* QBindingStorage_bindingData2(QBindingStorage* self, QUntypedPropertyData* data, bool create);

void QBindingStorage_delete(QBindingStorage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
