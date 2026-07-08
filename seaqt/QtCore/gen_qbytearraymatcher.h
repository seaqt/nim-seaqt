#pragma once
#ifndef SEAQT_QTCORE_GEN_QBYTEARRAYMATCHER_H
#define SEAQT_QTCORE_GEN_QBYTEARRAYMATCHER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QByteArrayMatcher;
class QStaticByteArrayMatcherBase;
#else
typedef struct QByteArrayMatcher QByteArrayMatcher;
typedef struct QStaticByteArrayMatcherBase QStaticByteArrayMatcherBase;
#endif

QByteArrayMatcher* QByteArrayMatcher_new();
QByteArrayMatcher* QByteArrayMatcher_new_QByteArray(struct seaqt_string pattern);
QByteArrayMatcher* QByteArrayMatcher_new_QByteArrayView(struct seaqt_string pattern);
QByteArrayMatcher* QByteArrayMatcher_new_char(const char* pattern);
QByteArrayMatcher* QByteArrayMatcher_new_QByteArrayMatcher(QByteArrayMatcher* from);
QByteArrayMatcher* QByteArrayMatcher_new_char_qsizetype(const char* pattern, ptrdiff_t length);

void QByteArrayMatcher_operatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* from);
void QByteArrayMatcher_setPattern(QByteArrayMatcher* self, struct seaqt_string pattern);
ptrdiff_t QByteArrayMatcher_indexIn_str_len(const QByteArrayMatcher* self, const char* str, ptrdiff_t len);
ptrdiff_t QByteArrayMatcher_indexIn_data(const QByteArrayMatcher* self, struct seaqt_string data);
struct seaqt_string QByteArrayMatcher_pattern(const QByteArrayMatcher* self);
ptrdiff_t QByteArrayMatcher_indexIn_str_len_from(const QByteArrayMatcher* self, const char* str, ptrdiff_t len, ptrdiff_t from);
ptrdiff_t QByteArrayMatcher_indexIn_data_from(const QByteArrayMatcher* self, struct seaqt_string data, ptrdiff_t from);

void QByteArrayMatcher_delete(QByteArrayMatcher* self);



#ifdef __cplusplus
} /* extern C */
#endif

#endif
