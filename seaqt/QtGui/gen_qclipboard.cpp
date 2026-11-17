#include <QClipboard>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QObject>
#include <QPixmap>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qclipboard.h>
#include "gen_qclipboard.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QClipboard_virtbase(QClipboard* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QClipboard_metaObject(const QClipboard* self) {
	return (QMetaObject*) self->metaObject();
}

void* QClipboard_metacast(QClipboard* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QClipboard_metacall(QClipboard* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QClipboard_tr_s(const char* s) {
	QString _ret = QClipboard::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QClipboard_trUtf8_s(const char* s) {
	QString _ret = QClipboard::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QClipboard_clear(QClipboard* self) {
	self->clear();
}

bool QClipboard_supportsSelection(const QClipboard* self) {
	return self->supportsSelection();
}

bool QClipboard_supportsFindBuffer(const QClipboard* self) {
	return self->supportsFindBuffer();
}

bool QClipboard_ownsSelection(const QClipboard* self) {
	return self->ownsSelection();
}

bool QClipboard_ownsClipboard(const QClipboard* self) {
	return self->ownsClipboard();
}

bool QClipboard_ownsFindBuffer(const QClipboard* self) {
	return self->ownsFindBuffer();
}

struct seaqt_string QClipboard_text(const QClipboard* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QClipboard_text_subtype(const QClipboard* self, struct seaqt_string subtype) {
	QString subtype_QString = QString::fromUtf8(subtype.data, subtype.len);
	QString _ret = self->text(subtype_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QClipboard_setText_QString(QClipboard* self, struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->setText(param1_QString);
}

QMimeData* QClipboard_mimeData(const QClipboard* self) {
	return (QMimeData*) self->mimeData();
}

void QClipboard_setMimeData_data(QClipboard* self, QMimeData* data) {
	self->setMimeData(data);
}

QImage* QClipboard_image(const QClipboard* self) {
	return new QImage(self->image());
}

QPixmap* QClipboard_pixmap(const QClipboard* self) {
	return new QPixmap(self->pixmap());
}

void QClipboard_setImage_QImage(QClipboard* self, QImage* param1) {
	self->setImage(*param1);
}

void QClipboard_setPixmap_QPixmap(QClipboard* self, QPixmap* param1) {
	self->setPixmap(*param1);
}

void QClipboard_changed(QClipboard* self, int mode) {
	self->changed(static_cast<QClipboard::Mode>(mode));
}

void QClipboard_connect_changed(QClipboard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QClipboard::Mode mode) {
			QClipboard::Mode mode_ret = mode;
			int sigval1 = static_cast<int>(mode_ret);
			callback(slot, sigval1);
		}
	};
	QClipboard::connect(self, static_cast<void (QClipboard::*)(QClipboard::Mode)>(&QClipboard::changed), self, local_caller{slot, callback, release});
}

void QClipboard_selectionChanged(QClipboard* self) {
	self->selectionChanged();
}

void QClipboard_connect_selectionChanged(QClipboard* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QClipboard::connect(self, static_cast<void (QClipboard::*)()>(&QClipboard::selectionChanged), self, local_caller{slot, callback, release});
}

void QClipboard_findBufferChanged(QClipboard* self) {
	self->findBufferChanged();
}

void QClipboard_connect_findBufferChanged(QClipboard* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QClipboard::connect(self, static_cast<void (QClipboard::*)()>(&QClipboard::findBufferChanged), self, local_caller{slot, callback, release});
}

void QClipboard_dataChanged(QClipboard* self) {
	self->dataChanged();
}

void QClipboard_connect_dataChanged(QClipboard* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QClipboard::connect(self, static_cast<void (QClipboard::*)()>(&QClipboard::dataChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QClipboard_tr_s_c(const char* s, const char* c) {
	QString _ret = QClipboard::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QClipboard_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QClipboard::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QClipboard_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QClipboard::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QClipboard_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QClipboard::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QClipboard_clear_mode(QClipboard* self, int mode) {
	self->clear(static_cast<QClipboard::Mode>(mode));
}

struct seaqt_string QClipboard_text_mode(const QClipboard* self, int mode) {
	QString _ret = self->text(static_cast<QClipboard::Mode>(mode));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QClipboard_text_subtype_mode(const QClipboard* self, struct seaqt_string subtype, int mode) {
	QString subtype_QString = QString::fromUtf8(subtype.data, subtype.len);
	QString _ret = self->text(subtype_QString, static_cast<QClipboard::Mode>(mode));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QClipboard_setText_QString_QClipboard_Mode(QClipboard* self, struct seaqt_string param1, int mode) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->setText(param1_QString, static_cast<QClipboard::Mode>(mode));
}

QMimeData* QClipboard_mimeData_mode(const QClipboard* self, int mode) {
	return (QMimeData*) self->mimeData(static_cast<QClipboard::Mode>(mode));
}

void QClipboard_setMimeData_data_mode(QClipboard* self, QMimeData* data, int mode) {
	self->setMimeData(data, static_cast<QClipboard::Mode>(mode));
}

QImage* QClipboard_image_mode(const QClipboard* self, int mode) {
	return new QImage(self->image(static_cast<QClipboard::Mode>(mode)));
}

QPixmap* QClipboard_pixmap_mode(const QClipboard* self, int mode) {
	return new QPixmap(self->pixmap(static_cast<QClipboard::Mode>(mode)));
}

void QClipboard_setImage_QImage_QClipboard_Mode(QClipboard* self, QImage* param1, int mode) {
	self->setImage(*param1, static_cast<QClipboard::Mode>(mode));
}

void QClipboard_setPixmap_QPixmap_QClipboard_Mode(QClipboard* self, QPixmap* param1, int mode) {
	self->setPixmap(*param1, static_cast<QClipboard::Mode>(mode));
}

const QMetaObject* QClipboard_staticMetaObject() { return &QClipboard::staticMetaObject; }
