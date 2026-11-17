#pragma once
#ifndef SEAQT_QTCORE_GEN_QMESSAGEAUTHENTICATIONCODE_H
#define SEAQT_QTCORE_GEN_QMESSAGEAUTHENTICATIONCODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIODevice;
class QMessageAuthenticationCode;
#else
typedef struct QIODevice QIODevice;
typedef struct QMessageAuthenticationCode QMessageAuthenticationCode;
#endif

QMessageAuthenticationCode* QMessageAuthenticationCode_new(int method);
QMessageAuthenticationCode* QMessageAuthenticationCode_new2(int method, struct seaqt_string key);

void QMessageAuthenticationCode_reset(QMessageAuthenticationCode* self);
void QMessageAuthenticationCode_setKey(QMessageAuthenticationCode* self, struct seaqt_string key);
void QMessageAuthenticationCode_addData(QMessageAuthenticationCode* self, const char* data, ptrdiff_t length);
void QMessageAuthenticationCode_addDataWithData(QMessageAuthenticationCode* self, struct seaqt_string data);
bool QMessageAuthenticationCode_addDataWithDevice(QMessageAuthenticationCode* self, QIODevice* device);
struct seaqt_string QMessageAuthenticationCode_result(const QMessageAuthenticationCode* self);
struct seaqt_string QMessageAuthenticationCode_hash(struct seaqt_string message, struct seaqt_string key, int method);

void QMessageAuthenticationCode_delete(QMessageAuthenticationCode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
