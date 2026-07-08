#pragma once
#ifndef SEAQT_QTCORE_GEN_QVERSIONNUMBER_H
#define SEAQT_QTCORE_GEN_QVERSIONNUMBER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAnyStringView;
class QVersionNumber;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QVersionNumber QVersionNumber;
#endif

QVersionNumber* QVersionNumber_new();
QVersionNumber* QVersionNumber_new_int(int maj);
QVersionNumber* QVersionNumber_new_int_int(int maj, int min);
QVersionNumber* QVersionNumber_new_int_int_int(int maj, int min, int mic);
QVersionNumber* QVersionNumber_new_QVersionNumber(QVersionNumber* from);

bool QVersionNumber_isNull(const QVersionNumber* self);
bool QVersionNumber_isNormalized(const QVersionNumber* self);
int QVersionNumber_majorVersion(const QVersionNumber* self);
int QVersionNumber_minorVersion(const QVersionNumber* self);
int QVersionNumber_microVersion(const QVersionNumber* self);
QVersionNumber* QVersionNumber_normalized(const QVersionNumber* self);
struct seaqt_array /* of int */  QVersionNumber_segments(const QVersionNumber* self);
int QVersionNumber_segmentAt(const QVersionNumber* self, ptrdiff_t index);
ptrdiff_t QVersionNumber_segmentCount(const QVersionNumber* self);
bool QVersionNumber_isPrefixOf(const QVersionNumber* self, QVersionNumber* other);
int QVersionNumber_compare(QVersionNumber* v1, QVersionNumber* v2);
QVersionNumber* QVersionNumber_commonPrefix(QVersionNumber* v1, QVersionNumber* v2);
struct seaqt_string QVersionNumber_toString(const QVersionNumber* self);
QVersionNumber* QVersionNumber_fromString_string(struct seaqt_string string);
void QVersionNumber_operatorAssign(QVersionNumber* self, QVersionNumber* from);
QVersionNumber* QVersionNumber_fromString_string_suffixIndex(struct seaqt_string string, ptrdiff_t* suffixIndex);

void QVersionNumber_delete(QVersionNumber* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
