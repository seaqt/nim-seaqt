#define WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State
#include <QAccessibleInterface>
#include <QAccessibleObject>
#include <QQuickWebEngineViewAccessible>
#include <QString>
#include <QByteArray>
#include <cstring>
#define WORKAROUND_INNER_CLASS_DEFINITION_QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible
#include <qquickwebengine_accessible.h>
#include "gen_qquickwebengine_accessible.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QQuickWebEngineViewAccessible_virtbase(QQuickWebEngineViewAccessible* src, QAccessibleObject** outptr_QAccessibleObject) {
	*outptr_QAccessibleObject = static_cast<QAccessibleObject*>(src);
}

bool QQuickWebEngineViewAccessible_isValid(const QQuickWebEngineViewAccessible* self) {
	return self->isValid();
}

QAccessibleInterface* QQuickWebEngineViewAccessible_parent(const QQuickWebEngineViewAccessible* self) {
	return self->parent();
}

QAccessibleInterface* QQuickWebEngineViewAccessible_focusChild(const QQuickWebEngineViewAccessible* self) {
	return self->focusChild();
}

int QQuickWebEngineViewAccessible_childCount(const QQuickWebEngineViewAccessible* self) {
	return self->childCount();
}

QAccessibleInterface* QQuickWebEngineViewAccessible_child(const QQuickWebEngineViewAccessible* self, int index) {
	return self->child(static_cast<int>(index));
}

int QQuickWebEngineViewAccessible_indexOfChild(const QQuickWebEngineViewAccessible* self, QAccessibleInterface* param1) {
	return self->indexOfChild(param1);
}

struct seaqt_string QQuickWebEngineViewAccessible_text(const QQuickWebEngineViewAccessible* self, int param1) {
	QString _ret = self->text(static_cast<QAccessible::Text>(param1));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QQuickWebEngineViewAccessible_role(const QQuickWebEngineViewAccessible* self) {
	QAccessible::Role _ret = self->role();
	return static_cast<int>(_ret);
}

QAccessible__State* QQuickWebEngineViewAccessible_state(const QQuickWebEngineViewAccessible* self) {
	return new QAccessible::State(self->state());
}

void QQuickWebEngineViewAccessible_delete(QQuickWebEngineViewAccessible* self) {
	delete self;
}

void QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_virtbase(QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* src, QAccessibleObject** outptr_QAccessibleObject) {
	*outptr_QAccessibleObject = static_cast<QAccessibleObject*>(src);
}

bool QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_isValid(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	return self->isValid();
}

QAccessibleInterface* QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_parent(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	return self->parent();
}

struct seaqt_string QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_text(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self, int t) {
	QString _ret = self->text(static_cast<QAccessible::Text>(t));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_role(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	QAccessible::Role _ret = self->role();
	return static_cast<int>(_ret);
}

QAccessible__State* QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_state(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	return new QAccessible::State(self->state());
}

QAccessibleInterface* QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_focusChild(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	return self->focusChild();
}

int QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_childCount(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	return self->childCount();
}

QAccessibleInterface* QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_child(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self, int index) {
	return self->child(static_cast<int>(index));
}

int QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_indexOfChild(const QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self, QAccessibleInterface* param1) {
	return self->indexOfChild(param1);
}

void QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_delete(QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible* self) {
	delete self;
}

