#include <QAction>
#include <QDesignerFormWindowInterface>
#include <QDesignerFormWindowToolInterface>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <abstractformwindowtool.h>
#include "gen_abstractformwindowtool.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerFormWindowToolInterface_virtbase(QDesignerFormWindowToolInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDesignerFormWindowToolInterface_metaObject(const QDesignerFormWindowToolInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerFormWindowToolInterface_metacast(QDesignerFormWindowToolInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerFormWindowToolInterface_metacall(QDesignerFormWindowToolInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerFormWindowToolInterface_tr_s(const char* s) {
	QString _ret = QDesignerFormWindowToolInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDesignerFormWindowInterface* QDesignerFormWindowToolInterface_formWindow(const QDesignerFormWindowToolInterface* self) {
	return self->formWindow();
}

QWidget* QDesignerFormWindowToolInterface_editor(const QDesignerFormWindowToolInterface* self) {
	return self->editor();
}

QAction* QDesignerFormWindowToolInterface_action(const QDesignerFormWindowToolInterface* self) {
	return self->action();
}

void QDesignerFormWindowToolInterface_activated(QDesignerFormWindowToolInterface* self) {
	self->activated();
}

void QDesignerFormWindowToolInterface_deactivated(QDesignerFormWindowToolInterface* self) {
	self->deactivated();
}

bool QDesignerFormWindowToolInterface_handleEvent(QDesignerFormWindowToolInterface* self, QWidget* widget, QWidget* managedWidget, QEvent* event) {
	return self->handleEvent(widget, managedWidget, event);
}

struct seaqt_string QDesignerFormWindowToolInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerFormWindowToolInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerFormWindowToolInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerFormWindowToolInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerFormWindowToolInterface_staticMetaObject() { return &QDesignerFormWindowToolInterface::staticMetaObject; }
void QDesignerFormWindowToolInterface_delete(QDesignerFormWindowToolInterface* self) {
	delete self;
}

