#include <QEvent>
#include <QExposeEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPaintDevice>
#include <QPaintDeviceWindow>
#include <QPaintEvent>
#include <QRect>
#include <QRegion>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QWindow>
#include <qpaintdevicewindow.h>
#include "gen_qpaintdevicewindow.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QPaintDeviceWindow_virtbase(QPaintDeviceWindow* src, QWindow** outptr_QWindow, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QWindow = static_cast<QWindow*>(src);
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

QMetaObject* QPaintDeviceWindow_metaObject(const QPaintDeviceWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPaintDeviceWindow_metacast(QPaintDeviceWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPaintDeviceWindow_metacall(QPaintDeviceWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPaintDeviceWindow_tr_s(const char* s) {
	QString _ret = QPaintDeviceWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPaintDeviceWindow_trUtf8_s(const char* s) {
	QString _ret = QPaintDeviceWindow::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPaintDeviceWindow_update_rect(QPaintDeviceWindow* self, QRect* rect) {
	self->update(*rect);
}

void QPaintDeviceWindow_update_region(QPaintDeviceWindow* self, QRegion* region) {
	self->update(*region);
}

void QPaintDeviceWindow_update(QPaintDeviceWindow* self) {
	self->update();
}

struct seaqt_string QPaintDeviceWindow_tr_s_c(const char* s, const char* c) {
	QString _ret = QPaintDeviceWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPaintDeviceWindow_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPaintDeviceWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPaintDeviceWindow_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QPaintDeviceWindow::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPaintDeviceWindow_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPaintDeviceWindow::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPaintDeviceWindow_staticMetaObject() { return &QPaintDeviceWindow::staticMetaObject; }
void QPaintDeviceWindow_delete(QPaintDeviceWindow* self) {
	delete self;
}

