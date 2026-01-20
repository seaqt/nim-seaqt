#pragma once
#ifndef SEAQT_QTCORE_GEN_QCBORSTREAMWRITER_H
#define SEAQT_QTCORE_GEN_QCBORSTREAMWRITER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCborStreamWriter;
class QIODevice;
#else
typedef struct QCborStreamWriter QCborStreamWriter;
typedef struct QIODevice QIODevice;
#endif

QCborStreamWriter* QCborStreamWriter_new_device(QIODevice* device);

void QCborStreamWriter_setDevice(QCborStreamWriter* self, QIODevice* device);
QIODevice* QCborStreamWriter_device(const QCborStreamWriter* self);
void QCborStreamWriter_append_quint64(QCborStreamWriter* self, unsigned long long u);
void QCborStreamWriter_append_qint64(QCborStreamWriter* self, long long i);
void QCborStreamWriter_append_QCborNegativeInteger(QCborStreamWriter* self, uint64_t n);
void QCborStreamWriter_append_QByteArray(QCborStreamWriter* self, struct seaqt_string ba);
void QCborStreamWriter_append_QCborTag(QCborStreamWriter* self, uint64_t tag);
void QCborStreamWriter_append_QCborKnownTags(QCborStreamWriter* self, int tag);
void QCborStreamWriter_append_QCborSimpleType(QCborStreamWriter* self, uint8_t st);
void QCborStreamWriter_append_float(QCborStreamWriter* self, float f);
void QCborStreamWriter_append_double(QCborStreamWriter* self, double d);
void QCborStreamWriter_appendByteString(QCborStreamWriter* self, const char* data, ptrdiff_t len);
void QCborStreamWriter_appendTextString(QCborStreamWriter* self, const char* utf8, ptrdiff_t len);
void QCborStreamWriter_append_bool(QCborStreamWriter* self, bool b);
void QCborStreamWriter_appendNull(QCborStreamWriter* self);
void QCborStreamWriter_appendUndefined(QCborStreamWriter* self);
void QCborStreamWriter_append_int(QCborStreamWriter* self, int i);
void QCborStreamWriter_append_uint(QCborStreamWriter* self, unsigned int u);
void QCborStreamWriter_append_char(QCborStreamWriter* self, const char* str);
void QCborStreamWriter_startArray(QCborStreamWriter* self);
void QCborStreamWriter_startArray_count(QCborStreamWriter* self, unsigned long long count);
bool QCborStreamWriter_endArray(QCborStreamWriter* self);
void QCborStreamWriter_startMap(QCborStreamWriter* self);
void QCborStreamWriter_startMap_count(QCborStreamWriter* self, unsigned long long count);
bool QCborStreamWriter_endMap(QCborStreamWriter* self);
void QCborStreamWriter_append_char_qsizetype(QCborStreamWriter* self, const char* str, ptrdiff_t size);

void QCborStreamWriter_delete(QCborStreamWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
