#include <QDesignerNewFormWidgetInterface>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPaintDevice>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <abstractnewformwidget.h>
#include "gen_abstractnewformwidget.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerNewFormWidgetInterface_virtbase(QDesignerNewFormWidgetInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerNewFormWidgetInterface_metaObject(const QDesignerNewFormWidgetInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerNewFormWidgetInterface_metacast(QDesignerNewFormWidgetInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerNewFormWidgetInterface_metacall(QDesignerNewFormWidgetInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerNewFormWidgetInterface_tr(const char* s) {
	QString _ret = QDesignerNewFormWidgetInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDesignerNewFormWidgetInterface_hasCurrentTemplate(const QDesignerNewFormWidgetInterface* self) {
	return self->hasCurrentTemplate();
}

void QDesignerNewFormWidgetInterface_templateActivated(QDesignerNewFormWidgetInterface* self) {
	self->templateActivated();
}

void QDesignerNewFormWidgetInterface_connect_templateActivated(QDesignerNewFormWidgetInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QDesignerNewFormWidgetInterface::connect(self, static_cast<void (QDesignerNewFormWidgetInterface::*)()>(&QDesignerNewFormWidgetInterface::templateActivated), self, local_caller{slot, callback, release});
}

void QDesignerNewFormWidgetInterface_currentTemplateChanged(QDesignerNewFormWidgetInterface* self, bool templateSelected) {
	self->currentTemplateChanged(templateSelected);
}

void QDesignerNewFormWidgetInterface_connect_currentTemplateChanged(QDesignerNewFormWidgetInterface* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool templateSelected) {
			bool sigval1 = templateSelected;
			callback(slot, sigval1);
		}
	};
	QDesignerNewFormWidgetInterface::connect(self, static_cast<void (QDesignerNewFormWidgetInterface::*)(bool)>(&QDesignerNewFormWidgetInterface::currentTemplateChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QDesignerNewFormWidgetInterface_tr2(const char* s, const char* c) {
	QString _ret = QDesignerNewFormWidgetInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerNewFormWidgetInterface_tr3(const char* s, const char* c, int n) {
	QString _ret = QDesignerNewFormWidgetInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerNewFormWidgetInterface_staticMetaObject() { return &QDesignerNewFormWidgetInterface::staticMetaObject; }
void QDesignerNewFormWidgetInterface_delete(QDesignerNewFormWidgetInterface* self) {
	delete self;
}

