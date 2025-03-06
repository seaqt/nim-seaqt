#include <QChildEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QGraphicsItem>
#include <QGraphicsObject>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsSvgItem>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPointF>
#include <QRectF>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionGraphicsItem>
#include <QSvgRenderer>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qgraphicssvgitem.h>
#include "gen_qgraphicssvgitem.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsSvgItem final : public QGraphicsSvgItem {
	struct QGraphicsSvgItem_VTable* vtbl;
public:

	VirtualQGraphicsSvgItem(struct QGraphicsSvgItem_VTable* vtbl): QGraphicsSvgItem(), vtbl(vtbl) {};
	VirtualQGraphicsSvgItem(struct QGraphicsSvgItem_VTable* vtbl, const QString& fileName): QGraphicsSvgItem(fileName), vtbl(vtbl) {};
	VirtualQGraphicsSvgItem(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsItem* parentItem): QGraphicsSvgItem(parentItem), vtbl(vtbl) {};
	VirtualQGraphicsSvgItem(struct QGraphicsSvgItem_VTable* vtbl, const QString& fileName, QGraphicsItem* parentItem): QGraphicsSvgItem(fileName, parentItem), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSvgItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsSvgItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsSvgItem_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsSvgItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsSvgItem_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsSvgItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsSvgItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsSvgItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsSvgItem_virtualbase_boundingRect(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsSvgItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsSvgItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsSvgItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsSvgItem_virtualbase_type(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsSvgItem::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_event(void* self, QEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsSvgItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsSvgItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsSvgItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsSvgItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsSvgItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsSvgItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsSvgItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_advance(void* self, int phase);

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsSvgItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	friend QPainterPath* QGraphicsSvgItem_virtualbase_shape(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsSvgItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_contains(const void* self, QPointF* point);

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsSvgItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode);

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsSvgItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode);

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsSvgItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item);

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsSvgItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	friend QPainterPath* QGraphicsSvgItem_virtualbase_opaqueArea(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsSvgItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsSvgItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_sceneEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsSvgItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsSvgItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsSvgItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsSvgItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsSvgItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsSvgItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsSvgItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsSvgItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsSvgItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsSvgItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsSvgItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsSvgItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsSvgItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsSvgItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsSvgItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsSvgItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsSvgItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsSvgItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsSvgItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsSvgItem_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsSvgItem::itemChange(change, value);
		}

		QGraphicsItem::GraphicsItemChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		QVariant* callback_return_value = vtbl->itemChange(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsSvgItem_virtualbase_itemChange(void* self, int change, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsSvgItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_supportsExtension(const void* self, int extension);

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsSvgItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(vtbl, this, sigval1, sigval2);

	}

	friend void QGraphicsSvgItem_virtualbase_setExtension(void* self, int extension, QVariant* variant);

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsSvgItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsSvgItem_virtualbase_extension(const void* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsSvgItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGraphicsSvgItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsSvgItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsSvgItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsSvgItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
	friend void QGraphicsSvgItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsSvgItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsSvgItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsSvgItem* QGraphicsSvgItem_new(struct QGraphicsSvgItem_VTable* vtbl) {
	return new VirtualQGraphicsSvgItem(vtbl);
}

QGraphicsSvgItem* QGraphicsSvgItem_new2(struct QGraphicsSvgItem_VTable* vtbl, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQGraphicsSvgItem(vtbl, fileName_QString);
}

QGraphicsSvgItem* QGraphicsSvgItem_new3(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsItem* parentItem) {
	return new VirtualQGraphicsSvgItem(vtbl, parentItem);
}

QGraphicsSvgItem* QGraphicsSvgItem_new4(struct QGraphicsSvgItem_VTable* vtbl, struct miqt_string fileName, QGraphicsItem* parentItem) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQGraphicsSvgItem(vtbl, fileName_QString, parentItem);
}

void QGraphicsSvgItem_virtbase(QGraphicsSvgItem* src, QGraphicsObject** outptr_QGraphicsObject) {
	*outptr_QGraphicsObject = static_cast<QGraphicsObject*>(src);
}

QMetaObject* QGraphicsSvgItem_metaObject(const QGraphicsSvgItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsSvgItem_metacast(QGraphicsSvgItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsSvgItem_metacall(QGraphicsSvgItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsSvgItem_tr(const char* s) {
	QString _ret = QGraphicsSvgItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsSvgItem_setSharedRenderer(QGraphicsSvgItem* self, QSvgRenderer* renderer) {
	self->setSharedRenderer(renderer);
}

QSvgRenderer* QGraphicsSvgItem_renderer(const QGraphicsSvgItem* self) {
	return self->renderer();
}

void QGraphicsSvgItem_setElementId(QGraphicsSvgItem* self, struct miqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	self->setElementId(id_QString);
}

struct miqt_string QGraphicsSvgItem_elementId(const QGraphicsSvgItem* self) {
	QString _ret = self->elementId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsSvgItem_setCachingEnabled(QGraphicsSvgItem* self, bool cachingEnabled) {
	self->setCachingEnabled(cachingEnabled);
}

bool QGraphicsSvgItem_isCachingEnabled(const QGraphicsSvgItem* self) {
	return self->isCachingEnabled();
}

void QGraphicsSvgItem_setMaximumCacheSize(QGraphicsSvgItem* self, QSize* size) {
	self->setMaximumCacheSize(*size);
}

QSize* QGraphicsSvgItem_maximumCacheSize(const QGraphicsSvgItem* self) {
	return new QSize(self->maximumCacheSize());
}

QRectF* QGraphicsSvgItem_boundingRect(const QGraphicsSvgItem* self) {
	return new QRectF(self->boundingRect());
}

void QGraphicsSvgItem_paint(QGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

int QGraphicsSvgItem_type(const QGraphicsSvgItem* self) {
	return self->type();
}

struct miqt_string QGraphicsSvgItem_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsSvgItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsSvgItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsSvgItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsSvgItem_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::metaObject();

}

void* QGraphicsSvgItem_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::qt_metacast(param1);

}

int QGraphicsSvgItem_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QRectF* QGraphicsSvgItem_virtualbase_boundingRect(const void* self) {

	return new QRectF(( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::boundingRect());

}

void QGraphicsSvgItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::paint(painter, option, widget);

}

int QGraphicsSvgItem_virtualbase_type(const void* self) {

	return ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::type();

}

bool QGraphicsSvgItem_virtualbase_event(void* self, QEvent* ev) {

	return ( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::event(ev);

}

bool QGraphicsSvgItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::eventFilter(watched, event);

}

void QGraphicsSvgItem_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::timerEvent(event);

}

void QGraphicsSvgItem_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::childEvent(event);

}

void QGraphicsSvgItem_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::customEvent(event);

}

void QGraphicsSvgItem_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::connectNotify(*signal);

}

void QGraphicsSvgItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::disconnectNotify(*signal);

}

void QGraphicsSvgItem_virtualbase_advance(void* self, int phase) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::advance(static_cast<int>(phase));

}

