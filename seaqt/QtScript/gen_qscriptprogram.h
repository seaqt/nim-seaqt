#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTPROGRAM_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTPROGRAM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QScriptProgram;
#else
typedef struct QScriptProgram QScriptProgram;
#endif

QScriptProgram* QScriptProgram_new();
QScriptProgram* QScriptProgram_new_sourceCode(struct seaqt_string sourceCode);
QScriptProgram* QScriptProgram_new_from(QScriptProgram* from);
QScriptProgram* QScriptProgram_new_sourceCode_fileName(struct seaqt_string sourceCode, struct seaqt_string fileName);
QScriptProgram* QScriptProgram_new_sourceCode_fileName_firstLineNumber(struct seaqt_string sourceCode, struct seaqt_string fileName, int firstLineNumber);

void QScriptProgram_operatorAssign(QScriptProgram* self, QScriptProgram* from);
bool QScriptProgram_isNull(const QScriptProgram* self);
struct seaqt_string QScriptProgram_sourceCode(const QScriptProgram* self);
struct seaqt_string QScriptProgram_fileName(const QScriptProgram* self);
int QScriptProgram_firstLineNumber(const QScriptProgram* self);
bool QScriptProgram_operatorEqual(const QScriptProgram* self, QScriptProgram* other);
bool QScriptProgram_operatorNotEqual(const QScriptProgram* self, QScriptProgram* other);

void QScriptProgram_delete(QScriptProgram* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
