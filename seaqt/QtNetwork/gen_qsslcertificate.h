#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLCERTIFICATE_H
#define SEAQT_QTNETWORK_GEN_QSSLCERTIFICATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QIODevice;
class QSslCertificate;
class QSslCertificateExtension;
class QSslError;
class QSslKey;
#else
typedef struct QDateTime QDateTime;
typedef struct QIODevice QIODevice;
typedef struct QSslCertificate QSslCertificate;
typedef struct QSslCertificateExtension QSslCertificateExtension;
typedef struct QSslError QSslError;
typedef struct QSslKey QSslKey;
#endif

QSslCertificate* QSslCertificate_new_device(QIODevice* device);
QSslCertificate* QSslCertificate_new();
QSslCertificate* QSslCertificate_new_from(QSslCertificate* from);
QSslCertificate* QSslCertificate_new_device_format(QIODevice* device, int format);
QSslCertificate* QSslCertificate_new_data(struct seaqt_string data);
QSslCertificate* QSslCertificate_new_data_format(struct seaqt_string data, int format);

void QSslCertificate_operatorAssign(QSslCertificate* self, QSslCertificate* from);
void QSslCertificate_swap(QSslCertificate* self, QSslCertificate* other);
bool QSslCertificate_operatorEqual(const QSslCertificate* self, QSslCertificate* other);
bool QSslCertificate_operatorNotEqual(const QSslCertificate* self, QSslCertificate* other);
bool QSslCertificate_isNull(const QSslCertificate* self);
bool QSslCertificate_isBlacklisted(const QSslCertificate* self);
bool QSslCertificate_isSelfSigned(const QSslCertificate* self);
void QSslCertificate_clear(QSslCertificate* self);
struct seaqt_string QSslCertificate_version(const QSslCertificate* self);
struct seaqt_string QSslCertificate_serialNumber(const QSslCertificate* self);
struct seaqt_string QSslCertificate_digest(const QSslCertificate* self);
struct seaqt_array /* of struct seaqt_string */  QSslCertificate_issuerInfo_info(const QSslCertificate* self, int info);
struct seaqt_array /* of struct seaqt_string */  QSslCertificate_issuerInfo_attribute(const QSslCertificate* self, struct seaqt_string attribute);
struct seaqt_array /* of struct seaqt_string */  QSslCertificate_subjectInfo_info(const QSslCertificate* self, int info);
struct seaqt_array /* of struct seaqt_string */  QSslCertificate_subjectInfo_attribute(const QSslCertificate* self, struct seaqt_string attribute);
struct seaqt_string QSslCertificate_issuerDisplayName(const QSslCertificate* self);
struct seaqt_string QSslCertificate_subjectDisplayName(const QSslCertificate* self);
struct seaqt_array /* of struct seaqt_string */  QSslCertificate_subjectInfoAttributes(const QSslCertificate* self);
struct seaqt_array /* of struct seaqt_string */  QSslCertificate_issuerInfoAttributes(const QSslCertificate* self);
QDateTime* QSslCertificate_effectiveDate(const QSslCertificate* self);
QDateTime* QSslCertificate_expiryDate(const QSslCertificate* self);
QSslKey* QSslCertificate_publicKey(const QSslCertificate* self);
struct seaqt_array /* of QSslCertificateExtension* */  QSslCertificate_extensions(const QSslCertificate* self);
struct seaqt_string QSslCertificate_toPem(const QSslCertificate* self);
struct seaqt_string QSslCertificate_toDer(const QSslCertificate* self);
struct seaqt_string QSslCertificate_toText(const QSslCertificate* self);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromPath_path(struct seaqt_string path);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromDevice_device(QIODevice* device);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromData_data(struct seaqt_string data);
struct seaqt_array /* of QSslError* */  QSslCertificate_verify_certificateChain(struct seaqt_array /* of QSslCertificate* */  certificateChain);
bool QSslCertificate_importPkcs12_device_key_cert(QIODevice* device, QSslKey* key, QSslCertificate* cert);
void* QSslCertificate_handle(const QSslCertificate* self);
struct seaqt_string QSslCertificate_digest_algorithm(const QSslCertificate* self, int algorithm);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromPath_path_format(struct seaqt_string path, int format);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromPath_path_format_syntax(struct seaqt_string path, int format, int syntax);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromDevice_device_format(QIODevice* device, int format);
struct seaqt_array /* of QSslCertificate* */  QSslCertificate_fromData_data_format(struct seaqt_string data, int format);
struct seaqt_array /* of QSslError* */  QSslCertificate_verify_certificateChain_hostName(struct seaqt_array /* of QSslCertificate* */  certificateChain, struct seaqt_string hostName);
bool QSslCertificate_importPkcs12_device_key_cert_caCertificates(QIODevice* device, QSslKey* key, QSslCertificate* cert, struct seaqt_array /* of QSslCertificate* */  caCertificates);
bool QSslCertificate_importPkcs12_device_key_cert_caCertificates_passPhrase(QIODevice* device, QSslKey* key, QSslCertificate* cert, struct seaqt_array /* of QSslCertificate* */  caCertificates, struct seaqt_string passPhrase);

void QSslCertificate_delete(QSslCertificate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
