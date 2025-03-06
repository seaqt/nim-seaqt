#include <QChildEvent>
#include <QCloseEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QGraphicsItem>
#include <QGraphicsLayoutItem>
#include <QGraphicsObject>
#include <QGraphicsProxyWidget>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneMoveEvent>
#include <QGraphicsSceneResizeEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsWidget>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPointF>
#include <QRectF>
#include <QShowEvent>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOption>
#include <QStyleOptionGraphicsItem>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qgraphicsproxywidget.h>
#include "gen_qgraphicsproxywidget.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsProxyWidget final : public QGraphicsProxyWidget {
	struct QGraphicsProxyWidget_VTable* vtbl;
public:

	VirtualQGraphicsProxyWidget(struct QGraphicsProxyWidget_VTable* vtbl): QGraphicsProxyWidget(), vtbl(vtbl) {};
	VirtualQGraphicsProxyWidget(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsItem* parent): QGraphicsProxyWidget(parent), vtbl(vtbl) {};
	VirtualQGraphicsProxyWidget(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsItem* parent, Qt::WindowFlags wFlags): QGraphicsProxyWidget(parent, wFlags), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsProxyWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsProxyWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsProxyWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsProxyWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsProxyWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsProxyWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsProxyWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsProxyWidget::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_setGeometry(void* self, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsProxyWidget::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsProxyWidget_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsProxyWidget::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsProxyWidget_virtualbase_type(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsProxyWidget::itemChange(change, value);
		}

		QGraphicsItem::GraphicsItemChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		QVariant* callback_return_value = vtbl->itemChange(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_itemChange(void* self, int change, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsProxyWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsProxyWidget::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsProxyWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsProxyWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsProxyWidget::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsProxyWidget::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsProxyWidget::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsProxyWidget::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsProxyWidget::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsProxyWidget::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsProxyWidget::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsProxyWidget::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void grabMouseEvent(QEvent* event) override {
		if (vtbl->grabMouseEvent == 0) {
			QGraphicsProxyWidget::grabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabMouseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_grabMouseEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void ungrabMouseEvent(QEvent* event) override {
		if (vtbl->ungrabMouseEvent == 0) {
			QGraphicsProxyWidget::ungrabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabMouseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_ungrabMouseEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsProxyWidget::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsProxyWidget::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsProxyWidget::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsProxyWidget::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsProxyWidget::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsProxyWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsProxyWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsProxyWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsProxyWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsProxyWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsProxyWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsProxyWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsProxyWidget::sizeHint(which, constraint);
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QSizeF* QGraphicsProxyWidget_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QGraphicsSceneResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsProxyWidget::resizeEvent(event);
			return;
		}

		QGraphicsSceneResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_resizeEvent(void* self, QGraphicsSceneResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsProxyWidget::getContentsMargins(left, top, right, bottom);
			return;
		}

		qreal* left_ret = left;
		double* sigval1 = static_cast<double*>(left_ret);
		qreal* top_ret = top;
		double* sigval2 = static_cast<double*>(top_ret);
		qreal* right_ret = right;
		double* sigval3 = static_cast<double*>(right_ret);
		qreal* bottom_ret = bottom;
		double* sigval4 = static_cast<double*>(bottom_ret);

		vtbl->getContentsMargins(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QGraphicsProxyWidget_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);

	// Subclass to allow providing a Go implementation
	virtual void paintWindowFrame(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paintWindowFrame == 0) {
			QGraphicsProxyWidget::paintWindowFrame(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paintWindowFrame(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsProxyWidget_virtualbase_paintWindowFrame(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsProxyWidget::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsProxyWidget_virtualbase_boundingRect(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsProxyWidget::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	friend QPainterPath* QGraphicsProxyWidget_virtualbase_shape(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOption* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGraphicsProxyWidget::initStyleOption(option);
			return;
		}

		QStyleOption* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_initStyleOption(const void* self, QStyleOption* option);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsProxyWidget::updateGeometry();
			return;
		}


		vtbl->updateGeometry(vtbl, this);

	}

	friend void QGraphicsProxyWidget_virtualbase_updateGeometry(void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant propertyChange(const QString& propertyName, const QVariant& value) override {
		if (vtbl->propertyChange == 0) {
			return QGraphicsProxyWidget::propertyChange(propertyName, value);
		}

		const QString propertyName_ret = propertyName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray propertyName_b = propertyName_ret.toUtf8();
		struct miqt_string propertyName_ms;
		propertyName_ms.len = propertyName_b.length();
		propertyName_ms.data = static_cast<char*>(malloc(propertyName_ms.len));
		memcpy(propertyName_ms.data, propertyName_b.data(), propertyName_ms.len);
		struct miqt_string sigval1 = propertyName_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		QVariant* callback_return_value = vtbl->propertyChange(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_propertyChange(void* self, struct miqt_string propertyName, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsProxyWidget::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_sceneEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool windowFrameEvent(QEvent* e) override {
		if (vtbl->windowFrameEvent == 0) {
			return QGraphicsProxyWidget::windowFrameEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->windowFrameEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_windowFrameEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF& pos) const override {
		if (vtbl->windowFrameSectionAt == 0) {
			return QGraphicsProxyWidget::windowFrameSectionAt(pos);
		}

		const QPointF& pos_ret = pos;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&pos_ret);

		int callback_return_value = vtbl->windowFrameSectionAt(vtbl, this, sigval1);

		return static_cast<Qt::WindowFrameSection>(callback_return_value);
	}

	friend int QGraphicsProxyWidget_virtualbase_windowFrameSectionAt(const void* self, QPointF* pos);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsProxyWidget::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsProxyWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QGraphicsSceneMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsProxyWidget::moveEvent(event);
			return;
		}

		QGraphicsSceneMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_moveEvent(void* self, QGraphicsSceneMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void polishEvent() override {
		if (vtbl->polishEvent == 0) {
			QGraphicsProxyWidget::polishEvent();
			return;
		}


		vtbl->polishEvent(vtbl, this);

	}

	friend void QGraphicsProxyWidget_virtualbase_polishEvent(void* self);

	// Subclass to allow providing a Go implementation
	virtual void grabKeyboardEvent(QEvent* event) override {
		if (vtbl->grabKeyboardEvent == 0) {
			QGraphicsProxyWidget::grabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabKeyboardEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_grabKeyboardEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void ungrabKeyboardEvent(QEvent* event) override {
		if (vtbl->ungrabKeyboardEvent == 0) {
			QGraphicsProxyWidget::ungrabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabKeyboardEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsProxyWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsProxyWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsProxyWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsProxyWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsProxyWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsProxyWidget::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_advance(void* self, int phase);

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsProxyWidget::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_contains(const void* self, QPointF* point);

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsProxyWidget::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode);

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsProxyWidget::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode);

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsProxyWidget::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item);

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsProxyWidget::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	friend QPainterPath* QGraphicsProxyWidget_virtualbase_opaqueArea(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsProxyWidget::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsProxyWidget::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_supportsExtension(const void* self, int extension);

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsProxyWidget::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(vtbl, this, sigval1, sigval2);

	}

	friend void QGraphicsProxyWidget_virtualbase_setExtension(void* self, int extension, QVariant* variant);

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsProxyWidget::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_extension(const void* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend QGraphicsProxyWidget* QGraphicsProxyWidget_protectedbase_newProxyWidget(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QGraphicsProxyWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGraphicsProxyWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsProxyWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsProxyWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsProxyWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
	friend void QGraphicsProxyWidget_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsProxyWidget_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsProxyWidget_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsProxyWidget_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item);
	friend void QGraphicsProxyWidget_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout);
};

QGraphicsProxyWidget* QGraphicsProxyWidget_new(struct QGraphicsProxyWidget_VTable* vtbl) {
	return new VirtualQGraphicsProxyWidget(vtbl);
}

QGraphicsProxyWidget* QGraphicsProxyWidget_new2(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsItem* parent) {
	return new VirtualQGraphicsProxyWidget(vtbl, parent);
}

QGraphicsProxyWidget* QGraphicsProxyWidget_new3(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsItem* parent, int wFlags) {
	return new VirtualQGraphicsProxyWidget(vtbl, parent, static_cast<Qt::WindowFlags>(wFlags));
}

void QGraphicsProxyWidget_virtbase(QGraphicsProxyWidget* src, QGraphicsWidget** outptr_QGraphicsWidget) {
	*outptr_QGraphicsWidget = static_cast<QGraphicsWidget*>(src);
}

QMetaObject* QGraphicsProxyWidget_metaObject(const QGraphicsProxyWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsProxyWidget_metacast(QGraphicsProxyWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsProxyWidget_metacall(QGraphicsProxyWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsProxyWidget_tr(const char* s) {
	QString _ret = QGraphicsProxyWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsProxyWidget_trUtf8(const char* s) {
	QString _ret = QGraphicsProxyWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsProxyWidget_setWidget(QGraphicsProxyWidget* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QGraphicsProxyWidget_widget(const QGraphicsProxyWidget* self) {
	return self->widget();
}

QRectF* QGraphicsProxyWidget_subWidgetRect(const QGraphicsProxyWidget* self, QWidget* widget) {
	return new QRectF(self->subWidgetRect(widget));
}

void QGraphicsProxyWidget_setGeometry(QGraphicsProxyWidget* self, QRectF* rect) {
	self->setGeometry(*rect);
}

void QGraphicsProxyWidget_paint(QGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

int QGraphicsProxyWidget_type(const QGraphicsProxyWidget* self) {
	return self->type();
}

QGraphicsProxyWidget* QGraphicsProxyWidget_createProxyForChildWidget(QGraphicsProxyWidget* self, QWidget* child) {
	return self->createProxyForChildWidget(child);
}

struct miqt_string QGraphicsProxyWidget_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsProxyWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsProxyWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsProxyWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsProxyWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsProxyWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsProxyWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsProxyWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsProxyWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::metaObject();

}

void* QGraphicsProxyWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::qt_metacast(param1);

}

int QGraphicsProxyWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QGraphicsProxyWidget_virtualbase_setGeometry(void* self, QRectF* rect) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::setGeometry(*rect);

}

void QGraphicsProxyWidget_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::paint(painter, option, widget);

}

int QGraphicsProxyWidget_virtualbase_type(const void* self) {

	return ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::type();

}

QVariant* QGraphicsProxyWidget_virtualbase_itemChange(void* self, int change, QVariant* value) {

	return new QVariant(( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::itemChange(static_cast<VirtualQGraphicsProxyWidget::GraphicsItemChange>(change), *value));

}

bool QGraphicsProxyWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::event(event);

}

bool QGraphicsProxyWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::eventFilter(object, event);

}

void QGraphicsProxyWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::showEvent(event);

}

void QGraphicsProxyWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::hideEvent(event);

}

void QGraphicsProxyWidget_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::contextMenuEvent(event);

}

void QGraphicsProxyWidget_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::dragEnterEvent(event);

}

void QGraphicsProxyWidget_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::dragLeaveEvent(event);

}

void QGraphicsProxyWidget_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::dragMoveEvent(event);

}

void QGraphicsProxyWidget_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::dropEvent(event);

}

void QGraphicsProxyWidget_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::hoverEnterEvent(event);

}

void QGraphicsProxyWidget_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::hoverLeaveEvent(event);

}

void QGraphicsProxyWidget_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::hoverMoveEvent(event);

}

void QGraphicsProxyWidget_virtualbase_grabMouseEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::grabMouseEvent(event);

}

void QGraphicsProxyWidget_virtualbase_ungrabMouseEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::ungrabMouseEvent(event);

}

void QGraphicsProxyWidget_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::mouseMoveEvent(event);

}

void QGraphicsProxyWidget_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::mousePressEvent(event);

}

void QGraphicsProxyWidget_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::mouseReleaseEvent(event);

}

void QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::mouseDoubleClickEvent(event);

}

void QGraphicsProxyWidget_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::wheelEvent(event);

}

void QGraphicsProxyWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::keyPressEvent(event);

}

void QGraphicsProxyWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::keyReleaseEvent(event);

}

void QGraphicsProxyWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::focusInEvent(event);

}

void QGraphicsProxyWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::focusOutEvent(event);

}

bool QGraphicsProxyWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::focusNextPrevChild(next);

}

QVariant* QGraphicsProxyWidget_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QGraphicsProxyWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::inputMethodEvent(event);

}

QSizeF* QGraphicsProxyWidget_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint) {

	return new QSizeF(( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));

}

void QGraphicsProxyWidget_virtualbase_resizeEvent(void* self, QGraphicsSceneResizeEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::resizeEvent(event);

}

void QGraphicsProxyWidget_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom) {

	( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));

}

void QGraphicsProxyWidget_virtualbase_paintWindowFrame(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::paintWindowFrame(painter, option, widget);

}

QRectF* QGraphicsProxyWidget_virtualbase_boundingRect(const void* self) {

	return new QRectF(( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::boundingRect());

}

QPainterPath* QGraphicsProxyWidget_virtualbase_shape(const void* self) {

	return new QPainterPath(( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::shape());

}

void QGraphicsProxyWidget_virtualbase_initStyleOption(const void* self, QStyleOption* option) {

	( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::initStyleOption(option);

}

void QGraphicsProxyWidget_virtualbase_updateGeometry(void* self) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::updateGeometry();

}

QVariant* QGraphicsProxyWidget_virtualbase_propertyChange(void* self, struct miqt_string propertyName, QVariant* value) {
	QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);

	return new QVariant(( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::propertyChange(propertyName_QString, *value));

}

bool QGraphicsProxyWidget_virtualbase_sceneEvent(void* self, QEvent* event) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::sceneEvent(event);

}

bool QGraphicsProxyWidget_virtualbase_windowFrameEvent(void* self, QEvent* e) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::windowFrameEvent(e);

}

