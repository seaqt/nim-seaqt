#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTRINGMATCHER_H
#define SEAQT_QTCORE_GEN_QSTRINGMATCHER_H

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
class QStringMatcher;
#else
typedef struct QChar QChar;
typedef struct QStringMatcher QStringMatcher;
#endif

QStringMatcher* QStringMatcher_new();
QStringMatcher* QStringMatcher_new_QString(struct seaqt_string pattern);
QStringMatcher* QStringMatcher_new_QChar_int(QChar* uc, int len);
QStringMatcher* QStringMatcher_new_QStringMatcher(QStringMatcher* from);
QStringMatcher* QStringMatcher_new_QString_Qt_CaseSensitivity(struct seaqt_string pattern, int cs);
QStringMatcher* QStringMatcher_new_QChar_int_Qt_CaseSensitivity(QChar* uc, int len, int cs);

void QStringMatcher_operatorAssign(QStringMatcher* self, QStringMatcher* from);
void QStringMatcher_setPattern(QStringMatcher* self, struct seaqt_string pattern);
void QStringMatcher_setCaseSensitivity(QStringMatcher* self, int cs);
int QStringMatcher_indexIn_QString(const QStringMatcher* self, struct seaqt_string str);
int QStringMatcher_indexIn_QChar_int(const QStringMatcher* self, QChar* str, int length);
struct seaqt_string QStringMatcher_pattern(const QStringMatcher* self);
int QStringMatcher_caseSensitivity(const QStringMatcher* self);
int QStringMatcher_indexIn_QString_int(const QStringMatcher* self, struct seaqt_string str, int from);
int QStringMatcher_indexIn_QChar_int_int(const QStringMatcher* self, QChar* str, int length, int from);

void QStringMatcher_delete(QStringMatcher* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
