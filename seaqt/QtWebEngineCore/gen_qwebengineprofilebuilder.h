#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPROFILEBUILDER_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPROFILEBUILDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QObject;
class QSslCertificate;
class QWebEngineProfile;
class QWebEngineProfileBuilder;
#else
typedef struct QObject QObject;
typedef struct QSslCertificate QSslCertificate;
typedef struct QWebEngineProfile QWebEngineProfile;
typedef struct QWebEngineProfileBuilder QWebEngineProfileBuilder;
#endif

QWebEngineProfileBuilder* QWebEngineProfileBuilder_new();

QWebEngineProfile* QWebEngineProfileBuilder_createProfile_storageName(const QWebEngineProfileBuilder* self, struct seaqt_string storageName);
QWebEngineProfile* QWebEngineProfileBuilder_createOffTheRecordProfile();
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setPersistentStoragePath(QWebEngineProfileBuilder* self, struct seaqt_string path);
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setCachePath(QWebEngineProfileBuilder* self, struct seaqt_string path);
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setHttpCacheType(QWebEngineProfileBuilder* self, int httpCacheType);
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setPersistentCookiesPolicy(QWebEngineProfileBuilder* self, int persistentCookiesPolicy);
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setHttpCacheMaximumSize(QWebEngineProfileBuilder* self, int maxSizeInBytes);
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setPersistentPermissionsPolicy(QWebEngineProfileBuilder* self, uint8_t persistentPermissionPolicy);
QWebEngineProfileBuilder* QWebEngineProfileBuilder_setAdditionalTrustedCertificates(QWebEngineProfileBuilder* self, struct seaqt_array /* of QSslCertificate* */  additionalTrustedCertificates);
QWebEngineProfile* QWebEngineProfileBuilder_createProfile_storageName_parent(const QWebEngineProfileBuilder* self, struct seaqt_string storageName, QObject* parent);
QWebEngineProfile* QWebEngineProfileBuilder_createOffTheRecordProfile_parent(QObject* parent);

void QWebEngineProfileBuilder_delete(QWebEngineProfileBuilder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
