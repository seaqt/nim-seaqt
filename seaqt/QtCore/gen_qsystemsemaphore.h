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
class QNativeIpcKey;
class QSystemSemaphore;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QNativeIpcKey QNativeIpcKey;
typedef struct QSystemSemaphore QSystemSemaphore;
#endif

QSystemSemaphore* QSystemSemaphore_new_QNativeIpcKey(QNativeIpcKey* key);
QSystemSemaphore* QSystemSemaphore_new_QString(struct seaqt_string key);
QSystemSemaphore* QSystemSemaphore_new_QNativeIpcKey_int(QNativeIpcKey* key, int initialValue);
QSystemSemaphore* QSystemSemaphore_new_QNativeIpcKey_int_QSystemSemaphore_AccessMode(QNativeIpcKey* key, int initialValue, int param3);
QSystemSemaphore* QSystemSemaphore_new_QString_int(struct seaqt_string key, int initialValue);
QSystemSemaphore* QSystemSemaphore_new_QString_int_QSystemSemaphore_AccessMode(struct seaqt_string key, int initialValue, int mode);

struct seaqt_string QSystemSemaphore_tr_sourceText(const char* sourceText);
void QSystemSemaphore_setNativeKey_QNativeIpcKey(QSystemSemaphore* self, QNativeIpcKey* key);
void QSystemSemaphore_setNativeKey_QString(QSystemSemaphore* self, struct seaqt_string key);
QNativeIpcKey* QSystemSemaphore_nativeIpcKey(const QSystemSemaphore* self);
void QSystemSemaphore_setKey_key(QSystemSemaphore* self, struct seaqt_string key);
struct seaqt_string QSystemSemaphore_key(const QSystemSemaphore* self);
bool QSystemSemaphore_acquire(QSystemSemaphore* self);
bool QSystemSemaphore_release(QSystemSemaphore* self);
int QSystemSemaphore_error(const QSystemSemaphore* self);
struct seaqt_string QSystemSemaphore_errorString(const QSystemSemaphore* self);
bool QSystemSemaphore_isKeyTypeSupported(uint16_t type);
QNativeIpcKey* QSystemSemaphore_platformSafeKey_key(struct seaqt_string key);
QNativeIpcKey* QSystemSemaphore_legacyNativeKey_key(struct seaqt_string key);
struct seaqt_string QSystemSemaphore_tr_sourceText_disambiguation(const char* sourceText, const char* disambiguation);
struct seaqt_string QSystemSemaphore_tr_sourceText_disambiguation_n(const char* sourceText, const char* disambiguation, int n);
void QSystemSemaphore_setNativeKey_QNativeIpcKey_int(QSystemSemaphore* self, QNativeIpcKey* key, int initialValue);
void QSystemSemaphore_setNativeKey_QNativeIpcKey_int_QSystemSemaphore_AccessMode(QSystemSemaphore* self, QNativeIpcKey* key, int initialValue, int param3);
void QSystemSemaphore_setNativeKey_QString_int(QSystemSemaphore* self, struct seaqt_string key, int initialValue);
void QSystemSemaphore_setNativeKey_QString_int_QSystemSemaphore_AccessMode(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode);
void QSystemSemaphore_setNativeKey_QString_int_QSystemSemaphore_AccessMode_QNativeIpcKey_Type(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode, uint16_t type);
void QSystemSemaphore_setKey_key_initialValue(QSystemSemaphore* self, struct seaqt_string key, int initialValue);
void QSystemSemaphore_setKey_key_initialValue_mode(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode);
bool QSystemSemaphore_release_n(QSystemSemaphore* self, int n);
QNativeIpcKey* QSystemSemaphore_platformSafeKey_key_type(struct seaqt_string key, uint16_t type);
QNativeIpcKey* QSystemSemaphore_legacyNativeKey_key_type(struct seaqt_string key, uint16_t type);

const QMetaObject* QSystemSemaphore_staticMetaObject();
void QSystemSemaphore_delete(QSystemSemaphore* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
