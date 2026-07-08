#include <QCapturableWindow>
#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWindow>
#include <qcapturablewindow.h>
#include "gen_qcapturablewindow.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCapturableWindow* QCapturableWindow_new() {
	return new (std::nothrow) QCapturableWindow();
}

QCapturableWindow* QCapturableWindow_new_window(QWindow* window) {
	return new (std::nothrow) QCapturableWindow(window);
}

QCapturableWindow* QCapturableWindow_new_from(QCapturableWindow* from) {
	return new (std::nothrow) QCapturableWindow(*from);
}

void QCapturableWindow_operatorAssign(QCapturableWindow* self, QCapturableWindow* from) {
	self->operator=(*from);
}

void QCapturableWindow_swap(QCapturableWindow* self, QCapturableWindow* other) {
	self->swap(*other);
}

bool QCapturableWindow_isValid(const QCapturableWindow* self) {
	return self->isValid();
}

struct seaqt_string QCapturableWindow_description(const QCapturableWindow* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QCapturableWindow_staticMetaObject() { return &QCapturableWindow::staticMetaObject; }
void QCapturableWindow_delete(QCapturableWindow* self) {
	delete self;
}

