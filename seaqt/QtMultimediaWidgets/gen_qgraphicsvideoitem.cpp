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
#include <QGraphicsVideoItem>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPointF>
#include <QRectF>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionGraphicsItem>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoSink>
#include <QWidget>
#include <qgraphicsvideoitem.h>
#include "gen_qgraphicsvideoitem.h"
class VirtualQGraphicsVideoItem final : public QGraphicsVideoItem {
	const QGraphicsVideoItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsVideoItem_VTable* QGraphicsVideoItem_vtbl(const VirtualQGraphicsVideoItem* self);
	friend void* QGraphicsVideoItem_vdata(const VirtualQGraphicsVideoItem* self);
	friend void QGraphicsVideoItem_setVdata(VirtualQGraphicsVideoItem* self, void* vdata);

	VirtualQGraphicsVideoItem(const QGraphicsVideoItem_VTable* vtbl, void* vdata): QGraphicsVideoItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsVideoItem(const QGraphicsVideoItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsVideoItem(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsVideoItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsVideoItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsVideoItem_virtualbase_metaObject(const VirtualQGraphicsVideoItem* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsVideoItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsVideoItem_virtualbase_metacast(VirtualQGraphicsVideoItem* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsVideoItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsVideoItem_virtualbase_metacall(VirtualQGraphicsVideoItem* self, int param1, int param2, void** param3);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsVideoItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsVideoItem_virtualbase_boundingRect(const VirtualQGraphicsVideoItem* self);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsVideoItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsVideoItem_virtualbase_paint(VirtualQGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsVideoItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsVideoItem_virtualbase_type(const VirtualQGraphicsVideoItem* self);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsVideoItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_timerEvent(VirtualQGraphicsVideoItem* self, QTimerEvent* event);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsVideoItem::itemChange(change, value);
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

	friend QVariant* QGraphicsVideoItem_virtualbase_itemChange(VirtualQGraphicsVideoItem* self, int change, QVariant* value);

	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsVideoItem::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_event(VirtualQGraphicsVideoItem* self, QEvent* ev);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsVideoItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_eventFilter(VirtualQGraphicsVideoItem* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsVideoItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_childEvent(VirtualQGraphicsVideoItem* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsVideoItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_customEvent(VirtualQGraphicsVideoItem* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsVideoItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_connectNotify(VirtualQGraphicsVideoItem* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsVideoItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_disconnectNotify(VirtualQGraphicsVideoItem* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsVideoItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_advance(VirtualQGraphicsVideoItem* self, int phase);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsVideoItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsVideoItem_virtualbase_shape(const VirtualQGraphicsVideoItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsVideoItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_contains(const VirtualQGraphicsVideoItem* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsVideoItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_collidesWithItem(const VirtualQGraphicsVideoItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsVideoItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_collidesWithPath(const VirtualQGraphicsVideoItem* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsVideoItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_isObscuredBy(const VirtualQGraphicsVideoItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsVideoItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsVideoItem_virtualbase_opaqueArea(const VirtualQGraphicsVideoItem* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsVideoItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_sceneEventFilter(VirtualQGraphicsVideoItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsVideoItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_sceneEvent(VirtualQGraphicsVideoItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsVideoItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_contextMenuEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsVideoItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_dragEnterEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsVideoItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_dragLeaveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsVideoItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_dragMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsVideoItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_dropEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsVideoItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_focusInEvent(VirtualQGraphicsVideoItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsVideoItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_focusOutEvent(VirtualQGraphicsVideoItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsVideoItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_hoverEnterEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsVideoItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_hoverMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsVideoItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsVideoItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_keyPressEvent(VirtualQGraphicsVideoItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsVideoItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_keyReleaseEvent(VirtualQGraphicsVideoItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsVideoItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_mousePressEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsVideoItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_mouseMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsVideoItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsVideoItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsVideoItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_wheelEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsVideoItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsVideoItem_virtualbase_inputMethodEvent(VirtualQGraphicsVideoItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsVideoItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsVideoItem_virtualbase_inputMethodQuery(const VirtualQGraphicsVideoItem* self, int query);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsVideoItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsVideoItem_virtualbase_supportsExtension(const VirtualQGraphicsVideoItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsVideoItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsVideoItem_virtualbase_setExtension(VirtualQGraphicsVideoItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsVideoItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsVideoItem_virtualbase_extension(const VirtualQGraphicsVideoItem* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsVideoItem_protectedbase_updateMicroFocus(VirtualQGraphicsVideoItem* self);
	friend QObject* QGraphicsVideoItem_protectedbase_sender(const VirtualQGraphicsVideoItem* self);
	friend int QGraphicsVideoItem_protectedbase_senderSignalIndex(const VirtualQGraphicsVideoItem* self);
	friend int QGraphicsVideoItem_protectedbase_receivers(const VirtualQGraphicsVideoItem* self, const char* signal);
	friend bool QGraphicsVideoItem_protectedbase_isSignalConnected(const VirtualQGraphicsVideoItem* self, QMetaMethod* signal);
	friend void QGraphicsVideoItem_protectedbase_addToIndex(VirtualQGraphicsVideoItem* self);
	friend void QGraphicsVideoItem_protectedbase_removeFromIndex(VirtualQGraphicsVideoItem* self);
	friend void QGraphicsVideoItem_protectedbase_prepareGeometryChange(VirtualQGraphicsVideoItem* self);
};

VirtualQGraphicsVideoItem* QGraphicsVideoItem_new(const QGraphicsVideoItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsVideoItem(vtbl, vdata);
}

VirtualQGraphicsVideoItem* QGraphicsVideoItem_new2(const QGraphicsVideoItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsVideoItem(vtbl, vdata, parent);
}

void QGraphicsVideoItem_virtbase(QGraphicsVideoItem* src, QGraphicsObject** outptr_QGraphicsObject) {
	*outptr_QGraphicsObject = static_cast<QGraphicsObject*>(src);
}

QMetaObject* QGraphicsVideoItem_metaObject(const QGraphicsVideoItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsVideoItem_metacast(QGraphicsVideoItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsVideoItem_metacall(QGraphicsVideoItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsVideoItem_tr(const char* s) {
	QString _ret = QGraphicsVideoItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVideoSink* QGraphicsVideoItem_videoSink(const QGraphicsVideoItem* self) {
	return self->videoSink();
}

int QGraphicsVideoItem_aspectRatioMode(const QGraphicsVideoItem* self) {
	Qt::AspectRatioMode _ret = self->aspectRatioMode();
	return static_cast<int>(_ret);
}

void QGraphicsVideoItem_setAspectRatioMode(QGraphicsVideoItem* self, int mode) {
	self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

QPointF* QGraphicsVideoItem_offset(const QGraphicsVideoItem* self) {
	return new QPointF(self->offset());
}

void QGraphicsVideoItem_setOffset(QGraphicsVideoItem* self, QPointF* offset) {
	self->setOffset(*offset);
}

QSizeF* QGraphicsVideoItem_size(const QGraphicsVideoItem* self) {
	return new QSizeF(self->size());
}

void QGraphicsVideoItem_setSize(QGraphicsVideoItem* self, QSizeF* size) {
	self->setSize(*size);
}

QSizeF* QGraphicsVideoItem_nativeSize(const QGraphicsVideoItem* self) {
	return new QSizeF(self->nativeSize());
}

QRectF* QGraphicsVideoItem_boundingRect(const QGraphicsVideoItem* self) {
	return new QRectF(self->boundingRect());
}

void QGraphicsVideoItem_paint(QGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

int QGraphicsVideoItem_type(const QGraphicsVideoItem* self) {
	return self->type();
}

void QGraphicsVideoItem_nativeSizeChanged(QGraphicsVideoItem* self, QSizeF* size) {
	self->nativeSizeChanged(*size);
}

void QGraphicsVideoItem_connect_nativeSizeChanged(VirtualQGraphicsVideoItem* self, intptr_t slot, void (*callback)(intptr_t, QSizeF*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSizeF*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSizeF*);
		void operator()(const QSizeF& size) {
			const QSizeF& size_ret = size;
			// Cast returned reference into pointer
			QSizeF* sigval1 = const_cast<QSizeF*>(&size_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsVideoItem::connect(self, static_cast<void (QGraphicsVideoItem::*)(const QSizeF&)>(&QGraphicsVideoItem::nativeSizeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsVideoItem_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsVideoItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsVideoItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsVideoItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsVideoItem_virtualbase_metaObject(const VirtualQGraphicsVideoItem* self) {

	return (QMetaObject*) self->QGraphicsVideoItem::metaObject();
}

void* QGraphicsVideoItem_virtualbase_metacast(VirtualQGraphicsVideoItem* self, const char* param1) {

	return self->QGraphicsVideoItem::qt_metacast(param1);
}

int QGraphicsVideoItem_virtualbase_metacall(VirtualQGraphicsVideoItem* self, int param1, int param2, void** param3) {

	return self->QGraphicsVideoItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QGraphicsVideoItem_virtualbase_boundingRect(const VirtualQGraphicsVideoItem* self) {

	return new QRectF(self->QGraphicsVideoItem::boundingRect());
}

void QGraphicsVideoItem_virtualbase_paint(VirtualQGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsVideoItem::paint(painter, option, widget);
}

int QGraphicsVideoItem_virtualbase_type(const VirtualQGraphicsVideoItem* self) {

	return self->QGraphicsVideoItem::type();
}

void QGraphicsVideoItem_virtualbase_timerEvent(VirtualQGraphicsVideoItem* self, QTimerEvent* event) {

	self->QGraphicsVideoItem::timerEvent(event);
}

QVariant* QGraphicsVideoItem_virtualbase_itemChange(VirtualQGraphicsVideoItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsVideoItem::itemChange(static_cast<VirtualQGraphicsVideoItem::GraphicsItemChange>(change), *value));
}

bool QGraphicsVideoItem_virtualbase_event(VirtualQGraphicsVideoItem* self, QEvent* ev) {

	return self->QGraphicsVideoItem::event(ev);
}

bool QGraphicsVideoItem_virtualbase_eventFilter(VirtualQGraphicsVideoItem* self, QObject* watched, QEvent* event) {

	return self->QGraphicsVideoItem::eventFilter(watched, event);
}

void QGraphicsVideoItem_virtualbase_childEvent(VirtualQGraphicsVideoItem* self, QChildEvent* event) {

	self->QGraphicsVideoItem::childEvent(event);
}

void QGraphicsVideoItem_virtualbase_customEvent(VirtualQGraphicsVideoItem* self, QEvent* event) {

	self->QGraphicsVideoItem::customEvent(event);
}

void QGraphicsVideoItem_virtualbase_connectNotify(VirtualQGraphicsVideoItem* self, QMetaMethod* signal) {

	self->QGraphicsVideoItem::connectNotify(*signal);
}

void QGraphicsVideoItem_virtualbase_disconnectNotify(VirtualQGraphicsVideoItem* self, QMetaMethod* signal) {

	self->QGraphicsVideoItem::disconnectNotify(*signal);
}

void QGraphicsVideoItem_virtualbase_advance(VirtualQGraphicsVideoItem* self, int phase) {

	self->QGraphicsVideoItem::advance(static_cast<int>(phase));
}

QPainterPath* QGraphicsVideoItem_virtualbase_shape(const VirtualQGraphicsVideoItem* self) {

	return new QPainterPath(self->QGraphicsVideoItem::shape());
}

bool QGraphicsVideoItem_virtualbase_contains(const VirtualQGraphicsVideoItem* self, QPointF* point) {

	return self->QGraphicsVideoItem::contains(*point);
}

bool QGraphicsVideoItem_virtualbase_collidesWithItem(const VirtualQGraphicsVideoItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsVideoItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsVideoItem_virtualbase_collidesWithPath(const VirtualQGraphicsVideoItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsVideoItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsVideoItem_virtualbase_isObscuredBy(const VirtualQGraphicsVideoItem* self, QGraphicsItem* item) {

	return self->QGraphicsVideoItem::isObscuredBy(item);
}

QPainterPath* QGraphicsVideoItem_virtualbase_opaqueArea(const VirtualQGraphicsVideoItem* self) {

	return new QPainterPath(self->QGraphicsVideoItem::opaqueArea());
}

bool QGraphicsVideoItem_virtualbase_sceneEventFilter(VirtualQGraphicsVideoItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsVideoItem::sceneEventFilter(watched, event);
}

bool QGraphicsVideoItem_virtualbase_sceneEvent(VirtualQGraphicsVideoItem* self, QEvent* event) {

	return self->QGraphicsVideoItem::sceneEvent(event);
}

void QGraphicsVideoItem_virtualbase_contextMenuEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsVideoItem::contextMenuEvent(event);
}

void QGraphicsVideoItem_virtualbase_dragEnterEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsVideoItem::dragEnterEvent(event);
}

void QGraphicsVideoItem_virtualbase_dragLeaveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsVideoItem::dragLeaveEvent(event);
}

void QGraphicsVideoItem_virtualbase_dragMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsVideoItem::dragMoveEvent(event);
}

void QGraphicsVideoItem_virtualbase_dropEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsVideoItem::dropEvent(event);
}

void QGraphicsVideoItem_virtualbase_focusInEvent(VirtualQGraphicsVideoItem* self, QFocusEvent* event) {

	self->QGraphicsVideoItem::focusInEvent(event);
}

void QGraphicsVideoItem_virtualbase_focusOutEvent(VirtualQGraphicsVideoItem* self, QFocusEvent* event) {

	self->QGraphicsVideoItem::focusOutEvent(event);
}

void QGraphicsVideoItem_virtualbase_hoverEnterEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsVideoItem::hoverEnterEvent(event);
}

void QGraphicsVideoItem_virtualbase_hoverMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsVideoItem::hoverMoveEvent(event);
}

void QGraphicsVideoItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsVideoItem::hoverLeaveEvent(event);
}

void QGraphicsVideoItem_virtualbase_keyPressEvent(VirtualQGraphicsVideoItem* self, QKeyEvent* event) {

	self->QGraphicsVideoItem::keyPressEvent(event);
}

void QGraphicsVideoItem_virtualbase_keyReleaseEvent(VirtualQGraphicsVideoItem* self, QKeyEvent* event) {

	self->QGraphicsVideoItem::keyReleaseEvent(event);
}

void QGraphicsVideoItem_virtualbase_mousePressEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsVideoItem::mousePressEvent(event);
}

void QGraphicsVideoItem_virtualbase_mouseMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsVideoItem::mouseMoveEvent(event);
}

void QGraphicsVideoItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsVideoItem::mouseReleaseEvent(event);
}

void QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsVideoItem::mouseDoubleClickEvent(event);
}

void QGraphicsVideoItem_virtualbase_wheelEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsVideoItem::wheelEvent(event);
}

void QGraphicsVideoItem_virtualbase_inputMethodEvent(VirtualQGraphicsVideoItem* self, QInputMethodEvent* event) {

	self->QGraphicsVideoItem::inputMethodEvent(event);
}

QVariant* QGraphicsVideoItem_virtualbase_inputMethodQuery(const VirtualQGraphicsVideoItem* self, int query) {

	return new QVariant(self->QGraphicsVideoItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QGraphicsVideoItem_virtualbase_supportsExtension(const VirtualQGraphicsVideoItem* self, int extension) {

	return self->QGraphicsVideoItem::supportsExtension(static_cast<VirtualQGraphicsVideoItem::Extension>(extension));
}

void QGraphicsVideoItem_virtualbase_setExtension(VirtualQGraphicsVideoItem* self, int extension, QVariant* variant) {

	self->QGraphicsVideoItem::setExtension(static_cast<VirtualQGraphicsVideoItem::Extension>(extension), *variant);
}

QVariant* QGraphicsVideoItem_virtualbase_extension(const VirtualQGraphicsVideoItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsVideoItem::extension(*variant));
}

const QMetaObject* QGraphicsVideoItem_staticMetaObject() { return &QGraphicsVideoItem::staticMetaObject; }

const QGraphicsVideoItem_VTable* QGraphicsVideoItem_vtbl(const VirtualQGraphicsVideoItem* self) { return self->vtbl; }
void* QGraphicsVideoItem_vdata(const VirtualQGraphicsVideoItem* self) { return self->vdata; }
void QGraphicsVideoItem_setVdata(VirtualQGraphicsVideoItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsVideoItem_protectedbase_updateMicroFocus(VirtualQGraphicsVideoItem* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsVideoItem_protectedbase_sender(const VirtualQGraphicsVideoItem* self) {
	return self->sender();
}

int QGraphicsVideoItem_protectedbase_senderSignalIndex(const VirtualQGraphicsVideoItem* self) {
	return self->senderSignalIndex();
}

int QGraphicsVideoItem_protectedbase_receivers(const VirtualQGraphicsVideoItem* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsVideoItem_protectedbase_isSignalConnected(const VirtualQGraphicsVideoItem* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsVideoItem_protectedbase_addToIndex(VirtualQGraphicsVideoItem* self) {
	self->addToIndex();
}

void QGraphicsVideoItem_protectedbase_removeFromIndex(VirtualQGraphicsVideoItem* self) {
	self->removeFromIndex();
}

void QGraphicsVideoItem_protectedbase_prepareGeometryChange(VirtualQGraphicsVideoItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsVideoItem_delete(QGraphicsVideoItem* self) {
	delete self;
}

