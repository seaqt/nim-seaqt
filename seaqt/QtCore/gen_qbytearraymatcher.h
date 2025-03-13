#pragma once
#ifndef SEAQT_QTCORE_GEN_QBYTEARRAYMATCHER_H
#define SEAQT_QTCORE_GEN_QBYTEARRAYMATCHER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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
QByteArrayMatcher* QByteArrayMatcher_new2(struct miqt_string pattern);
QByteArrayMatcher* QByteArrayMatcher_new3(struct miqt_string pattern);
QByteArrayMatcher* QByteArrayMatcher_new4(const char* pattern);
QByteArrayMatcher* QByteArrayMatcher_new5(QByteArrayMatcher* other);
QByteArrayMatcher* QByteArrayMatcher_new6(const char* pattern, ptrdiff_t length);

void QByteArrayMatcher_operatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* other);
void QByteArrayMatcher_setPattern(QByteArrayMatcher* self, struct miqt_string pattern);
ptrdiff_t QByteArrayMatcher_indexIn(const QByteArrayMatcher* self, const char* str, ptrdiff_t len);
ptrdiff_t QByteArrayMatcher_indexInWithData(const QByteArrayMatcher* self, struct miqt_string data);
struct miqt_string QByteArrayMatcher_pattern(const QByteArrayMatcher* self);
ptrdiff_t QByteArrayMatcher_indexIn3(const QByteArrayMatcher* self, const char* str, ptrdiff_t len, ptrdiff_t from);
ptrdiff_t QByteArrayMatcher_indexIn2(const QByteArrayMatcher* self, struct miqt_string data, ptrdiff_t from);

void QByteArrayMatcher_delete(QByteArrayMatcher* self);



#ifdef __cplusplus
} /* extern C */
#endif

#endif
