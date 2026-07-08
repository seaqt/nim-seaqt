#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIAMETADATA_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIAMETADATA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaMetaData;
class QMetaObject;
class QVariant;
#else
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QMetaObject QMetaObject;
typedef struct QVariant QVariant;
#endif

QMediaMetaData* QMediaMetaData_new_from(QMediaMetaData* from);
QMediaMetaData* QMediaMetaData_new();

QVariant* QMediaMetaData_value(const QMediaMetaData* self, int k);
void QMediaMetaData_insert(QMediaMetaData* self, int k, QVariant* value);
void QMediaMetaData_remove(QMediaMetaData* self, int k);
struct seaqt_array /* of int */  QMediaMetaData_keys(const QMediaMetaData* self);
QVariant* QMediaMetaData_operatorSubscript(QMediaMetaData* self, int k);
void QMediaMetaData_clear(QMediaMetaData* self);
bool QMediaMetaData_isEmpty(const QMediaMetaData* self);
struct seaqt_string QMediaMetaData_stringValue(const QMediaMetaData* self, int k);
struct seaqt_string QMediaMetaData_metaDataKeyToString(int k);
void QMediaMetaData_operatorAssign(QMediaMetaData* self, QMediaMetaData* from);

void QMediaMetaData_delete(QMediaMetaData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
