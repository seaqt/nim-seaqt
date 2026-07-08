#include <QByteArray>
#include <QDateTime>
#include <QList>
#include <QLocale>
#include <QResource>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qresource.h>
#include "gen_qresource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QResource* QResource_new() {
	return new (std::nothrow) QResource();
}

QResource* QResource_new_file(struct seaqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new (std::nothrow) QResource(file_QString);
}

QResource* QResource_new_file_locale(struct seaqt_string file, QLocale* locale) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new (std::nothrow) QResource(file_QString, *locale);
}

void QResource_setFileName(QResource* self, struct seaqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	self->setFileName(file_QString);
}

struct seaqt_string QResource_fileName(const QResource* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QResource_absoluteFilePath(const QResource* self) {
	QString _ret = self->absoluteFilePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QResource_setLocale(QResource* self, QLocale* locale) {
	self->setLocale(*locale);
}

QLocale* QResource_locale(const QResource* self) {
	return new QLocale(self->locale());
}

bool QResource_isValid(const QResource* self) {
	return self->isValid();
}

int QResource_compressionAlgorithm(const QResource* self) {
	QResource::Compression _ret = self->compressionAlgorithm();
	return static_cast<int>(_ret);
}

long long QResource_size(const QResource* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

const unsigned char* QResource_data(const QResource* self) {
	const uchar* _ret = self->data();
	return static_cast<const unsigned char*>(_ret);
}

long long QResource_uncompressedSize(const QResource* self) {
	qint64 _ret = self->uncompressedSize();
	return static_cast<long long>(_ret);
}

struct seaqt_string QResource_uncompressedData(const QResource* self) {
	QByteArray _qb = self->uncompressedData();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QDateTime* QResource_lastModified(const QResource* self) {
	return new QDateTime(self->lastModified());
}

bool QResource_registerResource_rccFilename(struct seaqt_string rccFilename) {
	QString rccFilename_QString = QString::fromUtf8(rccFilename.data, rccFilename.len);
	return QResource::registerResource(rccFilename_QString);
}

bool QResource_unregisterResource_rccFilename(struct seaqt_string rccFilename) {
	QString rccFilename_QString = QString::fromUtf8(rccFilename.data, rccFilename.len);
	return QResource::unregisterResource(rccFilename_QString);
}

bool QResource_registerResource_rccData(const unsigned char* rccData) {
	return QResource::registerResource(static_cast<const uchar*>(rccData));
}

bool QResource_unregisterResource_rccData(const unsigned char* rccData) {
	return QResource::unregisterResource(static_cast<const uchar*>(rccData));
}

bool QResource_registerResource_rccFilename_resourceRoot(struct seaqt_string rccFilename, struct seaqt_string resourceRoot) {
	QString rccFilename_QString = QString::fromUtf8(rccFilename.data, rccFilename.len);
	QString resourceRoot_QString = QString::fromUtf8(resourceRoot.data, resourceRoot.len);
	return QResource::registerResource(rccFilename_QString, resourceRoot_QString);
}

bool QResource_unregisterResource_rccFilename_resourceRoot(struct seaqt_string rccFilename, struct seaqt_string resourceRoot) {
	QString rccFilename_QString = QString::fromUtf8(rccFilename.data, rccFilename.len);
	QString resourceRoot_QString = QString::fromUtf8(resourceRoot.data, resourceRoot.len);
	return QResource::unregisterResource(rccFilename_QString, resourceRoot_QString);
}

bool QResource_registerResource_rccData_resourceRoot(const unsigned char* rccData, struct seaqt_string resourceRoot) {
	QString resourceRoot_QString = QString::fromUtf8(resourceRoot.data, resourceRoot.len);
	return QResource::registerResource(static_cast<const uchar*>(rccData), resourceRoot_QString);
}

bool QResource_unregisterResource_rccData_resourceRoot(const unsigned char* rccData, struct seaqt_string resourceRoot) {
	QString resourceRoot_QString = QString::fromUtf8(resourceRoot.data, resourceRoot.len);
	return QResource::unregisterResource(static_cast<const uchar*>(rccData), resourceRoot_QString);
}

void QResource_delete(QResource* self) {
	delete self;
}

