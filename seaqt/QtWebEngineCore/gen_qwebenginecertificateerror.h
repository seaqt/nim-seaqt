#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINECERTIFICATEERROR_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINECERTIFICATEERROR_H

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
class QSslCertificate;
class QUrl;
class QWebEngineCertificateError;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QSslCertificate QSslCertificate;
typedef struct QUrl QUrl;
typedef struct QWebEngineCertificateError QWebEngineCertificateError;
#endif

QWebEngineCertificateError* QWebEngineCertificateError_new(QWebEngineCertificateError* from);

void QWebEngineCertificateError_operatorAssign(QWebEngineCertificateError* self, QWebEngineCertificateError* from);
int QWebEngineCertificateError_type(const QWebEngineCertificateError* self);
QUrl* QWebEngineCertificateError_url(const QWebEngineCertificateError* self);
bool QWebEngineCertificateError_isOverridable(const QWebEngineCertificateError* self);
struct seaqt_string QWebEngineCertificateError_description(const QWebEngineCertificateError* self);
void QWebEngineCertificateError_defer(QWebEngineCertificateError* self);
void QWebEngineCertificateError_rejectCertificate(QWebEngineCertificateError* self);
void QWebEngineCertificateError_acceptCertificate(QWebEngineCertificateError* self);
struct seaqt_array /* of QSslCertificate* */  QWebEngineCertificateError_certificateChain(const QWebEngineCertificateError* self);

const QMetaObject* QWebEngineCertificateError_staticMetaObject();
void QWebEngineCertificateError_delete(QWebEngineCertificateError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
