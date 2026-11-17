#pragma once
#ifndef SEAQT_QTCORE_GEN_QJSONPARSEERROR_H
#define SEAQT_QTCORE_GEN_QJSONPARSEERROR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJsonParseError;
#else
typedef struct QJsonParseError QJsonParseError;
#endif

struct seaqt_string QJsonParseError_errorString(const QJsonParseError* self);
int QJsonParseError_error(const QJsonParseError* self);
void QJsonParseError_setError(QJsonParseError* self, int error);

void QJsonParseError_delete(QJsonParseError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
