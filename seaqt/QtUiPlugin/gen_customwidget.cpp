#include <QDesignerCustomWidgetCollectionInterface>
#include <QDesignerCustomWidgetInterface>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <customwidget.h>
#include "gen_customwidget.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

struct seaqt_string QDesignerCustomWidgetInterface_name(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerCustomWidgetInterface_group(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->group();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerCustomWidgetInterface_toolTip(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerCustomWidgetInterface_whatsThis(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerCustomWidgetInterface_includeFile(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->includeFile();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QDesignerCustomWidgetInterface_icon(const QDesignerCustomWidgetInterface* self) {
	return new QIcon(self->icon());
}

bool QDesignerCustomWidgetInterface_isContainer(const QDesignerCustomWidgetInterface* self) {
	return self->isContainer();
}

QWidget* QDesignerCustomWidgetInterface_createWidget(QDesignerCustomWidgetInterface* self, QWidget* parent) {
	return self->createWidget(parent);
}

bool QDesignerCustomWidgetInterface_isInitialized(const QDesignerCustomWidgetInterface* self) {
	return self->isInitialized();
}

struct seaqt_string QDesignerCustomWidgetInterface_domXml(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->domXml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerCustomWidgetInterface_codeTemplate(const QDesignerCustomWidgetInterface* self) {
	QString _ret = self->codeTemplate();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerCustomWidgetInterface_delete(QDesignerCustomWidgetInterface* self) {
	delete self;
}

void QDesignerCustomWidgetCollectionInterface_operatorAssign(QDesignerCustomWidgetCollectionInterface* self, QDesignerCustomWidgetCollectionInterface* from) {
	self->operator=(*from);
}

void QDesignerCustomWidgetCollectionInterface_delete(QDesignerCustomWidgetCollectionInterface* self) {
	delete self;
}