int QGraphicsProxyWidget_virtualbase_windowFrameSectionAt(const void* self, QPointF* pos) {

	Qt::WindowFrameSection _ret = ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::windowFrameSectionAt(*pos);
	return static_cast<int>(_ret);

}

void QGraphicsProxyWidget_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::changeEvent(event);

}

void QGraphicsProxyWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::closeEvent(event);

}

void QGraphicsProxyWidget_virtualbase_moveEvent(void* self, QGraphicsSceneMoveEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::moveEvent(event);

}

void QGraphicsProxyWidget_virtualbase_polishEvent(void* self) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::polishEvent();

}

void QGraphicsProxyWidget_virtualbase_grabKeyboardEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::grabKeyboardEvent(event);

}

void QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::ungrabKeyboardEvent(event);

}

void QGraphicsProxyWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::timerEvent(event);

}

void QGraphicsProxyWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::childEvent(event);

}

void QGraphicsProxyWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::customEvent(event);

}

void QGraphicsProxyWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::connectNotify(*signal);

}

void QGraphicsProxyWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::disconnectNotify(*signal);

}

void QGraphicsProxyWidget_virtualbase_advance(void* self, int phase) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::advance(static_cast<int>(phase));

}

bool QGraphicsProxyWidget_virtualbase_contains(const void* self, QPointF* point) {

	return ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::contains(*point);

}

