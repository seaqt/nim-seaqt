#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTRINGVIEW_H
#define SEAQT_QTCORE_GEN_QSTRINGVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChar;
class QStringView;
#else
typedef struct QChar QChar;
typedef struct QStringView QStringView;
#endif

QStringView* QStringView_new();

struct seaqt_string QStringView_toString(const QStringView* self);
ptrdiff_t QStringView_size(const QStringView* self);
QChar* QStringView_data(const QStringView* self);
QChar* QStringView_operatorSubscript(const QStringView* self, ptrdiff_t n);
struct seaqt_string QStringView_toLatin1(const QStringView* self);
struct seaqt_string QStringView_toUtf8(const QStringView* self);
struct seaqt_string QStringView_toLocal8Bit(const QStringView* self);
struct seaqt_array /* of unsigned int */  QStringView_toUcs4(const QStringView* self);
QChar* QStringView_at(const QStringView* self, ptrdiff_t n);
void QStringView_truncate(QStringView* self, ptrdiff_t n);
void QStringView_chop(QStringView* self, ptrdiff_t n);
int QStringView_compare_QChar(const QStringView* self, QChar* c);
int QStringView_compare_QChar_Qt_CaseSensitivity(const QStringView* self, QChar* c, int cs);
bool QStringView_startsWith_QChar(const QStringView* self, QChar* c);
bool QStringView_startsWith_QChar_Qt_CaseSensitivity(const QStringView* self, QChar* c, int cs);
bool QStringView_endsWith_QChar(const QStringView* self, QChar* c);
bool QStringView_endsWith_QChar_Qt_CaseSensitivity(const QStringView* self, QChar* c, int cs);
ptrdiff_t QStringView_indexOf_QChar(const QStringView* self, QChar* c);
bool QStringView_contains_QChar(const QStringView* self, QChar* c);
ptrdiff_t QStringView_count_c(const QStringView* self, QChar* c);
ptrdiff_t QStringView_lastIndexOf_QChar(const QStringView* self, QChar* c);
bool QStringView_isRightToLeft(const QStringView* self);
bool QStringView_isValidUtf16(const QStringView* self);
short QStringView_toShort(const QStringView* self);
unsigned short QStringView_toUShort(const QStringView* self);
int QStringView_toInt(const QStringView* self);
unsigned int QStringView_toUInt(const QStringView* self);
long QStringView_toLong(const QStringView* self);
unsigned long QStringView_toULong(const QStringView* self);
long long QStringView_toLongLong(const QStringView* self);
unsigned long long QStringView_toULongLong(const QStringView* self);
float QStringView_toFloat(const QStringView* self);
double QStringView_toDouble(const QStringView* self);
QChar* QStringView_begin(const QStringView* self);
QChar* QStringView_end(const QStringView* self);
QChar* QStringView_cbegin(const QStringView* self);
QChar* QStringView_cend(const QStringView* self);
bool QStringView_empty(const QStringView* self);
QChar* QStringView_front(const QStringView* self);
QChar* QStringView_back(const QStringView* self);
bool QStringView_isNull(const QStringView* self);
bool QStringView_isEmpty(const QStringView* self);
int QStringView_length(const QStringView* self);
QChar* QStringView_first(const QStringView* self);
QChar* QStringView_last(const QStringView* self);
ptrdiff_t QStringView_indexOf_QChar_qsizetype(const QStringView* self, QChar* c, ptrdiff_t from);
ptrdiff_t QStringView_indexOf_QChar_qsizetype_Qt_CaseSensitivity(const QStringView* self, QChar* c, ptrdiff_t from, int cs);
bool QStringView_contains_QChar_Qt_CaseSensitivity(const QStringView* self, QChar* c, int cs);
ptrdiff_t QStringView_count_c_cs(const QStringView* self, QChar* c, int cs);
ptrdiff_t QStringView_lastIndexOf_QChar_qsizetype(const QStringView* self, QChar* c, ptrdiff_t from);
ptrdiff_t QStringView_lastIndexOf_QChar_qsizetype_Qt_CaseSensitivity(const QStringView* self, QChar* c, ptrdiff_t from, int cs);
short QStringView_toShort_ok(const QStringView* self, bool* ok);
short QStringView_toShort_ok_base(const QStringView* self, bool* ok, int base);
unsigned short QStringView_toUShort_ok(const QStringView* self, bool* ok);
unsigned short QStringView_toUShort_ok_base(const QStringView* self, bool* ok, int base);
int QStringView_toInt_ok(const QStringView* self, bool* ok);
int QStringView_toInt_ok_base(const QStringView* self, bool* ok, int base);
unsigned int QStringView_toUInt_ok(const QStringView* self, bool* ok);
unsigned int QStringView_toUInt_ok_base(const QStringView* self, bool* ok, int base);
long QStringView_toLong_ok(const QStringView* self, bool* ok);
long QStringView_toLong_ok_base(const QStringView* self, bool* ok, int base);
unsigned long QStringView_toULong_ok(const QStringView* self, bool* ok);
unsigned long QStringView_toULong_ok_base(const QStringView* self, bool* ok, int base);
long long QStringView_toLongLong_ok(const QStringView* self, bool* ok);
long long QStringView_toLongLong_ok_base(const QStringView* self, bool* ok, int base);
unsigned long long QStringView_toULongLong_ok(const QStringView* self, bool* ok);
unsigned long long QStringView_toULongLong_ok_base(const QStringView* self, bool* ok, int base);
float QStringView_toFloat_ok(const QStringView* self, bool* ok);
double QStringView_toDouble_ok(const QStringView* self, bool* ok);

void QStringView_delete(QStringView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
