#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QHTTPHEADERS_H
#define SEAQT_QTNETWORK_GEN_QHTTPHEADERS_H

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
class QHttpHeaders;
class QMetaObject;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QHttpHeaders QHttpHeaders;
typedef struct QMetaObject QMetaObject;
#endif

QHttpHeaders* QHttpHeaders_new();
QHttpHeaders* QHttpHeaders_new_from(QHttpHeaders* from);

void QHttpHeaders_operatorAssign(QHttpHeaders* self, QHttpHeaders* from);
void QHttpHeaders_swap(QHttpHeaders* self, QHttpHeaders* other);
bool QHttpHeaders_append_QAnyStringView_QAnyStringView(QHttpHeaders* self, struct seaqt_string name, struct seaqt_string value);
bool QHttpHeaders_append_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, int name, struct seaqt_string value);
bool QHttpHeaders_insert_qsizetype_QAnyStringView_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, struct seaqt_string name, struct seaqt_string value);
bool QHttpHeaders_insert_qsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, int name, struct seaqt_string value);
bool QHttpHeaders_replace_qsizetype_QAnyStringView_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, struct seaqt_string name, struct seaqt_string newValue);
bool QHttpHeaders_replace_qsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, int name, struct seaqt_string newValue);
bool QHttpHeaders_replaceOrAppend_QAnyStringView_QAnyStringView(QHttpHeaders* self, struct seaqt_string name, struct seaqt_string newValue);
bool QHttpHeaders_replaceOrAppend_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, int name, struct seaqt_string newValue);
bool QHttpHeaders_contains_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name);
bool QHttpHeaders_contains_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name);
void QHttpHeaders_clear(QHttpHeaders* self);
void QHttpHeaders_removeAll_QAnyStringView(QHttpHeaders* self, struct seaqt_string name);
void QHttpHeaders_removeAll_QHttpHeaders_WellKnownHeader(QHttpHeaders* self, int name);
void QHttpHeaders_removeAt(QHttpHeaders* self, ptrdiff_t i);
struct seaqt_string QHttpHeaders_value_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name);
struct seaqt_string QHttpHeaders_value_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name);
struct seaqt_array /* of struct seaqt_string */  QHttpHeaders_values_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QHttpHeaders_values_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name);
struct seaqt_string QHttpHeaders_valueAt(const QHttpHeaders* self, ptrdiff_t i);
struct seaqt_string QHttpHeaders_combinedValue_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name);
struct seaqt_string QHttpHeaders_combinedValue_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name);
ptrdiff_t QHttpHeaders_size(const QHttpHeaders* self);
void QHttpHeaders_reserve(QHttpHeaders* self, ptrdiff_t size);
bool QHttpHeaders_isEmpty(const QHttpHeaders* self);
struct seaqt_string QHttpHeaders_wellKnownHeaderName(int name);
struct seaqt_string QHttpHeaders_value_QAnyStringView_QByteArrayView(const QHttpHeaders* self, struct seaqt_string name, struct seaqt_string defaultValue);
struct seaqt_string QHttpHeaders_value_QHttpHeaders_WellKnownHeader_QByteArrayView(const QHttpHeaders* self, int name, struct seaqt_string defaultValue);

const QMetaObject* QHttpHeaders_staticMetaObject();
void QHttpHeaders_delete(QHttpHeaders* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
