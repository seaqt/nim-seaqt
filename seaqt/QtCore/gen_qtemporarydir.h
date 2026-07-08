#pragma once
#ifndef SEAQT_QTCORE_GEN_QTEMPORARYDIR_H
#define SEAQT_QTCORE_GEN_QTEMPORARYDIR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QTemporaryDir;
#else
typedef struct QTemporaryDir QTemporaryDir;
#endif

QTemporaryDir* QTemporaryDir_new();
QTemporaryDir* QTemporaryDir_new2(struct seaqt_string templateName);

void QTemporaryDir_swap(QTemporaryDir* self, QTemporaryDir* other);
bool QTemporaryDir_isValid(const QTemporaryDir* self);
struct seaqt_string QTemporaryDir_errorString(const QTemporaryDir* self);
bool QTemporaryDir_autoRemove(const QTemporaryDir* self);
void QTemporaryDir_setAutoRemove(QTemporaryDir* self, bool b);
bool QTemporaryDir_remove(QTemporaryDir* self);
struct seaqt_string QTemporaryDir_path(const QTemporaryDir* self);
struct seaqt_string QTemporaryDir_filePath(const QTemporaryDir* self, struct seaqt_string fileName);

void QTemporaryDir_delete(QTemporaryDir* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
