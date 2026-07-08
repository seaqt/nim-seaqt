#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLDIFFIEHELLMANPARAMETERS_H
#define SEAQT_QTNETWORK_GEN_QSSLDIFFIEHELLMANPARAMETERS_H

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
class QSslDiffieHellmanParameters;
#else
typedef struct QIODevice QIODevice;
typedef struct QSslDiffieHellmanParameters QSslDiffieHellmanParameters;
#endif

QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_new();
QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_new_from(QSslDiffieHellmanParameters* from);

QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_defaultParameters();
void QSslDiffieHellmanParameters_operatorAssign(QSslDiffieHellmanParameters* self, QSslDiffieHellmanParameters* from);
void QSslDiffieHellmanParameters_swap(QSslDiffieHellmanParameters* self, QSslDiffieHellmanParameters* other);
QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_fromEncoded_encoded(struct seaqt_string encoded);
QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_fromEncoded_device(QIODevice* device);
bool QSslDiffieHellmanParameters_isEmpty(const QSslDiffieHellmanParameters* self);
bool QSslDiffieHellmanParameters_isValid(const QSslDiffieHellmanParameters* self);
int QSslDiffieHellmanParameters_error(const QSslDiffieHellmanParameters* self);
struct seaqt_string QSslDiffieHellmanParameters_errorString(const QSslDiffieHellmanParameters* self);
QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_fromEncoded_encoded_format(struct seaqt_string encoded, int format);
QSslDiffieHellmanParameters* QSslDiffieHellmanParameters_fromEncoded_device_format(QIODevice* device, int format);

void QSslDiffieHellmanParameters_delete(QSslDiffieHellmanParameters* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