bool QGraphicsProxyWidget_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {

	return ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

}

bool QGraphicsProxyWidget_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {

	return ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

}

bool QGraphicsProxyWidget_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {

	return ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::isObscuredBy(item);

}

QPainterPath* QGraphicsProxyWidget_virtualbase_opaqueArea(const void* self) {

	return new QPainterPath(( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::opaqueArea());

}

bool QGraphicsProxyWidget_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {

	return ( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::sceneEventFilter(watched, event);

}

bool QGraphicsProxyWidget_virtualbase_supportsExtension(const void* self, int extension) {

	return ( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::supportsExtension(static_cast<VirtualQGraphicsProxyWidget::Extension>(extension));

}

void QGraphicsProxyWidget_virtualbase_setExtension(void* self, int extension, QVariant* variant) {

	( (VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::setExtension(static_cast<VirtualQGraphicsProxyWidget::Extension>(extension), *variant);

}

QVariant* QGraphicsProxyWidget_virtualbase_extension(const void* self, QVariant* variant) {

	return new QVariant(( (const VirtualQGraphicsProxyWidget*)(self) )->QGraphicsProxyWidget::extension(*variant));

}

const QMetaObject* QGraphicsProxyWidget_staticMetaObject() { return &QGraphicsProxyWidget::staticMetaObject; }
QGraphicsProxyWidget* QGraphicsProxyWidget_protectedbase_newProxyWidget(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->newProxyWidget(param1);

}

void QGraphicsProxyWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

QObject* QGraphicsProxyWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsProxyWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsProxyWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsProxyWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsProxyWidget_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsProxyWidget_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsProxyWidget_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsProxyWidget_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setGraphicsItem(item);

}

void QGraphicsProxyWidget_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout) {
	VirtualQGraphicsProxyWidget* self_cast = dynamic_cast<VirtualQGraphicsProxyWidget*>( (QGraphicsProxyWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOwnedByLayout(ownedByLayout);

}

void QGraphicsProxyWidget_delete(QGraphicsProxyWidget* self) {
	delete self;
}

