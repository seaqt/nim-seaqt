#pragma once
#ifndef SEAQT_QTCORE_GEN_QREGEXP_H
#define SEAQT_QTCORE_GEN_QREGEXP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRegExp;
#else
typedef struct QRegExp QRegExp;
#endif

QRegExp* QRegExp_new();
QRegExp* QRegExp_new_pattern(struct seaqt_string pattern);
QRegExp* QRegExp_new_from(QRegExp* from);
QRegExp* QRegExp_new_pattern_cs(struct seaqt_string pattern, int cs);
QRegExp* QRegExp_new_pattern_cs_syntax(struct seaqt_string pattern, int cs, int syntax);

void QRegExp_operatorAssign(QRegExp* self, QRegExp* from);
void QRegExp_swap(QRegExp* self, QRegExp* other);
bool QRegExp_operatorEqual(const QRegExp* self, QRegExp* rx);
bool QRegExp_operatorNotEqual(const QRegExp* self, QRegExp* rx);
bool QRegExp_isEmpty(const QRegExp* self);
bool QRegExp_isValid(const QRegExp* self);
struct seaqt_string QRegExp_pattern(const QRegExp* self);
void QRegExp_setPattern(QRegExp* self, struct seaqt_string pattern);
int QRegExp_caseSensitivity(const QRegExp* self);
void QRegExp_setCaseSensitivity(QRegExp* self, int cs);
int QRegExp_patternSyntax(const QRegExp* self);
void QRegExp_setPatternSyntax(QRegExp* self, int syntax);
bool QRegExp_isMinimal(const QRegExp* self);
void QRegExp_setMinimal(QRegExp* self, bool minimal);
bool QRegExp_exactMatch(const QRegExp* self, struct seaqt_string str);
int QRegExp_indexIn_str(const QRegExp* self, struct seaqt_string str);
int QRegExp_lastIndexIn_str(const QRegExp* self, struct seaqt_string str);
int QRegExp_matchedLength(const QRegExp* self);
int QRegExp_captureCount(const QRegExp* self);
struct seaqt_array /* of struct seaqt_string */  QRegExp_capturedTexts_const(const QRegExp* self);
struct seaqt_array /* of struct seaqt_string */  QRegExp_capturedTexts(QRegExp* self);
struct seaqt_string QRegExp_cap_const(const QRegExp* self);
struct seaqt_string QRegExp_cap(QRegExp* self);
int QRegExp_pos_const(const QRegExp* self);
int QRegExp_pos(QRegExp* self);
struct seaqt_string QRegExp_errorString_const(const QRegExp* self);
struct seaqt_string QRegExp_errorString(QRegExp* self);
struct seaqt_string QRegExp_escape(struct seaqt_string str);
int QRegExp_indexIn_str_offset(const QRegExp* self, struct seaqt_string str, int offset);
int QRegExp_indexIn_str_offset_caretMode(const QRegExp* self, struct seaqt_string str, int offset, int caretMode);
int QRegExp_lastIndexIn_str_offset(const QRegExp* self, struct seaqt_string str, int offset);
int QRegExp_lastIndexIn_str_offset_caretMode(const QRegExp* self, struct seaqt_string str, int offset, int caretMode);
struct seaqt_string QRegExp_cap_const_int(const QRegExp* self, int nth);
struct seaqt_string QRegExp_cap_int(QRegExp* self, int nth);
int QRegExp_pos_const_int(const QRegExp* self, int nth);
int QRegExp_pos_int(QRegExp* self, int nth);

void QRegExp_delete(QRegExp* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
