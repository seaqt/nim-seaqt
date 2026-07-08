#include <QAccessibleActionInterface>
#include <QAccessibleInterface>
#include <QAccessibleObject>
#include <QAccessibleWidget>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWebEngineView>
#include <QWebEngineViewAccessible>
#include <QWidget>
#define WORKAROUND_INNER_CLASS_DEFINITION_QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible
#include <qwebengine_accessible.h>
#include "gen_qwebengine_accessible.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineViewAccessible* QWebEngineViewAccessible_new(QWebEngineView* o) {
	return new (std::nothrow) QWebEngineViewAccessible(o);
}

void QWebEngineViewAccessible_virtbase(QWebEngineViewAccessible* src, QAccessibleWidget** outptr_QAccessibleWidget) {
	*outptr_QAccessibleWidget = static_cast<QAccessibleWidget*>(src);
}

bool QWebEngineViewAccessible_isValid(const QWebEngineViewAccessible* self) {
	return self->isValid();
}

QAccessibleInterface* QWebEngineViewAccessible_focusChild(const QWebEngineViewAccessible* self) {
	return self->focusChild();
}

int QWebEngineViewAccessible_childCount(const QWebEngineViewAccessible* self) {
	return self->childCount();
}

QAccessibleInterface* QWebEngineViewAccessible_child(const QWebEngineViewAccessible* self, int index) {
	return self->child(static_cast<int>(index));
}

int QWebEngineViewAccessible_indexOfChild(const QWebEngineViewAccessible* self, QAccessibleInterface* child) {
	return self->indexOfChild(child);
}

void QWebEngineViewAccessible_delete(QWebEngineViewAccessible* self) {
	delete self;
}

QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_new(QWidget* o, QWebEngineView* view) {
	return new (std::nothrow) QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible(o, view);
}

void QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_virtbase(QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* src, QAccessibleWidget** outptr_QAccessibleWidget) {
	*outptr_QAccessibleWidget = static_cast<QAccessibleWidget*>(src);
}

bool QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_isValid(const QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* self) {
	return self->isValid();
}

QAccessibleInterface* QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_focusChild(const QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* self) {
	return self->focusChild();
}

int QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_childCount(const QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* self) {
	return self->childCount();
}

QAccessibleInterface* QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_child(const QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* self, int index) {
	return self->child(static_cast<int>(index));
}

int QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_indexOfChild(const QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* self, QAccessibleInterface* child) {
	return self->indexOfChild(child);
}

void QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_delete(QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible* self) {
	delete self;
}

