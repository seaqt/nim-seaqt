#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTRINGCONVERTER_H
#define SEAQT_QTCORE_GEN_QSTRINGCONVERTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAnyStringView;
class QChar;
class QStringConverter;
class QStringDecoder;
class QStringEncoder;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QChar QChar;
typedef struct QStringConverter QStringConverter;
typedef struct QStringDecoder QStringDecoder;
typedef struct QStringEncoder QStringEncoder;
#endif

QStringEncoder* QStringEncoder_new();
QStringEncoder* QStringEncoder_new_encoding(int encoding);
QStringEncoder* QStringEncoder_new_name(struct seaqt_string name);
QStringEncoder* QStringEncoder_new_encoding_flags(int encoding, int flags);
QStringEncoder* QStringEncoder_new_name_flags(struct seaqt_string name, int flags);

void QStringEncoder_virtbase(QStringEncoder* src, QStringConverter** outptr_QStringConverter);
ptrdiff_t QStringEncoder_requiredSpace(const QStringEncoder* self, ptrdiff_t inputLength);

void QStringEncoder_delete(QStringEncoder* self);

QStringDecoder* QStringDecoder_new_encoding(int encoding);
QStringDecoder* QStringDecoder_new();
QStringDecoder* QStringDecoder_new_name(struct seaqt_string name);
QStringDecoder* QStringDecoder_new_encoding_flags(int encoding, int flags);
QStringDecoder* QStringDecoder_new_name_f(struct seaqt_string name, int f);

void QStringDecoder_virtbase(QStringDecoder* src, QStringConverter** outptr_QStringConverter);
ptrdiff_t QStringDecoder_requiredSpace(const QStringDecoder* self, ptrdiff_t inputLength);
QChar* QStringDecoder_appendToBuffer_QChar_QByteArrayView(QStringDecoder* self, QChar* out, struct seaqt_string ba);
QStringDecoder* QStringDecoder_decoderForHtml(struct seaqt_string data);

void QStringDecoder_delete(QStringDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
