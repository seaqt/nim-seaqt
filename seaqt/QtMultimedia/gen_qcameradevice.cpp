#include <QByteArray>
#include <QCameraDevice>
#include <QCameraFormat>
#include <QList>
#include <QMetaObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qcameradevice.h>
#include "gen_qcameradevice.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCameraFormat* QCameraFormat_new() {
	return new (std::nothrow) QCameraFormat();
}

QCameraFormat* QCameraFormat_new_from(QCameraFormat* from) {
	return new (std::nothrow) QCameraFormat(*from);
}

void QCameraFormat_operatorAssign(QCameraFormat* self, QCameraFormat* from) {
	self->operator=(*from);
}

int QCameraFormat_pixelFormat(const QCameraFormat* self) {
	QVideoFrameFormat::PixelFormat _ret = self->pixelFormat();
	return static_cast<int>(_ret);
}

QSize* QCameraFormat_resolution(const QCameraFormat* self) {
	return new QSize(self->resolution());
}

float QCameraFormat_minFrameRate(const QCameraFormat* self) {
	return self->minFrameRate();
}

float QCameraFormat_maxFrameRate(const QCameraFormat* self) {
	return self->maxFrameRate();
}

bool QCameraFormat_isNull(const QCameraFormat* self) {
	return self->isNull();
}

bool QCameraFormat_operatorEqual(const QCameraFormat* self, QCameraFormat* other) {
	return (*self == *other);
}

bool QCameraFormat_operatorNotEqual(const QCameraFormat* self, QCameraFormat* other) {
	return (*self != *other);
}

const QMetaObject* QCameraFormat_staticMetaObject() { return &QCameraFormat::staticMetaObject; }
void QCameraFormat_delete(QCameraFormat* self) {
	delete self;
}

QCameraDevice* QCameraDevice_new() {
	return new (std::nothrow) QCameraDevice();
}

QCameraDevice* QCameraDevice_new_from(QCameraDevice* from) {
	return new (std::nothrow) QCameraDevice(*from);
}

void QCameraDevice_operatorAssign(QCameraDevice* self, QCameraDevice* from) {
	self->operator=(*from);
}

bool QCameraDevice_operatorEqual(const QCameraDevice* self, QCameraDevice* other) {
	return (*self == *other);
}

bool QCameraDevice_operatorNotEqual(const QCameraDevice* self, QCameraDevice* other) {
	return (*self != *other);
}

bool QCameraDevice_isNull(const QCameraDevice* self) {
	return self->isNull();
}

struct seaqt_string QCameraDevice_id(const QCameraDevice* self) {
	QByteArray _qb = self->id();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCameraDevice_description(const QCameraDevice* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QCameraDevice_isDefault(const QCameraDevice* self) {
	return self->isDefault();
}

int QCameraDevice_position(const QCameraDevice* self) {
	QCameraDevice::Position _ret = self->position();
	return static_cast<int>(_ret);
}

struct seaqt_array /* of QSize* */  QCameraDevice_photoResolutions(const QCameraDevice* self) {
	QList<QSize> _ret = self->photoResolutions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QCameraFormat* */  QCameraDevice_videoFormats(const QCameraDevice* self) {
	QList<QCameraFormat> _ret = self->videoFormats();
	// Convert QList<> from C++ memory to manually-managed C memory
	QCameraFormat** _arr = static_cast<QCameraFormat**>(malloc(sizeof(QCameraFormat*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCameraFormat(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

const QMetaObject* QCameraDevice_staticMetaObject() { return &QCameraDevice::staticMetaObject; }
void QCameraDevice_delete(QCameraDevice* self) {
	delete self;
}

