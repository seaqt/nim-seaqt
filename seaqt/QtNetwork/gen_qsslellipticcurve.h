#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLELLIPTICCURVE_H
#define SEAQT_QTNETWORK_GEN_QSSLELLIPTICCURVE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSslEllipticCurve;
#else
typedef struct QSslEllipticCurve QSslEllipticCurve;
#endif

QSslEllipticCurve* QSslEllipticCurve_new();
QSslEllipticCurve* QSslEllipticCurve_new_from(QSslEllipticCurve* from);

QSslEllipticCurve* QSslEllipticCurve_fromShortName(struct seaqt_string name);
QSslEllipticCurve* QSslEllipticCurve_fromLongName(struct seaqt_string name);
struct seaqt_string QSslEllipticCurve_shortName(const QSslEllipticCurve* self);
struct seaqt_string QSslEllipticCurve_longName(const QSslEllipticCurve* self);
bool QSslEllipticCurve_isValid(const QSslEllipticCurve* self);
bool QSslEllipticCurve_isTlsNamedCurve(const QSslEllipticCurve* self);

void QSslEllipticCurve_delete(QSslEllipticCurve* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
