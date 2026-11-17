#pragma once
#ifndef SEAQT_QTCORE_GEN_QREGULAREXPRESSION_H
#define SEAQT_QTCORE_GEN_QREGULAREXPRESSION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRegularExpression;
class QRegularExpressionMatch;
class QRegularExpressionMatchIterator;
#else
typedef struct QRegularExpression QRegularExpression;
typedef struct QRegularExpressionMatch QRegularExpressionMatch;
typedef struct QRegularExpressionMatchIterator QRegularExpressionMatchIterator;
#endif

QRegularExpression* QRegularExpression_new();
QRegularExpression* QRegularExpression_new_pattern(struct seaqt_string pattern);
QRegularExpression* QRegularExpression_new_from(QRegularExpression* from);
QRegularExpression* QRegularExpression_new_pattern_options(struct seaqt_string pattern, int options);

int QRegularExpression_patternOptions(const QRegularExpression* self);
void QRegularExpression_setPatternOptions(QRegularExpression* self, int options);
void QRegularExpression_operatorAssign(QRegularExpression* self, QRegularExpression* from);
void QRegularExpression_swap(QRegularExpression* self, QRegularExpression* other);
struct seaqt_string QRegularExpression_pattern(const QRegularExpression* self);
void QRegularExpression_setPattern(QRegularExpression* self, struct seaqt_string pattern);
bool QRegularExpression_isValid(const QRegularExpression* self);
int QRegularExpression_patternErrorOffset(const QRegularExpression* self);
struct seaqt_string QRegularExpression_errorString(const QRegularExpression* self);
int QRegularExpression_captureCount(const QRegularExpression* self);
struct seaqt_array /* of struct seaqt_string */  QRegularExpression_namedCaptureGroups(const QRegularExpression* self);
QRegularExpressionMatch* QRegularExpression_match_QString(const QRegularExpression* self, struct seaqt_string subject);
QRegularExpressionMatchIterator* QRegularExpression_globalMatch_QString(const QRegularExpression* self, struct seaqt_string subject);
void QRegularExpression_optimize(const QRegularExpression* self);
struct seaqt_string QRegularExpression_escape_QString(struct seaqt_string str);
struct seaqt_string QRegularExpression_wildcardToRegularExpression_QString(struct seaqt_string str);
struct seaqt_string QRegularExpression_anchoredPattern_QString(struct seaqt_string expression);
bool QRegularExpression_operatorEqual(const QRegularExpression* self, QRegularExpression* re);
bool QRegularExpression_operatorNotEqual(const QRegularExpression* self, QRegularExpression* re);
QRegularExpressionMatch* QRegularExpression_match_QString_int(const QRegularExpression* self, struct seaqt_string subject, int offset);
QRegularExpressionMatch* QRegularExpression_match_QString_int_QRegularExpression_MatchType(const QRegularExpression* self, struct seaqt_string subject, int offset, int matchType);
QRegularExpressionMatch* QRegularExpression_match_QString_int_QRegularExpression_MatchType_QRegularExpression_MatchOptions(const QRegularExpression* self, struct seaqt_string subject, int offset, int matchType, int matchOptions);
QRegularExpressionMatchIterator* QRegularExpression_globalMatch_QString_int(const QRegularExpression* self, struct seaqt_string subject, int offset);
QRegularExpressionMatchIterator* QRegularExpression_globalMatch_QString_int_QRegularExpression_MatchType(const QRegularExpression* self, struct seaqt_string subject, int offset, int matchType);
QRegularExpressionMatchIterator* QRegularExpression_globalMatch_QString_int_QRegularExpression_MatchType_QRegularExpression_MatchOptions(const QRegularExpression* self, struct seaqt_string subject, int offset, int matchType, int matchOptions);

void QRegularExpression_delete(QRegularExpression* self);

QRegularExpressionMatch* QRegularExpressionMatch_new();
QRegularExpressionMatch* QRegularExpressionMatch_new_from(QRegularExpressionMatch* from);

void QRegularExpressionMatch_operatorAssign(QRegularExpressionMatch* self, QRegularExpressionMatch* from);
void QRegularExpressionMatch_swap(QRegularExpressionMatch* self, QRegularExpressionMatch* other);
QRegularExpression* QRegularExpressionMatch_regularExpression(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_matchType(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_matchOptions(const QRegularExpressionMatch* self);
bool QRegularExpressionMatch_hasMatch(const QRegularExpressionMatch* self);
bool QRegularExpressionMatch_hasPartialMatch(const QRegularExpressionMatch* self);
bool QRegularExpressionMatch_isValid(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_lastCapturedIndex(const QRegularExpressionMatch* self);
struct seaqt_string QRegularExpressionMatch_captured(const QRegularExpressionMatch* self);
struct seaqt_string QRegularExpressionMatch_captured_QString(const QRegularExpressionMatch* self, struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QRegularExpressionMatch_capturedTexts(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_capturedStart(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_capturedLength(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_capturedEnd(const QRegularExpressionMatch* self);
int QRegularExpressionMatch_capturedStart_QString(const QRegularExpressionMatch* self, struct seaqt_string name);
int QRegularExpressionMatch_capturedLength_QString(const QRegularExpressionMatch* self, struct seaqt_string name);
int QRegularExpressionMatch_capturedEnd_QString(const QRegularExpressionMatch* self, struct seaqt_string name);
struct seaqt_string QRegularExpressionMatch_captured_int(const QRegularExpressionMatch* self, int nth);
int QRegularExpressionMatch_capturedStart_int(const QRegularExpressionMatch* self, int nth);
int QRegularExpressionMatch_capturedLength_int(const QRegularExpressionMatch* self, int nth);
int QRegularExpressionMatch_capturedEnd_int(const QRegularExpressionMatch* self, int nth);

void QRegularExpressionMatch_delete(QRegularExpressionMatch* self);

QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new();
QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new_from(QRegularExpressionMatchIterator* from);

void QRegularExpressionMatchIterator_operatorAssign(QRegularExpressionMatchIterator* self, QRegularExpressionMatchIterator* from);
void QRegularExpressionMatchIterator_swap(QRegularExpressionMatchIterator* self, QRegularExpressionMatchIterator* other);
bool QRegularExpressionMatchIterator_isValid(const QRegularExpressionMatchIterator* self);
bool QRegularExpressionMatchIterator_hasNext(const QRegularExpressionMatchIterator* self);
QRegularExpressionMatch* QRegularExpressionMatchIterator_next(QRegularExpressionMatchIterator* self);
QRegularExpressionMatch* QRegularExpressionMatchIterator_peekNext(const QRegularExpressionMatchIterator* self);
QRegularExpression* QRegularExpressionMatchIterator_regularExpression(const QRegularExpressionMatchIterator* self);
int QRegularExpressionMatchIterator_matchType(const QRegularExpressionMatchIterator* self);
int QRegularExpressionMatchIterator_matchOptions(const QRegularExpressionMatchIterator* self);

void QRegularExpressionMatchIterator_delete(QRegularExpressionMatchIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
