#pragma once
#ifndef SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINECERTIFICATEERROR_H
#define SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINECERTIFICATEERROR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSslCertificate;
class QUrl;
class QWebEngineCertificateError;
#else
typedef struct QSslCertificate QSslCertificate;
typedef struct QUrl QUrl;
typedef struct QWebEngineCertificateError QWebEngineCertificateError;
#endif

QWebEngineCertificateError* QWebEngineCertificateError_new_error_url_overridable_errorDescription(int error, QUrl* url, bool overridable, struct seaqt_string errorDescription);
QWebEngineCertificateError* QWebEngineCertificateError_new_from(QWebEngineCertificateError* from);

int QWebEngineCertificateError_error(const QWebEngineCertificateError* self);
QUrl* QWebEngineCertificateError_url(const QWebEngineCertificateError* self);
bool QWebEngineCertificateError_isOverridable(const QWebEngineCertificateError* self);
struct seaqt_string QWebEngineCertificateError_errorDescription(const QWebEngineCertificateError* self);
void QWebEngineCertificateError_operatorAssign(QWebEngineCertificateError* self, QWebEngineCertificateError* from);
void QWebEngineCertificateError_defer(QWebEngineCertificateError* self);
bool QWebEngineCertificateError_deferred(const QWebEngineCertificateError* self);
void QWebEngineCertificateError_rejectCertificate(QWebEngineCertificateError* self);
void QWebEngineCertificateError_ignoreCertificateError(QWebEngineCertificateError* self);
bool QWebEngineCertificateError_answered(const QWebEngineCertificateError* self);
struct seaqt_array /* of QSslCertificate* */  QWebEngineCertificateError_certificateChain(const QWebEngineCertificateError* self);

void QWebEngineCertificateError_delete(QWebEngineCertificateError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
