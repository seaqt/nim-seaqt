#include <QAction>
#include <QChildEvent>
#include <QCloseEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QGraphicsObject>
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
#include <QKeySequence>
#include <QList>
#include <QMarginsF>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPalette>
#include <QPointF>
#include <QRectF>
#include <QShowEvent>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStyleOption>
#include <QStyleOptionGraphicsItem>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qgraphicswidget.h>
#include "gen_qgraphicswidget.h"
class VirtualQGraphicsWidget final : public QGraphicsWidget {
	const QGraphicsWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsWidget_VTable* QGraphicsWidget_vtbl(const VirtualQGraphicsWidget* self);
	friend void* QGraphicsWidget_vdata(const VirtualQGraphicsWidget* self);
	friend void QGraphicsWidget_setVdata(VirtualQGraphicsWidget* self, void* vdata);

	VirtualQGraphicsWidget(const QGraphicsWidget_VTable* vtbl, void* vdata): QGraphicsWidget(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsWidget(const QGraphicsWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsWidget(const QGraphicsWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent, Qt::WindowFlags wFlags): QGraphicsWidget(parent, wFlags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsWidget_virtualbase_metaObject(const VirtualQGraphicsWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsWidget_virtualbase_metacast(VirtualQGraphicsWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsWidget_virtualbase_metacall(VirtualQGraphicsWidget* self, int param1, int param2, void** param3);

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsWidget::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_setGeometry(VirtualQGraphicsWidget* self, QRectF* rect);

	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsWidget::getContentsMargins(left, top, right, bottom);
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

	friend void QGraphicsWidget_virtualbase_getContentsMargins(const VirtualQGraphicsWidget* self, double* left, double* top, double* right, double* bottom);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsWidget::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsWidget_virtualbase_type(const VirtualQGraphicsWidget* self);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsWidget::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsWidget_virtualbase_paint(VirtualQGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual void paintWindowFrame(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paintWindowFrame == 0) {
			QGraphicsWidget::paintWindowFrame(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paintWindowFrame(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsWidget_virtualbase_paintWindowFrame(VirtualQGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsWidget::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsWidget_virtualbase_boundingRect(const VirtualQGraphicsWidget* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsWidget::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsWidget_virtualbase_shape(const VirtualQGraphicsWidget* self);

	virtual void initStyleOption(QStyleOption* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGraphicsWidget::initStyleOption(option);
			return;
		}

		QStyleOption* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_initStyleOption(const VirtualQGraphicsWidget* self, QStyleOption* option);

	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsWidget::sizeHint(which, constraint);
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

	friend QSizeF* QGraphicsWidget_virtualbase_sizeHint(const VirtualQGraphicsWidget* self, int which, QSizeF* constraint);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsWidget::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsWidget_virtualbase_updateGeometry(VirtualQGraphicsWidget* self);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsWidget::itemChange(change, value);
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

	friend QVariant* QGraphicsWidget_virtualbase_itemChange(VirtualQGraphicsWidget* self, int change, QVariant* value);

	virtual QVariant propertyChange(const QString& propertyName, const QVariant& value) override {
		if (vtbl->propertyChange == 0) {
			return QGraphicsWidget::propertyChange(propertyName, value);
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

	friend QVariant* QGraphicsWidget_virtualbase_propertyChange(VirtualQGraphicsWidget* self, struct miqt_string propertyName, QVariant* value);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsWidget::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_sceneEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual bool windowFrameEvent(QEvent* e) override {
		if (vtbl->windowFrameEvent == 0) {
			return QGraphicsWidget::windowFrameEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->windowFrameEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_windowFrameEvent(VirtualQGraphicsWidget* self, QEvent* e);

	virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF& pos) const override {
		if (vtbl->windowFrameSectionAt == 0) {
			return QGraphicsWidget::windowFrameSectionAt(pos);
		}

		const QPointF& pos_ret = pos;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&pos_ret);

		int callback_return_value = vtbl->windowFrameSectionAt(this, sigval1);

		return static_cast<Qt::WindowFrameSection>(callback_return_value);
	}

	friend int QGraphicsWidget_virtualbase_windowFrameSectionAt(const VirtualQGraphicsWidget* self, QPointF* pos);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_event(VirtualQGraphicsWidget* self, QEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsWidget::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_changeEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_closeEvent(VirtualQGraphicsWidget* self, QCloseEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_focusInEvent(VirtualQGraphicsWidget* self, QFocusEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_focusNextPrevChild(VirtualQGraphicsWidget* self, bool next);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_focusOutEvent(VirtualQGraphicsWidget* self, QFocusEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_hideEvent(VirtualQGraphicsWidget* self, QHideEvent* event);

	virtual void moveEvent(QGraphicsSceneMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsWidget::moveEvent(event);
			return;
		}

		QGraphicsSceneMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_moveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMoveEvent* event);

	virtual void polishEvent() override {
		if (vtbl->polishEvent == 0) {
			QGraphicsWidget::polishEvent();
			return;
		}


		vtbl->polishEvent(this);

	}

	friend void QGraphicsWidget_virtualbase_polishEvent(VirtualQGraphicsWidget* self);

	virtual void resizeEvent(QGraphicsSceneResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsWidget::resizeEvent(event);
			return;
		}

		QGraphicsSceneResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_resizeEvent(VirtualQGraphicsWidget* self, QGraphicsSceneResizeEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_showEvent(VirtualQGraphicsWidget* self, QShowEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsWidget::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_hoverMoveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsWidget::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_hoverLeaveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneHoverEvent* event);

	virtual void grabMouseEvent(QEvent* event) override {
		if (vtbl->grabMouseEvent == 0) {
			QGraphicsWidget::grabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabMouseEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_grabMouseEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual void ungrabMouseEvent(QEvent* event) override {
		if (vtbl->ungrabMouseEvent == 0) {
			QGraphicsWidget::ungrabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabMouseEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_ungrabMouseEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual void grabKeyboardEvent(QEvent* event) override {
		if (vtbl->grabKeyboardEvent == 0) {
			QGraphicsWidget::grabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabKeyboardEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_grabKeyboardEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual void ungrabKeyboardEvent(QEvent* event) override {
		if (vtbl->ungrabKeyboardEvent == 0) {
			QGraphicsWidget::ungrabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabKeyboardEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_eventFilter(VirtualQGraphicsWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_timerEvent(VirtualQGraphicsWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_childEvent(VirtualQGraphicsWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_customEvent(VirtualQGraphicsWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_connectNotify(VirtualQGraphicsWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_disconnectNotify(VirtualQGraphicsWidget* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsWidget::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_advance(VirtualQGraphicsWidget* self, int phase);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsWidget::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_contains(const VirtualQGraphicsWidget* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsWidget::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_collidesWithItem(const VirtualQGraphicsWidget* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsWidget::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_collidesWithPath(const VirtualQGraphicsWidget* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsWidget::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_isObscuredBy(const VirtualQGraphicsWidget* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsWidget::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsWidget_virtualbase_opaqueArea(const VirtualQGraphicsWidget* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsWidget::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_sceneEventFilter(VirtualQGraphicsWidget* self, QGraphicsItem* watched, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsWidget::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_contextMenuEvent(VirtualQGraphicsWidget* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsWidget::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_dragEnterEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsWidget::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_dragLeaveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsWidget::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_dragMoveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsWidget::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_dropEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsWidget::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_hoverEnterEvent(VirtualQGraphicsWidget* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_keyPressEvent(VirtualQGraphicsWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_keyReleaseEvent(VirtualQGraphicsWidget* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsWidget::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_mousePressEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsWidget::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_mouseMoveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsWidget::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_mouseReleaseEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsWidget::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsWidget::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_wheelEvent(VirtualQGraphicsWidget* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsWidget_virtualbase_inputMethodEvent(VirtualQGraphicsWidget* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsWidget_virtualbase_inputMethodQuery(const VirtualQGraphicsWidget* self, int query);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsWidget::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsWidget_virtualbase_supportsExtension(const VirtualQGraphicsWidget* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsWidget::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsWidget_virtualbase_setExtension(VirtualQGraphicsWidget* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsWidget::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsWidget_virtualbase_extension(const VirtualQGraphicsWidget* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsWidget_protectedbase_updateMicroFocus(VirtualQGraphicsWidget* self);
	friend QObject* QGraphicsWidget_protectedbase_sender(const VirtualQGraphicsWidget* self);
	friend int QGraphicsWidget_protectedbase_senderSignalIndex(const VirtualQGraphicsWidget* self);
	friend int QGraphicsWidget_protectedbase_receivers(const VirtualQGraphicsWidget* self, const char* signal);
	friend bool QGraphicsWidget_protectedbase_isSignalConnected(const VirtualQGraphicsWidget* self, QMetaMethod* signal);
	friend void QGraphicsWidget_protectedbase_addToIndex(VirtualQGraphicsWidget* self);
	friend void QGraphicsWidget_protectedbase_removeFromIndex(VirtualQGraphicsWidget* self);
	friend void QGraphicsWidget_protectedbase_prepareGeometryChange(VirtualQGraphicsWidget* self);
	friend void QGraphicsWidget_protectedbase_setGraphicsItem(VirtualQGraphicsWidget* self, QGraphicsItem* item);
	friend void QGraphicsWidget_protectedbase_setOwnedByLayout(VirtualQGraphicsWidget* self, bool ownedByLayout);
};

VirtualQGraphicsWidget* QGraphicsWidget_new(const QGraphicsWidget_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsWidget(vtbl, vdata);
}

VirtualQGraphicsWidget* QGraphicsWidget_new2(const QGraphicsWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsWidget(vtbl, vdata, parent);
}

VirtualQGraphicsWidget* QGraphicsWidget_new3(const QGraphicsWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent, int wFlags) {
	return new VirtualQGraphicsWidget(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(wFlags));
}

void QGraphicsWidget_virtbase(QGraphicsWidget* src, QGraphicsObject** outptr_QGraphicsObject, QGraphicsLayoutItem** outptr_QGraphicsLayoutItem) {
	*outptr_QGraphicsObject = static_cast<QGraphicsObject*>(src);
	*outptr_QGraphicsLayoutItem = static_cast<QGraphicsLayoutItem*>(src);
}

QMetaObject* QGraphicsWidget_metaObject(const QGraphicsWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsWidget_metacast(QGraphicsWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsWidget_metacall(QGraphicsWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsWidget_tr(const char* s) {
	QString _ret = QGraphicsWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWidget_trUtf8(const char* s) {
	QString _ret = QGraphicsWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QGraphicsLayout* QGraphicsWidget_layout(const QGraphicsWidget* self) {
	return self->layout();
}

void QGraphicsWidget_setLayout(QGraphicsWidget* self, QGraphicsLayout* layout) {
	self->setLayout(layout);
}

void QGraphicsWidget_adjustSize(QGraphicsWidget* self) {
	self->adjustSize();
}

int QGraphicsWidget_layoutDirection(const QGraphicsWidget* self) {
	Qt::LayoutDirection _ret = self->layoutDirection();
	return static_cast<int>(_ret);
}

void QGraphicsWidget_setLayoutDirection(QGraphicsWidget* self, int direction) {
	self->setLayoutDirection(static_cast<Qt::LayoutDirection>(direction));
}

void QGraphicsWidget_unsetLayoutDirection(QGraphicsWidget* self) {
	self->unsetLayoutDirection();
}

QStyle* QGraphicsWidget_style(const QGraphicsWidget* self) {
	return self->style();
}

void QGraphicsWidget_setStyle(QGraphicsWidget* self, QStyle* style) {
	self->setStyle(style);
}

QFont* QGraphicsWidget_font(const QGraphicsWidget* self) {
	return new QFont(self->font());
}

void QGraphicsWidget_setFont(QGraphicsWidget* self, QFont* font) {
	self->setFont(*font);
}

QPalette* QGraphicsWidget_palette(const QGraphicsWidget* self) {
	return new QPalette(self->palette());
}

void QGraphicsWidget_setPalette(QGraphicsWidget* self, QPalette* palette) {
	self->setPalette(*palette);
}

bool QGraphicsWidget_autoFillBackground(const QGraphicsWidget* self) {
	return self->autoFillBackground();
}

void QGraphicsWidget_setAutoFillBackground(QGraphicsWidget* self, bool enabled) {
	self->setAutoFillBackground(enabled);
}

void QGraphicsWidget_resize(QGraphicsWidget* self, QSizeF* size) {
	self->resize(*size);
}

void QGraphicsWidget_resize2(QGraphicsWidget* self, double w, double h) {
	self->resize(static_cast<qreal>(w), static_cast<qreal>(h));
}

QSizeF* QGraphicsWidget_size(const QGraphicsWidget* self) {
	return new QSizeF(self->size());
}

void QGraphicsWidget_setGeometry(QGraphicsWidget* self, QRectF* rect) {
	self->setGeometry(*rect);
}

void QGraphicsWidget_setGeometry2(QGraphicsWidget* self, double x, double y, double w, double h) {
	self->setGeometry(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QGraphicsWidget_rect(const QGraphicsWidget* self) {
	return new QRectF(self->rect());
}

void QGraphicsWidget_setContentsMargins(QGraphicsWidget* self, double left, double top, double right, double bottom) {
	self->setContentsMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom));
}

void QGraphicsWidget_setContentsMarginsWithMargins(QGraphicsWidget* self, QMarginsF* margins) {
	self->setContentsMargins(*margins);
}

void QGraphicsWidget_getContentsMargins(const QGraphicsWidget* self, double* left, double* top, double* right, double* bottom) {
	self->getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsWidget_setWindowFrameMargins(QGraphicsWidget* self, double left, double top, double right, double bottom) {
	self->setWindowFrameMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom));
}

void QGraphicsWidget_setWindowFrameMarginsWithMargins(QGraphicsWidget* self, QMarginsF* margins) {
	self->setWindowFrameMargins(*margins);
}

void QGraphicsWidget_getWindowFrameMargins(const QGraphicsWidget* self, double* left, double* top, double* right, double* bottom) {
	self->getWindowFrameMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsWidget_unsetWindowFrameMargins(QGraphicsWidget* self) {
	self->unsetWindowFrameMargins();
}

QRectF* QGraphicsWidget_windowFrameGeometry(const QGraphicsWidget* self) {
	return new QRectF(self->windowFrameGeometry());
}

QRectF* QGraphicsWidget_windowFrameRect(const QGraphicsWidget* self) {
	return new QRectF(self->windowFrameRect());
}

int QGraphicsWidget_windowFlags(const QGraphicsWidget* self) {
	Qt::WindowFlags _ret = self->windowFlags();
	return static_cast<int>(_ret);
}

int QGraphicsWidget_windowType(const QGraphicsWidget* self) {
	Qt::WindowType _ret = self->windowType();
	return static_cast<int>(_ret);
}

void QGraphicsWidget_setWindowFlags(QGraphicsWidget* self, int wFlags) {
	self->setWindowFlags(static_cast<Qt::WindowFlags>(wFlags));
}

bool QGraphicsWidget_isActiveWindow(const QGraphicsWidget* self) {
	return self->isActiveWindow();
}

void QGraphicsWidget_setWindowTitle(QGraphicsWidget* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setWindowTitle(title_QString);
}

struct miqt_string QGraphicsWidget_windowTitle(const QGraphicsWidget* self) {
	QString _ret = self->windowTitle();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGraphicsWidget_focusPolicy(const QGraphicsWidget* self) {
	Qt::FocusPolicy _ret = self->focusPolicy();
	return static_cast<int>(_ret);
}

void QGraphicsWidget_setFocusPolicy(QGraphicsWidget* self, int policy) {
	self->setFocusPolicy(static_cast<Qt::FocusPolicy>(policy));
}

void QGraphicsWidget_setTabOrder(QGraphicsWidget* first, QGraphicsWidget* second) {
	QGraphicsWidget::setTabOrder(first, second);
}

QGraphicsWidget* QGraphicsWidget_focusWidget(const QGraphicsWidget* self) {
	return self->focusWidget();
}

int QGraphicsWidget_grabShortcut(QGraphicsWidget* self, QKeySequence* sequence) {
	return self->grabShortcut(*sequence);
}

void QGraphicsWidget_releaseShortcut(QGraphicsWidget* self, int id) {
	self->releaseShortcut(static_cast<int>(id));
}

void QGraphicsWidget_setShortcutEnabled(QGraphicsWidget* self, int id) {
	self->setShortcutEnabled(static_cast<int>(id));
}

void QGraphicsWidget_setShortcutAutoRepeat(QGraphicsWidget* self, int id) {
	self->setShortcutAutoRepeat(static_cast<int>(id));
}

void QGraphicsWidget_addAction(QGraphicsWidget* self, QAction* action) {
	self->addAction(action);
}

void QGraphicsWidget_addActions(QGraphicsWidget* self, struct miqt_array /* of QAction* */  actions) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	self->addActions(actions_QList);
}

void QGraphicsWidget_insertActions(QGraphicsWidget* self, QAction* before, struct miqt_array /* of QAction* */  actions) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	self->insertActions(before, actions_QList);
}

void QGraphicsWidget_insertAction(QGraphicsWidget* self, QAction* before, QAction* action) {
	self->insertAction(before, action);
}

void QGraphicsWidget_removeAction(QGraphicsWidget* self, QAction* action) {
	self->removeAction(action);
}

struct miqt_array /* of QAction* */  QGraphicsWidget_actions(const QGraphicsWidget* self) {
	QList<QAction *> _ret = self->actions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAction** _arr = static_cast<QAction**>(malloc(sizeof(QAction*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsWidget_setAttribute(QGraphicsWidget* self, int attribute) {
	self->setAttribute(static_cast<Qt::WidgetAttribute>(attribute));
}

bool QGraphicsWidget_testAttribute(const QGraphicsWidget* self, int attribute) {
	return self->testAttribute(static_cast<Qt::WidgetAttribute>(attribute));
}

int QGraphicsWidget_type(const QGraphicsWidget* self) {
	return self->type();
}

void QGraphicsWidget_paint(QGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

void QGraphicsWidget_paintWindowFrame(QGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsWidget_boundingRect(const QGraphicsWidget* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsWidget_shape(const QGraphicsWidget* self) {
	return new QPainterPath(self->shape());
}

void QGraphicsWidget_geometryChanged(QGraphicsWidget* self) {
	self->geometryChanged();
}

void QGraphicsWidget_connect_geometryChanged(VirtualQGraphicsWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsWidget::connect(self, static_cast<void (QGraphicsWidget::*)()>(&QGraphicsWidget::geometryChanged), self, local_caller{slot, callback, release});
}

void QGraphicsWidget_layoutChanged(QGraphicsWidget* self) {
	self->layoutChanged();
}

void QGraphicsWidget_connect_layoutChanged(VirtualQGraphicsWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsWidget::connect(self, static_cast<void (QGraphicsWidget::*)()>(&QGraphicsWidget::layoutChanged), self, local_caller{slot, callback, release});
}

bool QGraphicsWidget_close(QGraphicsWidget* self) {
	return self->close();
}

struct miqt_string QGraphicsWidget_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGraphicsWidget_grabShortcut2(QGraphicsWidget* self, QKeySequence* sequence, int context) {
	return self->grabShortcut(*sequence, static_cast<Qt::ShortcutContext>(context));
}

void QGraphicsWidget_setShortcutEnabled2(QGraphicsWidget* self, int id, bool enabled) {
	self->setShortcutEnabled(static_cast<int>(id), enabled);
}

void QGraphicsWidget_setShortcutAutoRepeat2(QGraphicsWidget* self, int id, bool enabled) {
	self->setShortcutAutoRepeat(static_cast<int>(id), enabled);
}

void QGraphicsWidget_setAttribute2(QGraphicsWidget* self, int attribute, bool on) {
	self->setAttribute(static_cast<Qt::WidgetAttribute>(attribute), on);
}

QMetaObject* QGraphicsWidget_virtualbase_metaObject(const VirtualQGraphicsWidget* self) {

	return (QMetaObject*) self->QGraphicsWidget::metaObject();
}

void* QGraphicsWidget_virtualbase_metacast(VirtualQGraphicsWidget* self, const char* param1) {

	return self->QGraphicsWidget::qt_metacast(param1);
}

int QGraphicsWidget_virtualbase_metacall(VirtualQGraphicsWidget* self, int param1, int param2, void** param3) {

	return self->QGraphicsWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsWidget_virtualbase_setGeometry(VirtualQGraphicsWidget* self, QRectF* rect) {

	self->QGraphicsWidget::setGeometry(*rect);
}

void QGraphicsWidget_virtualbase_getContentsMargins(const VirtualQGraphicsWidget* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsWidget::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

int QGraphicsWidget_virtualbase_type(const VirtualQGraphicsWidget* self) {

	return self->QGraphicsWidget::type();
}

void QGraphicsWidget_virtualbase_paint(VirtualQGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsWidget::paint(painter, option, widget);
}

void QGraphicsWidget_virtualbase_paintWindowFrame(VirtualQGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsWidget::paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsWidget_virtualbase_boundingRect(const VirtualQGraphicsWidget* self) {

	return new QRectF(self->QGraphicsWidget::boundingRect());
}

QPainterPath* QGraphicsWidget_virtualbase_shape(const VirtualQGraphicsWidget* self) {

	return new QPainterPath(self->QGraphicsWidget::shape());
}

void QGraphicsWidget_virtualbase_initStyleOption(const VirtualQGraphicsWidget* self, QStyleOption* option) {

	self->QGraphicsWidget::initStyleOption(option);
}

QSizeF* QGraphicsWidget_virtualbase_sizeHint(const VirtualQGraphicsWidget* self, int which, QSizeF* constraint) {

	return new QSizeF(self->QGraphicsWidget::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsWidget_virtualbase_updateGeometry(VirtualQGraphicsWidget* self) {

	self->QGraphicsWidget::updateGeometry();
}

QVariant* QGraphicsWidget_virtualbase_itemChange(VirtualQGraphicsWidget* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsWidget::itemChange(static_cast<VirtualQGraphicsWidget::GraphicsItemChange>(change), *value));
}

QVariant* QGraphicsWidget_virtualbase_propertyChange(VirtualQGraphicsWidget* self, struct miqt_string propertyName, QVariant* value) {
	QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);

	return new QVariant(self->QGraphicsWidget::propertyChange(propertyName_QString, *value));
}

bool QGraphicsWidget_virtualbase_sceneEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	return self->QGraphicsWidget::sceneEvent(event);
}

bool QGraphicsWidget_virtualbase_windowFrameEvent(VirtualQGraphicsWidget* self, QEvent* e) {

	return self->QGraphicsWidget::windowFrameEvent(e);
}

int QGraphicsWidget_virtualbase_windowFrameSectionAt(const VirtualQGraphicsWidget* self, QPointF* pos) {

	Qt::WindowFrameSection _ret = self->QGraphicsWidget::windowFrameSectionAt(*pos);
	return static_cast<int>(_ret);
}

bool QGraphicsWidget_virtualbase_event(VirtualQGraphicsWidget* self, QEvent* event) {

	return self->QGraphicsWidget::event(event);
}

void QGraphicsWidget_virtualbase_changeEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	self->QGraphicsWidget::changeEvent(event);
}

void QGraphicsWidget_virtualbase_closeEvent(VirtualQGraphicsWidget* self, QCloseEvent* event) {

	self->QGraphicsWidget::closeEvent(event);
}

void QGraphicsWidget_virtualbase_focusInEvent(VirtualQGraphicsWidget* self, QFocusEvent* event) {

	self->QGraphicsWidget::focusInEvent(event);
}

bool QGraphicsWidget_virtualbase_focusNextPrevChild(VirtualQGraphicsWidget* self, bool next) {

	return self->QGraphicsWidget::focusNextPrevChild(next);
}

void QGraphicsWidget_virtualbase_focusOutEvent(VirtualQGraphicsWidget* self, QFocusEvent* event) {

	self->QGraphicsWidget::focusOutEvent(event);
}

void QGraphicsWidget_virtualbase_hideEvent(VirtualQGraphicsWidget* self, QHideEvent* event) {

	self->QGraphicsWidget::hideEvent(event);
}

void QGraphicsWidget_virtualbase_moveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMoveEvent* event) {

	self->QGraphicsWidget::moveEvent(event);
}

void QGraphicsWidget_virtualbase_polishEvent(VirtualQGraphicsWidget* self) {

	self->QGraphicsWidget::polishEvent();
}

void QGraphicsWidget_virtualbase_resizeEvent(VirtualQGraphicsWidget* self, QGraphicsSceneResizeEvent* event) {

	self->QGraphicsWidget::resizeEvent(event);
}

void QGraphicsWidget_virtualbase_showEvent(VirtualQGraphicsWidget* self, QShowEvent* event) {

	self->QGraphicsWidget::showEvent(event);
}

void QGraphicsWidget_virtualbase_hoverMoveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsWidget::hoverMoveEvent(event);
}

void QGraphicsWidget_virtualbase_hoverLeaveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsWidget::hoverLeaveEvent(event);
}

void QGraphicsWidget_virtualbase_grabMouseEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	self->QGraphicsWidget::grabMouseEvent(event);
}

void QGraphicsWidget_virtualbase_ungrabMouseEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	self->QGraphicsWidget::ungrabMouseEvent(event);
}

void QGraphicsWidget_virtualbase_grabKeyboardEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	self->QGraphicsWidget::grabKeyboardEvent(event);
}

void QGraphicsWidget_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	self->QGraphicsWidget::ungrabKeyboardEvent(event);
}

bool QGraphicsWidget_virtualbase_eventFilter(VirtualQGraphicsWidget* self, QObject* watched, QEvent* event) {

	return self->QGraphicsWidget::eventFilter(watched, event);
}

void QGraphicsWidget_virtualbase_timerEvent(VirtualQGraphicsWidget* self, QTimerEvent* event) {

	self->QGraphicsWidget::timerEvent(event);
}

void QGraphicsWidget_virtualbase_childEvent(VirtualQGraphicsWidget* self, QChildEvent* event) {

	self->QGraphicsWidget::childEvent(event);
}

void QGraphicsWidget_virtualbase_customEvent(VirtualQGraphicsWidget* self, QEvent* event) {

	self->QGraphicsWidget::customEvent(event);
}

void QGraphicsWidget_virtualbase_connectNotify(VirtualQGraphicsWidget* self, QMetaMethod* signal) {

	self->QGraphicsWidget::connectNotify(*signal);
}

void QGraphicsWidget_virtualbase_disconnectNotify(VirtualQGraphicsWidget* self, QMetaMethod* signal) {

	self->QGraphicsWidget::disconnectNotify(*signal);
}

void QGraphicsWidget_virtualbase_advance(VirtualQGraphicsWidget* self, int phase) {

	self->QGraphicsWidget::advance(static_cast<int>(phase));
}

bool QGraphicsWidget_virtualbase_contains(const VirtualQGraphicsWidget* self, QPointF* point) {

	return self->QGraphicsWidget::contains(*point);
}

bool QGraphicsWidget_virtualbase_collidesWithItem(const VirtualQGraphicsWidget* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsWidget::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsWidget_virtualbase_collidesWithPath(const VirtualQGraphicsWidget* self, QPainterPath* path, int mode) {

	return self->QGraphicsWidget::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsWidget_virtualbase_isObscuredBy(const VirtualQGraphicsWidget* self, QGraphicsItem* item) {

	return self->QGraphicsWidget::isObscuredBy(item);
}

QPainterPath* QGraphicsWidget_virtualbase_opaqueArea(const VirtualQGraphicsWidget* self) {

	return new QPainterPath(self->QGraphicsWidget::opaqueArea());
}

bool QGraphicsWidget_virtualbase_sceneEventFilter(VirtualQGraphicsWidget* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsWidget::sceneEventFilter(watched, event);
}

void QGraphicsWidget_virtualbase_contextMenuEvent(VirtualQGraphicsWidget* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsWidget::contextMenuEvent(event);
}

void QGraphicsWidget_virtualbase_dragEnterEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsWidget::dragEnterEvent(event);
}

void QGraphicsWidget_virtualbase_dragLeaveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsWidget::dragLeaveEvent(event);
}

void QGraphicsWidget_virtualbase_dragMoveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsWidget::dragMoveEvent(event);
}

void QGraphicsWidget_virtualbase_dropEvent(VirtualQGraphicsWidget* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsWidget::dropEvent(event);
}

void QGraphicsWidget_virtualbase_hoverEnterEvent(VirtualQGraphicsWidget* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsWidget::hoverEnterEvent(event);
}

void QGraphicsWidget_virtualbase_keyPressEvent(VirtualQGraphicsWidget* self, QKeyEvent* event) {

	self->QGraphicsWidget::keyPressEvent(event);
}

void QGraphicsWidget_virtualbase_keyReleaseEvent(VirtualQGraphicsWidget* self, QKeyEvent* event) {

	self->QGraphicsWidget::keyReleaseEvent(event);
}

void QGraphicsWidget_virtualbase_mousePressEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsWidget::mousePressEvent(event);
}

void QGraphicsWidget_virtualbase_mouseMoveEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsWidget::mouseMoveEvent(event);
}

void QGraphicsWidget_virtualbase_mouseReleaseEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsWidget::mouseReleaseEvent(event);
}

void QGraphicsWidget_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsWidget* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsWidget::mouseDoubleClickEvent(event);
}

void QGraphicsWidget_virtualbase_wheelEvent(VirtualQGraphicsWidget* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsWidget::wheelEvent(event);
}

void QGraphicsWidget_virtualbase_inputMethodEvent(VirtualQGraphicsWidget* self, QInputMethodEvent* event) {

	self->QGraphicsWidget::inputMethodEvent(event);
}

QVariant* QGraphicsWidget_virtualbase_inputMethodQuery(const VirtualQGraphicsWidget* self, int query) {

	return new QVariant(self->QGraphicsWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QGraphicsWidget_virtualbase_supportsExtension(const VirtualQGraphicsWidget* self, int extension) {

	return self->QGraphicsWidget::supportsExtension(static_cast<VirtualQGraphicsWidget::Extension>(extension));
}

void QGraphicsWidget_virtualbase_setExtension(VirtualQGraphicsWidget* self, int extension, QVariant* variant) {

	self->QGraphicsWidget::setExtension(static_cast<VirtualQGraphicsWidget::Extension>(extension), *variant);
}

QVariant* QGraphicsWidget_virtualbase_extension(const VirtualQGraphicsWidget* self, QVariant* variant) {

	return new QVariant(self->QGraphicsWidget::extension(*variant));
}

const QMetaObject* QGraphicsWidget_staticMetaObject() { return &QGraphicsWidget::staticMetaObject; }

const QGraphicsWidget_VTable* QGraphicsWidget_vtbl(const VirtualQGraphicsWidget* self) { return self->vtbl; }
void* QGraphicsWidget_vdata(const VirtualQGraphicsWidget* self) { return self->vdata; }
void QGraphicsWidget_setVdata(VirtualQGraphicsWidget* self, void* vdata) { self->vdata = vdata; }

void QGraphicsWidget_protectedbase_updateMicroFocus(VirtualQGraphicsWidget* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsWidget_protectedbase_sender(const VirtualQGraphicsWidget* self) {
	return self->sender();
}

int QGraphicsWidget_protectedbase_senderSignalIndex(const VirtualQGraphicsWidget* self) {
	return self->senderSignalIndex();
}

int QGraphicsWidget_protectedbase_receivers(const VirtualQGraphicsWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsWidget_protectedbase_isSignalConnected(const VirtualQGraphicsWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsWidget_protectedbase_addToIndex(VirtualQGraphicsWidget* self) {
	self->addToIndex();
}

void QGraphicsWidget_protectedbase_removeFromIndex(VirtualQGraphicsWidget* self) {
	self->removeFromIndex();
}

void QGraphicsWidget_protectedbase_prepareGeometryChange(VirtualQGraphicsWidget* self) {
	self->prepareGeometryChange();
}

void QGraphicsWidget_protectedbase_setGraphicsItem(VirtualQGraphicsWidget* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsWidget_protectedbase_setOwnedByLayout(VirtualQGraphicsWidget* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsWidget_delete(QGraphicsWidget* self) {
	delete self;
}

