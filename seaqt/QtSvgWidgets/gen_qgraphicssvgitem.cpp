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
class VirtualQGraphicsSvgItem final : public QGraphicsSvgItem {
	const QGraphicsSvgItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsSvgItem_VTable* QGraphicsSvgItem_vtbl(const VirtualQGraphicsSvgItem* self);
	friend void* QGraphicsSvgItem_vdata(const VirtualQGraphicsSvgItem* self);
	friend void QGraphicsSvgItem_setVdata(VirtualQGraphicsSvgItem* self, void* vdata);

	VirtualQGraphicsSvgItem(const QGraphicsSvgItem_VTable* vtbl, void* vdata): QGraphicsSvgItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsSvgItem(const QGraphicsSvgItem_VTable* vtbl, void* vdata, const QString& fileName): QGraphicsSvgItem(fileName), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsSvgItem(const QGraphicsSvgItem_VTable* vtbl, void* vdata, QGraphicsItem* parentItem): QGraphicsSvgItem(parentItem), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsSvgItem(const QGraphicsSvgItem_VTable* vtbl, void* vdata, const QString& fileName, QGraphicsItem* parentItem): QGraphicsSvgItem(fileName, parentItem), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsSvgItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsSvgItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsSvgItem_virtualbase_metaObject(const VirtualQGraphicsSvgItem* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsSvgItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsSvgItem_virtualbase_metacast(VirtualQGraphicsSvgItem* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsSvgItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsSvgItem_virtualbase_metacall(VirtualQGraphicsSvgItem* self, int param1, int param2, void** param3);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsSvgItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsSvgItem_virtualbase_boundingRect(const VirtualQGraphicsSvgItem* self);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsSvgItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsSvgItem_virtualbase_paint(VirtualQGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsSvgItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsSvgItem_virtualbase_type(const VirtualQGraphicsSvgItem* self);

	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsSvgItem::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_event(VirtualQGraphicsSvgItem* self, QEvent* ev);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsSvgItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_eventFilter(VirtualQGraphicsSvgItem* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsSvgItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_timerEvent(VirtualQGraphicsSvgItem* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsSvgItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_childEvent(VirtualQGraphicsSvgItem* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsSvgItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_customEvent(VirtualQGraphicsSvgItem* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsSvgItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_connectNotify(VirtualQGraphicsSvgItem* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsSvgItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_disconnectNotify(VirtualQGraphicsSvgItem* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsSvgItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_advance(VirtualQGraphicsSvgItem* self, int phase);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsSvgItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsSvgItem_virtualbase_shape(const VirtualQGraphicsSvgItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsSvgItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_contains(const VirtualQGraphicsSvgItem* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsSvgItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_collidesWithItem(const VirtualQGraphicsSvgItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsSvgItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_collidesWithPath(const VirtualQGraphicsSvgItem* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsSvgItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_isObscuredBy(const VirtualQGraphicsSvgItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsSvgItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsSvgItem_virtualbase_opaqueArea(const VirtualQGraphicsSvgItem* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsSvgItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_sceneEventFilter(VirtualQGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsSvgItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_sceneEvent(VirtualQGraphicsSvgItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsSvgItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_contextMenuEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsSvgItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dragEnterEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsSvgItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dragLeaveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsSvgItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dragMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsSvgItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_dropEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsSvgItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_focusInEvent(VirtualQGraphicsSvgItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsSvgItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_focusOutEvent(VirtualQGraphicsSvgItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsSvgItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_hoverEnterEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsSvgItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_hoverMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsSvgItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsSvgItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_keyPressEvent(VirtualQGraphicsSvgItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsSvgItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_keyReleaseEvent(VirtualQGraphicsSvgItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsSvgItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mousePressEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsSvgItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mouseMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsSvgItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsSvgItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsSvgItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_wheelEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsSvgItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsSvgItem_virtualbase_inputMethodEvent(VirtualQGraphicsSvgItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsSvgItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsSvgItem_virtualbase_inputMethodQuery(const VirtualQGraphicsSvgItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsSvgItem::itemChange(change, value);
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

	friend QVariant* QGraphicsSvgItem_virtualbase_itemChange(VirtualQGraphicsSvgItem* self, int change, QVariant* value);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsSvgItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSvgItem_virtualbase_supportsExtension(const VirtualQGraphicsSvgItem* self, int extension);

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

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsSvgItem_virtualbase_setExtension(VirtualQGraphicsSvgItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsSvgItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsSvgItem_virtualbase_extension(const VirtualQGraphicsSvgItem* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsSvgItem_protectedbase_updateMicroFocus(VirtualQGraphicsSvgItem* self);
	friend QObject* QGraphicsSvgItem_protectedbase_sender(const VirtualQGraphicsSvgItem* self);
	friend int QGraphicsSvgItem_protectedbase_senderSignalIndex(const VirtualQGraphicsSvgItem* self);
	friend int QGraphicsSvgItem_protectedbase_receivers(const VirtualQGraphicsSvgItem* self, const char* signal);
	friend bool QGraphicsSvgItem_protectedbase_isSignalConnected(const VirtualQGraphicsSvgItem* self, QMetaMethod* signal);
	friend void QGraphicsSvgItem_protectedbase_addToIndex(VirtualQGraphicsSvgItem* self);
	friend void QGraphicsSvgItem_protectedbase_removeFromIndex(VirtualQGraphicsSvgItem* self);
	friend void QGraphicsSvgItem_protectedbase_prepareGeometryChange(VirtualQGraphicsSvgItem* self);
};

VirtualQGraphicsSvgItem* QGraphicsSvgItem_new(const QGraphicsSvgItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsSvgItem(vtbl, vdata);
}

VirtualQGraphicsSvgItem* QGraphicsSvgItem_new2(const QGraphicsSvgItem_VTable* vtbl, void* vdata, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQGraphicsSvgItem(vtbl, vdata, fileName_QString);
}

VirtualQGraphicsSvgItem* QGraphicsSvgItem_new3(const QGraphicsSvgItem_VTable* vtbl, void* vdata, QGraphicsItem* parentItem) {
	return new VirtualQGraphicsSvgItem(vtbl, vdata, parentItem);
}

VirtualQGraphicsSvgItem* QGraphicsSvgItem_new4(const QGraphicsSvgItem_VTable* vtbl, void* vdata, struct miqt_string fileName, QGraphicsItem* parentItem) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQGraphicsSvgItem(vtbl, vdata, fileName_QString, parentItem);
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

QMetaObject* QGraphicsSvgItem_virtualbase_metaObject(const VirtualQGraphicsSvgItem* self) {

	return (QMetaObject*) self->QGraphicsSvgItem::metaObject();
}

void* QGraphicsSvgItem_virtualbase_metacast(VirtualQGraphicsSvgItem* self, const char* param1) {

	return self->QGraphicsSvgItem::qt_metacast(param1);
}

int QGraphicsSvgItem_virtualbase_metacall(VirtualQGraphicsSvgItem* self, int param1, int param2, void** param3) {

	return self->QGraphicsSvgItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QGraphicsSvgItem_virtualbase_boundingRect(const VirtualQGraphicsSvgItem* self) {

	return new QRectF(self->QGraphicsSvgItem::boundingRect());
}

void QGraphicsSvgItem_virtualbase_paint(VirtualQGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsSvgItem::paint(painter, option, widget);
}

int QGraphicsSvgItem_virtualbase_type(const VirtualQGraphicsSvgItem* self) {

	return self->QGraphicsSvgItem::type();
}

bool QGraphicsSvgItem_virtualbase_event(VirtualQGraphicsSvgItem* self, QEvent* ev) {

	return self->QGraphicsSvgItem::event(ev);
}

bool QGraphicsSvgItem_virtualbase_eventFilter(VirtualQGraphicsSvgItem* self, QObject* watched, QEvent* event) {

	return self->QGraphicsSvgItem::eventFilter(watched, event);
}

void QGraphicsSvgItem_virtualbase_timerEvent(VirtualQGraphicsSvgItem* self, QTimerEvent* event) {

	self->QGraphicsSvgItem::timerEvent(event);
}

void QGraphicsSvgItem_virtualbase_childEvent(VirtualQGraphicsSvgItem* self, QChildEvent* event) {

	self->QGraphicsSvgItem::childEvent(event);
}

void QGraphicsSvgItem_virtualbase_customEvent(VirtualQGraphicsSvgItem* self, QEvent* event) {

	self->QGraphicsSvgItem::customEvent(event);
}

void QGraphicsSvgItem_virtualbase_connectNotify(VirtualQGraphicsSvgItem* self, QMetaMethod* signal) {

	self->QGraphicsSvgItem::connectNotify(*signal);
}

void QGraphicsSvgItem_virtualbase_disconnectNotify(VirtualQGraphicsSvgItem* self, QMetaMethod* signal) {

	self->QGraphicsSvgItem::disconnectNotify(*signal);
}

void QGraphicsSvgItem_virtualbase_advance(VirtualQGraphicsSvgItem* self, int phase) {

	self->QGraphicsSvgItem::advance(static_cast<int>(phase));
}

QPainterPath* QGraphicsSvgItem_virtualbase_shape(const VirtualQGraphicsSvgItem* self) {

	return new QPainterPath(self->QGraphicsSvgItem::shape());
}

bool QGraphicsSvgItem_virtualbase_contains(const VirtualQGraphicsSvgItem* self, QPointF* point) {

	return self->QGraphicsSvgItem::contains(*point);
}

bool QGraphicsSvgItem_virtualbase_collidesWithItem(const VirtualQGraphicsSvgItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsSvgItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsSvgItem_virtualbase_collidesWithPath(const VirtualQGraphicsSvgItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsSvgItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsSvgItem_virtualbase_isObscuredBy(const VirtualQGraphicsSvgItem* self, QGraphicsItem* item) {

	return self->QGraphicsSvgItem::isObscuredBy(item);
}

QPainterPath* QGraphicsSvgItem_virtualbase_opaqueArea(const VirtualQGraphicsSvgItem* self) {

	return new QPainterPath(self->QGraphicsSvgItem::opaqueArea());
}

bool QGraphicsSvgItem_virtualbase_sceneEventFilter(VirtualQGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsSvgItem::sceneEventFilter(watched, event);
}

bool QGraphicsSvgItem_virtualbase_sceneEvent(VirtualQGraphicsSvgItem* self, QEvent* event) {

	return self->QGraphicsSvgItem::sceneEvent(event);
}

void QGraphicsSvgItem_virtualbase_contextMenuEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsSvgItem::contextMenuEvent(event);
}

void QGraphicsSvgItem_virtualbase_dragEnterEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSvgItem::dragEnterEvent(event);
}

void QGraphicsSvgItem_virtualbase_dragLeaveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSvgItem::dragLeaveEvent(event);
}

void QGraphicsSvgItem_virtualbase_dragMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSvgItem::dragMoveEvent(event);
}

void QGraphicsSvgItem_virtualbase_dropEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSvgItem::dropEvent(event);
}

void QGraphicsSvgItem_virtualbase_focusInEvent(VirtualQGraphicsSvgItem* self, QFocusEvent* event) {

	self->QGraphicsSvgItem::focusInEvent(event);
}

void QGraphicsSvgItem_virtualbase_focusOutEvent(VirtualQGraphicsSvgItem* self, QFocusEvent* event) {

	self->QGraphicsSvgItem::focusOutEvent(event);
}

void QGraphicsSvgItem_virtualbase_hoverEnterEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsSvgItem::hoverEnterEvent(event);
}

void QGraphicsSvgItem_virtualbase_hoverMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsSvgItem::hoverMoveEvent(event);
}

void QGraphicsSvgItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsSvgItem::hoverLeaveEvent(event);
}

void QGraphicsSvgItem_virtualbase_keyPressEvent(VirtualQGraphicsSvgItem* self, QKeyEvent* event) {

	self->QGraphicsSvgItem::keyPressEvent(event);
}

void QGraphicsSvgItem_virtualbase_keyReleaseEvent(VirtualQGraphicsSvgItem* self, QKeyEvent* event) {

	self->QGraphicsSvgItem::keyReleaseEvent(event);
}

void QGraphicsSvgItem_virtualbase_mousePressEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSvgItem::mousePressEvent(event);
}

void QGraphicsSvgItem_virtualbase_mouseMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSvgItem::mouseMoveEvent(event);
}

void QGraphicsSvgItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSvgItem::mouseReleaseEvent(event);
}

void QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSvgItem::mouseDoubleClickEvent(event);
}

void QGraphicsSvgItem_virtualbase_wheelEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsSvgItem::wheelEvent(event);
}

void QGraphicsSvgItem_virtualbase_inputMethodEvent(VirtualQGraphicsSvgItem* self, QInputMethodEvent* event) {

	self->QGraphicsSvgItem::inputMethodEvent(event);
}

QVariant* QGraphicsSvgItem_virtualbase_inputMethodQuery(const VirtualQGraphicsSvgItem* self, int query) {

	return new QVariant(self->QGraphicsSvgItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsSvgItem_virtualbase_itemChange(VirtualQGraphicsSvgItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsSvgItem::itemChange(static_cast<VirtualQGraphicsSvgItem::GraphicsItemChange>(change), *value));
}

bool QGraphicsSvgItem_virtualbase_supportsExtension(const VirtualQGraphicsSvgItem* self, int extension) {

	return self->QGraphicsSvgItem::supportsExtension(static_cast<VirtualQGraphicsSvgItem::Extension>(extension));
}

void QGraphicsSvgItem_virtualbase_setExtension(VirtualQGraphicsSvgItem* self, int extension, QVariant* variant) {

	self->QGraphicsSvgItem::setExtension(static_cast<VirtualQGraphicsSvgItem::Extension>(extension), *variant);
}

QVariant* QGraphicsSvgItem_virtualbase_extension(const VirtualQGraphicsSvgItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsSvgItem::extension(*variant));
}

const QMetaObject* QGraphicsSvgItem_staticMetaObject() { return &QGraphicsSvgItem::staticMetaObject; }

const QGraphicsSvgItem_VTable* QGraphicsSvgItem_vtbl(const VirtualQGraphicsSvgItem* self) { return self->vtbl; }
void* QGraphicsSvgItem_vdata(const VirtualQGraphicsSvgItem* self) { return self->vdata; }
void QGraphicsSvgItem_setVdata(VirtualQGraphicsSvgItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsSvgItem_protectedbase_updateMicroFocus(VirtualQGraphicsSvgItem* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsSvgItem_protectedbase_sender(const VirtualQGraphicsSvgItem* self) {
	return self->sender();
}

int QGraphicsSvgItem_protectedbase_senderSignalIndex(const VirtualQGraphicsSvgItem* self) {
	return self->senderSignalIndex();
}

int QGraphicsSvgItem_protectedbase_receivers(const VirtualQGraphicsSvgItem* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsSvgItem_protectedbase_isSignalConnected(const VirtualQGraphicsSvgItem* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsSvgItem_protectedbase_addToIndex(VirtualQGraphicsSvgItem* self) {
	self->addToIndex();
}

void QGraphicsSvgItem_protectedbase_removeFromIndex(VirtualQGraphicsSvgItem* self) {
	self->removeFromIndex();
}

void QGraphicsSvgItem_protectedbase_prepareGeometryChange(VirtualQGraphicsSvgItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsSvgItem_delete(QGraphicsSvgItem* self) {
	delete self;
}

