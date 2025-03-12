#include <QAction>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QGraphicsItem>
#include <QGraphicsLayoutItem>
#include <QGraphicsObject>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneMoveEvent>
#include <QGraphicsSceneResizeEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsWebView>
#include <QGraphicsWidget>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkRequest>
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
#include <QUrl>
#include <QVariant>
#include <QWebHistory>
#include <QWebPage>
#include <QWebSettings>
#include <QWidget>
#include <qgraphicswebview.h>
#include "gen_qgraphicswebview.h"
class VirtualQGraphicsWebView final : public QGraphicsWebView {
	const QGraphicsWebView_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsWebView_VTable* QGraphicsWebView_vtbl(const VirtualQGraphicsWebView* self);
	friend void* QGraphicsWebView_vdata(const VirtualQGraphicsWebView* self);
	friend void QGraphicsWebView_setVdata(VirtualQGraphicsWebView* self, void* vdata);

	VirtualQGraphicsWebView(const QGraphicsWebView_VTable* vtbl, void* vdata): QGraphicsWebView(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsWebView(const QGraphicsWebView_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsWebView(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsWebView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsWebView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsWebView_virtualbase_metaObject(const VirtualQGraphicsWebView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsWebView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsWebView_virtualbase_metacast(VirtualQGraphicsWebView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsWebView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsWebView_virtualbase_metacall(VirtualQGraphicsWebView* self, int param1, int param2, void** param3);

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsWebView::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_setGeometry(VirtualQGraphicsWebView* self, QRectF* rect);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsWebView::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsWebView_virtualbase_updateGeometry(VirtualQGraphicsWebView* self);

	virtual void paint(QPainter* param1, const QStyleOptionGraphicsItem* options, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsWebView::paint(param1, options, widget);
			return;
		}

		QPainter* sigval1 = param1;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) options;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsWebView_virtualbase_paint(VirtualQGraphicsWebView* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsWebView::itemChange(change, value);
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

	friend QVariant* QGraphicsWebView_virtualbase_itemChange(VirtualQGraphicsWebView* self, int change, QVariant* value);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QGraphicsWebView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_event(VirtualQGraphicsWebView* self, QEvent* param1);

	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsWebView::sizeHint(which, constraint);
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

	friend QSizeF* QGraphicsWebView_virtualbase_sizeHint(const VirtualQGraphicsWebView* self, int which, QSizeF* constraint);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsWebView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsWebView_virtualbase_inputMethodQuery(const VirtualQGraphicsWebView* self, int query);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsWebView::mousePressEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_mousePressEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsWebView::mouseDoubleClickEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsWebView::mouseReleaseEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_mouseReleaseEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsWebView::mouseMoveEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_mouseMoveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* param1) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsWebView::hoverMoveEvent(param1);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = param1;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_hoverMoveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneHoverEvent* param1);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* param1) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsWebView::hoverLeaveEvent(param1);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = param1;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_hoverLeaveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneHoverEvent* param1);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsWebView::wheelEvent(param1);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_wheelEvent(VirtualQGraphicsWebView* self, QGraphicsSceneWheelEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsWebView::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_keyPressEvent(VirtualQGraphicsWebView* self, QKeyEvent* param1);

	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsWebView::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_keyReleaseEvent(VirtualQGraphicsWebView* self, QKeyEvent* param1);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsWebView::contextMenuEvent(param1);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_contextMenuEvent(VirtualQGraphicsWebView* self, QGraphicsSceneContextMenuEvent* param1);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsWebView::dragEnterEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_dragEnterEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsWebView::dragLeaveEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_dragLeaveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsWebView::dragMoveEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_dragMoveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsWebView::dropEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_dropEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsWebView::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_focusInEvent(VirtualQGraphicsWebView* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsWebView::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_focusOutEvent(VirtualQGraphicsWebView* self, QFocusEvent* param1);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsWebView::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_inputMethodEvent(VirtualQGraphicsWebView* self, QInputMethodEvent* param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsWebView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_focusNextPrevChild(VirtualQGraphicsWebView* self, bool next);

	virtual bool sceneEvent(QEvent* param1) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsWebView::sceneEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_sceneEvent(VirtualQGraphicsWebView* self, QEvent* param1);

	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsWebView::getContentsMargins(left, top, right, bottom);
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

	friend void QGraphicsWebView_virtualbase_getContentsMargins(const VirtualQGraphicsWebView* self, double* left, double* top, double* right, double* bottom);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsWebView::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsWebView_virtualbase_type(const VirtualQGraphicsWebView* self);

	virtual void paintWindowFrame(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paintWindowFrame == 0) {
			QGraphicsWebView::paintWindowFrame(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paintWindowFrame(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsWebView_virtualbase_paintWindowFrame(VirtualQGraphicsWebView* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsWebView::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsWebView_virtualbase_boundingRect(const VirtualQGraphicsWebView* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsWebView::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsWebView_virtualbase_shape(const VirtualQGraphicsWebView* self);

	virtual void initStyleOption(QStyleOption* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGraphicsWebView::initStyleOption(option);
			return;
		}

		QStyleOption* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_initStyleOption(const VirtualQGraphicsWebView* self, QStyleOption* option);

	virtual QVariant propertyChange(const QString& propertyName, const QVariant& value) override {
		if (vtbl->propertyChange == 0) {
			return QGraphicsWebView::propertyChange(propertyName, value);
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

	friend QVariant* QGraphicsWebView_virtualbase_propertyChange(VirtualQGraphicsWebView* self, struct miqt_string propertyName, QVariant* value);

	virtual bool windowFrameEvent(QEvent* e) override {
		if (vtbl->windowFrameEvent == 0) {
			return QGraphicsWebView::windowFrameEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->windowFrameEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_windowFrameEvent(VirtualQGraphicsWebView* self, QEvent* e);

	virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF& pos) const override {
		if (vtbl->windowFrameSectionAt == 0) {
			return QGraphicsWebView::windowFrameSectionAt(pos);
		}

		const QPointF& pos_ret = pos;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&pos_ret);

		int callback_return_value = vtbl->windowFrameSectionAt(this, sigval1);

		return static_cast<Qt::WindowFrameSection>(callback_return_value);
	}

	friend int QGraphicsWebView_virtualbase_windowFrameSectionAt(const VirtualQGraphicsWebView* self, QPointF* pos);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsWebView::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_changeEvent(VirtualQGraphicsWebView* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsWebView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_closeEvent(VirtualQGraphicsWebView* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsWebView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_hideEvent(VirtualQGraphicsWebView* self, QHideEvent* event);

	virtual void moveEvent(QGraphicsSceneMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsWebView::moveEvent(event);
			return;
		}

		QGraphicsSceneMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_moveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMoveEvent* event);

	virtual void polishEvent() override {
		if (vtbl->polishEvent == 0) {
			QGraphicsWebView::polishEvent();
			return;
		}


		vtbl->polishEvent(this);

	}

	friend void QGraphicsWebView_virtualbase_polishEvent(VirtualQGraphicsWebView* self);

	virtual void resizeEvent(QGraphicsSceneResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsWebView::resizeEvent(event);
			return;
		}

		QGraphicsSceneResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_resizeEvent(VirtualQGraphicsWebView* self, QGraphicsSceneResizeEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsWebView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_showEvent(VirtualQGraphicsWebView* self, QShowEvent* event);

	virtual void grabMouseEvent(QEvent* event) override {
		if (vtbl->grabMouseEvent == 0) {
			QGraphicsWebView::grabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabMouseEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_grabMouseEvent(VirtualQGraphicsWebView* self, QEvent* event);

	virtual void ungrabMouseEvent(QEvent* event) override {
		if (vtbl->ungrabMouseEvent == 0) {
			QGraphicsWebView::ungrabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabMouseEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_ungrabMouseEvent(VirtualQGraphicsWebView* self, QEvent* event);

	virtual void grabKeyboardEvent(QEvent* event) override {
		if (vtbl->grabKeyboardEvent == 0) {
			QGraphicsWebView::grabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabKeyboardEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_grabKeyboardEvent(VirtualQGraphicsWebView* self, QEvent* event);

	virtual void ungrabKeyboardEvent(QEvent* event) override {
		if (vtbl->ungrabKeyboardEvent == 0) {
			QGraphicsWebView::ungrabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabKeyboardEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsWebView* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsWebView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_eventFilter(VirtualQGraphicsWebView* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsWebView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_timerEvent(VirtualQGraphicsWebView* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsWebView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_childEvent(VirtualQGraphicsWebView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsWebView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_customEvent(VirtualQGraphicsWebView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsWebView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_connectNotify(VirtualQGraphicsWebView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsWebView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_disconnectNotify(VirtualQGraphicsWebView* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsWebView::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_advance(VirtualQGraphicsWebView* self, int phase);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsWebView::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_contains(const VirtualQGraphicsWebView* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsWebView::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_collidesWithItem(const VirtualQGraphicsWebView* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsWebView::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_collidesWithPath(const VirtualQGraphicsWebView* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsWebView::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_isObscuredBy(const VirtualQGraphicsWebView* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsWebView::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsWebView_virtualbase_opaqueArea(const VirtualQGraphicsWebView* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsWebView::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_sceneEventFilter(VirtualQGraphicsWebView* self, QGraphicsItem* watched, QEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsWebView::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsWebView_virtualbase_hoverEnterEvent(VirtualQGraphicsWebView* self, QGraphicsSceneHoverEvent* event);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsWebView::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWebView_virtualbase_supportsExtension(const VirtualQGraphicsWebView* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsWebView::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsWebView_virtualbase_setExtension(VirtualQGraphicsWebView* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsWebView::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsWebView_virtualbase_extension(const VirtualQGraphicsWebView* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsWebView_protectedbase_updateMicroFocus(VirtualQGraphicsWebView* self);
	friend QObject* QGraphicsWebView_protectedbase_sender(const VirtualQGraphicsWebView* self);
	friend int QGraphicsWebView_protectedbase_senderSignalIndex(const VirtualQGraphicsWebView* self);
	friend int QGraphicsWebView_protectedbase_receivers(const VirtualQGraphicsWebView* self, const char* signal);
	friend bool QGraphicsWebView_protectedbase_isSignalConnected(const VirtualQGraphicsWebView* self, QMetaMethod* signal);
	friend void QGraphicsWebView_protectedbase_addToIndex(VirtualQGraphicsWebView* self);
	friend void QGraphicsWebView_protectedbase_removeFromIndex(VirtualQGraphicsWebView* self);
	friend void QGraphicsWebView_protectedbase_prepareGeometryChange(VirtualQGraphicsWebView* self);
	friend void QGraphicsWebView_protectedbase_setGraphicsItem(VirtualQGraphicsWebView* self, QGraphicsItem* item);
	friend void QGraphicsWebView_protectedbase_setOwnedByLayout(VirtualQGraphicsWebView* self, bool ownedByLayout);
};

VirtualQGraphicsWebView* QGraphicsWebView_new(const QGraphicsWebView_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsWebView(vtbl, vdata);
}

VirtualQGraphicsWebView* QGraphicsWebView_new2(const QGraphicsWebView_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsWebView(vtbl, vdata, parent);
}

void QGraphicsWebView_virtbase(QGraphicsWebView* src, QGraphicsWidget** outptr_QGraphicsWidget) {
	*outptr_QGraphicsWidget = static_cast<QGraphicsWidget*>(src);
}

QMetaObject* QGraphicsWebView_metaObject(const QGraphicsWebView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsWebView_metacast(QGraphicsWebView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsWebView_metacall(QGraphicsWebView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsWebView_tr(const char* s) {
	QString _ret = QGraphicsWebView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_trUtf8(const char* s) {
	QString _ret = QGraphicsWebView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebPage* QGraphicsWebView_page(const QGraphicsWebView* self) {
	return self->page();
}

void QGraphicsWebView_setPage(QGraphicsWebView* self, QWebPage* page) {
	self->setPage(page);
}

QUrl* QGraphicsWebView_url(const QGraphicsWebView* self) {
	return new QUrl(self->url());
}

void QGraphicsWebView_setUrl(QGraphicsWebView* self, QUrl* url) {
	self->setUrl(*url);
}

struct miqt_string QGraphicsWebView_title(const QGraphicsWebView* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QGraphicsWebView_icon(const QGraphicsWebView* self) {
	return new QIcon(self->icon());
}

double QGraphicsWebView_zoomFactor(const QGraphicsWebView* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

void QGraphicsWebView_setZoomFactor(QGraphicsWebView* self, double zoomFactor) {
	self->setZoomFactor(static_cast<qreal>(zoomFactor));
}

bool QGraphicsWebView_isModified(const QGraphicsWebView* self) {
	return self->isModified();
}

void QGraphicsWebView_load(QGraphicsWebView* self, QUrl* url) {
	self->load(*url);
}

void QGraphicsWebView_loadWithRequest(QGraphicsWebView* self, QNetworkRequest* request) {
	self->load(*request);
}

void QGraphicsWebView_setHtml(QGraphicsWebView* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

void QGraphicsWebView_setContent(QGraphicsWebView* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setContent(data_QByteArray);
}

QWebHistory* QGraphicsWebView_history(const QGraphicsWebView* self) {
	return self->history();
}

QWebSettings* QGraphicsWebView_settings(const QGraphicsWebView* self) {
	return self->settings();
}

QAction* QGraphicsWebView_pageAction(const QGraphicsWebView* self, int action) {
	return self->pageAction(static_cast<QWebPage::WebAction>(action));
}

void QGraphicsWebView_triggerPageAction(QGraphicsWebView* self, int action) {
	self->triggerPageAction(static_cast<QWebPage::WebAction>(action));
}

bool QGraphicsWebView_findText(QGraphicsWebView* self, struct miqt_string subString) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString);
}

bool QGraphicsWebView_resizesToContents(const QGraphicsWebView* self) {
	return self->resizesToContents();
}

void QGraphicsWebView_setResizesToContents(QGraphicsWebView* self, bool enabled) {
	self->setResizesToContents(enabled);
}

bool QGraphicsWebView_isTiledBackingStoreFrozen(const QGraphicsWebView* self) {
	return self->isTiledBackingStoreFrozen();
}

void QGraphicsWebView_setTiledBackingStoreFrozen(QGraphicsWebView* self, bool frozen) {
	self->setTiledBackingStoreFrozen(frozen);
}

void QGraphicsWebView_setGeometry(QGraphicsWebView* self, QRectF* rect) {
	self->setGeometry(*rect);
}

void QGraphicsWebView_updateGeometry(QGraphicsWebView* self) {
	self->updateGeometry();
}

void QGraphicsWebView_paint(QGraphicsWebView* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget) {
	self->paint(param1, options, widget);
}

QVariant* QGraphicsWebView_itemChange(QGraphicsWebView* self, int change, QVariant* value) {
	return new QVariant(self->itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));
}

bool QGraphicsWebView_event(QGraphicsWebView* self, QEvent* param1) {
	return self->event(param1);
}

QSizeF* QGraphicsWebView_sizeHint(const QGraphicsWebView* self, int which, QSizeF* constraint) {
	return new QSizeF(self->sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

QVariant* QGraphicsWebView_inputMethodQuery(const QGraphicsWebView* self, int query) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

int QGraphicsWebView_renderHints(const QGraphicsWebView* self) {
	QPainter::RenderHints _ret = self->renderHints();
	return static_cast<int>(_ret);
}

void QGraphicsWebView_setRenderHints(QGraphicsWebView* self, int renderHints) {
	self->setRenderHints(static_cast<QPainter::RenderHints>(renderHints));
}

void QGraphicsWebView_setRenderHint(QGraphicsWebView* self, int param1) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(param1));
}

void QGraphicsWebView_stop(QGraphicsWebView* self) {
	self->stop();
}

void QGraphicsWebView_back(QGraphicsWebView* self) {
	self->back();
}

void QGraphicsWebView_forward(QGraphicsWebView* self) {
	self->forward();
}

void QGraphicsWebView_reload(QGraphicsWebView* self) {
	self->reload();
}

void QGraphicsWebView_loadStarted(QGraphicsWebView* self) {
	self->loadStarted();
}

void QGraphicsWebView_connect_loadStarted(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)()>(&QGraphicsWebView::loadStarted), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_loadFinished(QGraphicsWebView* self, bool param1) {
	self->loadFinished(param1);
}

void QGraphicsWebView_connect_loadFinished(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(bool)>(&QGraphicsWebView::loadFinished), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_loadProgress(QGraphicsWebView* self, int progress) {
	self->loadProgress(static_cast<int>(progress));
}

void QGraphicsWebView_connect_loadProgress(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int progress) {
			int sigval1 = progress;
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(int)>(&QGraphicsWebView::loadProgress), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_urlChanged(QGraphicsWebView* self, QUrl* param1) {
	self->urlChanged(*param1);
}

void QGraphicsWebView_connect_urlChanged(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QUrl&)>(&QGraphicsWebView::urlChanged), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_titleChanged(QGraphicsWebView* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->titleChanged(param1_QString);
}

void QGraphicsWebView_connect_titleChanged(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QString&)>(&QGraphicsWebView::titleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_iconChanged(QGraphicsWebView* self) {
	self->iconChanged();
}

void QGraphicsWebView_connect_iconChanged(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)()>(&QGraphicsWebView::iconChanged), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_statusBarMessage(QGraphicsWebView* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->statusBarMessage(message_QString);
}

void QGraphicsWebView_connect_statusBarMessage(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& message) {
			const QString message_ret = message;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray message_b = message_ret.toUtf8();
			struct miqt_string message_ms;
			message_ms.len = message_b.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_b.data(), message_ms.len);
			struct miqt_string sigval1 = message_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QString&)>(&QGraphicsWebView::statusBarMessage), self, local_caller{slot, callback, release});
}

void QGraphicsWebView_linkClicked(QGraphicsWebView* self, QUrl* param1) {
	self->linkClicked(*param1);
}

void QGraphicsWebView_connect_linkClicked(VirtualQGraphicsWebView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QUrl&)>(&QGraphicsWebView::linkClicked), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsWebView_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsWebView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWebView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsWebView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWebView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsWebView_load2(QGraphicsWebView* self, QNetworkRequest* request, int operation) {
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation));
}

void QGraphicsWebView_load3(QGraphicsWebView* self, QNetworkRequest* request, int operation, struct miqt_string body) {
	QByteArray body_QByteArray(body.data, body.len);
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation), body_QByteArray);
}

void QGraphicsWebView_setHtml2(QGraphicsWebView* self, struct miqt_string html, QUrl* baseUrl) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString, *baseUrl);
}

void QGraphicsWebView_setContent2(QGraphicsWebView* self, struct miqt_string data, struct miqt_string mimeType) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString);
}

void QGraphicsWebView_setContent3(QGraphicsWebView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString, *baseUrl);
}

void QGraphicsWebView_triggerPageAction2(QGraphicsWebView* self, int action, bool checked) {
	self->triggerPageAction(static_cast<QWebPage::WebAction>(action), checked);
}

bool QGraphicsWebView_findText2(QGraphicsWebView* self, struct miqt_string subString, int options) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString, static_cast<QWebPage::FindFlags>(options));
}

void QGraphicsWebView_setRenderHint2(QGraphicsWebView* self, int param1, bool enabled) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(param1), enabled);
}

QMetaObject* QGraphicsWebView_virtualbase_metaObject(const VirtualQGraphicsWebView* self) {

	return (QMetaObject*) self->QGraphicsWebView::metaObject();
}

void* QGraphicsWebView_virtualbase_metacast(VirtualQGraphicsWebView* self, const char* param1) {

	return self->QGraphicsWebView::qt_metacast(param1);
}

int QGraphicsWebView_virtualbase_metacall(VirtualQGraphicsWebView* self, int param1, int param2, void** param3) {

	return self->QGraphicsWebView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsWebView_virtualbase_setGeometry(VirtualQGraphicsWebView* self, QRectF* rect) {

	self->QGraphicsWebView::setGeometry(*rect);
}

void QGraphicsWebView_virtualbase_updateGeometry(VirtualQGraphicsWebView* self) {

	self->QGraphicsWebView::updateGeometry();
}

void QGraphicsWebView_virtualbase_paint(VirtualQGraphicsWebView* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget) {

	self->QGraphicsWebView::paint(param1, options, widget);
}

QVariant* QGraphicsWebView_virtualbase_itemChange(VirtualQGraphicsWebView* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsWebView::itemChange(static_cast<VirtualQGraphicsWebView::GraphicsItemChange>(change), *value));
}

bool QGraphicsWebView_virtualbase_event(VirtualQGraphicsWebView* self, QEvent* param1) {

	return self->QGraphicsWebView::event(param1);
}

QSizeF* QGraphicsWebView_virtualbase_sizeHint(const VirtualQGraphicsWebView* self, int which, QSizeF* constraint) {

	return new QSizeF(self->QGraphicsWebView::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

QVariant* QGraphicsWebView_virtualbase_inputMethodQuery(const VirtualQGraphicsWebView* self, int query) {

	return new QVariant(self->QGraphicsWebView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QGraphicsWebView_virtualbase_mousePressEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1) {

	self->QGraphicsWebView::mousePressEvent(param1);
}

void QGraphicsWebView_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1) {

	self->QGraphicsWebView::mouseDoubleClickEvent(param1);
}

void QGraphicsWebView_virtualbase_mouseReleaseEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1) {

	self->QGraphicsWebView::mouseReleaseEvent(param1);
}

void QGraphicsWebView_virtualbase_mouseMoveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMouseEvent* param1) {

	self->QGraphicsWebView::mouseMoveEvent(param1);
}

void QGraphicsWebView_virtualbase_hoverMoveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneHoverEvent* param1) {

	self->QGraphicsWebView::hoverMoveEvent(param1);
}

void QGraphicsWebView_virtualbase_hoverLeaveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneHoverEvent* param1) {

	self->QGraphicsWebView::hoverLeaveEvent(param1);
}

void QGraphicsWebView_virtualbase_wheelEvent(VirtualQGraphicsWebView* self, QGraphicsSceneWheelEvent* param1) {

	self->QGraphicsWebView::wheelEvent(param1);
}

void QGraphicsWebView_virtualbase_keyPressEvent(VirtualQGraphicsWebView* self, QKeyEvent* param1) {

	self->QGraphicsWebView::keyPressEvent(param1);
}

void QGraphicsWebView_virtualbase_keyReleaseEvent(VirtualQGraphicsWebView* self, QKeyEvent* param1) {

	self->QGraphicsWebView::keyReleaseEvent(param1);
}

void QGraphicsWebView_virtualbase_contextMenuEvent(VirtualQGraphicsWebView* self, QGraphicsSceneContextMenuEvent* param1) {

	self->QGraphicsWebView::contextMenuEvent(param1);
}

void QGraphicsWebView_virtualbase_dragEnterEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1) {

	self->QGraphicsWebView::dragEnterEvent(param1);
}

void QGraphicsWebView_virtualbase_dragLeaveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1) {

	self->QGraphicsWebView::dragLeaveEvent(param1);
}

void QGraphicsWebView_virtualbase_dragMoveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1) {

	self->QGraphicsWebView::dragMoveEvent(param1);
}

void QGraphicsWebView_virtualbase_dropEvent(VirtualQGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1) {

	self->QGraphicsWebView::dropEvent(param1);
}

void QGraphicsWebView_virtualbase_focusInEvent(VirtualQGraphicsWebView* self, QFocusEvent* param1) {

	self->QGraphicsWebView::focusInEvent(param1);
}

void QGraphicsWebView_virtualbase_focusOutEvent(VirtualQGraphicsWebView* self, QFocusEvent* param1) {

	self->QGraphicsWebView::focusOutEvent(param1);
}

void QGraphicsWebView_virtualbase_inputMethodEvent(VirtualQGraphicsWebView* self, QInputMethodEvent* param1) {

	self->QGraphicsWebView::inputMethodEvent(param1);
}

bool QGraphicsWebView_virtualbase_focusNextPrevChild(VirtualQGraphicsWebView* self, bool next) {

	return self->QGraphicsWebView::focusNextPrevChild(next);
}

bool QGraphicsWebView_virtualbase_sceneEvent(VirtualQGraphicsWebView* self, QEvent* param1) {

	return self->QGraphicsWebView::sceneEvent(param1);
}

void QGraphicsWebView_virtualbase_getContentsMargins(const VirtualQGraphicsWebView* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsWebView::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

int QGraphicsWebView_virtualbase_type(const VirtualQGraphicsWebView* self) {

	return self->QGraphicsWebView::type();
}

void QGraphicsWebView_virtualbase_paintWindowFrame(VirtualQGraphicsWebView* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsWebView::paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsWebView_virtualbase_boundingRect(const VirtualQGraphicsWebView* self) {

	return new QRectF(self->QGraphicsWebView::boundingRect());
}

QPainterPath* QGraphicsWebView_virtualbase_shape(const VirtualQGraphicsWebView* self) {

	return new QPainterPath(self->QGraphicsWebView::shape());
}

void QGraphicsWebView_virtualbase_initStyleOption(const VirtualQGraphicsWebView* self, QStyleOption* option) {

	self->QGraphicsWebView::initStyleOption(option);
}

QVariant* QGraphicsWebView_virtualbase_propertyChange(VirtualQGraphicsWebView* self, struct miqt_string propertyName, QVariant* value) {
	QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);

	return new QVariant(self->QGraphicsWebView::propertyChange(propertyName_QString, *value));
}

bool QGraphicsWebView_virtualbase_windowFrameEvent(VirtualQGraphicsWebView* self, QEvent* e) {

	return self->QGraphicsWebView::windowFrameEvent(e);
}

int QGraphicsWebView_virtualbase_windowFrameSectionAt(const VirtualQGraphicsWebView* self, QPointF* pos) {

	Qt::WindowFrameSection _ret = self->QGraphicsWebView::windowFrameSectionAt(*pos);
	return static_cast<int>(_ret);
}

void QGraphicsWebView_virtualbase_changeEvent(VirtualQGraphicsWebView* self, QEvent* event) {

	self->QGraphicsWebView::changeEvent(event);
}

void QGraphicsWebView_virtualbase_closeEvent(VirtualQGraphicsWebView* self, QCloseEvent* event) {

	self->QGraphicsWebView::closeEvent(event);
}

void QGraphicsWebView_virtualbase_hideEvent(VirtualQGraphicsWebView* self, QHideEvent* event) {

	self->QGraphicsWebView::hideEvent(event);
}

void QGraphicsWebView_virtualbase_moveEvent(VirtualQGraphicsWebView* self, QGraphicsSceneMoveEvent* event) {

	self->QGraphicsWebView::moveEvent(event);
}

void QGraphicsWebView_virtualbase_polishEvent(VirtualQGraphicsWebView* self) {

	self->QGraphicsWebView::polishEvent();
}

void QGraphicsWebView_virtualbase_resizeEvent(VirtualQGraphicsWebView* self, QGraphicsSceneResizeEvent* event) {

	self->QGraphicsWebView::resizeEvent(event);
}

void QGraphicsWebView_virtualbase_showEvent(VirtualQGraphicsWebView* self, QShowEvent* event) {

	self->QGraphicsWebView::showEvent(event);
}

void QGraphicsWebView_virtualbase_grabMouseEvent(VirtualQGraphicsWebView* self, QEvent* event) {

	self->QGraphicsWebView::grabMouseEvent(event);
}

void QGraphicsWebView_virtualbase_ungrabMouseEvent(VirtualQGraphicsWebView* self, QEvent* event) {

	self->QGraphicsWebView::ungrabMouseEvent(event);
}

void QGraphicsWebView_virtualbase_grabKeyboardEvent(VirtualQGraphicsWebView* self, QEvent* event) {

	self->QGraphicsWebView::grabKeyboardEvent(event);
}

void QGraphicsWebView_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsWebView* self, QEvent* event) {

	self->QGraphicsWebView::ungrabKeyboardEvent(event);
}

bool QGraphicsWebView_virtualbase_eventFilter(VirtualQGraphicsWebView* self, QObject* watched, QEvent* event) {

	return self->QGraphicsWebView::eventFilter(watched, event);
}

void QGraphicsWebView_virtualbase_timerEvent(VirtualQGraphicsWebView* self, QTimerEvent* event) {

	self->QGraphicsWebView::timerEvent(event);
}

void QGraphicsWebView_virtualbase_childEvent(VirtualQGraphicsWebView* self, QChildEvent* event) {

	self->QGraphicsWebView::childEvent(event);
}

void QGraphicsWebView_virtualbase_customEvent(VirtualQGraphicsWebView* self, QEvent* event) {

	self->QGraphicsWebView::customEvent(event);
}

void QGraphicsWebView_virtualbase_connectNotify(VirtualQGraphicsWebView* self, QMetaMethod* signal) {

	self->QGraphicsWebView::connectNotify(*signal);
}

void QGraphicsWebView_virtualbase_disconnectNotify(VirtualQGraphicsWebView* self, QMetaMethod* signal) {

	self->QGraphicsWebView::disconnectNotify(*signal);
}

void QGraphicsWebView_virtualbase_advance(VirtualQGraphicsWebView* self, int phase) {

	self->QGraphicsWebView::advance(static_cast<int>(phase));
}

bool QGraphicsWebView_virtualbase_contains(const VirtualQGraphicsWebView* self, QPointF* point) {

	return self->QGraphicsWebView::contains(*point);
}

bool QGraphicsWebView_virtualbase_collidesWithItem(const VirtualQGraphicsWebView* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsWebView::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsWebView_virtualbase_collidesWithPath(const VirtualQGraphicsWebView* self, QPainterPath* path, int mode) {

	return self->QGraphicsWebView::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsWebView_virtualbase_isObscuredBy(const VirtualQGraphicsWebView* self, QGraphicsItem* item) {

	return self->QGraphicsWebView::isObscuredBy(item);
}

QPainterPath* QGraphicsWebView_virtualbase_opaqueArea(const VirtualQGraphicsWebView* self) {

	return new QPainterPath(self->QGraphicsWebView::opaqueArea());
}

bool QGraphicsWebView_virtualbase_sceneEventFilter(VirtualQGraphicsWebView* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsWebView::sceneEventFilter(watched, event);
}

void QGraphicsWebView_virtualbase_hoverEnterEvent(VirtualQGraphicsWebView* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsWebView::hoverEnterEvent(event);
}

bool QGraphicsWebView_virtualbase_supportsExtension(const VirtualQGraphicsWebView* self, int extension) {

	return self->QGraphicsWebView::supportsExtension(static_cast<VirtualQGraphicsWebView::Extension>(extension));
}

void QGraphicsWebView_virtualbase_setExtension(VirtualQGraphicsWebView* self, int extension, QVariant* variant) {

	self->QGraphicsWebView::setExtension(static_cast<VirtualQGraphicsWebView::Extension>(extension), *variant);
}

QVariant* QGraphicsWebView_virtualbase_extension(const VirtualQGraphicsWebView* self, QVariant* variant) {

	return new QVariant(self->QGraphicsWebView::extension(*variant));
}

const QMetaObject* QGraphicsWebView_staticMetaObject() { return &QGraphicsWebView::staticMetaObject; }

const QGraphicsWebView_VTable* QGraphicsWebView_vtbl(const VirtualQGraphicsWebView* self) { return self->vtbl; }
void* QGraphicsWebView_vdata(const VirtualQGraphicsWebView* self) { return self->vdata; }
void QGraphicsWebView_setVdata(VirtualQGraphicsWebView* self, void* vdata) { self->vdata = vdata; }

void QGraphicsWebView_protectedbase_updateMicroFocus(VirtualQGraphicsWebView* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsWebView_protectedbase_sender(const VirtualQGraphicsWebView* self) {
	return self->sender();
}

int QGraphicsWebView_protectedbase_senderSignalIndex(const VirtualQGraphicsWebView* self) {
	return self->senderSignalIndex();
}

int QGraphicsWebView_protectedbase_receivers(const VirtualQGraphicsWebView* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsWebView_protectedbase_isSignalConnected(const VirtualQGraphicsWebView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsWebView_protectedbase_addToIndex(VirtualQGraphicsWebView* self) {
	self->addToIndex();
}

void QGraphicsWebView_protectedbase_removeFromIndex(VirtualQGraphicsWebView* self) {
	self->removeFromIndex();
}

void QGraphicsWebView_protectedbase_prepareGeometryChange(VirtualQGraphicsWebView* self) {
	self->prepareGeometryChange();
}

void QGraphicsWebView_protectedbase_setGraphicsItem(VirtualQGraphicsWebView* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsWebView_protectedbase_setOwnedByLayout(VirtualQGraphicsWebView* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsWebView_delete(QGraphicsWebView* self) {
	delete self;
}