QPainterPath* QGraphicsSvgItem_virtualbase_shape(const void* self) {

	return new QPainterPath(( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::shape());

}

bool QGraphicsSvgItem_virtualbase_contains(const void* self, QPointF* point) {

	return ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::contains(*point);

}

bool QGraphicsSvgItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {

	return ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

}

bool QGraphicsSvgItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {

	return ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

}

bool QGraphicsSvgItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {

	return ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::isObscuredBy(item);

}

QPainterPath* QGraphicsSvgItem_virtualbase_opaqueArea(const void* self) {

	return new QPainterPath(( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::opaqueArea());

}

bool QGraphicsSvgItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {

	return ( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::sceneEventFilter(watched, event);

}

bool QGraphicsSvgItem_virtualbase_sceneEvent(void* self, QEvent* event) {

	return ( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::sceneEvent(event);

}

void QGraphicsSvgItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::contextMenuEvent(event);

}

void QGraphicsSvgItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::dragEnterEvent(event);

}

void QGraphicsSvgItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::dragLeaveEvent(event);

}

void QGraphicsSvgItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::dragMoveEvent(event);

}

void QGraphicsSvgItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::dropEvent(event);

}

void QGraphicsSvgItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::focusInEvent(event);

}

void QGraphicsSvgItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::focusOutEvent(event);

}

void QGraphicsSvgItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::hoverEnterEvent(event);

}

void QGraphicsSvgItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::hoverMoveEvent(event);

}

void QGraphicsSvgItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::hoverLeaveEvent(event);

}

void QGraphicsSvgItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::keyPressEvent(event);

}

void QGraphicsSvgItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::keyReleaseEvent(event);

}

void QGraphicsSvgItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::mousePressEvent(event);

}

void QGraphicsSvgItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::mouseMoveEvent(event);

}

void QGraphicsSvgItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::mouseReleaseEvent(event);

}

void QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::mouseDoubleClickEvent(event);

}

void QGraphicsSvgItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::wheelEvent(event);

}

void QGraphicsSvgItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::inputMethodEvent(event);

}

QVariant* QGraphicsSvgItem_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

QVariant* QGraphicsSvgItem_virtualbase_itemChange(void* self, int change, QVariant* value) {

	return new QVariant(( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::itemChange(static_cast<VirtualQGraphicsSvgItem::GraphicsItemChange>(change), *value));

}

bool QGraphicsSvgItem_virtualbase_supportsExtension(const void* self, int extension) {

	return ( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::supportsExtension(static_cast<VirtualQGraphicsSvgItem::Extension>(extension));

}

void QGraphicsSvgItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {

	( (VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::setExtension(static_cast<VirtualQGraphicsSvgItem::Extension>(extension), *variant);

}

QVariant* QGraphicsSvgItem_virtualbase_extension(const void* self, QVariant* variant) {

	return new QVariant(( (const VirtualQGraphicsSvgItem*)(self) )->QGraphicsSvgItem::extension(*variant));

}

const QMetaObject* QGraphicsSvgItem_staticMetaObject() { return &QGraphicsSvgItem::staticMetaObject; }
void QGraphicsSvgItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

QObject* QGraphicsSvgItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsSvgItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsSvgItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsSvgItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsSvgItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsSvgItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsSvgItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsSvgItem* self_cast = dynamic_cast<VirtualQGraphicsSvgItem*>( (QGraphicsSvgItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsSvgItem_delete(QGraphicsSvgItem* self) {
	delete self;
}

