#pragma once
#ifndef SEAQT_QTCORE_GEN_QCHAR_H
#define SEAQT_QTCORE_GEN_QCHAR_H

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
#else
typedef struct QChar QChar;
typedef struct QLatin1Char QLatin1Char;
#endif

QLatin1Char* QLatin1Char_new_c(char c);
QLatin1Char* QLatin1Char_new_from(QLatin1Char* from);

char QLatin1Char_toLatin1(const QLatin1Char* self);
unsigned short QLatin1Char_unicode(const QLatin1Char* self);

void QLatin1Char_delete(QLatin1Char* self);

QChar* QChar_new();
QChar* QChar_new_ushort(unsigned short rc);
QChar* QChar_new_uchar_uchar(unsigned char c, unsigned char r);
QChar* QChar_new_short(short rc);
QChar* QChar_new_uint(unsigned int rc);
QChar* QChar_new_int(int rc);
QChar* QChar_new_QChar_SpecialCharacter(int s);
QChar* QChar_new_QLatin1Char(QLatin1Char* ch);
QChar* QChar_new_char(char c);
QChar* QChar_new_uchar(unsigned char c);
QChar* QChar_new_QChar(QChar* from);

int QChar_category(const QChar* self);
int QChar_direction(const QChar* self);
int QChar_joiningType(const QChar* self);
int QChar_joining(const QChar* self);
unsigned char QChar_combiningClass(const QChar* self);
QChar* QChar_mirroredChar(const QChar* self);
bool QChar_hasMirrored(const QChar* self);
struct seaqt_string QChar_decomposition(const QChar* self);
int QChar_decompositionTag(const QChar* self);
int QChar_digitValue(const QChar* self);
QChar* QChar_toLower(const QChar* self);
QChar* QChar_toUpper(const QChar* self);
QChar* QChar_toTitleCase(const QChar* self);
QChar* QChar_toCaseFolded(const QChar* self);
int QChar_script(const QChar* self);
int QChar_unicodeVersion(const QChar* self);
char QChar_toLatin1(const QChar* self);
unsigned short QChar_unicode(const QChar* self);
QChar* QChar_fromLatin1(char c);
bool QChar_isNull(const QChar* self);
bool QChar_isPrint(const QChar* self);
bool QChar_isSpace(const QChar* self);
bool QChar_isMark(const QChar* self);
bool QChar_isPunct(const QChar* self);
bool QChar_isSymbol(const QChar* self);
bool QChar_isLetter(const QChar* self);
bool QChar_isNumber(const QChar* self);
bool QChar_isLetterOrNumber(const QChar* self);
bool QChar_isDigit(const QChar* self);
bool QChar_isLower(const QChar* self);
bool QChar_isUpper(const QChar* self);
bool QChar_isTitleCase(const QChar* self);
bool QChar_isNonCharacter(const QChar* self);
bool QChar_isHighSurrogate(const QChar* self);
bool QChar_isLowSurrogate(const QChar* self);
bool QChar_isSurrogate(const QChar* self);
unsigned char QChar_cell(const QChar* self);
unsigned char QChar_row(const QChar* self);
void QChar_setCell(QChar* self, unsigned char acell);
void QChar_setRow(QChar* self, unsigned char arow);
bool QChar_isNonCharacter_ucs4(unsigned int ucs4);
bool QChar_isHighSurrogate_ucs4(unsigned int ucs4);
bool QChar_isLowSurrogate_ucs4(unsigned int ucs4);
bool QChar_isSurrogate_ucs4(unsigned int ucs4);
bool QChar_requiresSurrogates(unsigned int ucs4);
unsigned int QChar_surrogateToUcs4_ushort_ushort(unsigned short high, unsigned short low);
unsigned int QChar_surrogateToUcs4_QChar_QChar(QChar* high, QChar* low);
unsigned short QChar_highSurrogate(unsigned int ucs4);
unsigned short QChar_lowSurrogate(unsigned int ucs4);
int QChar_category_ucs4(unsigned int ucs4);
int QChar_direction_ucs4(unsigned int ucs4);
int QChar_joiningType_ucs4(unsigned int ucs4);
int QChar_joining_ucs4(unsigned int ucs4);
unsigned char QChar_combiningClass_ucs4(unsigned int ucs4);
unsigned int QChar_mirroredChar_ucs4(unsigned int ucs4);
bool QChar_hasMirrored_ucs4(unsigned int ucs4);
struct seaqt_string QChar_decomposition_ucs4(unsigned int ucs4);
int QChar_decompositionTag_ucs4(unsigned int ucs4);
int QChar_digitValue_ucs4(unsigned int ucs4);
unsigned int QChar_toLower_ucs4(unsigned int ucs4);
unsigned int QChar_toUpper_ucs4(unsigned int ucs4);
unsigned int QChar_toTitleCase_ucs4(unsigned int ucs4);
unsigned int QChar_toCaseFolded_ucs4(unsigned int ucs4);
int QChar_script_ucs4(unsigned int ucs4);
int QChar_unicodeVersion_ucs4(unsigned int ucs4);
int QChar_currentUnicodeVersion();
bool QChar_isPrint_ucs4(unsigned int ucs4);
bool QChar_isSpace_ucs4(unsigned int ucs4);
bool QChar_isMark_ucs4(unsigned int ucs4);
bool QChar_isPunct_ucs4(unsigned int ucs4);
bool QChar_isSymbol_ucs4(unsigned int ucs4);
bool QChar_isLetter_ucs4(unsigned int ucs4);
bool QChar_isNumber_ucs4(unsigned int ucs4);
bool QChar_isLetterOrNumber_ucs4(unsigned int ucs4);
bool QChar_isDigit_ucs4(unsigned int ucs4);
bool QChar_isLower_ucs4(unsigned int ucs4);
bool QChar_isUpper_ucs4(unsigned int ucs4);
bool QChar_isTitleCase_ucs4(unsigned int ucs4);

void QChar_delete(QChar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
