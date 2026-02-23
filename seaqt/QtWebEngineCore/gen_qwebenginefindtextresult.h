#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEFINDTEXTRESULT_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEFINDTEXTRESULT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QWebEngineFindTextResult;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QWebEngineFindTextResult QWebEngineFindTextResult;
#endif

QWebEngineFindTextResult* QWebEngineFindTextResult_new();
QWebEngineFindTextResult* QWebEngineFindTextResult_new_from(QWebEngineFindTextResult* from);

int QWebEngineFindTextResult_numberOfMatches(const QWebEngineFindTextResult* self);
int QWebEngineFindTextResult_activeMatch(const QWebEngineFindTextResult* self);
void QWebEngineFindTextResult_operatorAssign(QWebEngineFindTextResult* self, QWebEngineFindTextResult* from);

void QWebEngineFindTextResult_delete(QWebEngineFindTextResult* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
