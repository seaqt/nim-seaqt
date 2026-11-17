#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTRINGCONVERTER_BASE_H
#define SEAQT_QTCORE_GEN_QSTRINGCONVERTER_BASE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QStringConverter;
#else
typedef struct QStringConverter QStringConverter;
#endif

bool QStringConverter_isValid(const QStringConverter* self);
void QStringConverter_resetState(QStringConverter* self);
bool QStringConverter_hasError(const QStringConverter* self);
const char* QStringConverter_name(const QStringConverter* self);
const char* QStringConverter_nameForEncoding(int e);
struct seaqt_array /* of struct seaqt_string */  QStringConverter_availableCodecs();


#ifdef __cplusplus
} /* extern C */
#endif

#endif
