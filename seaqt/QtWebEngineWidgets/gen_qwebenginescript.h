#pragma once
#ifndef SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINESCRIPT_H
#define SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINESCRIPT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QWebEngineScript;
#else
typedef struct QWebEngineScript QWebEngineScript;
#endif

QWebEngineScript* QWebEngineScript_new();
QWebEngineScript* QWebEngineScript_new_from(QWebEngineScript* from);

void QWebEngineScript_operatorAssign(QWebEngineScript* self, QWebEngineScript* from);
bool QWebEngineScript_isNull(const QWebEngineScript* self);
struct seaqt_string QWebEngineScript_name(const QWebEngineScript* self);
void QWebEngineScript_setName(QWebEngineScript* self, struct seaqt_string name);
struct seaqt_string QWebEngineScript_sourceCode(const QWebEngineScript* self);
void QWebEngineScript_setSourceCode(QWebEngineScript* self, struct seaqt_string sourceCode);
int QWebEngineScript_injectionPoint(const QWebEngineScript* self);
void QWebEngineScript_setInjectionPoint(QWebEngineScript* self, int injectionPoint);
unsigned int QWebEngineScript_worldId(const QWebEngineScript* self);
void QWebEngineScript_setWorldId(QWebEngineScript* self, unsigned int worldId);
bool QWebEngineScript_runsOnSubFrames(const QWebEngineScript* self);
void QWebEngineScript_setRunsOnSubFrames(QWebEngineScript* self, bool on);
bool QWebEngineScript_operatorEqual(const QWebEngineScript* self, QWebEngineScript* other);
bool QWebEngineScript_operatorNotEqual(const QWebEngineScript* self, QWebEngineScript* other);
void QWebEngineScript_swap(QWebEngineScript* self, QWebEngineScript* other);

void QWebEngineScript_delete(QWebEngineScript* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
