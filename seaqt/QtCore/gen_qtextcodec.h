#pragma once
#ifndef SEAQT_QTCORE_GEN_QTEXTCODEC_H
#define SEAQT_QTCORE_GEN_QTEXTCODEC_H

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
class QTextCodec;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextCodec__ConverterState)
typedef QTextCodec::ConverterState QTextCodec__ConverterState;
#else
class QTextCodec__ConverterState;
#endif
class QTextDecoder;
class QTextEncoder;
#else
typedef struct QChar QChar;
typedef struct QTextCodec QTextCodec;
typedef struct QTextCodec__ConverterState QTextCodec__ConverterState;
typedef struct QTextDecoder QTextDecoder;
typedef struct QTextEncoder QTextEncoder;
#endif

QTextCodec* QTextCodec_codecForName_QByteArray(struct seaqt_string name);
QTextCodec* QTextCodec_codecForName_char(const char* name);
QTextCodec* QTextCodec_codecForMib(int mib);
struct seaqt_array /* of struct seaqt_string */  QTextCodec_availableCodecs();
struct seaqt_array /* of int */  QTextCodec_availableMibs();
QTextCodec* QTextCodec_codecForLocale();
void QTextCodec_setCodecForLocale(QTextCodec* c);
QTextCodec* QTextCodec_codecForHtml_ba(struct seaqt_string ba);
QTextCodec* QTextCodec_codecForHtml_ba_defaultCodec(struct seaqt_string ba, QTextCodec* defaultCodec);
QTextCodec* QTextCodec_codecForUtfText_ba(struct seaqt_string ba);
QTextCodec* QTextCodec_codecForUtfText_ba_defaultCodec(struct seaqt_string ba, QTextCodec* defaultCodec);
bool QTextCodec_canEncode_QChar(const QTextCodec* self, QChar* param1);
bool QTextCodec_canEncode_QString(const QTextCodec* self, struct seaqt_string param1);
struct seaqt_string QTextCodec_toUnicode_QByteArray(const QTextCodec* self, struct seaqt_string param1);
struct seaqt_string QTextCodec_toUnicode_char(const QTextCodec* self, const char* chars);
struct seaqt_string QTextCodec_fromUnicode_QString(const QTextCodec* self, struct seaqt_string uc);
struct seaqt_string QTextCodec_toUnicode_char_int(const QTextCodec* self, const char* in, int length);
struct seaqt_string QTextCodec_fromUnicode_QChar_int(const QTextCodec* self, QChar* in, int length);
QTextDecoder* QTextCodec_makeDecoder(const QTextCodec* self);
QTextEncoder* QTextCodec_makeEncoder(const QTextCodec* self);
struct seaqt_string QTextCodec_name(const QTextCodec* self);
struct seaqt_array /* of struct seaqt_string */  QTextCodec_aliases(const QTextCodec* self);
int QTextCodec_mibEnum(const QTextCodec* self);
struct seaqt_string QTextCodec_convertToUnicode(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state);
struct seaqt_string QTextCodec_convertFromUnicode(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state);
struct seaqt_string QTextCodec_toUnicode_char_int_QTextCodec_ConverterState(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state);
struct seaqt_string QTextCodec_fromUnicode_QChar_int_QTextCodec_ConverterState(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state);
QTextDecoder* QTextCodec_makeDecoder_flags(const QTextCodec* self, int flags);
QTextEncoder* QTextCodec_makeEncoder_flags(const QTextCodec* self, int flags);


QTextEncoder* QTextEncoder_new_codec(QTextCodec* codec);
QTextEncoder* QTextEncoder_new_codec_flags(QTextCodec* codec, int flags);

struct seaqt_string QTextEncoder_fromUnicode_QString(QTextEncoder* self, struct seaqt_string str);
struct seaqt_string QTextEncoder_fromUnicode_QChar_int(QTextEncoder* self, QChar* uc, int len);
bool QTextEncoder_hasFailure(const QTextEncoder* self);

void QTextEncoder_delete(QTextEncoder* self);

QTextDecoder* QTextDecoder_new_codec(QTextCodec* codec);
QTextDecoder* QTextDecoder_new_codec_flags(QTextCodec* codec, int flags);

struct seaqt_string QTextDecoder_toUnicode_chars_len(QTextDecoder* self, const char* chars, int len);
struct seaqt_string QTextDecoder_toUnicode_ba(QTextDecoder* self, struct seaqt_string ba);
bool QTextDecoder_hasFailure(const QTextDecoder* self);
bool QTextDecoder_needsMoreData(const QTextDecoder* self);

void QTextDecoder_delete(QTextDecoder* self);

QTextCodec__ConverterState* QTextCodec__ConverterState_new();
QTextCodec__ConverterState* QTextCodec__ConverterState_new_f(int f);

int QTextCodec__ConverterState_flags(const QTextCodec__ConverterState* self);
void QTextCodec__ConverterState_setFlags(QTextCodec__ConverterState* self, int flags);
int QTextCodec__ConverterState_remainingChars(const QTextCodec__ConverterState* self);
void QTextCodec__ConverterState_setRemainingChars(QTextCodec__ConverterState* self, int remainingChars);
int QTextCodec__ConverterState_invalidChars(const QTextCodec__ConverterState* self);
void QTextCodec__ConverterState_setInvalidChars(QTextCodec__ConverterState* self, int invalidChars);

void QTextCodec__ConverterState_delete(QTextCodec__ConverterState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
