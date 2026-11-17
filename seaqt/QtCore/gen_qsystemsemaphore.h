#pragma once
#ifndef SEAQT_QTCORE_GEN_QSYSTEMSEMAPHORE_H
#define SEAQT_QTCORE_GEN_QSYSTEMSEMAPHORE_H

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
class QSystemSemaphore;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QSystemSemaphore QSystemSemaphore;
#endif

QSystemSemaphore* QSystemSemaphore_new_key(struct seaqt_string key);
QSystemSemaphore* QSystemSemaphore_new_key_initialValue(struct seaqt_string key, int initialValue);
QSystemSemaphore* QSystemSemaphore_new_key_initialValue_mode(struct seaqt_string key, int initialValue, int mode);

struct seaqt_string QSystemSemaphore_tr_sourceText(const char* sourceText);
void QSystemSemaphore_setKey_key(QSystemSemaphore* self, struct seaqt_string key);
struct seaqt_string QSystemSemaphore_key(const QSystemSemaphore* self);
bool QSystemSemaphore_acquire(QSystemSemaphore* self);
bool QSystemSemaphore_release(QSystemSemaphore* self);
int QSystemSemaphore_error(const QSystemSemaphore* self);
struct seaqt_string QSystemSemaphore_errorString(const QSystemSemaphore* self);
struct seaqt_string QSystemSemaphore_tr_sourceText_disambiguation(const char* sourceText, const char* disambiguation);
struct seaqt_string QSystemSemaphore_tr_sourceText_disambiguation_n(const char* sourceText, const char* disambiguation, int n);
void QSystemSemaphore_setKey_key_initialValue(QSystemSemaphore* self, struct seaqt_string key, int initialValue);
void QSystemSemaphore_setKey_key_initialValue_mode(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode);
bool QSystemSemaphore_release_n(QSystemSemaphore* self, int n);

const QMetaObject* QSystemSemaphore_staticMetaObject();
void QSystemSemaphore_delete(QSystemSemaphore* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
