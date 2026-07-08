#include <QDesignerWidgetFactoryInterface>
#include <QLayout>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <abstractwidgetfactory.h>
#include "gen_abstractwidgetfactory.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerWidgetFactoryInterface_virtbase(QDesignerWidgetFactoryInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDesignerWidgetFactoryInterface_metaObject(const QDesignerWidgetFactoryInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerWidgetFactoryInterface_metacast(QDesignerWidgetFactoryInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerWidgetFactoryInterface_metacall(QDesignerWidgetFactoryInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerWidgetFactoryInterface_tr_s(const char* s) {
	QString _ret = QDesignerWidgetFactoryInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QDesignerWidgetFactoryInterface_containerOfWidget(const QDesignerWidgetFactoryInterface* self, QWidget* w) {
	return self->containerOfWidget(w);
}

QWidget* QDesignerWidgetFactoryInterface_widgetOfContainer(const QDesignerWidgetFactoryInterface* self, QWidget* w) {
	return self->widgetOfContainer(w);
}

QWidget* QDesignerWidgetFactoryInterface_createWidget(const QDesignerWidgetFactoryInterface* self, struct seaqt_string name, QWidget* parentWidget) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->createWidget(name_QString, parentWidget);
}

QLayout* QDesignerWidgetFactoryInterface_createLayout(const QDesignerWidgetFactoryInterface* self, QWidget* widget, QLayout* layout, int type) {
	return self->createLayout(widget, layout, static_cast<int>(type));
}

bool QDesignerWidgetFactoryInterface_isPassiveInteractor(QDesignerWidgetFactoryInterface* self, QWidget* widget) {
	return self->isPassiveInteractor(widget);
}

void QDesignerWidgetFactoryInterface_initialize(const QDesignerWidgetFactoryInterface* self, QObject* object) {
	self->initialize(object);
}

struct seaqt_string QDesignerWidgetFactoryInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerWidgetFactoryInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerWidgetFactoryInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerWidgetFactoryInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerWidgetFactoryInterface_staticMetaObject() { return &QDesignerWidgetFactoryInterface::staticMetaObject; }
void QDesignerWidgetFactoryInterface_delete(QDesignerWidgetFactoryInterface* self) {
	delete self;
}

