#include <QList>
#include <QObject>
#include <QSslCertificate>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWebEngineProfile>
#include <QWebEngineProfileBuilder>
#include <qwebengineprofilebuilder.h>
#include "gen_qwebengineprofilebuilder.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineProfileBuilder* QWebEngineProfileBuilder_new() {
	return new (std::nothrow) QWebEngineProfileBuilder();
}

QWebEngineProfile* QWebEngineProfileBuilder_createProfile_storageName(const QWebEngineProfileBuilder* self, struct seaqt_string storageName) {
	QString storageName_QString = QString::fromUtf8(storageName.data, storageName.len);
	return self->createProfile(storageName_QString);
}

QWebEngineProfile* QWebEngineProfileBuilder_createOffTheRecordProfile() {
	return QWebEngineProfileBuilder::createOffTheRecordProfile();
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setPersistentStoragePath(QWebEngineProfileBuilder* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QWebEngineProfileBuilder& _ret = self->setPersistentStoragePath(path_QString);
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setCachePath(QWebEngineProfileBuilder* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QWebEngineProfileBuilder& _ret = self->setCachePath(path_QString);
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setHttpCacheType(QWebEngineProfileBuilder* self, int httpCacheType) {
	QWebEngineProfileBuilder& _ret = self->setHttpCacheType(static_cast<QWebEngineProfile::HttpCacheType>(httpCacheType));
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setPersistentCookiesPolicy(QWebEngineProfileBuilder* self, int persistentCookiesPolicy) {
	QWebEngineProfileBuilder& _ret = self->setPersistentCookiesPolicy(static_cast<QWebEngineProfile::PersistentCookiesPolicy>(persistentCookiesPolicy));
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setHttpCacheMaximumSize(QWebEngineProfileBuilder* self, int maxSizeInBytes) {
	QWebEngineProfileBuilder& _ret = self->setHttpCacheMaximumSize(static_cast<int>(maxSizeInBytes));
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setPersistentPermissionsPolicy(QWebEngineProfileBuilder* self, uint8_t persistentPermissionPolicy) {
	QWebEngineProfileBuilder& _ret = self->setPersistentPermissionsPolicy(static_cast<QWebEngineProfile::PersistentPermissionsPolicy>(persistentPermissionPolicy));
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfileBuilder* QWebEngineProfileBuilder_setAdditionalTrustedCertificates(QWebEngineProfileBuilder* self, struct seaqt_array /* of QSslCertificate* */  additionalTrustedCertificates) {
	QList<QSslCertificate> additionalTrustedCertificates_QList;
	additionalTrustedCertificates_QList.reserve(additionalTrustedCertificates.len);
	QSslCertificate** additionalTrustedCertificates_arr = static_cast<QSslCertificate**>(additionalTrustedCertificates.data);
	for(size_t i = 0; i < additionalTrustedCertificates.len; ++i) {
		additionalTrustedCertificates_QList.push_back(*(additionalTrustedCertificates_arr[i]));
	}
	QWebEngineProfileBuilder& _ret = self->setAdditionalTrustedCertificates(additionalTrustedCertificates_QList);
	// Cast returned reference into pointer
	return &_ret;
}

QWebEngineProfile* QWebEngineProfileBuilder_createProfile_storageName_parent(const QWebEngineProfileBuilder* self, struct seaqt_string storageName, QObject* parent) {
	QString storageName_QString = QString::fromUtf8(storageName.data, storageName.len);
	return self->createProfile(storageName_QString, parent);
}

QWebEngineProfile* QWebEngineProfileBuilder_createOffTheRecordProfile_parent(QObject* parent) {
	return QWebEngineProfileBuilder::createOffTheRecordProfile(parent);
}

void QWebEngineProfileBuilder_delete(QWebEngineProfileBuilder* self) {
	delete self;
}

