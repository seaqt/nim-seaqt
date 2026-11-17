#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLKEY_H
#define SEAQT_QTNETWORK_GEN_QSSLKEY_H

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
class QSslKey;
#else
typedef struct QIODevice QIODevice;
typedef struct QSslKey QSslKey;
#endif

QSslKey* QSslKey_new();
QSslKey* QSslKey_new_encoded_algorithm(struct seaqt_string encoded, int algorithm);
QSslKey* QSslKey_new_device_algorithm(QIODevice* device, int algorithm);
QSslKey* QSslKey_new_handle(void* handle);
QSslKey* QSslKey_new_from(QSslKey* from);
QSslKey* QSslKey_new_encoded_algorithm_format(struct seaqt_string encoded, int algorithm, int format);
QSslKey* QSslKey_new_encoded_algorithm_format_type(struct seaqt_string encoded, int algorithm, int format, int type);
QSslKey* QSslKey_new_encoded_algorithm_format_type_passPhrase(struct seaqt_string encoded, int algorithm, int format, int type, struct seaqt_string passPhrase);
QSslKey* QSslKey_new_device_algorithm_format(QIODevice* device, int algorithm, int format);
QSslKey* QSslKey_new_device_algorithm_format_type(QIODevice* device, int algorithm, int format, int type);
QSslKey* QSslKey_new_device_algorithm_format_type_passPhrase(QIODevice* device, int algorithm, int format, int type, struct seaqt_string passPhrase);
QSslKey* QSslKey_new_handle_type(void* handle, int type);

void QSslKey_operatorAssign(QSslKey* self, QSslKey* from);
void QSslKey_swap(QSslKey* self, QSslKey* other);
bool QSslKey_isNull(const QSslKey* self);
void QSslKey_clear(QSslKey* self);
int QSslKey_length(const QSslKey* self);
int QSslKey_type(const QSslKey* self);
int QSslKey_algorithm(const QSslKey* self);
struct seaqt_string QSslKey_toPem(const QSslKey* self);
struct seaqt_string QSslKey_toDer(const QSslKey* self);
void* QSslKey_handle(const QSslKey* self);
bool QSslKey_operatorEqual(const QSslKey* self, QSslKey* key);
bool QSslKey_operatorNotEqual(const QSslKey* self, QSslKey* key);
struct seaqt_string QSslKey_toPem_passPhrase(const QSslKey* self, struct seaqt_string passPhrase);
struct seaqt_string QSslKey_toDer_passPhrase(const QSslKey* self, struct seaqt_string passPhrase);

void QSslKey_delete(QSslKey* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
