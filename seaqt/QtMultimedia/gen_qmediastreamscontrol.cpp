#include <QMediaControl>
#include <QMediaStreamsControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qmediastreamscontrol.h>
#include "gen_qmediastreamscontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QMediaStreamsControl_virtbase(QMediaStreamsControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMediaStreamsControl_metaObject(const QMediaStreamsControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaStreamsControl_metacast(QMediaStreamsControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaStreamsControl_metacall(QMediaStreamsControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaStreamsControl_tr_s(const char* s) {
	QString _ret = QMediaStreamsControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaStreamsControl_trUtf8_s(const char* s) {
	QString _ret = QMediaStreamsControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaStreamsControl_streamCount(QMediaStreamsControl* self) {
	return self->streamCount();
}

int QMediaStreamsControl_streamType(QMediaStreamsControl* self, int streamNumber) {
	QMediaStreamsControl::StreamType _ret = self->streamType(static_cast<int>(streamNumber));
	return static_cast<int>(_ret);
}

QVariant* QMediaStreamsControl_metaData(QMediaStreamsControl* self, int streamNumber, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->metaData(static_cast<int>(streamNumber), key_QString));
}

bool QMediaStreamsControl_isActive(QMediaStreamsControl* self, int streamNumber) {
	return self->isActive(static_cast<int>(streamNumber));
}

void QMediaStreamsControl_setActive(QMediaStreamsControl* self, int streamNumber, bool state) {
	self->setActive(static_cast<int>(streamNumber), state);
}

void QMediaStreamsControl_streamsChanged(QMediaStreamsControl* self) {
	self->streamsChanged();
}

void QMediaStreamsControl_connect_streamsChanged(QMediaStreamsControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QMediaStreamsControl::connect(self, static_cast<void (QMediaStreamsControl::*)()>(&QMediaStreamsControl::streamsChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QMediaStreamsControl_activeStreamsChanged(QMediaStreamsControl* self) {
	self->activeStreamsChanged();
}

void QMediaStreamsControl_connect_activeStreamsChanged(QMediaStreamsControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QMediaStreamsControl::connect(self, static_cast<void (QMediaStreamsControl::*)()>(&QMediaStreamsControl::activeStreamsChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QMediaStreamsControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QMediaStreamsControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaStreamsControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaStreamsControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaStreamsControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QMediaStreamsControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaStreamsControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaStreamsControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaStreamsControl_staticMetaObject() { return &QMediaStreamsControl::staticMetaObject; }
void QMediaStreamsControl_delete(QMediaStreamsControl* self) {
	delete self;
}

