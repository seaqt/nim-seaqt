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
class VirtualQGraphicsProxyWidget final : public QGraphicsProxyWidget {
	const QGraphicsProxyWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsProxyWidget_VTable* QGraphicsProxyWidget_vtbl(const VirtualQGraphicsProxyWidget* self);
	friend void* QGraphicsProxyWidget_vdata(const VirtualQGraphicsProxyWidget* self);
	friend void QGraphicsProxyWidget_setVdata(VirtualQGraphicsProxyWidget* self, void* vdata);

	VirtualQGraphicsProxyWidget(const QGraphicsProxyWidget_VTable* vtbl, void* vdata): QGraphicsProxyWidget(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsProxyWidget(const QGraphicsProxyWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsProxyWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsProxyWidget(const QGraphicsProxyWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent, Qt::WindowFlags wFlags): QGraphicsProxyWidget(parent, wFlags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsProxyWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsProxyWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsProxyWidget_virtualbase_metaObject(const VirtualQGraphicsProxyWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsProxyWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsProxyWidget_virtualbase_metacast(VirtualQGraphicsProxyWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsProxyWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsProxyWidget_virtualbase_metacall(VirtualQGraphicsProxyWidget* self, int param1, int param2, void** param3);

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsProxyWidget::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_setGeometry(VirtualQGraphicsProxyWidget* self, QRectF* rect);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsProxyWidget::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsProxyWidget_virtualbase_paint(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsProxyWidget::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsProxyWidget_virtualbase_type(const VirtualQGraphicsProxyWidget* self);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsProxyWidget::itemChange(change, value);
		}

		QGraphicsItem::GraphicsItemChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		QVariant* callback_return_value = vtbl->itemChange(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_itemChange(VirtualQGraphicsProxyWidget* self, int change, QVariant* value);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsProxyWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_event(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsProxyWidget::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_eventFilter(VirtualQGraphicsProxyWidget* self, QObject* object, QEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsProxyWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_showEvent(VirtualQGraphicsProxyWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsProxyWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hideEvent(VirtualQGraphicsProxyWidget* self, QHideEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsProxyWidget::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_contextMenuEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsProxyWidget::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dragEnterEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsProxyWidget::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dragLeaveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsProxyWidget::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dragMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsProxyWidget::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_dropEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsProxyWidget::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hoverEnterEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsProxyWidget::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hoverLeaveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsProxyWidget::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_hoverMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);

	virtual void grabMouseEvent(QEvent* event) override {
		if (vtbl->grabMouseEvent == 0) {
			QGraphicsProxyWidget::grabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabMouseEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_grabMouseEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual void ungrabMouseEvent(QEvent* event) override {
		if (vtbl->ungrabMouseEvent == 0) {
			QGraphicsProxyWidget::ungrabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabMouseEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_ungrabMouseEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsProxyWidget::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mouseMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsProxyWidget::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mousePressEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsProxyWidget::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mouseReleaseEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsProxyWidget::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsProxyWidget::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_wheelEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsProxyWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_keyPressEvent(VirtualQGraphicsProxyWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsProxyWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_keyReleaseEvent(VirtualQGraphicsProxyWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsProxyWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_focusInEvent(VirtualQGraphicsProxyWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsProxyWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_focusOutEvent(VirtualQGraphicsProxyWidget* self, QFocusEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsProxyWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_focusNextPrevChild(VirtualQGraphicsProxyWidget* self, bool next);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsProxyWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_inputMethodQuery(const VirtualQGraphicsProxyWidget* self, int query);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsProxyWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_inputMethodEvent(VirtualQGraphicsProxyWidget* self, QInputMethodEvent* event);

	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsProxyWidget::sizeHint(which, constraint);
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSizeF* QGraphicsProxyWidget_virtualbase_sizeHint(const VirtualQGraphicsProxyWidget* self, int which, QSizeF* constraint);

	virtual void resizeEvent(QGraphicsSceneResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsProxyWidget::resizeEvent(event);
			return;
		}

		QGraphicsSceneResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_resizeEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event);

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

		vtbl->getContentsMargins(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QGraphicsProxyWidget_virtualbase_getContentsMargins(const VirtualQGraphicsProxyWidget* self, double* left, double* top, double* right, double* bottom);

	virtual void paintWindowFrame(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paintWindowFrame == 0) {
			QGraphicsProxyWidget::paintWindowFrame(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paintWindowFrame(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsProxyWidget_virtualbase_paintWindowFrame(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsProxyWidget::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsProxyWidget_virtualbase_boundingRect(const VirtualQGraphicsProxyWidget* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsProxyWidget::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsProxyWidget_virtualbase_shape(const VirtualQGraphicsProxyWidget* self);

	virtual void initStyleOption(QStyleOption* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGraphicsProxyWidget::initStyleOption(option);
			return;
		}

		QStyleOption* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_initStyleOption(const VirtualQGraphicsProxyWidget* self, QStyleOption* option);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsProxyWidget::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsProxyWidget_virtualbase_updateGeometry(VirtualQGraphicsProxyWidget* self);

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

		QVariant* callback_return_value = vtbl->propertyChange(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_propertyChange(VirtualQGraphicsProxyWidget* self, struct miqt_string propertyName, QVariant* value);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsProxyWidget::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_sceneEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual bool windowFrameEvent(QEvent* e) override {
		if (vtbl->windowFrameEvent == 0) {
			return QGraphicsProxyWidget::windowFrameEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->windowFrameEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_windowFrameEvent(VirtualQGraphicsProxyWidget* self, QEvent* e);

	virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF& pos) const override {
		if (vtbl->windowFrameSectionAt == 0) {
			return QGraphicsProxyWidget::windowFrameSectionAt(pos);
		}

		const QPointF& pos_ret = pos;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&pos_ret);

		int callback_return_value = vtbl->windowFrameSectionAt(this, sigval1);

		return static_cast<Qt::WindowFrameSection>(callback_return_value);
	}

	friend int QGraphicsProxyWidget_virtualbase_windowFrameSectionAt(const VirtualQGraphicsProxyWidget* self, QPointF* pos);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsProxyWidget::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_changeEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsProxyWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_closeEvent(VirtualQGraphicsProxyWidget* self, QCloseEvent* event);

	virtual void moveEvent(QGraphicsSceneMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsProxyWidget::moveEvent(event);
			return;
		}

		QGraphicsSceneMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_moveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMoveEvent* event);

	virtual void polishEvent() override {
		if (vtbl->polishEvent == 0) {
			QGraphicsProxyWidget::polishEvent();
			return;
		}


		vtbl->polishEvent(this);

	}

	friend void QGraphicsProxyWidget_virtualbase_polishEvent(VirtualQGraphicsProxyWidget* self);

	virtual void grabKeyboardEvent(QEvent* event) override {
		if (vtbl->grabKeyboardEvent == 0) {
			QGraphicsProxyWidget::grabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabKeyboardEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_grabKeyboardEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual void ungrabKeyboardEvent(QEvent* event) override {
		if (vtbl->ungrabKeyboardEvent == 0) {
			QGraphicsProxyWidget::ungrabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabKeyboardEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsProxyWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_timerEvent(VirtualQGraphicsProxyWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsProxyWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_childEvent(VirtualQGraphicsProxyWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsProxyWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_customEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsProxyWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_connectNotify(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsProxyWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_disconnectNotify(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsProxyWidget::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsProxyWidget_virtualbase_advance(VirtualQGraphicsProxyWidget* self, int phase);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsProxyWidget::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_contains(const VirtualQGraphicsProxyWidget* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsProxyWidget::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_collidesWithItem(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsProxyWidget::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_collidesWithPath(const VirtualQGraphicsProxyWidget* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsProxyWidget::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_isObscuredBy(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsProxyWidget::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsProxyWidget_virtualbase_opaqueArea(const VirtualQGraphicsProxyWidget* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsProxyWidget::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_sceneEventFilter(VirtualQGraphicsProxyWidget* self, QGraphicsItem* watched, QEvent* event);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsProxyWidget::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsProxyWidget_virtualbase_supportsExtension(const VirtualQGraphicsProxyWidget* self, int extension);

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

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsProxyWidget_virtualbase_setExtension(VirtualQGraphicsProxyWidget* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsProxyWidget::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsProxyWidget_virtualbase_extension(const VirtualQGraphicsProxyWidget* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend QGraphicsProxyWidget* QGraphicsProxyWidget_protectedbase_newProxyWidget(VirtualQGraphicsProxyWidget* self, QWidget* param1);
	friend void QGraphicsProxyWidget_protectedbase_updateMicroFocus(VirtualQGraphicsProxyWidget* self);
	friend QObject* QGraphicsProxyWidget_protectedbase_sender(const VirtualQGraphicsProxyWidget* self);
	friend int QGraphicsProxyWidget_protectedbase_senderSignalIndex(const VirtualQGraphicsProxyWidget* self);
	friend int QGraphicsProxyWidget_protectedbase_receivers(const VirtualQGraphicsProxyWidget* self, const char* signal);
	friend bool QGraphicsProxyWidget_protectedbase_isSignalConnected(const VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);
	friend void QGraphicsProxyWidget_protectedbase_addToIndex(VirtualQGraphicsProxyWidget* self);
	friend void QGraphicsProxyWidget_protectedbase_removeFromIndex(VirtualQGraphicsProxyWidget* self);
	friend void QGraphicsProxyWidget_protectedbase_prepareGeometryChange(VirtualQGraphicsProxyWidget* self);
	friend void QGraphicsProxyWidget_protectedbase_setGraphicsItem(VirtualQGraphicsProxyWidget* self, QGraphicsItem* item);
	friend void QGraphicsProxyWidget_protectedbase_setOwnedByLayout(VirtualQGraphicsProxyWidget* self, bool ownedByLayout);
};

VirtualQGraphicsProxyWidget* QGraphicsProxyWidget_new(const QGraphicsProxyWidget_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsProxyWidget(vtbl, vdata);
}

VirtualQGraphicsProxyWidget* QGraphicsProxyWidget_new2(const QGraphicsProxyWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsProxyWidget(vtbl, vdata, parent);
}

VirtualQGraphicsProxyWidget* QGraphicsProxyWidget_new3(const QGraphicsProxyWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent, int wFlags) {
	return new VirtualQGraphicsProxyWidget(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(wFlags));
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

QMetaObject* QGraphicsProxyWidget_virtualbase_metaObject(const VirtualQGraphicsProxyWidget* self) {

	return (QMetaObject*) self->QGraphicsProxyWidget::metaObject();
}

void* QGraphicsProxyWidget_virtualbase_metacast(VirtualQGraphicsProxyWidget* self, const char* param1) {

	return self->QGraphicsProxyWidget::qt_metacast(param1);
}

int QGraphicsProxyWidget_virtualbase_metacall(VirtualQGraphicsProxyWidget* self, int param1, int param2, void** param3) {

	return self->QGraphicsProxyWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsProxyWidget_virtualbase_setGeometry(VirtualQGraphicsProxyWidget* self, QRectF* rect) {

	self->QGraphicsProxyWidget::setGeometry(*rect);
}

void QGraphicsProxyWidget_virtualbase_paint(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsProxyWidget::paint(painter, option, widget);
}

int QGraphicsProxyWidget_virtualbase_type(const VirtualQGraphicsProxyWidget* self) {

	return self->QGraphicsProxyWidget::type();
}

QVariant* QGraphicsProxyWidget_virtualbase_itemChange(VirtualQGraphicsProxyWidget* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsProxyWidget::itemChange(static_cast<VirtualQGraphicsProxyWidget::GraphicsItemChange>(change), *value));
}

bool QGraphicsProxyWidget_virtualbase_event(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	return self->QGraphicsProxyWidget::event(event);
}

bool QGraphicsProxyWidget_virtualbase_eventFilter(VirtualQGraphicsProxyWidget* self, QObject* object, QEvent* event) {

	return self->QGraphicsProxyWidget::eventFilter(object, event);
}

void QGraphicsProxyWidget_virtualbase_showEvent(VirtualQGraphicsProxyWidget* self, QShowEvent* event) {

	self->QGraphicsProxyWidget::showEvent(event);
}

void QGraphicsProxyWidget_virtualbase_hideEvent(VirtualQGraphicsProxyWidget* self, QHideEvent* event) {

	self->QGraphicsProxyWidget::hideEvent(event);
}

void QGraphicsProxyWidget_virtualbase_contextMenuEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsProxyWidget::contextMenuEvent(event);
}

void QGraphicsProxyWidget_virtualbase_dragEnterEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsProxyWidget::dragEnterEvent(event);
}

void QGraphicsProxyWidget_virtualbase_dragLeaveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsProxyWidget::dragLeaveEvent(event);
}

void QGraphicsProxyWidget_virtualbase_dragMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsProxyWidget::dragMoveEvent(event);
}

void QGraphicsProxyWidget_virtualbase_dropEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsProxyWidget::dropEvent(event);
}

void QGraphicsProxyWidget_virtualbase_hoverEnterEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsProxyWidget::hoverEnterEvent(event);
}

void QGraphicsProxyWidget_virtualbase_hoverLeaveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsProxyWidget::hoverLeaveEvent(event);
}

void QGraphicsProxyWidget_virtualbase_hoverMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsProxyWidget::hoverMoveEvent(event);
}

void QGraphicsProxyWidget_virtualbase_grabMouseEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	self->QGraphicsProxyWidget::grabMouseEvent(event);
}

void QGraphicsProxyWidget_virtualbase_ungrabMouseEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	self->QGraphicsProxyWidget::ungrabMouseEvent(event);
}

void QGraphicsProxyWidget_virtualbase_mouseMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsProxyWidget::mouseMoveEvent(event);
}

void QGraphicsProxyWidget_virtualbase_mousePressEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsProxyWidget::mousePressEvent(event);
}

void QGraphicsProxyWidget_virtualbase_mouseReleaseEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsProxyWidget::mouseReleaseEvent(event);
}

void QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsProxyWidget::mouseDoubleClickEvent(event);
}

void QGraphicsProxyWidget_virtualbase_wheelEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsProxyWidget::wheelEvent(event);
}

void QGraphicsProxyWidget_virtualbase_keyPressEvent(VirtualQGraphicsProxyWidget* self, QKeyEvent* event) {

	self->QGraphicsProxyWidget::keyPressEvent(event);
}

void QGraphicsProxyWidget_virtualbase_keyReleaseEvent(VirtualQGraphicsProxyWidget* self, QKeyEvent* event) {

	self->QGraphicsProxyWidget::keyReleaseEvent(event);
}

void QGraphicsProxyWidget_virtualbase_focusInEvent(VirtualQGraphicsProxyWidget* self, QFocusEvent* event) {

	self->QGraphicsProxyWidget::focusInEvent(event);
}

void QGraphicsProxyWidget_virtualbase_focusOutEvent(VirtualQGraphicsProxyWidget* self, QFocusEvent* event) {

	self->QGraphicsProxyWidget::focusOutEvent(event);
}

bool QGraphicsProxyWidget_virtualbase_focusNextPrevChild(VirtualQGraphicsProxyWidget* self, bool next) {

	return self->QGraphicsProxyWidget::focusNextPrevChild(next);
}

QVariant* QGraphicsProxyWidget_virtualbase_inputMethodQuery(const VirtualQGraphicsProxyWidget* self, int query) {

	return new QVariant(self->QGraphicsProxyWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QGraphicsProxyWidget_virtualbase_inputMethodEvent(VirtualQGraphicsProxyWidget* self, QInputMethodEvent* event) {

	self->QGraphicsProxyWidget::inputMethodEvent(event);
}

QSizeF* QGraphicsProxyWidget_virtualbase_sizeHint(const VirtualQGraphicsProxyWidget* self, int which, QSizeF* constraint) {

	return new QSizeF(self->QGraphicsProxyWidget::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsProxyWidget_virtualbase_resizeEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event) {

	self->QGraphicsProxyWidget::resizeEvent(event);
}

void QGraphicsProxyWidget_virtualbase_getContentsMargins(const VirtualQGraphicsProxyWidget* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsProxyWidget::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsProxyWidget_virtualbase_paintWindowFrame(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsProxyWidget::paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsProxyWidget_virtualbase_boundingRect(const VirtualQGraphicsProxyWidget* self) {

	return new QRectF(self->QGraphicsProxyWidget::boundingRect());
}

QPainterPath* QGraphicsProxyWidget_virtualbase_shape(const VirtualQGraphicsProxyWidget* self) {

	return new QPainterPath(self->QGraphicsProxyWidget::shape());
}

void QGraphicsProxyWidget_virtualbase_initStyleOption(const VirtualQGraphicsProxyWidget* self, QStyleOption* option) {

	self->QGraphicsProxyWidget::initStyleOption(option);
}

void QGraphicsProxyWidget_virtualbase_updateGeometry(VirtualQGraphicsProxyWidget* self) {

	self->QGraphicsProxyWidget::updateGeometry();
}

QVariant* QGraphicsProxyWidget_virtualbase_propertyChange(VirtualQGraphicsProxyWidget* self, struct miqt_string propertyName, QVariant* value) {
	QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);

	return new QVariant(self->QGraphicsProxyWidget::propertyChange(propertyName_QString, *value));
}

bool QGraphicsProxyWidget_virtualbase_sceneEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	return self->QGraphicsProxyWidget::sceneEvent(event);
}

bool QGraphicsProxyWidget_virtualbase_windowFrameEvent(VirtualQGraphicsProxyWidget* self, QEvent* e) {

	return self->QGraphicsProxyWidget::windowFrameEvent(e);
}

int QGraphicsProxyWidget_virtualbase_windowFrameSectionAt(const VirtualQGraphicsProxyWidget* self, QPointF* pos) {

	Qt::WindowFrameSection _ret = self->QGraphicsProxyWidget::windowFrameSectionAt(*pos);
	return static_cast<int>(_ret);
}

void QGraphicsProxyWidget_virtualbase_changeEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	self->QGraphicsProxyWidget::changeEvent(event);
}

void QGraphicsProxyWidget_virtualbase_closeEvent(VirtualQGraphicsProxyWidget* self, QCloseEvent* event) {

	self->QGraphicsProxyWidget::closeEvent(event);
}

void QGraphicsProxyWidget_virtualbase_moveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMoveEvent* event) {

	self->QGraphicsProxyWidget::moveEvent(event);
}

void QGraphicsProxyWidget_virtualbase_polishEvent(VirtualQGraphicsProxyWidget* self) {

	self->QGraphicsProxyWidget::polishEvent();
}

void QGraphicsProxyWidget_virtualbase_grabKeyboardEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	self->QGraphicsProxyWidget::grabKeyboardEvent(event);
}

void QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	self->QGraphicsProxyWidget::ungrabKeyboardEvent(event);
}

void QGraphicsProxyWidget_virtualbase_timerEvent(VirtualQGraphicsProxyWidget* self, QTimerEvent* event) {

	self->QGraphicsProxyWidget::timerEvent(event);
}

void QGraphicsProxyWidget_virtualbase_childEvent(VirtualQGraphicsProxyWidget* self, QChildEvent* event) {

	self->QGraphicsProxyWidget::childEvent(event);
}

void QGraphicsProxyWidget_virtualbase_customEvent(VirtualQGraphicsProxyWidget* self, QEvent* event) {

	self->QGraphicsProxyWidget::customEvent(event);
}

void QGraphicsProxyWidget_virtualbase_connectNotify(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal) {

	self->QGraphicsProxyWidget::connectNotify(*signal);
}

void QGraphicsProxyWidget_virtualbase_disconnectNotify(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal) {

	self->QGraphicsProxyWidget::disconnectNotify(*signal);
}

void QGraphicsProxyWidget_virtualbase_advance(VirtualQGraphicsProxyWidget* self, int phase) {

	self->QGraphicsProxyWidget::advance(static_cast<int>(phase));
}

bool QGraphicsProxyWidget_virtualbase_contains(const VirtualQGraphicsProxyWidget* self, QPointF* point) {

	return self->QGraphicsProxyWidget::contains(*point);
}

bool QGraphicsProxyWidget_virtualbase_collidesWithItem(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsProxyWidget::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsProxyWidget_virtualbase_collidesWithPath(const VirtualQGraphicsProxyWidget* self, QPainterPath* path, int mode) {

	return self->QGraphicsProxyWidget::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsProxyWidget_virtualbase_isObscuredBy(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* item) {

	return self->QGraphicsProxyWidget::isObscuredBy(item);
}

QPainterPath* QGraphicsProxyWidget_virtualbase_opaqueArea(const VirtualQGraphicsProxyWidget* self) {

	return new QPainterPath(self->QGraphicsProxyWidget::opaqueArea());
}

bool QGraphicsProxyWidget_virtualbase_sceneEventFilter(VirtualQGraphicsProxyWidget* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsProxyWidget::sceneEventFilter(watched, event);
}

bool QGraphicsProxyWidget_virtualbase_supportsExtension(const VirtualQGraphicsProxyWidget* self, int extension) {

	return self->QGraphicsProxyWidget::supportsExtension(static_cast<VirtualQGraphicsProxyWidget::Extension>(extension));
}

void QGraphicsProxyWidget_virtualbase_setExtension(VirtualQGraphicsProxyWidget* self, int extension, QVariant* variant) {

	self->QGraphicsProxyWidget::setExtension(static_cast<VirtualQGraphicsProxyWidget::Extension>(extension), *variant);
}

QVariant* QGraphicsProxyWidget_virtualbase_extension(const VirtualQGraphicsProxyWidget* self, QVariant* variant) {

	return new QVariant(self->QGraphicsProxyWidget::extension(*variant));
}

const QMetaObject* QGraphicsProxyWidget_staticMetaObject() { return &QGraphicsProxyWidget::staticMetaObject; }

const QGraphicsProxyWidget_VTable* QGraphicsProxyWidget_vtbl(const VirtualQGraphicsProxyWidget* self) { return self->vtbl; }
void* QGraphicsProxyWidget_vdata(const VirtualQGraphicsProxyWidget* self) { return self->vdata; }
void QGraphicsProxyWidget_setVdata(VirtualQGraphicsProxyWidget* self, void* vdata) { self->vdata = vdata; }

QGraphicsProxyWidget* QGraphicsProxyWidget_protectedbase_newProxyWidget(VirtualQGraphicsProxyWidget* self, QWidget* param1) {
	return self->newProxyWidget(param1);
}

void QGraphicsProxyWidget_protectedbase_updateMicroFocus(VirtualQGraphicsProxyWidget* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsProxyWidget_protectedbase_sender(const VirtualQGraphicsProxyWidget* self) {
	return self->sender();
}

int QGraphicsProxyWidget_protectedbase_senderSignalIndex(const VirtualQGraphicsProxyWidget* self) {
	return self->senderSignalIndex();
}

int QGraphicsProxyWidget_protectedbase_receivers(const VirtualQGraphicsProxyWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsProxyWidget_protectedbase_isSignalConnected(const VirtualQGraphicsProxyWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsProxyWidget_protectedbase_addToIndex(VirtualQGraphicsProxyWidget* self) {
	self->addToIndex();
}

void QGraphicsProxyWidget_protectedbase_removeFromIndex(VirtualQGraphicsProxyWidget* self) {
	self->removeFromIndex();
}

void QGraphicsProxyWidget_protectedbase_prepareGeometryChange(VirtualQGraphicsProxyWidget* self) {
	self->prepareGeometryChange();
}

void QGraphicsProxyWidget_protectedbase_setGraphicsItem(VirtualQGraphicsProxyWidget* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsProxyWidget_protectedbase_setOwnedByLayout(VirtualQGraphicsProxyWidget* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsProxyWidget_delete(QGraphicsProxyWidget* self) {
	delete self;
}

