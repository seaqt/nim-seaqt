#pragma once
#ifndef SEAQT_QTCORE_GEN_QCRYPTOGRAPHICHASH_H
#define SEAQT_QTCORE_GEN_QCRYPTOGRAPHICHASH_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCryptographicHash;
class QIODevice;
class QMetaObject;
#else
typedef struct QCryptographicHash QCryptographicHash;
typedef struct QIODevice QIODevice;
typedef struct QMetaObject QMetaObject;
#endif

QCryptographicHash* QCryptographicHash_new(int method);

void QCryptographicHash_reset(QCryptographicHash* self);
void QCryptographicHash_addData_data_length(QCryptographicHash* self, const char* data, int length);
void QCryptographicHash_addData_data(QCryptographicHash* self, struct seaqt_string data);
bool QCryptographicHash_addData_device(QCryptographicHash* self, QIODevice* device);
struct seaqt_string QCryptographicHash_result(const QCryptographicHash* self);
struct seaqt_string QCryptographicHash_hash(struct seaqt_string data, int method);
int QCryptographicHash_hashLength(int method);

const QMetaObject* QCryptographicHash_staticMetaObject();
void QCryptographicHash_delete(QCryptographicHash* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
