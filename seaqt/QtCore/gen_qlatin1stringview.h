#pragma once
#ifndef SEAQT_QTCORE_GEN_QLATIN1STRINGVIEW_H
#define SEAQT_QTCORE_GEN_QLATIN1STRINGVIEW_H

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
class QLatin1Char;
class QLatin1String;
#else
typedef struct QChar QChar;
typedef struct QLatin1Char QLatin1Char;
typedef struct QLatin1String QLatin1String;
#endif

QLatin1String* QLatin1String_new();
QLatin1String* QLatin1String_new_char(const char* s);
QLatin1String* QLatin1String_new_char_char(const char* f, const char* l);
QLatin1String* QLatin1String_new_char_qsizetype(const char* s, ptrdiff_t sz);
QLatin1String* QLatin1String_new_QByteArray(struct seaqt_string s);
QLatin1String* QLatin1String_new_QByteArrayView(struct seaqt_string s);

struct seaqt_string QLatin1String_toString(const QLatin1String* self);
struct seaqt_string QLatin1String_toUtf8(const QLatin1String* self);
const char* QLatin1String_latin1(const QLatin1String* self);
ptrdiff_t QLatin1String_size(const QLatin1String* self);
const char* QLatin1String_data(const QLatin1String* self);
const char* QLatin1String_constData(const QLatin1String* self);
const char* QLatin1String_constBegin(const QLatin1String* self);
const char* QLatin1String_constEnd(const QLatin1String* self);
QLatin1Char* QLatin1String_first(const QLatin1String* self);
QLatin1Char* QLatin1String_last(const QLatin1String* self);
ptrdiff_t QLatin1String_length(const QLatin1String* self);
bool QLatin1String_isNull(const QLatin1String* self);
bool QLatin1String_isEmpty(const QLatin1String* self);
bool QLatin1String_empty(const QLatin1String* self);
QLatin1Char* QLatin1String_at(const QLatin1String* self, ptrdiff_t i);
QLatin1Char* QLatin1String_operatorSubscript(const QLatin1String* self, ptrdiff_t i);
QLatin1Char* QLatin1String_front(const QLatin1String* self);
QLatin1Char* QLatin1String_back(const QLatin1String* self);
int QLatin1String_compare_QChar(const QLatin1String* self, QChar* c);
int QLatin1String_compare_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs);
bool QLatin1String_startsWith_QChar(const QLatin1String* self, QChar* c);
bool QLatin1String_startsWith_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs);
bool QLatin1String_endsWith_QChar(const QLatin1String* self, QChar* c);
bool QLatin1String_endsWith_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs);
ptrdiff_t QLatin1String_indexOf_QChar(const QLatin1String* self, QChar* c);
ptrdiff_t QLatin1String_indexOf_QChar_qsizetype_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, ptrdiff_t from, int cs);
bool QLatin1String_contains_QChar(const QLatin1String* self, QChar* c);
ptrdiff_t QLatin1String_lastIndexOf_QChar(const QLatin1String* self, QChar* c);
ptrdiff_t QLatin1String_lastIndexOf_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs);
ptrdiff_t QLatin1String_lastIndexOf_QChar_qsizetype(const QLatin1String* self, QChar* c, ptrdiff_t from);
ptrdiff_t QLatin1String_lastIndexOf_QChar_qsizetype_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, ptrdiff_t from, int cs);
ptrdiff_t QLatin1String_count_QChar(const QLatin1String* self, QChar* ch);
short QLatin1String_toShort(const QLatin1String* self);
unsigned short QLatin1String_toUShort(const QLatin1String* self);
int QLatin1String_toInt(const QLatin1String* self);
unsigned int QLatin1String_toUInt(const QLatin1String* self);
long QLatin1String_toLong(const QLatin1String* self);
unsigned long QLatin1String_toULong(const QLatin1String* self);
long long QLatin1String_toLongLong(const QLatin1String* self);
unsigned long long QLatin1String_toULongLong(const QLatin1String* self);
float QLatin1String_toFloat(const QLatin1String* self);
double QLatin1String_toDouble(const QLatin1String* self);
const char* QLatin1String_begin(const QLatin1String* self);
const char* QLatin1String_cbegin(const QLatin1String* self);
const char* QLatin1String_end(const QLatin1String* self);
const char* QLatin1String_cend(const QLatin1String* self);
ptrdiff_t QLatin1String_max_size(const QLatin1String* self);
ptrdiff_t QLatin1String_maxSize();
void QLatin1String_chop(QLatin1String* self, ptrdiff_t n);
void QLatin1String_truncate(QLatin1String* self, ptrdiff_t n);
ptrdiff_t QLatin1String_indexOf_QChar_qsizetype(const QLatin1String* self, QChar* c, ptrdiff_t from);
bool QLatin1String_contains_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs);
ptrdiff_t QLatin1String_count_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* ch, int cs);
short QLatin1String_toShort_ok(const QLatin1String* self, bool* ok);
short QLatin1String_toShort_ok_base(const QLatin1String* self, bool* ok, int base);
unsigned short QLatin1String_toUShort_ok(const QLatin1String* self, bool* ok);
unsigned short QLatin1String_toUShort_ok_base(const QLatin1String* self, bool* ok, int base);
int QLatin1String_toInt_ok(const QLatin1String* self, bool* ok);
int QLatin1String_toInt_ok_base(const QLatin1String* self, bool* ok, int base);
unsigned int QLatin1String_toUInt_ok(const QLatin1String* self, bool* ok);
unsigned int QLatin1String_toUInt_ok_base(const QLatin1String* self, bool* ok, int base);
long QLatin1String_toLong_ok(const QLatin1String* self, bool* ok);
long QLatin1String_toLong_ok_base(const QLatin1String* self, bool* ok, int base);
unsigned long QLatin1String_toULong_ok(const QLatin1String* self, bool* ok);
unsigned long QLatin1String_toULong_ok_base(const QLatin1String* self, bool* ok, int base);
long long QLatin1String_toLongLong_ok(const QLatin1String* self, bool* ok);
long long QLatin1String_toLongLong_ok_base(const QLatin1String* self, bool* ok, int base);
unsigned long long QLatin1String_toULongLong_ok(const QLatin1String* self, bool* ok);
unsigned long long QLatin1String_toULongLong_ok_base(const QLatin1String* self, bool* ok, int base);
float QLatin1String_toFloat_ok(const QLatin1String* self, bool* ok);
double QLatin1String_toDouble_ok(const QLatin1String* self, bool* ok);

void QLatin1String_delete(QLatin1String* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
