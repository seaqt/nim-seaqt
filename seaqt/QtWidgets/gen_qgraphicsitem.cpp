#include <QAbstractGraphicsShapeItem>
#include <QBrush>
#include <QChildEvent>
#include <QColor>
#include <QCursor>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QGraphicsEffect>
#include <QGraphicsEllipseItem>
#include <QGraphicsItem>
#include <QGraphicsItemGroup>
#include <QGraphicsLineItem>
#include <QGraphicsObject>
#include <QGraphicsPathItem>
#include <QGraphicsPixmapItem>
#include <QGraphicsPolygonItem>
#include <QGraphicsRectItem>
#include <QGraphicsScene>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsSimpleTextItem>
#include <QGraphicsTextItem>
#include <QGraphicsTransform>
#include <QGraphicsWidget>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineF>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPen>
#include <QPixmap>
#include <QPointF>
#include <QRectF>
#include <QRegion>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionGraphicsItem>
#include <QTextCursor>
#include <QTextDocument>
#include <QTimerEvent>
#include <QTransform>
#include <QVariant>
#include <QWidget>
#include <qgraphicsitem.h>
#include "gen_qgraphicsitem.h"
class VirtualQGraphicsItem final : public QGraphicsItem {
	const QGraphicsItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsItem_VTable* QGraphicsItem_vtbl(const VirtualQGraphicsItem* self);
	friend void* QGraphicsItem_vdata(const VirtualQGraphicsItem* self);
	friend void QGraphicsItem_setVdata(VirtualQGraphicsItem* self, void* vdata);

	VirtualQGraphicsItem(const QGraphicsItem_VTable* vtbl, void* vdata): QGraphicsItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsItem(const QGraphicsItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsItem(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_advance(VirtualQGraphicsItem* self, int phase);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsItem_virtualbase_shape(const VirtualQGraphicsItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_contains(const VirtualQGraphicsItem* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_collidesWithItem(const VirtualQGraphicsItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_collidesWithPath(const VirtualQGraphicsItem* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_isObscuredBy(const VirtualQGraphicsItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsItem_virtualbase_opaqueArea(const VirtualQGraphicsItem* self);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsItem_virtualbase_type(const VirtualQGraphicsItem* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_sceneEventFilter(VirtualQGraphicsItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_sceneEvent(VirtualQGraphicsItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_contextMenuEvent(VirtualQGraphicsItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_dragEnterEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_dragLeaveEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_dragMoveEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_dropEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_focusInEvent(VirtualQGraphicsItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_focusOutEvent(VirtualQGraphicsItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_hoverEnterEvent(VirtualQGraphicsItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_hoverMoveEvent(VirtualQGraphicsItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_keyPressEvent(VirtualQGraphicsItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_keyReleaseEvent(VirtualQGraphicsItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_mousePressEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_mouseMoveEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_wheelEvent(VirtualQGraphicsItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsItem_virtualbase_inputMethodEvent(VirtualQGraphicsItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsItem_virtualbase_inputMethodQuery(const VirtualQGraphicsItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsItem::itemChange(change, value);
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

	friend QVariant* QGraphicsItem_virtualbase_itemChange(VirtualQGraphicsItem* self, int change, QVariant* value);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItem_virtualbase_supportsExtension(const VirtualQGraphicsItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsItem_virtualbase_setExtension(VirtualQGraphicsItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsItem_virtualbase_extension(const VirtualQGraphicsItem* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsItem_protectedbase_updateMicroFocus(VirtualQGraphicsItem* self);
	friend void QGraphicsItem_protectedbase_addToIndex(VirtualQGraphicsItem* self);
	friend void QGraphicsItem_protectedbase_removeFromIndex(VirtualQGraphicsItem* self);
	friend void QGraphicsItem_protectedbase_prepareGeometryChange(VirtualQGraphicsItem* self);
};

VirtualQGraphicsItem* QGraphicsItem_new(const QGraphicsItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsItem(vtbl, vdata);
}

VirtualQGraphicsItem* QGraphicsItem_new2(const QGraphicsItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsItem(vtbl, vdata, parent);
}

QGraphicsScene* QGraphicsItem_scene(const QGraphicsItem* self) {
	return self->scene();
}

QGraphicsItem* QGraphicsItem_parentItem(const QGraphicsItem* self) {
	return self->parentItem();
}

QGraphicsItem* QGraphicsItem_topLevelItem(const QGraphicsItem* self) {
	return self->topLevelItem();
}

QGraphicsObject* QGraphicsItem_parentObject(const QGraphicsItem* self) {
	return self->parentObject();
}

QGraphicsWidget* QGraphicsItem_parentWidget(const QGraphicsItem* self) {
	return self->parentWidget();
}

QGraphicsWidget* QGraphicsItem_topLevelWidget(const QGraphicsItem* self) {
	return self->topLevelWidget();
}

QGraphicsWidget* QGraphicsItem_window(const QGraphicsItem* self) {
	return self->window();
}

QGraphicsItem* QGraphicsItem_panel(const QGraphicsItem* self) {
	return self->panel();
}

void QGraphicsItem_setParentItem(QGraphicsItem* self, QGraphicsItem* parent) {
	self->setParentItem(parent);
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsItem_childItems(const QGraphicsItem* self) {
	QList<QGraphicsItem *> _ret = self->childItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QGraphicsItem_isWidget(const QGraphicsItem* self) {
	return self->isWidget();
}

bool QGraphicsItem_isWindow(const QGraphicsItem* self) {
	return self->isWindow();
}

bool QGraphicsItem_isPanel(const QGraphicsItem* self) {
	return self->isPanel();
}

QGraphicsObject* QGraphicsItem_toGraphicsObject(QGraphicsItem* self) {
	return self->toGraphicsObject();
}

QGraphicsObject* QGraphicsItem_toGraphicsObject2(const QGraphicsItem* self) {
	return (QGraphicsObject*) self->toGraphicsObject();
}

QGraphicsItemGroup* QGraphicsItem_group(const QGraphicsItem* self) {
	return self->group();
}

void QGraphicsItem_setGroup(QGraphicsItem* self, QGraphicsItemGroup* group) {
	self->setGroup(group);
}

int QGraphicsItem_flags(const QGraphicsItem* self) {
	QGraphicsItem::GraphicsItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setFlag(QGraphicsItem* self, int flag) {
	self->setFlag(static_cast<QGraphicsItem::GraphicsItemFlag>(flag));
}

void QGraphicsItem_setFlags(QGraphicsItem* self, int flags) {
	self->setFlags(static_cast<QGraphicsItem::GraphicsItemFlags>(flags));
}

int QGraphicsItem_cacheMode(const QGraphicsItem* self) {
	QGraphicsItem::CacheMode _ret = self->cacheMode();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setCacheMode(QGraphicsItem* self, int mode) {
	self->setCacheMode(static_cast<QGraphicsItem::CacheMode>(mode));
}

int QGraphicsItem_panelModality(const QGraphicsItem* self) {
	QGraphicsItem::PanelModality _ret = self->panelModality();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setPanelModality(QGraphicsItem* self, int panelModality) {
	self->setPanelModality(static_cast<QGraphicsItem::PanelModality>(panelModality));
}

bool QGraphicsItem_isBlockedByModalPanel(const QGraphicsItem* self) {
	return self->isBlockedByModalPanel();
}

struct miqt_string QGraphicsItem_toolTip(const QGraphicsItem* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsItem_setToolTip(QGraphicsItem* self, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

QCursor* QGraphicsItem_cursor(const QGraphicsItem* self) {
	return new QCursor(self->cursor());
}

void QGraphicsItem_setCursor(QGraphicsItem* self, QCursor* cursor) {
	self->setCursor(*cursor);
}

bool QGraphicsItem_hasCursor(const QGraphicsItem* self) {
	return self->hasCursor();
}

void QGraphicsItem_unsetCursor(QGraphicsItem* self) {
	self->unsetCursor();
}

bool QGraphicsItem_isVisible(const QGraphicsItem* self) {
	return self->isVisible();
}

bool QGraphicsItem_isVisibleTo(const QGraphicsItem* self, QGraphicsItem* parent) {
	return self->isVisibleTo(parent);
}

void QGraphicsItem_setVisible(QGraphicsItem* self, bool visible) {
	self->setVisible(visible);
}

void QGraphicsItem_hide(QGraphicsItem* self) {
	self->hide();
}

void QGraphicsItem_show(QGraphicsItem* self) {
	self->show();
}

bool QGraphicsItem_isEnabled(const QGraphicsItem* self) {
	return self->isEnabled();
}

void QGraphicsItem_setEnabled(QGraphicsItem* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QGraphicsItem_isSelected(const QGraphicsItem* self) {
	return self->isSelected();
}

void QGraphicsItem_setSelected(QGraphicsItem* self, bool selected) {
	self->setSelected(selected);
}

bool QGraphicsItem_acceptDrops(const QGraphicsItem* self) {
	return self->acceptDrops();
}

void QGraphicsItem_setAcceptDrops(QGraphicsItem* self, bool on) {
	self->setAcceptDrops(on);
}

double QGraphicsItem_opacity(const QGraphicsItem* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

double QGraphicsItem_effectiveOpacity(const QGraphicsItem* self) {
	qreal _ret = self->effectiveOpacity();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setOpacity(QGraphicsItem* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

QGraphicsEffect* QGraphicsItem_graphicsEffect(const QGraphicsItem* self) {
	return self->graphicsEffect();
}

void QGraphicsItem_setGraphicsEffect(QGraphicsItem* self, QGraphicsEffect* effect) {
	self->setGraphicsEffect(effect);
}

int QGraphicsItem_acceptedMouseButtons(const QGraphicsItem* self) {
	Qt::MouseButtons _ret = self->acceptedMouseButtons();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setAcceptedMouseButtons(QGraphicsItem* self, int buttons) {
	self->setAcceptedMouseButtons(static_cast<Qt::MouseButtons>(buttons));
}

bool QGraphicsItem_acceptHoverEvents(const QGraphicsItem* self) {
	return self->acceptHoverEvents();
}

void QGraphicsItem_setAcceptHoverEvents(QGraphicsItem* self, bool enabled) {
	self->setAcceptHoverEvents(enabled);
}

bool QGraphicsItem_acceptTouchEvents(const QGraphicsItem* self) {
	return self->acceptTouchEvents();
}

void QGraphicsItem_setAcceptTouchEvents(QGraphicsItem* self, bool enabled) {
	self->setAcceptTouchEvents(enabled);
}

bool QGraphicsItem_filtersChildEvents(const QGraphicsItem* self) {
	return self->filtersChildEvents();
}

void QGraphicsItem_setFiltersChildEvents(QGraphicsItem* self, bool enabled) {
	self->setFiltersChildEvents(enabled);
}

bool QGraphicsItem_handlesChildEvents(const QGraphicsItem* self) {
	return self->handlesChildEvents();
}

void QGraphicsItem_setHandlesChildEvents(QGraphicsItem* self, bool enabled) {
	self->setHandlesChildEvents(enabled);
}

bool QGraphicsItem_isActive(const QGraphicsItem* self) {
	return self->isActive();
}

void QGraphicsItem_setActive(QGraphicsItem* self, bool active) {
	self->setActive(active);
}

bool QGraphicsItem_hasFocus(const QGraphicsItem* self) {
	return self->hasFocus();
}

void QGraphicsItem_setFocus(QGraphicsItem* self) {
	self->setFocus();
}

void QGraphicsItem_clearFocus(QGraphicsItem* self) {
	self->clearFocus();
}

QGraphicsItem* QGraphicsItem_focusProxy(const QGraphicsItem* self) {
	return self->focusProxy();
}

void QGraphicsItem_setFocusProxy(QGraphicsItem* self, QGraphicsItem* item) {
	self->setFocusProxy(item);
}

QGraphicsItem* QGraphicsItem_focusItem(const QGraphicsItem* self) {
	return self->focusItem();
}

QGraphicsItem* QGraphicsItem_focusScopeItem(const QGraphicsItem* self) {
	return self->focusScopeItem();
}

void QGraphicsItem_grabMouse(QGraphicsItem* self) {
	self->grabMouse();
}

void QGraphicsItem_ungrabMouse(QGraphicsItem* self) {
	self->ungrabMouse();
}

void QGraphicsItem_grabKeyboard(QGraphicsItem* self) {
	self->grabKeyboard();
}

void QGraphicsItem_ungrabKeyboard(QGraphicsItem* self) {
	self->ungrabKeyboard();
}

QPointF* QGraphicsItem_pos(const QGraphicsItem* self) {
	return new QPointF(self->pos());
}

double QGraphicsItem_x(const QGraphicsItem* self) {
	qreal _ret = self->x();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setX(QGraphicsItem* self, double x) {
	self->setX(static_cast<qreal>(x));
}

double QGraphicsItem_y(const QGraphicsItem* self) {
	qreal _ret = self->y();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setY(QGraphicsItem* self, double y) {
	self->setY(static_cast<qreal>(y));
}

QPointF* QGraphicsItem_scenePos(const QGraphicsItem* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsItem_setPos(QGraphicsItem* self, QPointF* pos) {
	self->setPos(*pos);
}

void QGraphicsItem_setPos2(QGraphicsItem* self, double x, double y) {
	self->setPos(static_cast<qreal>(x), static_cast<qreal>(y));
}

void QGraphicsItem_moveBy(QGraphicsItem* self, double dx, double dy) {
	self->moveBy(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

void QGraphicsItem_ensureVisible(QGraphicsItem* self) {
	self->ensureVisible();
}

void QGraphicsItem_ensureVisible2(QGraphicsItem* self, double x, double y, double w, double h) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QTransform* QGraphicsItem_transform(const QGraphicsItem* self) {
	return new QTransform(self->transform());
}

QTransform* QGraphicsItem_sceneTransform(const QGraphicsItem* self) {
	return new QTransform(self->sceneTransform());
}

QTransform* QGraphicsItem_deviceTransform(const QGraphicsItem* self, QTransform* viewportTransform) {
	return new QTransform(self->deviceTransform(*viewportTransform));
}

QTransform* QGraphicsItem_itemTransform(const QGraphicsItem* self, QGraphicsItem* other) {
	return new QTransform(self->itemTransform(other));
}

void QGraphicsItem_setTransform(QGraphicsItem* self, QTransform* matrix) {
	self->setTransform(*matrix);
}

void QGraphicsItem_resetTransform(QGraphicsItem* self) {
	self->resetTransform();
}

void QGraphicsItem_setRotation(QGraphicsItem* self, double angle) {
	self->setRotation(static_cast<qreal>(angle));
}

double QGraphicsItem_rotation(const QGraphicsItem* self) {
	qreal _ret = self->rotation();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setScale(QGraphicsItem* self, double scale) {
	self->setScale(static_cast<qreal>(scale));
}

double QGraphicsItem_scale(const QGraphicsItem* self) {
	qreal _ret = self->scale();
	return static_cast<double>(_ret);
}

struct miqt_array /* of QGraphicsTransform* */  QGraphicsItem_transformations(const QGraphicsItem* self) {
	QList<QGraphicsTransform *> _ret = self->transformations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsTransform** _arr = static_cast<QGraphicsTransform**>(malloc(sizeof(QGraphicsTransform*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItem_setTransformations(QGraphicsItem* self, struct miqt_array /* of QGraphicsTransform* */  transformations) {
	QList<QGraphicsTransform *> transformations_QList;
	transformations_QList.reserve(transformations.len);
	QGraphicsTransform** transformations_arr = static_cast<QGraphicsTransform**>(transformations.data);
	for(size_t i = 0; i < transformations.len; ++i) {
		transformations_QList.push_back(transformations_arr[i]);
	}
	self->setTransformations(transformations_QList);
}

QPointF* QGraphicsItem_transformOriginPoint(const QGraphicsItem* self) {
	return new QPointF(self->transformOriginPoint());
}

void QGraphicsItem_setTransformOriginPoint(QGraphicsItem* self, QPointF* origin) {
	self->setTransformOriginPoint(*origin);
}

void QGraphicsItem_setTransformOriginPoint2(QGraphicsItem* self, double ax, double ay) {
	self->setTransformOriginPoint(static_cast<qreal>(ax), static_cast<qreal>(ay));
}

void QGraphicsItem_advance(QGraphicsItem* self, int phase) {
	self->advance(static_cast<int>(phase));
}

double QGraphicsItem_zValue(const QGraphicsItem* self) {
	qreal _ret = self->zValue();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setZValue(QGraphicsItem* self, double z) {
	self->setZValue(static_cast<qreal>(z));
}

void QGraphicsItem_stackBefore(QGraphicsItem* self, QGraphicsItem* sibling) {
	self->stackBefore(sibling);
}

QRectF* QGraphicsItem_boundingRect(const QGraphicsItem* self) {
	return new QRectF(self->boundingRect());
}

QRectF* QGraphicsItem_childrenBoundingRect(const QGraphicsItem* self) {
	return new QRectF(self->childrenBoundingRect());
}

QRectF* QGraphicsItem_sceneBoundingRect(const QGraphicsItem* self) {
	return new QRectF(self->sceneBoundingRect());
}

QPainterPath* QGraphicsItem_shape(const QGraphicsItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsItem_isClipped(const QGraphicsItem* self) {
	return self->isClipped();
}

QPainterPath* QGraphicsItem_clipPath(const QGraphicsItem* self) {
	return new QPainterPath(self->clipPath());
}

bool QGraphicsItem_contains(const QGraphicsItem* self, QPointF* point) {
	return self->contains(*point);
}

bool QGraphicsItem_collidesWithItem(const QGraphicsItem* self, QGraphicsItem* other, int mode) {
	return self->collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsItem_collidesWithPath(const QGraphicsItem* self, QPainterPath* path, int mode) {
	return self->collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsItem_collidingItems(const QGraphicsItem* self) {
	QList<QGraphicsItem *> _ret = self->collidingItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QGraphicsItem_isObscured(const QGraphicsItem* self) {
	return self->isObscured();
}

bool QGraphicsItem_isObscured2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return self->isObscured(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

bool QGraphicsItem_isObscuredBy(const QGraphicsItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsItem_opaqueArea(const QGraphicsItem* self) {
	return new QPainterPath(self->opaqueArea());
}

QRegion* QGraphicsItem_boundingRegion(const QGraphicsItem* self, QTransform* itemToDeviceTransform) {
	return new QRegion(self->boundingRegion(*itemToDeviceTransform));
}

double QGraphicsItem_boundingRegionGranularity(const QGraphicsItem* self) {
	qreal _ret = self->boundingRegionGranularity();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setBoundingRegionGranularity(QGraphicsItem* self, double granularity) {
	self->setBoundingRegionGranularity(static_cast<qreal>(granularity));
}

void QGraphicsItem_paint(QGraphicsItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

void QGraphicsItem_update(QGraphicsItem* self) {
	self->update();
}

void QGraphicsItem_update2(QGraphicsItem* self, double x, double y, double width, double height) {
	self->update(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(width), static_cast<qreal>(height));
}

void QGraphicsItem_scroll(QGraphicsItem* self, double dx, double dy) {
	self->scroll(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

QPointF* QGraphicsItem_mapToItem(const QGraphicsItem* self, QGraphicsItem* item, QPointF* point) {
	return new QPointF(self->mapToItem(item, *point));
}

QPointF* QGraphicsItem_mapToParent(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapToParent(*point));
}

QPointF* QGraphicsItem_mapToScene(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapToScene(*point));
}

QRectF* QGraphicsItem_mapRectToItem(const QGraphicsItem* self, QGraphicsItem* item, QRectF* rect) {
	return new QRectF(self->mapRectToItem(item, *rect));
}

QRectF* QGraphicsItem_mapRectToParent(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectToParent(*rect));
}

QRectF* QGraphicsItem_mapRectToScene(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectToScene(*rect));
}

QPainterPath* QGraphicsItem_mapToItem4(const QGraphicsItem* self, QGraphicsItem* item, QPainterPath* path) {
	return new QPainterPath(self->mapToItem(item, *path));
}

QPainterPath* QGraphicsItem_mapToParentWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapToParent(*path));
}

QPainterPath* QGraphicsItem_mapToSceneWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapToScene(*path));
}

QPointF* QGraphicsItem_mapFromItem(const QGraphicsItem* self, QGraphicsItem* item, QPointF* point) {
	return new QPointF(self->mapFromItem(item, *point));
}

QPointF* QGraphicsItem_mapFromParent(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapFromParent(*point));
}

QPointF* QGraphicsItem_mapFromScene(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapFromScene(*point));
}

QRectF* QGraphicsItem_mapRectFromItem(const QGraphicsItem* self, QGraphicsItem* item, QRectF* rect) {
	return new QRectF(self->mapRectFromItem(item, *rect));
}

QRectF* QGraphicsItem_mapRectFromParent(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectFromParent(*rect));
}

QRectF* QGraphicsItem_mapRectFromScene(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectFromScene(*rect));
}

QPainterPath* QGraphicsItem_mapFromItem4(const QGraphicsItem* self, QGraphicsItem* item, QPainterPath* path) {
	return new QPainterPath(self->mapFromItem(item, *path));
}

QPainterPath* QGraphicsItem_mapFromParentWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapFromParent(*path));
}

QPainterPath* QGraphicsItem_mapFromSceneWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapFromScene(*path));
}

QPointF* QGraphicsItem_mapToItem5(const QGraphicsItem* self, QGraphicsItem* item, double x, double y) {
	return new QPointF(self->mapToItem(item, static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapToParent2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapToParent(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapToScene2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapToScene(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QRectF* QGraphicsItem_mapRectToItem2(const QGraphicsItem* self, QGraphicsItem* item, double x, double y, double w, double h) {
	return new QRectF(self->mapRectToItem(item, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectToParent2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectToParent(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectToScene2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectToScene(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QPointF* QGraphicsItem_mapFromItem5(const QGraphicsItem* self, QGraphicsItem* item, double x, double y) {
	return new QPointF(self->mapFromItem(item, static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapFromParent2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapFromParent(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapFromScene2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapFromScene(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QRectF* QGraphicsItem_mapRectFromItem2(const QGraphicsItem* self, QGraphicsItem* item, double x, double y, double w, double h) {
	return new QRectF(self->mapRectFromItem(item, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectFromParent2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectFromParent(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectFromScene2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectFromScene(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

bool QGraphicsItem_isAncestorOf(const QGraphicsItem* self, QGraphicsItem* child) {
	return self->isAncestorOf(child);
}

QGraphicsItem* QGraphicsItem_commonAncestorItem(const QGraphicsItem* self, QGraphicsItem* other) {
	return self->commonAncestorItem(other);
}

bool QGraphicsItem_isUnderMouse(const QGraphicsItem* self) {
	return self->isUnderMouse();
}

QVariant* QGraphicsItem_data(const QGraphicsItem* self, int key) {
	return new QVariant(self->data(static_cast<int>(key)));
}

void QGraphicsItem_setData(QGraphicsItem* self, int key, QVariant* value) {
	self->setData(static_cast<int>(key), *value);
}

int QGraphicsItem_inputMethodHints(const QGraphicsItem* self) {
	Qt::InputMethodHints _ret = self->inputMethodHints();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setInputMethodHints(QGraphicsItem* self, int hints) {
	self->setInputMethodHints(static_cast<Qt::InputMethodHints>(hints));
}

int QGraphicsItem_type(const QGraphicsItem* self) {
	return self->type();
}

void QGraphicsItem_installSceneEventFilter(QGraphicsItem* self, QGraphicsItem* filterItem) {
	self->installSceneEventFilter(filterItem);
}

void QGraphicsItem_removeSceneEventFilter(QGraphicsItem* self, QGraphicsItem* filterItem) {
	self->removeSceneEventFilter(filterItem);
}

void QGraphicsItem_setFlag2(QGraphicsItem* self, int flag, bool enabled) {
	self->setFlag(static_cast<QGraphicsItem::GraphicsItemFlag>(flag), enabled);
}

void QGraphicsItem_setCacheMode2(QGraphicsItem* self, int mode, QSize* cacheSize) {
	self->setCacheMode(static_cast<QGraphicsItem::CacheMode>(mode), *cacheSize);
}

void QGraphicsItem_setFocus1(QGraphicsItem* self, int focusReason) {
	self->setFocus(static_cast<Qt::FocusReason>(focusReason));
}

void QGraphicsItem_ensureVisible1(QGraphicsItem* self, QRectF* rect) {
	self->ensureVisible(*rect);
}

void QGraphicsItem_ensureVisible22(QGraphicsItem* self, QRectF* rect, int xmargin) {
	self->ensureVisible(*rect, static_cast<int>(xmargin));
}

void QGraphicsItem_ensureVisible3(QGraphicsItem* self, QRectF* rect, int xmargin, int ymargin) {
	self->ensureVisible(*rect, static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QGraphicsItem_ensureVisible5(QGraphicsItem* self, double x, double y, double w, double h, int xmargin) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<int>(xmargin));
}

void QGraphicsItem_ensureVisible6(QGraphicsItem* self, double x, double y, double w, double h, int xmargin, int ymargin) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<int>(xmargin), static_cast<int>(ymargin));
}

QTransform* QGraphicsItem_itemTransform2(const QGraphicsItem* self, QGraphicsItem* other, bool* ok) {
	return new QTransform(self->itemTransform(other, ok));
}

void QGraphicsItem_setTransform2(QGraphicsItem* self, QTransform* matrix, bool combine) {
	self->setTransform(*matrix, combine);
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsItem_collidingItems1(const QGraphicsItem* self, int mode) {
	QList<QGraphicsItem *> _ret = self->collidingItems(static_cast<Qt::ItemSelectionMode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QGraphicsItem_isObscured1(const QGraphicsItem* self, QRectF* rect) {
	return self->isObscured(*rect);
}

void QGraphicsItem_update1(QGraphicsItem* self, QRectF* rect) {
	self->update(*rect);
}

void QGraphicsItem_scroll3(QGraphicsItem* self, double dx, double dy, QRectF* rect) {
	self->scroll(static_cast<qreal>(dx), static_cast<qreal>(dy), *rect);
}

void QGraphicsItem_virtualbase_advance(VirtualQGraphicsItem* self, int phase) {

	self->QGraphicsItem::advance(static_cast<int>(phase));
}

QPainterPath* QGraphicsItem_virtualbase_shape(const VirtualQGraphicsItem* self) {

	return new QPainterPath(self->QGraphicsItem::shape());
}

bool QGraphicsItem_virtualbase_contains(const VirtualQGraphicsItem* self, QPointF* point) {

	return self->QGraphicsItem::contains(*point);
}

bool QGraphicsItem_virtualbase_collidesWithItem(const VirtualQGraphicsItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsItem_virtualbase_collidesWithPath(const VirtualQGraphicsItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsItem_virtualbase_isObscuredBy(const VirtualQGraphicsItem* self, QGraphicsItem* item) {

	return self->QGraphicsItem::isObscuredBy(item);
}

QPainterPath* QGraphicsItem_virtualbase_opaqueArea(const VirtualQGraphicsItem* self) {

	return new QPainterPath(self->QGraphicsItem::opaqueArea());
}

int QGraphicsItem_virtualbase_type(const VirtualQGraphicsItem* self) {

	return self->QGraphicsItem::type();
}

bool QGraphicsItem_virtualbase_sceneEventFilter(VirtualQGraphicsItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsItem::sceneEventFilter(watched, event);
}

bool QGraphicsItem_virtualbase_sceneEvent(VirtualQGraphicsItem* self, QEvent* event) {

	return self->QGraphicsItem::sceneEvent(event);
}

void QGraphicsItem_virtualbase_contextMenuEvent(VirtualQGraphicsItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsItem::contextMenuEvent(event);
}

void QGraphicsItem_virtualbase_dragEnterEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItem::dragEnterEvent(event);
}

void QGraphicsItem_virtualbase_dragLeaveEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItem::dragLeaveEvent(event);
}

void QGraphicsItem_virtualbase_dragMoveEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItem::dragMoveEvent(event);
}

void QGraphicsItem_virtualbase_dropEvent(VirtualQGraphicsItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItem::dropEvent(event);
}

void QGraphicsItem_virtualbase_focusInEvent(VirtualQGraphicsItem* self, QFocusEvent* event) {

	self->QGraphicsItem::focusInEvent(event);
}

void QGraphicsItem_virtualbase_focusOutEvent(VirtualQGraphicsItem* self, QFocusEvent* event) {

	self->QGraphicsItem::focusOutEvent(event);
}

void QGraphicsItem_virtualbase_hoverEnterEvent(VirtualQGraphicsItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsItem::hoverEnterEvent(event);
}

void QGraphicsItem_virtualbase_hoverMoveEvent(VirtualQGraphicsItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsItem::hoverMoveEvent(event);
}

void QGraphicsItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsItem::hoverLeaveEvent(event);
}

void QGraphicsItem_virtualbase_keyPressEvent(VirtualQGraphicsItem* self, QKeyEvent* event) {

	self->QGraphicsItem::keyPressEvent(event);
}

void QGraphicsItem_virtualbase_keyReleaseEvent(VirtualQGraphicsItem* self, QKeyEvent* event) {

	self->QGraphicsItem::keyReleaseEvent(event);
}

void QGraphicsItem_virtualbase_mousePressEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItem::mousePressEvent(event);
}

void QGraphicsItem_virtualbase_mouseMoveEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItem::mouseMoveEvent(event);
}

void QGraphicsItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItem::mouseReleaseEvent(event);
}

void QGraphicsItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItem::mouseDoubleClickEvent(event);
}

void QGraphicsItem_virtualbase_wheelEvent(VirtualQGraphicsItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsItem::wheelEvent(event);
}

void QGraphicsItem_virtualbase_inputMethodEvent(VirtualQGraphicsItem* self, QInputMethodEvent* event) {

	self->QGraphicsItem::inputMethodEvent(event);
}

QVariant* QGraphicsItem_virtualbase_inputMethodQuery(const VirtualQGraphicsItem* self, int query) {

	return new QVariant(self->QGraphicsItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsItem_virtualbase_itemChange(VirtualQGraphicsItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsItem::itemChange(static_cast<VirtualQGraphicsItem::GraphicsItemChange>(change), *value));
}

bool QGraphicsItem_virtualbase_supportsExtension(const VirtualQGraphicsItem* self, int extension) {

	return self->QGraphicsItem::supportsExtension(static_cast<VirtualQGraphicsItem::Extension>(extension));
}

void QGraphicsItem_virtualbase_setExtension(VirtualQGraphicsItem* self, int extension, QVariant* variant) {

	self->QGraphicsItem::setExtension(static_cast<VirtualQGraphicsItem::Extension>(extension), *variant);
}

QVariant* QGraphicsItem_virtualbase_extension(const VirtualQGraphicsItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsItem::extension(*variant));
}

const QGraphicsItem_VTable* QGraphicsItem_vtbl(const VirtualQGraphicsItem* self) { return self->vtbl; }
void* QGraphicsItem_vdata(const VirtualQGraphicsItem* self) { return self->vdata; }
void QGraphicsItem_setVdata(VirtualQGraphicsItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsItem_protectedbase_updateMicroFocus(VirtualQGraphicsItem* self) {
	self->updateMicroFocus();
}

void QGraphicsItem_protectedbase_addToIndex(VirtualQGraphicsItem* self) {
	self->addToIndex();
}

void QGraphicsItem_protectedbase_removeFromIndex(VirtualQGraphicsItem* self) {
	self->removeFromIndex();
}

void QGraphicsItem_protectedbase_prepareGeometryChange(VirtualQGraphicsItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsItem_delete(QGraphicsItem* self) {
	delete self;
}

class VirtualQGraphicsObject final : public QGraphicsObject {
	const QGraphicsObject_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsObject_VTable* QGraphicsObject_vtbl(const VirtualQGraphicsObject* self);
	friend void* QGraphicsObject_vdata(const VirtualQGraphicsObject* self);
	friend void QGraphicsObject_setVdata(VirtualQGraphicsObject* self, void* vdata);

	VirtualQGraphicsObject(const QGraphicsObject_VTable* vtbl, void* vdata): QGraphicsObject(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsObject(const QGraphicsObject_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsObject(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsObject() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsObject::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsObject_virtualbase_metaObject(const VirtualQGraphicsObject* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsObject::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsObject_virtualbase_metacast(VirtualQGraphicsObject* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsObject::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsObject_virtualbase_metacall(VirtualQGraphicsObject* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsObject::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_event(VirtualQGraphicsObject* self, QEvent* ev);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsObject::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_eventFilter(VirtualQGraphicsObject* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsObject::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_timerEvent(VirtualQGraphicsObject* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsObject::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_childEvent(VirtualQGraphicsObject* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsObject::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_customEvent(VirtualQGraphicsObject* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsObject::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_connectNotify(VirtualQGraphicsObject* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsObject::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_disconnectNotify(VirtualQGraphicsObject* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsObject::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_advance(VirtualQGraphicsObject* self, int phase);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsObject::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsObject_virtualbase_shape(const VirtualQGraphicsObject* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsObject::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_contains(const VirtualQGraphicsObject* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsObject::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_collidesWithItem(const VirtualQGraphicsObject* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsObject::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_collidesWithPath(const VirtualQGraphicsObject* self, QPainterPath* path, int mode);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsObject::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_isObscuredBy(const VirtualQGraphicsObject* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsObject::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsObject_virtualbase_opaqueArea(const VirtualQGraphicsObject* self);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsObject::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsObject_virtualbase_type(const VirtualQGraphicsObject* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsObject::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_sceneEventFilter(VirtualQGraphicsObject* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsObject::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_sceneEvent(VirtualQGraphicsObject* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsObject::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_contextMenuEvent(VirtualQGraphicsObject* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsObject::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_dragEnterEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsObject::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_dragLeaveEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsObject::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_dragMoveEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsObject::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_dropEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsObject::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_focusInEvent(VirtualQGraphicsObject* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsObject::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_focusOutEvent(VirtualQGraphicsObject* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsObject::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_hoverEnterEvent(VirtualQGraphicsObject* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsObject::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_hoverMoveEvent(VirtualQGraphicsObject* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsObject::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_hoverLeaveEvent(VirtualQGraphicsObject* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsObject::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_keyPressEvent(VirtualQGraphicsObject* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsObject::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_keyReleaseEvent(VirtualQGraphicsObject* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsObject::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_mousePressEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsObject::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_mouseMoveEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsObject::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_mouseReleaseEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsObject::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsObject::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_wheelEvent(VirtualQGraphicsObject* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsObject::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsObject_virtualbase_inputMethodEvent(VirtualQGraphicsObject* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsObject::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsObject_virtualbase_inputMethodQuery(const VirtualQGraphicsObject* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsObject::itemChange(change, value);
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

	friend QVariant* QGraphicsObject_virtualbase_itemChange(VirtualQGraphicsObject* self, int change, QVariant* value);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsObject::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsObject_virtualbase_supportsExtension(const VirtualQGraphicsObject* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsObject::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsObject_virtualbase_setExtension(VirtualQGraphicsObject* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsObject::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsObject_virtualbase_extension(const VirtualQGraphicsObject* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsObject_protectedbase_updateMicroFocus(VirtualQGraphicsObject* self);
	friend QObject* QGraphicsObject_protectedbase_sender(const VirtualQGraphicsObject* self);
	friend int QGraphicsObject_protectedbase_senderSignalIndex(const VirtualQGraphicsObject* self);
	friend int QGraphicsObject_protectedbase_receivers(const VirtualQGraphicsObject* self, const char* signal);
	friend bool QGraphicsObject_protectedbase_isSignalConnected(const VirtualQGraphicsObject* self, QMetaMethod* signal);
	friend void QGraphicsObject_protectedbase_addToIndex(VirtualQGraphicsObject* self);
	friend void QGraphicsObject_protectedbase_removeFromIndex(VirtualQGraphicsObject* self);
	friend void QGraphicsObject_protectedbase_prepareGeometryChange(VirtualQGraphicsObject* self);
};

VirtualQGraphicsObject* QGraphicsObject_new(const QGraphicsObject_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsObject(vtbl, vdata);
}

VirtualQGraphicsObject* QGraphicsObject_new2(const QGraphicsObject_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsObject(vtbl, vdata, parent);
}

void QGraphicsObject_virtbase(QGraphicsObject* src, QObject** outptr_QObject, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QMetaObject* QGraphicsObject_metaObject(const QGraphicsObject* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsObject_metacast(QGraphicsObject* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsObject_metacall(QGraphicsObject* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsObject_tr(const char* s) {
	QString _ret = QGraphicsObject::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsObject_grabGesture(QGraphicsObject* self, int type) {
	self->grabGesture(static_cast<Qt::GestureType>(type));
}

void QGraphicsObject_ungrabGesture(QGraphicsObject* self, int type) {
	self->ungrabGesture(static_cast<Qt::GestureType>(type));
}

void QGraphicsObject_parentChanged(QGraphicsObject* self) {
	self->parentChanged();
}

void QGraphicsObject_connect_parentChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::parentChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_opacityChanged(QGraphicsObject* self) {
	self->opacityChanged();
}

void QGraphicsObject_connect_opacityChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::opacityChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_visibleChanged(QGraphicsObject* self) {
	self->visibleChanged();
}

void QGraphicsObject_connect_visibleChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::visibleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_enabledChanged(QGraphicsObject* self) {
	self->enabledChanged();
}

void QGraphicsObject_connect_enabledChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::enabledChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_xChanged(QGraphicsObject* self) {
	self->xChanged();
}

void QGraphicsObject_connect_xChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::xChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_yChanged(QGraphicsObject* self) {
	self->yChanged();
}

void QGraphicsObject_connect_yChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::yChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_zChanged(QGraphicsObject* self) {
	self->zChanged();
}

void QGraphicsObject_connect_zChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::zChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_rotationChanged(QGraphicsObject* self) {
	self->rotationChanged();
}

void QGraphicsObject_connect_rotationChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::rotationChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_scaleChanged(QGraphicsObject* self) {
	self->scaleChanged();
}

void QGraphicsObject_connect_scaleChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::scaleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_childrenChanged(QGraphicsObject* self) {
	self->childrenChanged();
}

void QGraphicsObject_connect_childrenChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::childrenChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_widthChanged(QGraphicsObject* self) {
	self->widthChanged();
}

void QGraphicsObject_connect_widthChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::widthChanged), self, local_caller{slot, callback, release});
}

void QGraphicsObject_heightChanged(QGraphicsObject* self) {
	self->heightChanged();
}

void QGraphicsObject_connect_heightChanged(VirtualQGraphicsObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::heightChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsObject_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsObject::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsObject_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsObject::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsObject_grabGesture2(QGraphicsObject* self, int type, int flags) {
	self->grabGesture(static_cast<Qt::GestureType>(type), static_cast<Qt::GestureFlags>(flags));
}

QMetaObject* QGraphicsObject_virtualbase_metaObject(const VirtualQGraphicsObject* self) {

	return (QMetaObject*) self->QGraphicsObject::metaObject();
}

void* QGraphicsObject_virtualbase_metacast(VirtualQGraphicsObject* self, const char* param1) {

	return self->QGraphicsObject::qt_metacast(param1);
}

int QGraphicsObject_virtualbase_metacall(VirtualQGraphicsObject* self, int param1, int param2, void** param3) {

	return self->QGraphicsObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QGraphicsObject_virtualbase_event(VirtualQGraphicsObject* self, QEvent* ev) {

	return self->QGraphicsObject::event(ev);
}

bool QGraphicsObject_virtualbase_eventFilter(VirtualQGraphicsObject* self, QObject* watched, QEvent* event) {

	return self->QGraphicsObject::eventFilter(watched, event);
}

void QGraphicsObject_virtualbase_timerEvent(VirtualQGraphicsObject* self, QTimerEvent* event) {

	self->QGraphicsObject::timerEvent(event);
}

void QGraphicsObject_virtualbase_childEvent(VirtualQGraphicsObject* self, QChildEvent* event) {

	self->QGraphicsObject::childEvent(event);
}

void QGraphicsObject_virtualbase_customEvent(VirtualQGraphicsObject* self, QEvent* event) {

	self->QGraphicsObject::customEvent(event);
}

void QGraphicsObject_virtualbase_connectNotify(VirtualQGraphicsObject* self, QMetaMethod* signal) {

	self->QGraphicsObject::connectNotify(*signal);
}

void QGraphicsObject_virtualbase_disconnectNotify(VirtualQGraphicsObject* self, QMetaMethod* signal) {

	self->QGraphicsObject::disconnectNotify(*signal);
}

void QGraphicsObject_virtualbase_advance(VirtualQGraphicsObject* self, int phase) {

	self->QGraphicsObject::advance(static_cast<int>(phase));
}

QPainterPath* QGraphicsObject_virtualbase_shape(const VirtualQGraphicsObject* self) {

	return new QPainterPath(self->QGraphicsObject::shape());
}

bool QGraphicsObject_virtualbase_contains(const VirtualQGraphicsObject* self, QPointF* point) {

	return self->QGraphicsObject::contains(*point);
}

bool QGraphicsObject_virtualbase_collidesWithItem(const VirtualQGraphicsObject* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsObject::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsObject_virtualbase_collidesWithPath(const VirtualQGraphicsObject* self, QPainterPath* path, int mode) {

	return self->QGraphicsObject::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsObject_virtualbase_isObscuredBy(const VirtualQGraphicsObject* self, QGraphicsItem* item) {

	return self->QGraphicsObject::isObscuredBy(item);
}

QPainterPath* QGraphicsObject_virtualbase_opaqueArea(const VirtualQGraphicsObject* self) {

	return new QPainterPath(self->QGraphicsObject::opaqueArea());
}

int QGraphicsObject_virtualbase_type(const VirtualQGraphicsObject* self) {

	return self->QGraphicsObject::type();
}

bool QGraphicsObject_virtualbase_sceneEventFilter(VirtualQGraphicsObject* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsObject::sceneEventFilter(watched, event);
}

bool QGraphicsObject_virtualbase_sceneEvent(VirtualQGraphicsObject* self, QEvent* event) {

	return self->QGraphicsObject::sceneEvent(event);
}

void QGraphicsObject_virtualbase_contextMenuEvent(VirtualQGraphicsObject* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsObject::contextMenuEvent(event);
}

void QGraphicsObject_virtualbase_dragEnterEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsObject::dragEnterEvent(event);
}

void QGraphicsObject_virtualbase_dragLeaveEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsObject::dragLeaveEvent(event);
}

void QGraphicsObject_virtualbase_dragMoveEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsObject::dragMoveEvent(event);
}

void QGraphicsObject_virtualbase_dropEvent(VirtualQGraphicsObject* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsObject::dropEvent(event);
}

void QGraphicsObject_virtualbase_focusInEvent(VirtualQGraphicsObject* self, QFocusEvent* event) {

	self->QGraphicsObject::focusInEvent(event);
}

void QGraphicsObject_virtualbase_focusOutEvent(VirtualQGraphicsObject* self, QFocusEvent* event) {

	self->QGraphicsObject::focusOutEvent(event);
}

void QGraphicsObject_virtualbase_hoverEnterEvent(VirtualQGraphicsObject* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsObject::hoverEnterEvent(event);
}

void QGraphicsObject_virtualbase_hoverMoveEvent(VirtualQGraphicsObject* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsObject::hoverMoveEvent(event);
}

void QGraphicsObject_virtualbase_hoverLeaveEvent(VirtualQGraphicsObject* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsObject::hoverLeaveEvent(event);
}

void QGraphicsObject_virtualbase_keyPressEvent(VirtualQGraphicsObject* self, QKeyEvent* event) {

	self->QGraphicsObject::keyPressEvent(event);
}

void QGraphicsObject_virtualbase_keyReleaseEvent(VirtualQGraphicsObject* self, QKeyEvent* event) {

	self->QGraphicsObject::keyReleaseEvent(event);
}

void QGraphicsObject_virtualbase_mousePressEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsObject::mousePressEvent(event);
}

void QGraphicsObject_virtualbase_mouseMoveEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsObject::mouseMoveEvent(event);
}

void QGraphicsObject_virtualbase_mouseReleaseEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsObject::mouseReleaseEvent(event);
}

void QGraphicsObject_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsObject* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsObject::mouseDoubleClickEvent(event);
}

void QGraphicsObject_virtualbase_wheelEvent(VirtualQGraphicsObject* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsObject::wheelEvent(event);
}

void QGraphicsObject_virtualbase_inputMethodEvent(VirtualQGraphicsObject* self, QInputMethodEvent* event) {

	self->QGraphicsObject::inputMethodEvent(event);
}

QVariant* QGraphicsObject_virtualbase_inputMethodQuery(const VirtualQGraphicsObject* self, int query) {

	return new QVariant(self->QGraphicsObject::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsObject_virtualbase_itemChange(VirtualQGraphicsObject* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsObject::itemChange(static_cast<VirtualQGraphicsObject::GraphicsItemChange>(change), *value));
}

bool QGraphicsObject_virtualbase_supportsExtension(const VirtualQGraphicsObject* self, int extension) {

	return self->QGraphicsObject::supportsExtension(static_cast<VirtualQGraphicsObject::Extension>(extension));
}

void QGraphicsObject_virtualbase_setExtension(VirtualQGraphicsObject* self, int extension, QVariant* variant) {

	self->QGraphicsObject::setExtension(static_cast<VirtualQGraphicsObject::Extension>(extension), *variant);
}

QVariant* QGraphicsObject_virtualbase_extension(const VirtualQGraphicsObject* self, QVariant* variant) {

	return new QVariant(self->QGraphicsObject::extension(*variant));
}

const QMetaObject* QGraphicsObject_staticMetaObject() { return &QGraphicsObject::staticMetaObject; }

const QGraphicsObject_VTable* QGraphicsObject_vtbl(const VirtualQGraphicsObject* self) { return self->vtbl; }
void* QGraphicsObject_vdata(const VirtualQGraphicsObject* self) { return self->vdata; }
void QGraphicsObject_setVdata(VirtualQGraphicsObject* self, void* vdata) { self->vdata = vdata; }

void QGraphicsObject_protectedbase_updateMicroFocus(VirtualQGraphicsObject* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsObject_protectedbase_sender(const VirtualQGraphicsObject* self) {
	return self->sender();
}

int QGraphicsObject_protectedbase_senderSignalIndex(const VirtualQGraphicsObject* self) {
	return self->senderSignalIndex();
}

int QGraphicsObject_protectedbase_receivers(const VirtualQGraphicsObject* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsObject_protectedbase_isSignalConnected(const VirtualQGraphicsObject* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsObject_protectedbase_addToIndex(VirtualQGraphicsObject* self) {
	self->addToIndex();
}

void QGraphicsObject_protectedbase_removeFromIndex(VirtualQGraphicsObject* self) {
	self->removeFromIndex();
}

void QGraphicsObject_protectedbase_prepareGeometryChange(VirtualQGraphicsObject* self) {
	self->prepareGeometryChange();
}

void QGraphicsObject_delete(QGraphicsObject* self) {
	delete self;
}

class VirtualQAbstractGraphicsShapeItem final : public QAbstractGraphicsShapeItem {
	const QAbstractGraphicsShapeItem_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractGraphicsShapeItem_VTable* QAbstractGraphicsShapeItem_vtbl(const VirtualQAbstractGraphicsShapeItem* self);
	friend void* QAbstractGraphicsShapeItem_vdata(const VirtualQAbstractGraphicsShapeItem* self);
	friend void QAbstractGraphicsShapeItem_setVdata(VirtualQAbstractGraphicsShapeItem* self, void* vdata);

	VirtualQAbstractGraphicsShapeItem(const QAbstractGraphicsShapeItem_VTable* vtbl, void* vdata): QAbstractGraphicsShapeItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractGraphicsShapeItem(const QAbstractGraphicsShapeItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QAbstractGraphicsShapeItem(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractGraphicsShapeItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QAbstractGraphicsShapeItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_isObscuredBy(const VirtualQAbstractGraphicsShapeItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QAbstractGraphicsShapeItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QAbstractGraphicsShapeItem_virtualbase_opaqueArea(const VirtualQAbstractGraphicsShapeItem* self);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QAbstractGraphicsShapeItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_advance(VirtualQAbstractGraphicsShapeItem* self, int phase);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QAbstractGraphicsShapeItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QAbstractGraphicsShapeItem_virtualbase_shape(const VirtualQAbstractGraphicsShapeItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QAbstractGraphicsShapeItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_contains(const VirtualQAbstractGraphicsShapeItem* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QAbstractGraphicsShapeItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_collidesWithItem(const VirtualQAbstractGraphicsShapeItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QAbstractGraphicsShapeItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_collidesWithPath(const VirtualQAbstractGraphicsShapeItem* self, QPainterPath* path, int mode);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QAbstractGraphicsShapeItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractGraphicsShapeItem_virtualbase_type(const VirtualQAbstractGraphicsShapeItem* self);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QAbstractGraphicsShapeItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(VirtualQAbstractGraphicsShapeItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QAbstractGraphicsShapeItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_sceneEvent(VirtualQAbstractGraphicsShapeItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractGraphicsShapeItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractGraphicsShapeItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractGraphicsShapeItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractGraphicsShapeItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractGraphicsShapeItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_dropEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractGraphicsShapeItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_focusInEvent(VirtualQAbstractGraphicsShapeItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractGraphicsShapeItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_focusOutEvent(VirtualQAbstractGraphicsShapeItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QAbstractGraphicsShapeItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QAbstractGraphicsShapeItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QAbstractGraphicsShapeItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractGraphicsShapeItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_keyPressEvent(VirtualQAbstractGraphicsShapeItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractGraphicsShapeItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(VirtualQAbstractGraphicsShapeItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractGraphicsShapeItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_mousePressEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractGraphicsShapeItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractGraphicsShapeItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractGraphicsShapeItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractGraphicsShapeItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_wheelEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractGraphicsShapeItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(VirtualQAbstractGraphicsShapeItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractGraphicsShapeItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(const VirtualQAbstractGraphicsShapeItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QAbstractGraphicsShapeItem::itemChange(change, value);
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

	friend QVariant* QAbstractGraphicsShapeItem_virtualbase_itemChange(VirtualQAbstractGraphicsShapeItem* self, int change, QVariant* value);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QAbstractGraphicsShapeItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractGraphicsShapeItem_virtualbase_supportsExtension(const VirtualQAbstractGraphicsShapeItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QAbstractGraphicsShapeItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QAbstractGraphicsShapeItem_virtualbase_setExtension(VirtualQAbstractGraphicsShapeItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QAbstractGraphicsShapeItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractGraphicsShapeItem_virtualbase_extension(const VirtualQAbstractGraphicsShapeItem* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QAbstractGraphicsShapeItem_protectedbase_updateMicroFocus(VirtualQAbstractGraphicsShapeItem* self);
	friend void QAbstractGraphicsShapeItem_protectedbase_addToIndex(VirtualQAbstractGraphicsShapeItem* self);
	friend void QAbstractGraphicsShapeItem_protectedbase_removeFromIndex(VirtualQAbstractGraphicsShapeItem* self);
	friend void QAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange(VirtualQAbstractGraphicsShapeItem* self);
};

VirtualQAbstractGraphicsShapeItem* QAbstractGraphicsShapeItem_new(const QAbstractGraphicsShapeItem_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractGraphicsShapeItem(vtbl, vdata);
}

VirtualQAbstractGraphicsShapeItem* QAbstractGraphicsShapeItem_new2(const QAbstractGraphicsShapeItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQAbstractGraphicsShapeItem(vtbl, vdata, parent);
}

void QAbstractGraphicsShapeItem_virtbase(QAbstractGraphicsShapeItem* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QPen* QAbstractGraphicsShapeItem_pen(const QAbstractGraphicsShapeItem* self) {
	return new QPen(self->pen());
}

void QAbstractGraphicsShapeItem_setPen(QAbstractGraphicsShapeItem* self, QPen* pen) {
	self->setPen(*pen);
}

QBrush* QAbstractGraphicsShapeItem_brush(const QAbstractGraphicsShapeItem* self) {
	return new QBrush(self->brush());
}

void QAbstractGraphicsShapeItem_setBrush(QAbstractGraphicsShapeItem* self, QBrush* brush) {
	self->setBrush(*brush);
}

bool QAbstractGraphicsShapeItem_isObscuredBy(const QAbstractGraphicsShapeItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QAbstractGraphicsShapeItem_opaqueArea(const QAbstractGraphicsShapeItem* self) {
	return new QPainterPath(self->opaqueArea());
}

bool QAbstractGraphicsShapeItem_virtualbase_isObscuredBy(const VirtualQAbstractGraphicsShapeItem* self, QGraphicsItem* item) {

	return self->QAbstractGraphicsShapeItem::isObscuredBy(item);
}

QPainterPath* QAbstractGraphicsShapeItem_virtualbase_opaqueArea(const VirtualQAbstractGraphicsShapeItem* self) {

	return new QPainterPath(self->QAbstractGraphicsShapeItem::opaqueArea());
}

void QAbstractGraphicsShapeItem_virtualbase_advance(VirtualQAbstractGraphicsShapeItem* self, int phase) {

	self->QAbstractGraphicsShapeItem::advance(static_cast<int>(phase));
}

QPainterPath* QAbstractGraphicsShapeItem_virtualbase_shape(const VirtualQAbstractGraphicsShapeItem* self) {

	return new QPainterPath(self->QAbstractGraphicsShapeItem::shape());
}

bool QAbstractGraphicsShapeItem_virtualbase_contains(const VirtualQAbstractGraphicsShapeItem* self, QPointF* point) {

	return self->QAbstractGraphicsShapeItem::contains(*point);
}

bool QAbstractGraphicsShapeItem_virtualbase_collidesWithItem(const VirtualQAbstractGraphicsShapeItem* self, QGraphicsItem* other, int mode) {

	return self->QAbstractGraphicsShapeItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QAbstractGraphicsShapeItem_virtualbase_collidesWithPath(const VirtualQAbstractGraphicsShapeItem* self, QPainterPath* path, int mode) {

	return self->QAbstractGraphicsShapeItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

int QAbstractGraphicsShapeItem_virtualbase_type(const VirtualQAbstractGraphicsShapeItem* self) {

	return self->QAbstractGraphicsShapeItem::type();
}

bool QAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(VirtualQAbstractGraphicsShapeItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QAbstractGraphicsShapeItem::sceneEventFilter(watched, event);
}

bool QAbstractGraphicsShapeItem_virtualbase_sceneEvent(VirtualQAbstractGraphicsShapeItem* self, QEvent* event) {

	return self->QAbstractGraphicsShapeItem::sceneEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QAbstractGraphicsShapeItem::contextMenuEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QAbstractGraphicsShapeItem::dragEnterEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QAbstractGraphicsShapeItem::dragLeaveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QAbstractGraphicsShapeItem::dragMoveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dropEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QAbstractGraphicsShapeItem::dropEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_focusInEvent(VirtualQAbstractGraphicsShapeItem* self, QFocusEvent* event) {

	self->QAbstractGraphicsShapeItem::focusInEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_focusOutEvent(VirtualQAbstractGraphicsShapeItem* self, QFocusEvent* event) {

	self->QAbstractGraphicsShapeItem::focusOutEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneHoverEvent* event) {

	self->QAbstractGraphicsShapeItem::hoverEnterEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneHoverEvent* event) {

	self->QAbstractGraphicsShapeItem::hoverMoveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneHoverEvent* event) {

	self->QAbstractGraphicsShapeItem::hoverLeaveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_keyPressEvent(VirtualQAbstractGraphicsShapeItem* self, QKeyEvent* event) {

	self->QAbstractGraphicsShapeItem::keyPressEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(VirtualQAbstractGraphicsShapeItem* self, QKeyEvent* event) {

	self->QAbstractGraphicsShapeItem::keyReleaseEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mousePressEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event) {

	self->QAbstractGraphicsShapeItem::mousePressEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event) {

	self->QAbstractGraphicsShapeItem::mouseMoveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event) {

	self->QAbstractGraphicsShapeItem::mouseReleaseEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneMouseEvent* event) {

	self->QAbstractGraphicsShapeItem::mouseDoubleClickEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_wheelEvent(VirtualQAbstractGraphicsShapeItem* self, QGraphicsSceneWheelEvent* event) {

	self->QAbstractGraphicsShapeItem::wheelEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(VirtualQAbstractGraphicsShapeItem* self, QInputMethodEvent* event) {

	self->QAbstractGraphicsShapeItem::inputMethodEvent(event);
}

QVariant* QAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(const VirtualQAbstractGraphicsShapeItem* self, int query) {

	return new QVariant(self->QAbstractGraphicsShapeItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QAbstractGraphicsShapeItem_virtualbase_itemChange(VirtualQAbstractGraphicsShapeItem* self, int change, QVariant* value) {

	return new QVariant(self->QAbstractGraphicsShapeItem::itemChange(static_cast<VirtualQAbstractGraphicsShapeItem::GraphicsItemChange>(change), *value));
}

bool QAbstractGraphicsShapeItem_virtualbase_supportsExtension(const VirtualQAbstractGraphicsShapeItem* self, int extension) {

	return self->QAbstractGraphicsShapeItem::supportsExtension(static_cast<VirtualQAbstractGraphicsShapeItem::Extension>(extension));
}

void QAbstractGraphicsShapeItem_virtualbase_setExtension(VirtualQAbstractGraphicsShapeItem* self, int extension, QVariant* variant) {

	self->QAbstractGraphicsShapeItem::setExtension(static_cast<VirtualQAbstractGraphicsShapeItem::Extension>(extension), *variant);
}

QVariant* QAbstractGraphicsShapeItem_virtualbase_extension(const VirtualQAbstractGraphicsShapeItem* self, QVariant* variant) {

	return new QVariant(self->QAbstractGraphicsShapeItem::extension(*variant));
}

const QAbstractGraphicsShapeItem_VTable* QAbstractGraphicsShapeItem_vtbl(const VirtualQAbstractGraphicsShapeItem* self) { return self->vtbl; }
void* QAbstractGraphicsShapeItem_vdata(const VirtualQAbstractGraphicsShapeItem* self) { return self->vdata; }
void QAbstractGraphicsShapeItem_setVdata(VirtualQAbstractGraphicsShapeItem* self, void* vdata) { self->vdata = vdata; }

void QAbstractGraphicsShapeItem_protectedbase_updateMicroFocus(VirtualQAbstractGraphicsShapeItem* self) {
	self->updateMicroFocus();
}

void QAbstractGraphicsShapeItem_protectedbase_addToIndex(VirtualQAbstractGraphicsShapeItem* self) {
	self->addToIndex();
}

void QAbstractGraphicsShapeItem_protectedbase_removeFromIndex(VirtualQAbstractGraphicsShapeItem* self) {
	self->removeFromIndex();
}

void QAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange(VirtualQAbstractGraphicsShapeItem* self) {
	self->prepareGeometryChange();
}

void QAbstractGraphicsShapeItem_delete(QAbstractGraphicsShapeItem* self) {
	delete self;
}

class VirtualQGraphicsPathItem final : public QGraphicsPathItem {
	const QGraphicsPathItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsPathItem_VTable* QGraphicsPathItem_vtbl(const VirtualQGraphicsPathItem* self);
	friend void* QGraphicsPathItem_vdata(const VirtualQGraphicsPathItem* self);
	friend void QGraphicsPathItem_setVdata(VirtualQGraphicsPathItem* self, void* vdata);

	VirtualQGraphicsPathItem(const QGraphicsPathItem_VTable* vtbl, void* vdata): QGraphicsPathItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPathItem(const QGraphicsPathItem_VTable* vtbl, void* vdata, const QPainterPath& path): QGraphicsPathItem(path), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPathItem(const QGraphicsPathItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsPathItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPathItem(const QGraphicsPathItem_VTable* vtbl, void* vdata, const QPainterPath& path, QGraphicsItem* parent): QGraphicsPathItem(path, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsPathItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsPathItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsPathItem_virtualbase_boundingRect(const VirtualQGraphicsPathItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsPathItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsPathItem_virtualbase_shape(const VirtualQGraphicsPathItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsPathItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_contains(const VirtualQGraphicsPathItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsPathItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsPathItem_virtualbase_paint(VirtualQGraphicsPathItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsPathItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_isObscuredBy(const VirtualQGraphicsPathItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsPathItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsPathItem_virtualbase_opaqueArea(const VirtualQGraphicsPathItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsPathItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsPathItem_virtualbase_type(const VirtualQGraphicsPathItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsPathItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_supportsExtension(const VirtualQGraphicsPathItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsPathItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsPathItem_virtualbase_setExtension(VirtualQGraphicsPathItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsPathItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsPathItem_virtualbase_extension(const VirtualQGraphicsPathItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsPathItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_advance(VirtualQGraphicsPathItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsPathItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_collidesWithItem(const VirtualQGraphicsPathItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsPathItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_collidesWithPath(const VirtualQGraphicsPathItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsPathItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_sceneEventFilter(VirtualQGraphicsPathItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsPathItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPathItem_virtualbase_sceneEvent(VirtualQGraphicsPathItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsPathItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_contextMenuEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsPathItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_dragEnterEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsPathItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_dragLeaveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsPathItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_dragMoveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsPathItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_dropEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsPathItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_focusInEvent(VirtualQGraphicsPathItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsPathItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_focusOutEvent(VirtualQGraphicsPathItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsPathItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_hoverEnterEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsPathItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_hoverMoveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsPathItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsPathItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_keyPressEvent(VirtualQGraphicsPathItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsPathItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_keyReleaseEvent(VirtualQGraphicsPathItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsPathItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_mousePressEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsPathItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_mouseMoveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsPathItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsPathItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsPathItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_wheelEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsPathItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsPathItem_virtualbase_inputMethodEvent(VirtualQGraphicsPathItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsPathItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsPathItem_virtualbase_inputMethodQuery(const VirtualQGraphicsPathItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsPathItem::itemChange(change, value);
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

	friend QVariant* QGraphicsPathItem_virtualbase_itemChange(VirtualQGraphicsPathItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsPathItem_protectedbase_updateMicroFocus(VirtualQGraphicsPathItem* self);
	friend void QGraphicsPathItem_protectedbase_addToIndex(VirtualQGraphicsPathItem* self);
	friend void QGraphicsPathItem_protectedbase_removeFromIndex(VirtualQGraphicsPathItem* self);
	friend void QGraphicsPathItem_protectedbase_prepareGeometryChange(VirtualQGraphicsPathItem* self);
};

VirtualQGraphicsPathItem* QGraphicsPathItem_new(const QGraphicsPathItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsPathItem(vtbl, vdata);
}

VirtualQGraphicsPathItem* QGraphicsPathItem_new2(const QGraphicsPathItem_VTable* vtbl, void* vdata, QPainterPath* path) {
	return new VirtualQGraphicsPathItem(vtbl, vdata, *path);
}

VirtualQGraphicsPathItem* QGraphicsPathItem_new3(const QGraphicsPathItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsPathItem(vtbl, vdata, parent);
}

VirtualQGraphicsPathItem* QGraphicsPathItem_new4(const QGraphicsPathItem_VTable* vtbl, void* vdata, QPainterPath* path, QGraphicsItem* parent) {
	return new VirtualQGraphicsPathItem(vtbl, vdata, *path, parent);
}

void QGraphicsPathItem_virtbase(QGraphicsPathItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

QPainterPath* QGraphicsPathItem_path(const QGraphicsPathItem* self) {
	return new QPainterPath(self->path());
}

void QGraphicsPathItem_setPath(QGraphicsPathItem* self, QPainterPath* path) {
	self->setPath(*path);
}

QRectF* QGraphicsPathItem_boundingRect(const QGraphicsPathItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsPathItem_shape(const QGraphicsPathItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsPathItem_contains(const QGraphicsPathItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsPathItem_paint(QGraphicsPathItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsPathItem_isObscuredBy(const QGraphicsPathItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsPathItem_opaqueArea(const QGraphicsPathItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsPathItem_type(const QGraphicsPathItem* self) {
	return self->type();
}

QRectF* QGraphicsPathItem_virtualbase_boundingRect(const VirtualQGraphicsPathItem* self) {

	return new QRectF(self->QGraphicsPathItem::boundingRect());
}

QPainterPath* QGraphicsPathItem_virtualbase_shape(const VirtualQGraphicsPathItem* self) {

	return new QPainterPath(self->QGraphicsPathItem::shape());
}

bool QGraphicsPathItem_virtualbase_contains(const VirtualQGraphicsPathItem* self, QPointF* point) {

	return self->QGraphicsPathItem::contains(*point);
}

void QGraphicsPathItem_virtualbase_paint(VirtualQGraphicsPathItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsPathItem::paint(painter, option, widget);
}

bool QGraphicsPathItem_virtualbase_isObscuredBy(const VirtualQGraphicsPathItem* self, QGraphicsItem* item) {

	return self->QGraphicsPathItem::isObscuredBy(item);
}

QPainterPath* QGraphicsPathItem_virtualbase_opaqueArea(const VirtualQGraphicsPathItem* self) {

	return new QPainterPath(self->QGraphicsPathItem::opaqueArea());
}

int QGraphicsPathItem_virtualbase_type(const VirtualQGraphicsPathItem* self) {

	return self->QGraphicsPathItem::type();
}

bool QGraphicsPathItem_virtualbase_supportsExtension(const VirtualQGraphicsPathItem* self, int extension) {

	return self->QGraphicsPathItem::supportsExtension(static_cast<VirtualQGraphicsPathItem::Extension>(extension));
}

void QGraphicsPathItem_virtualbase_setExtension(VirtualQGraphicsPathItem* self, int extension, QVariant* variant) {

	self->QGraphicsPathItem::setExtension(static_cast<VirtualQGraphicsPathItem::Extension>(extension), *variant);
}

QVariant* QGraphicsPathItem_virtualbase_extension(const VirtualQGraphicsPathItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsPathItem::extension(*variant));
}

void QGraphicsPathItem_virtualbase_advance(VirtualQGraphicsPathItem* self, int phase) {

	self->QGraphicsPathItem::advance(static_cast<int>(phase));
}

bool QGraphicsPathItem_virtualbase_collidesWithItem(const VirtualQGraphicsPathItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsPathItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsPathItem_virtualbase_collidesWithPath(const VirtualQGraphicsPathItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsPathItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsPathItem_virtualbase_sceneEventFilter(VirtualQGraphicsPathItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsPathItem::sceneEventFilter(watched, event);
}

bool QGraphicsPathItem_virtualbase_sceneEvent(VirtualQGraphicsPathItem* self, QEvent* event) {

	return self->QGraphicsPathItem::sceneEvent(event);
}

void QGraphicsPathItem_virtualbase_contextMenuEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsPathItem::contextMenuEvent(event);
}

void QGraphicsPathItem_virtualbase_dragEnterEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPathItem::dragEnterEvent(event);
}

void QGraphicsPathItem_virtualbase_dragLeaveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPathItem::dragLeaveEvent(event);
}

void QGraphicsPathItem_virtualbase_dragMoveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPathItem::dragMoveEvent(event);
}

void QGraphicsPathItem_virtualbase_dropEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPathItem::dropEvent(event);
}

void QGraphicsPathItem_virtualbase_focusInEvent(VirtualQGraphicsPathItem* self, QFocusEvent* event) {

	self->QGraphicsPathItem::focusInEvent(event);
}

void QGraphicsPathItem_virtualbase_focusOutEvent(VirtualQGraphicsPathItem* self, QFocusEvent* event) {

	self->QGraphicsPathItem::focusOutEvent(event);
}

void QGraphicsPathItem_virtualbase_hoverEnterEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPathItem::hoverEnterEvent(event);
}

void QGraphicsPathItem_virtualbase_hoverMoveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPathItem::hoverMoveEvent(event);
}

void QGraphicsPathItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPathItem::hoverLeaveEvent(event);
}

void QGraphicsPathItem_virtualbase_keyPressEvent(VirtualQGraphicsPathItem* self, QKeyEvent* event) {

	self->QGraphicsPathItem::keyPressEvent(event);
}

void QGraphicsPathItem_virtualbase_keyReleaseEvent(VirtualQGraphicsPathItem* self, QKeyEvent* event) {

	self->QGraphicsPathItem::keyReleaseEvent(event);
}

void QGraphicsPathItem_virtualbase_mousePressEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPathItem::mousePressEvent(event);
}

void QGraphicsPathItem_virtualbase_mouseMoveEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPathItem::mouseMoveEvent(event);
}

void QGraphicsPathItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPathItem::mouseReleaseEvent(event);
}

void QGraphicsPathItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPathItem::mouseDoubleClickEvent(event);
}

void QGraphicsPathItem_virtualbase_wheelEvent(VirtualQGraphicsPathItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsPathItem::wheelEvent(event);
}

void QGraphicsPathItem_virtualbase_inputMethodEvent(VirtualQGraphicsPathItem* self, QInputMethodEvent* event) {

	self->QGraphicsPathItem::inputMethodEvent(event);
}

QVariant* QGraphicsPathItem_virtualbase_inputMethodQuery(const VirtualQGraphicsPathItem* self, int query) {

	return new QVariant(self->QGraphicsPathItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsPathItem_virtualbase_itemChange(VirtualQGraphicsPathItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsPathItem::itemChange(static_cast<VirtualQGraphicsPathItem::GraphicsItemChange>(change), *value));
}

const QGraphicsPathItem_VTable* QGraphicsPathItem_vtbl(const VirtualQGraphicsPathItem* self) { return self->vtbl; }
void* QGraphicsPathItem_vdata(const VirtualQGraphicsPathItem* self) { return self->vdata; }
void QGraphicsPathItem_setVdata(VirtualQGraphicsPathItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsPathItem_protectedbase_updateMicroFocus(VirtualQGraphicsPathItem* self) {
	self->updateMicroFocus();
}

void QGraphicsPathItem_protectedbase_addToIndex(VirtualQGraphicsPathItem* self) {
	self->addToIndex();
}

void QGraphicsPathItem_protectedbase_removeFromIndex(VirtualQGraphicsPathItem* self) {
	self->removeFromIndex();
}

void QGraphicsPathItem_protectedbase_prepareGeometryChange(VirtualQGraphicsPathItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsPathItem_delete(QGraphicsPathItem* self) {
	delete self;
}

class VirtualQGraphicsRectItem final : public QGraphicsRectItem {
	const QGraphicsRectItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsRectItem_VTable* QGraphicsRectItem_vtbl(const VirtualQGraphicsRectItem* self);
	friend void* QGraphicsRectItem_vdata(const VirtualQGraphicsRectItem* self);
	friend void QGraphicsRectItem_setVdata(VirtualQGraphicsRectItem* self, void* vdata);

	VirtualQGraphicsRectItem(const QGraphicsRectItem_VTable* vtbl, void* vdata): QGraphicsRectItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsRectItem(const QGraphicsRectItem_VTable* vtbl, void* vdata, const QRectF& rect): QGraphicsRectItem(rect), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsRectItem(const QGraphicsRectItem_VTable* vtbl, void* vdata, qreal x, qreal y, qreal w, qreal h): QGraphicsRectItem(x, y, w, h), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsRectItem(const QGraphicsRectItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsRectItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsRectItem(const QGraphicsRectItem_VTable* vtbl, void* vdata, const QRectF& rect, QGraphicsItem* parent): QGraphicsRectItem(rect, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsRectItem(const QGraphicsRectItem_VTable* vtbl, void* vdata, qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent): QGraphicsRectItem(x, y, w, h, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsRectItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsRectItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsRectItem_virtualbase_boundingRect(const VirtualQGraphicsRectItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsRectItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsRectItem_virtualbase_shape(const VirtualQGraphicsRectItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsRectItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_contains(const VirtualQGraphicsRectItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsRectItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsRectItem_virtualbase_paint(VirtualQGraphicsRectItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsRectItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_isObscuredBy(const VirtualQGraphicsRectItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsRectItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsRectItem_virtualbase_opaqueArea(const VirtualQGraphicsRectItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsRectItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsRectItem_virtualbase_type(const VirtualQGraphicsRectItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsRectItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_supportsExtension(const VirtualQGraphicsRectItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsRectItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsRectItem_virtualbase_setExtension(VirtualQGraphicsRectItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsRectItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsRectItem_virtualbase_extension(const VirtualQGraphicsRectItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsRectItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_advance(VirtualQGraphicsRectItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsRectItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_collidesWithItem(const VirtualQGraphicsRectItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsRectItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_collidesWithPath(const VirtualQGraphicsRectItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsRectItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_sceneEventFilter(VirtualQGraphicsRectItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsRectItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsRectItem_virtualbase_sceneEvent(VirtualQGraphicsRectItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsRectItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_contextMenuEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsRectItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_dragEnterEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsRectItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_dragLeaveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsRectItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_dragMoveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsRectItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_dropEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsRectItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_focusInEvent(VirtualQGraphicsRectItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsRectItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_focusOutEvent(VirtualQGraphicsRectItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsRectItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_hoverEnterEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsRectItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_hoverMoveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsRectItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsRectItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_keyPressEvent(VirtualQGraphicsRectItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsRectItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_keyReleaseEvent(VirtualQGraphicsRectItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsRectItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_mousePressEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsRectItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_mouseMoveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsRectItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsRectItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsRectItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_wheelEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsRectItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsRectItem_virtualbase_inputMethodEvent(VirtualQGraphicsRectItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsRectItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsRectItem_virtualbase_inputMethodQuery(const VirtualQGraphicsRectItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsRectItem::itemChange(change, value);
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

	friend QVariant* QGraphicsRectItem_virtualbase_itemChange(VirtualQGraphicsRectItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsRectItem_protectedbase_updateMicroFocus(VirtualQGraphicsRectItem* self);
	friend void QGraphicsRectItem_protectedbase_addToIndex(VirtualQGraphicsRectItem* self);
	friend void QGraphicsRectItem_protectedbase_removeFromIndex(VirtualQGraphicsRectItem* self);
	friend void QGraphicsRectItem_protectedbase_prepareGeometryChange(VirtualQGraphicsRectItem* self);
};

VirtualQGraphicsRectItem* QGraphicsRectItem_new(const QGraphicsRectItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsRectItem(vtbl, vdata);
}

VirtualQGraphicsRectItem* QGraphicsRectItem_new2(const QGraphicsRectItem_VTable* vtbl, void* vdata, QRectF* rect) {
	return new VirtualQGraphicsRectItem(vtbl, vdata, *rect);
}

VirtualQGraphicsRectItem* QGraphicsRectItem_new3(const QGraphicsRectItem_VTable* vtbl, void* vdata, double x, double y, double w, double h) {
	return new VirtualQGraphicsRectItem(vtbl, vdata, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

VirtualQGraphicsRectItem* QGraphicsRectItem_new4(const QGraphicsRectItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsRectItem(vtbl, vdata, parent);
}

VirtualQGraphicsRectItem* QGraphicsRectItem_new5(const QGraphicsRectItem_VTable* vtbl, void* vdata, QRectF* rect, QGraphicsItem* parent) {
	return new VirtualQGraphicsRectItem(vtbl, vdata, *rect, parent);
}

VirtualQGraphicsRectItem* QGraphicsRectItem_new6(const QGraphicsRectItem_VTable* vtbl, void* vdata, double x, double y, double w, double h, QGraphicsItem* parent) {
	return new VirtualQGraphicsRectItem(vtbl, vdata, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), parent);
}

void QGraphicsRectItem_virtbase(QGraphicsRectItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

QRectF* QGraphicsRectItem_rect(const QGraphicsRectItem* self) {
	return new QRectF(self->rect());
}

void QGraphicsRectItem_setRect(QGraphicsRectItem* self, QRectF* rect) {
	self->setRect(*rect);
}

void QGraphicsRectItem_setRect2(QGraphicsRectItem* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QGraphicsRectItem_boundingRect(const QGraphicsRectItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsRectItem_shape(const QGraphicsRectItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsRectItem_contains(const QGraphicsRectItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsRectItem_paint(QGraphicsRectItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsRectItem_isObscuredBy(const QGraphicsRectItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsRectItem_opaqueArea(const QGraphicsRectItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsRectItem_type(const QGraphicsRectItem* self) {
	return self->type();
}

QRectF* QGraphicsRectItem_virtualbase_boundingRect(const VirtualQGraphicsRectItem* self) {

	return new QRectF(self->QGraphicsRectItem::boundingRect());
}

QPainterPath* QGraphicsRectItem_virtualbase_shape(const VirtualQGraphicsRectItem* self) {

	return new QPainterPath(self->QGraphicsRectItem::shape());
}

bool QGraphicsRectItem_virtualbase_contains(const VirtualQGraphicsRectItem* self, QPointF* point) {

	return self->QGraphicsRectItem::contains(*point);
}

void QGraphicsRectItem_virtualbase_paint(VirtualQGraphicsRectItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsRectItem::paint(painter, option, widget);
}

bool QGraphicsRectItem_virtualbase_isObscuredBy(const VirtualQGraphicsRectItem* self, QGraphicsItem* item) {

	return self->QGraphicsRectItem::isObscuredBy(item);
}

QPainterPath* QGraphicsRectItem_virtualbase_opaqueArea(const VirtualQGraphicsRectItem* self) {

	return new QPainterPath(self->QGraphicsRectItem::opaqueArea());
}

int QGraphicsRectItem_virtualbase_type(const VirtualQGraphicsRectItem* self) {

	return self->QGraphicsRectItem::type();
}

bool QGraphicsRectItem_virtualbase_supportsExtension(const VirtualQGraphicsRectItem* self, int extension) {

	return self->QGraphicsRectItem::supportsExtension(static_cast<VirtualQGraphicsRectItem::Extension>(extension));
}

void QGraphicsRectItem_virtualbase_setExtension(VirtualQGraphicsRectItem* self, int extension, QVariant* variant) {

	self->QGraphicsRectItem::setExtension(static_cast<VirtualQGraphicsRectItem::Extension>(extension), *variant);
}

QVariant* QGraphicsRectItem_virtualbase_extension(const VirtualQGraphicsRectItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsRectItem::extension(*variant));
}

void QGraphicsRectItem_virtualbase_advance(VirtualQGraphicsRectItem* self, int phase) {

	self->QGraphicsRectItem::advance(static_cast<int>(phase));
}

bool QGraphicsRectItem_virtualbase_collidesWithItem(const VirtualQGraphicsRectItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsRectItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsRectItem_virtualbase_collidesWithPath(const VirtualQGraphicsRectItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsRectItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsRectItem_virtualbase_sceneEventFilter(VirtualQGraphicsRectItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsRectItem::sceneEventFilter(watched, event);
}

bool QGraphicsRectItem_virtualbase_sceneEvent(VirtualQGraphicsRectItem* self, QEvent* event) {

	return self->QGraphicsRectItem::sceneEvent(event);
}

void QGraphicsRectItem_virtualbase_contextMenuEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsRectItem::contextMenuEvent(event);
}

void QGraphicsRectItem_virtualbase_dragEnterEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsRectItem::dragEnterEvent(event);
}

void QGraphicsRectItem_virtualbase_dragLeaveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsRectItem::dragLeaveEvent(event);
}

void QGraphicsRectItem_virtualbase_dragMoveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsRectItem::dragMoveEvent(event);
}

void QGraphicsRectItem_virtualbase_dropEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsRectItem::dropEvent(event);
}

void QGraphicsRectItem_virtualbase_focusInEvent(VirtualQGraphicsRectItem* self, QFocusEvent* event) {

	self->QGraphicsRectItem::focusInEvent(event);
}

void QGraphicsRectItem_virtualbase_focusOutEvent(VirtualQGraphicsRectItem* self, QFocusEvent* event) {

	self->QGraphicsRectItem::focusOutEvent(event);
}

void QGraphicsRectItem_virtualbase_hoverEnterEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsRectItem::hoverEnterEvent(event);
}

void QGraphicsRectItem_virtualbase_hoverMoveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsRectItem::hoverMoveEvent(event);
}

void QGraphicsRectItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsRectItem::hoverLeaveEvent(event);
}

void QGraphicsRectItem_virtualbase_keyPressEvent(VirtualQGraphicsRectItem* self, QKeyEvent* event) {

	self->QGraphicsRectItem::keyPressEvent(event);
}

void QGraphicsRectItem_virtualbase_keyReleaseEvent(VirtualQGraphicsRectItem* self, QKeyEvent* event) {

	self->QGraphicsRectItem::keyReleaseEvent(event);
}

void QGraphicsRectItem_virtualbase_mousePressEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsRectItem::mousePressEvent(event);
}

void QGraphicsRectItem_virtualbase_mouseMoveEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsRectItem::mouseMoveEvent(event);
}

void QGraphicsRectItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsRectItem::mouseReleaseEvent(event);
}

void QGraphicsRectItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsRectItem::mouseDoubleClickEvent(event);
}

void QGraphicsRectItem_virtualbase_wheelEvent(VirtualQGraphicsRectItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsRectItem::wheelEvent(event);
}

void QGraphicsRectItem_virtualbase_inputMethodEvent(VirtualQGraphicsRectItem* self, QInputMethodEvent* event) {

	self->QGraphicsRectItem::inputMethodEvent(event);
}

QVariant* QGraphicsRectItem_virtualbase_inputMethodQuery(const VirtualQGraphicsRectItem* self, int query) {

	return new QVariant(self->QGraphicsRectItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsRectItem_virtualbase_itemChange(VirtualQGraphicsRectItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsRectItem::itemChange(static_cast<VirtualQGraphicsRectItem::GraphicsItemChange>(change), *value));
}

const QGraphicsRectItem_VTable* QGraphicsRectItem_vtbl(const VirtualQGraphicsRectItem* self) { return self->vtbl; }
void* QGraphicsRectItem_vdata(const VirtualQGraphicsRectItem* self) { return self->vdata; }
void QGraphicsRectItem_setVdata(VirtualQGraphicsRectItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsRectItem_protectedbase_updateMicroFocus(VirtualQGraphicsRectItem* self) {
	self->updateMicroFocus();
}

void QGraphicsRectItem_protectedbase_addToIndex(VirtualQGraphicsRectItem* self) {
	self->addToIndex();
}

void QGraphicsRectItem_protectedbase_removeFromIndex(VirtualQGraphicsRectItem* self) {
	self->removeFromIndex();
}

void QGraphicsRectItem_protectedbase_prepareGeometryChange(VirtualQGraphicsRectItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsRectItem_delete(QGraphicsRectItem* self) {
	delete self;
}

class VirtualQGraphicsEllipseItem final : public QGraphicsEllipseItem {
	const QGraphicsEllipseItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsEllipseItem_VTable* QGraphicsEllipseItem_vtbl(const VirtualQGraphicsEllipseItem* self);
	friend void* QGraphicsEllipseItem_vdata(const VirtualQGraphicsEllipseItem* self);
	friend void QGraphicsEllipseItem_setVdata(VirtualQGraphicsEllipseItem* self, void* vdata);

	VirtualQGraphicsEllipseItem(const QGraphicsEllipseItem_VTable* vtbl, void* vdata): QGraphicsEllipseItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsEllipseItem(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, const QRectF& rect): QGraphicsEllipseItem(rect), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsEllipseItem(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, qreal x, qreal y, qreal w, qreal h): QGraphicsEllipseItem(x, y, w, h), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsEllipseItem(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsEllipseItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsEllipseItem(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, const QRectF& rect, QGraphicsItem* parent): QGraphicsEllipseItem(rect, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsEllipseItem(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent): QGraphicsEllipseItem(x, y, w, h, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsEllipseItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsEllipseItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsEllipseItem_virtualbase_boundingRect(const VirtualQGraphicsEllipseItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsEllipseItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsEllipseItem_virtualbase_shape(const VirtualQGraphicsEllipseItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsEllipseItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_contains(const VirtualQGraphicsEllipseItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsEllipseItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsEllipseItem_virtualbase_paint(VirtualQGraphicsEllipseItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsEllipseItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_isObscuredBy(const VirtualQGraphicsEllipseItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsEllipseItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsEllipseItem_virtualbase_opaqueArea(const VirtualQGraphicsEllipseItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsEllipseItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsEllipseItem_virtualbase_type(const VirtualQGraphicsEllipseItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsEllipseItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_supportsExtension(const VirtualQGraphicsEllipseItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsEllipseItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsEllipseItem_virtualbase_setExtension(VirtualQGraphicsEllipseItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsEllipseItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsEllipseItem_virtualbase_extension(const VirtualQGraphicsEllipseItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsEllipseItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_advance(VirtualQGraphicsEllipseItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsEllipseItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_collidesWithItem(const VirtualQGraphicsEllipseItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsEllipseItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_collidesWithPath(const VirtualQGraphicsEllipseItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsEllipseItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_sceneEventFilter(VirtualQGraphicsEllipseItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsEllipseItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEllipseItem_virtualbase_sceneEvent(VirtualQGraphicsEllipseItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsEllipseItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_contextMenuEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsEllipseItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_dragEnterEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsEllipseItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_dragLeaveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsEllipseItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_dragMoveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsEllipseItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_dropEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsEllipseItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_focusInEvent(VirtualQGraphicsEllipseItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsEllipseItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_focusOutEvent(VirtualQGraphicsEllipseItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsEllipseItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_hoverEnterEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsEllipseItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_hoverMoveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsEllipseItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsEllipseItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_keyPressEvent(VirtualQGraphicsEllipseItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsEllipseItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_keyReleaseEvent(VirtualQGraphicsEllipseItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsEllipseItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_mousePressEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsEllipseItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_mouseMoveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsEllipseItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsEllipseItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsEllipseItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_wheelEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsEllipseItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsEllipseItem_virtualbase_inputMethodEvent(VirtualQGraphicsEllipseItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsEllipseItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsEllipseItem_virtualbase_inputMethodQuery(const VirtualQGraphicsEllipseItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsEllipseItem::itemChange(change, value);
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

	friend QVariant* QGraphicsEllipseItem_virtualbase_itemChange(VirtualQGraphicsEllipseItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsEllipseItem_protectedbase_updateMicroFocus(VirtualQGraphicsEllipseItem* self);
	friend void QGraphicsEllipseItem_protectedbase_addToIndex(VirtualQGraphicsEllipseItem* self);
	friend void QGraphicsEllipseItem_protectedbase_removeFromIndex(VirtualQGraphicsEllipseItem* self);
	friend void QGraphicsEllipseItem_protectedbase_prepareGeometryChange(VirtualQGraphicsEllipseItem* self);
};

VirtualQGraphicsEllipseItem* QGraphicsEllipseItem_new(const QGraphicsEllipseItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsEllipseItem(vtbl, vdata);
}

VirtualQGraphicsEllipseItem* QGraphicsEllipseItem_new2(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, QRectF* rect) {
	return new VirtualQGraphicsEllipseItem(vtbl, vdata, *rect);
}

VirtualQGraphicsEllipseItem* QGraphicsEllipseItem_new3(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, double x, double y, double w, double h) {
	return new VirtualQGraphicsEllipseItem(vtbl, vdata, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

VirtualQGraphicsEllipseItem* QGraphicsEllipseItem_new4(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsEllipseItem(vtbl, vdata, parent);
}

VirtualQGraphicsEllipseItem* QGraphicsEllipseItem_new5(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, QRectF* rect, QGraphicsItem* parent) {
	return new VirtualQGraphicsEllipseItem(vtbl, vdata, *rect, parent);
}

VirtualQGraphicsEllipseItem* QGraphicsEllipseItem_new6(const QGraphicsEllipseItem_VTable* vtbl, void* vdata, double x, double y, double w, double h, QGraphicsItem* parent) {
	return new VirtualQGraphicsEllipseItem(vtbl, vdata, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), parent);
}

void QGraphicsEllipseItem_virtbase(QGraphicsEllipseItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

QRectF* QGraphicsEllipseItem_rect(const QGraphicsEllipseItem* self) {
	return new QRectF(self->rect());
}

void QGraphicsEllipseItem_setRect(QGraphicsEllipseItem* self, QRectF* rect) {
	self->setRect(*rect);
}

void QGraphicsEllipseItem_setRect2(QGraphicsEllipseItem* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

int QGraphicsEllipseItem_startAngle(const QGraphicsEllipseItem* self) {
	return self->startAngle();
}

void QGraphicsEllipseItem_setStartAngle(QGraphicsEllipseItem* self, int angle) {
	self->setStartAngle(static_cast<int>(angle));
}

int QGraphicsEllipseItem_spanAngle(const QGraphicsEllipseItem* self) {
	return self->spanAngle();
}

void QGraphicsEllipseItem_setSpanAngle(QGraphicsEllipseItem* self, int angle) {
	self->setSpanAngle(static_cast<int>(angle));
}

QRectF* QGraphicsEllipseItem_boundingRect(const QGraphicsEllipseItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsEllipseItem_shape(const QGraphicsEllipseItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsEllipseItem_contains(const QGraphicsEllipseItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsEllipseItem_paint(QGraphicsEllipseItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsEllipseItem_isObscuredBy(const QGraphicsEllipseItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsEllipseItem_opaqueArea(const QGraphicsEllipseItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsEllipseItem_type(const QGraphicsEllipseItem* self) {
	return self->type();
}

QRectF* QGraphicsEllipseItem_virtualbase_boundingRect(const VirtualQGraphicsEllipseItem* self) {

	return new QRectF(self->QGraphicsEllipseItem::boundingRect());
}

QPainterPath* QGraphicsEllipseItem_virtualbase_shape(const VirtualQGraphicsEllipseItem* self) {

	return new QPainterPath(self->QGraphicsEllipseItem::shape());
}

bool QGraphicsEllipseItem_virtualbase_contains(const VirtualQGraphicsEllipseItem* self, QPointF* point) {

	return self->QGraphicsEllipseItem::contains(*point);
}

void QGraphicsEllipseItem_virtualbase_paint(VirtualQGraphicsEllipseItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsEllipseItem::paint(painter, option, widget);
}

bool QGraphicsEllipseItem_virtualbase_isObscuredBy(const VirtualQGraphicsEllipseItem* self, QGraphicsItem* item) {

	return self->QGraphicsEllipseItem::isObscuredBy(item);
}

QPainterPath* QGraphicsEllipseItem_virtualbase_opaqueArea(const VirtualQGraphicsEllipseItem* self) {

	return new QPainterPath(self->QGraphicsEllipseItem::opaqueArea());
}

int QGraphicsEllipseItem_virtualbase_type(const VirtualQGraphicsEllipseItem* self) {

	return self->QGraphicsEllipseItem::type();
}

bool QGraphicsEllipseItem_virtualbase_supportsExtension(const VirtualQGraphicsEllipseItem* self, int extension) {

	return self->QGraphicsEllipseItem::supportsExtension(static_cast<VirtualQGraphicsEllipseItem::Extension>(extension));
}

void QGraphicsEllipseItem_virtualbase_setExtension(VirtualQGraphicsEllipseItem* self, int extension, QVariant* variant) {

	self->QGraphicsEllipseItem::setExtension(static_cast<VirtualQGraphicsEllipseItem::Extension>(extension), *variant);
}

QVariant* QGraphicsEllipseItem_virtualbase_extension(const VirtualQGraphicsEllipseItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsEllipseItem::extension(*variant));
}

void QGraphicsEllipseItem_virtualbase_advance(VirtualQGraphicsEllipseItem* self, int phase) {

	self->QGraphicsEllipseItem::advance(static_cast<int>(phase));
}

bool QGraphicsEllipseItem_virtualbase_collidesWithItem(const VirtualQGraphicsEllipseItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsEllipseItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsEllipseItem_virtualbase_collidesWithPath(const VirtualQGraphicsEllipseItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsEllipseItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsEllipseItem_virtualbase_sceneEventFilter(VirtualQGraphicsEllipseItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsEllipseItem::sceneEventFilter(watched, event);
}

bool QGraphicsEllipseItem_virtualbase_sceneEvent(VirtualQGraphicsEllipseItem* self, QEvent* event) {

	return self->QGraphicsEllipseItem::sceneEvent(event);
}

void QGraphicsEllipseItem_virtualbase_contextMenuEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsEllipseItem::contextMenuEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dragEnterEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsEllipseItem::dragEnterEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dragLeaveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsEllipseItem::dragLeaveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dragMoveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsEllipseItem::dragMoveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dropEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsEllipseItem::dropEvent(event);
}

void QGraphicsEllipseItem_virtualbase_focusInEvent(VirtualQGraphicsEllipseItem* self, QFocusEvent* event) {

	self->QGraphicsEllipseItem::focusInEvent(event);
}

void QGraphicsEllipseItem_virtualbase_focusOutEvent(VirtualQGraphicsEllipseItem* self, QFocusEvent* event) {

	self->QGraphicsEllipseItem::focusOutEvent(event);
}

void QGraphicsEllipseItem_virtualbase_hoverEnterEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsEllipseItem::hoverEnterEvent(event);
}

void QGraphicsEllipseItem_virtualbase_hoverMoveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsEllipseItem::hoverMoveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsEllipseItem::hoverLeaveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_keyPressEvent(VirtualQGraphicsEllipseItem* self, QKeyEvent* event) {

	self->QGraphicsEllipseItem::keyPressEvent(event);
}

void QGraphicsEllipseItem_virtualbase_keyReleaseEvent(VirtualQGraphicsEllipseItem* self, QKeyEvent* event) {

	self->QGraphicsEllipseItem::keyReleaseEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mousePressEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsEllipseItem::mousePressEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mouseMoveEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsEllipseItem::mouseMoveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsEllipseItem::mouseReleaseEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsEllipseItem::mouseDoubleClickEvent(event);
}

void QGraphicsEllipseItem_virtualbase_wheelEvent(VirtualQGraphicsEllipseItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsEllipseItem::wheelEvent(event);
}

void QGraphicsEllipseItem_virtualbase_inputMethodEvent(VirtualQGraphicsEllipseItem* self, QInputMethodEvent* event) {

	self->QGraphicsEllipseItem::inputMethodEvent(event);
}

QVariant* QGraphicsEllipseItem_virtualbase_inputMethodQuery(const VirtualQGraphicsEllipseItem* self, int query) {

	return new QVariant(self->QGraphicsEllipseItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsEllipseItem_virtualbase_itemChange(VirtualQGraphicsEllipseItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsEllipseItem::itemChange(static_cast<VirtualQGraphicsEllipseItem::GraphicsItemChange>(change), *value));
}

const QGraphicsEllipseItem_VTable* QGraphicsEllipseItem_vtbl(const VirtualQGraphicsEllipseItem* self) { return self->vtbl; }
void* QGraphicsEllipseItem_vdata(const VirtualQGraphicsEllipseItem* self) { return self->vdata; }
void QGraphicsEllipseItem_setVdata(VirtualQGraphicsEllipseItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsEllipseItem_protectedbase_updateMicroFocus(VirtualQGraphicsEllipseItem* self) {
	self->updateMicroFocus();
}

void QGraphicsEllipseItem_protectedbase_addToIndex(VirtualQGraphicsEllipseItem* self) {
	self->addToIndex();
}

void QGraphicsEllipseItem_protectedbase_removeFromIndex(VirtualQGraphicsEllipseItem* self) {
	self->removeFromIndex();
}

void QGraphicsEllipseItem_protectedbase_prepareGeometryChange(VirtualQGraphicsEllipseItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsEllipseItem_delete(QGraphicsEllipseItem* self) {
	delete self;
}

class VirtualQGraphicsPolygonItem final : public QGraphicsPolygonItem {
	const QGraphicsPolygonItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsPolygonItem_VTable* QGraphicsPolygonItem_vtbl(const VirtualQGraphicsPolygonItem* self);
	friend void* QGraphicsPolygonItem_vdata(const VirtualQGraphicsPolygonItem* self);
	friend void QGraphicsPolygonItem_setVdata(VirtualQGraphicsPolygonItem* self, void* vdata);

	VirtualQGraphicsPolygonItem(const QGraphicsPolygonItem_VTable* vtbl, void* vdata): QGraphicsPolygonItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPolygonItem(const QGraphicsPolygonItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsPolygonItem(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsPolygonItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsPolygonItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsPolygonItem_virtualbase_boundingRect(const VirtualQGraphicsPolygonItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsPolygonItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsPolygonItem_virtualbase_shape(const VirtualQGraphicsPolygonItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsPolygonItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_contains(const VirtualQGraphicsPolygonItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsPolygonItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsPolygonItem_virtualbase_paint(VirtualQGraphicsPolygonItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsPolygonItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_isObscuredBy(const VirtualQGraphicsPolygonItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsPolygonItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsPolygonItem_virtualbase_opaqueArea(const VirtualQGraphicsPolygonItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsPolygonItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsPolygonItem_virtualbase_type(const VirtualQGraphicsPolygonItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsPolygonItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_supportsExtension(const VirtualQGraphicsPolygonItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsPolygonItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsPolygonItem_virtualbase_setExtension(VirtualQGraphicsPolygonItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsPolygonItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsPolygonItem_virtualbase_extension(const VirtualQGraphicsPolygonItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsPolygonItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_advance(VirtualQGraphicsPolygonItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsPolygonItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_collidesWithItem(const VirtualQGraphicsPolygonItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsPolygonItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_collidesWithPath(const VirtualQGraphicsPolygonItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsPolygonItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_sceneEventFilter(VirtualQGraphicsPolygonItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsPolygonItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPolygonItem_virtualbase_sceneEvent(VirtualQGraphicsPolygonItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsPolygonItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_contextMenuEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsPolygonItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_dragEnterEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsPolygonItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_dragLeaveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsPolygonItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_dragMoveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsPolygonItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_dropEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsPolygonItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_focusInEvent(VirtualQGraphicsPolygonItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsPolygonItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_focusOutEvent(VirtualQGraphicsPolygonItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsPolygonItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_hoverEnterEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsPolygonItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_hoverMoveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsPolygonItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsPolygonItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_keyPressEvent(VirtualQGraphicsPolygonItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsPolygonItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_keyReleaseEvent(VirtualQGraphicsPolygonItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsPolygonItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_mousePressEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsPolygonItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_mouseMoveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsPolygonItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsPolygonItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsPolygonItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_wheelEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsPolygonItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsPolygonItem_virtualbase_inputMethodEvent(VirtualQGraphicsPolygonItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsPolygonItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsPolygonItem_virtualbase_inputMethodQuery(const VirtualQGraphicsPolygonItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsPolygonItem::itemChange(change, value);
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

	friend QVariant* QGraphicsPolygonItem_virtualbase_itemChange(VirtualQGraphicsPolygonItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsPolygonItem_protectedbase_updateMicroFocus(VirtualQGraphicsPolygonItem* self);
	friend void QGraphicsPolygonItem_protectedbase_addToIndex(VirtualQGraphicsPolygonItem* self);
	friend void QGraphicsPolygonItem_protectedbase_removeFromIndex(VirtualQGraphicsPolygonItem* self);
	friend void QGraphicsPolygonItem_protectedbase_prepareGeometryChange(VirtualQGraphicsPolygonItem* self);
};

VirtualQGraphicsPolygonItem* QGraphicsPolygonItem_new(const QGraphicsPolygonItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsPolygonItem(vtbl, vdata);
}

VirtualQGraphicsPolygonItem* QGraphicsPolygonItem_new2(const QGraphicsPolygonItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsPolygonItem(vtbl, vdata, parent);
}

void QGraphicsPolygonItem_virtbase(QGraphicsPolygonItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

int QGraphicsPolygonItem_fillRule(const QGraphicsPolygonItem* self) {
	Qt::FillRule _ret = self->fillRule();
	return static_cast<int>(_ret);
}

void QGraphicsPolygonItem_setFillRule(QGraphicsPolygonItem* self, int rule) {
	self->setFillRule(static_cast<Qt::FillRule>(rule));
}

QRectF* QGraphicsPolygonItem_boundingRect(const QGraphicsPolygonItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsPolygonItem_shape(const QGraphicsPolygonItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsPolygonItem_contains(const QGraphicsPolygonItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsPolygonItem_paint(QGraphicsPolygonItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsPolygonItem_isObscuredBy(const QGraphicsPolygonItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsPolygonItem_opaqueArea(const QGraphicsPolygonItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsPolygonItem_type(const QGraphicsPolygonItem* self) {
	return self->type();
}

QRectF* QGraphicsPolygonItem_virtualbase_boundingRect(const VirtualQGraphicsPolygonItem* self) {

	return new QRectF(self->QGraphicsPolygonItem::boundingRect());
}

QPainterPath* QGraphicsPolygonItem_virtualbase_shape(const VirtualQGraphicsPolygonItem* self) {

	return new QPainterPath(self->QGraphicsPolygonItem::shape());
}

bool QGraphicsPolygonItem_virtualbase_contains(const VirtualQGraphicsPolygonItem* self, QPointF* point) {

	return self->QGraphicsPolygonItem::contains(*point);
}

void QGraphicsPolygonItem_virtualbase_paint(VirtualQGraphicsPolygonItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsPolygonItem::paint(painter, option, widget);
}

bool QGraphicsPolygonItem_virtualbase_isObscuredBy(const VirtualQGraphicsPolygonItem* self, QGraphicsItem* item) {

	return self->QGraphicsPolygonItem::isObscuredBy(item);
}

QPainterPath* QGraphicsPolygonItem_virtualbase_opaqueArea(const VirtualQGraphicsPolygonItem* self) {

	return new QPainterPath(self->QGraphicsPolygonItem::opaqueArea());
}

int QGraphicsPolygonItem_virtualbase_type(const VirtualQGraphicsPolygonItem* self) {

	return self->QGraphicsPolygonItem::type();
}

bool QGraphicsPolygonItem_virtualbase_supportsExtension(const VirtualQGraphicsPolygonItem* self, int extension) {

	return self->QGraphicsPolygonItem::supportsExtension(static_cast<VirtualQGraphicsPolygonItem::Extension>(extension));
}

void QGraphicsPolygonItem_virtualbase_setExtension(VirtualQGraphicsPolygonItem* self, int extension, QVariant* variant) {

	self->QGraphicsPolygonItem::setExtension(static_cast<VirtualQGraphicsPolygonItem::Extension>(extension), *variant);
}

QVariant* QGraphicsPolygonItem_virtualbase_extension(const VirtualQGraphicsPolygonItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsPolygonItem::extension(*variant));
}

void QGraphicsPolygonItem_virtualbase_advance(VirtualQGraphicsPolygonItem* self, int phase) {

	self->QGraphicsPolygonItem::advance(static_cast<int>(phase));
}

bool QGraphicsPolygonItem_virtualbase_collidesWithItem(const VirtualQGraphicsPolygonItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsPolygonItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsPolygonItem_virtualbase_collidesWithPath(const VirtualQGraphicsPolygonItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsPolygonItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsPolygonItem_virtualbase_sceneEventFilter(VirtualQGraphicsPolygonItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsPolygonItem::sceneEventFilter(watched, event);
}

bool QGraphicsPolygonItem_virtualbase_sceneEvent(VirtualQGraphicsPolygonItem* self, QEvent* event) {

	return self->QGraphicsPolygonItem::sceneEvent(event);
}

void QGraphicsPolygonItem_virtualbase_contextMenuEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsPolygonItem::contextMenuEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dragEnterEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPolygonItem::dragEnterEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dragLeaveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPolygonItem::dragLeaveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dragMoveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPolygonItem::dragMoveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dropEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPolygonItem::dropEvent(event);
}

void QGraphicsPolygonItem_virtualbase_focusInEvent(VirtualQGraphicsPolygonItem* self, QFocusEvent* event) {

	self->QGraphicsPolygonItem::focusInEvent(event);
}

void QGraphicsPolygonItem_virtualbase_focusOutEvent(VirtualQGraphicsPolygonItem* self, QFocusEvent* event) {

	self->QGraphicsPolygonItem::focusOutEvent(event);
}

void QGraphicsPolygonItem_virtualbase_hoverEnterEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPolygonItem::hoverEnterEvent(event);
}

void QGraphicsPolygonItem_virtualbase_hoverMoveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPolygonItem::hoverMoveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPolygonItem::hoverLeaveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_keyPressEvent(VirtualQGraphicsPolygonItem* self, QKeyEvent* event) {

	self->QGraphicsPolygonItem::keyPressEvent(event);
}

void QGraphicsPolygonItem_virtualbase_keyReleaseEvent(VirtualQGraphicsPolygonItem* self, QKeyEvent* event) {

	self->QGraphicsPolygonItem::keyReleaseEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mousePressEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPolygonItem::mousePressEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mouseMoveEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPolygonItem::mouseMoveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPolygonItem::mouseReleaseEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPolygonItem::mouseDoubleClickEvent(event);
}

void QGraphicsPolygonItem_virtualbase_wheelEvent(VirtualQGraphicsPolygonItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsPolygonItem::wheelEvent(event);
}

void QGraphicsPolygonItem_virtualbase_inputMethodEvent(VirtualQGraphicsPolygonItem* self, QInputMethodEvent* event) {

	self->QGraphicsPolygonItem::inputMethodEvent(event);
}

QVariant* QGraphicsPolygonItem_virtualbase_inputMethodQuery(const VirtualQGraphicsPolygonItem* self, int query) {

	return new QVariant(self->QGraphicsPolygonItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsPolygonItem_virtualbase_itemChange(VirtualQGraphicsPolygonItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsPolygonItem::itemChange(static_cast<VirtualQGraphicsPolygonItem::GraphicsItemChange>(change), *value));
}

const QGraphicsPolygonItem_VTable* QGraphicsPolygonItem_vtbl(const VirtualQGraphicsPolygonItem* self) { return self->vtbl; }
void* QGraphicsPolygonItem_vdata(const VirtualQGraphicsPolygonItem* self) { return self->vdata; }
void QGraphicsPolygonItem_setVdata(VirtualQGraphicsPolygonItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsPolygonItem_protectedbase_updateMicroFocus(VirtualQGraphicsPolygonItem* self) {
	self->updateMicroFocus();
}

void QGraphicsPolygonItem_protectedbase_addToIndex(VirtualQGraphicsPolygonItem* self) {
	self->addToIndex();
}

void QGraphicsPolygonItem_protectedbase_removeFromIndex(VirtualQGraphicsPolygonItem* self) {
	self->removeFromIndex();
}

void QGraphicsPolygonItem_protectedbase_prepareGeometryChange(VirtualQGraphicsPolygonItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsPolygonItem_delete(QGraphicsPolygonItem* self) {
	delete self;
}

class VirtualQGraphicsLineItem final : public QGraphicsLineItem {
	const QGraphicsLineItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsLineItem_VTable* QGraphicsLineItem_vtbl(const VirtualQGraphicsLineItem* self);
	friend void* QGraphicsLineItem_vdata(const VirtualQGraphicsLineItem* self);
	friend void QGraphicsLineItem_setVdata(VirtualQGraphicsLineItem* self, void* vdata);

	VirtualQGraphicsLineItem(const QGraphicsLineItem_VTable* vtbl, void* vdata): QGraphicsLineItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLineItem(const QGraphicsLineItem_VTable* vtbl, void* vdata, const QLineF& line): QGraphicsLineItem(line), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLineItem(const QGraphicsLineItem_VTable* vtbl, void* vdata, qreal x1, qreal y1, qreal x2, qreal y2): QGraphicsLineItem(x1, y1, x2, y2), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLineItem(const QGraphicsLineItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsLineItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLineItem(const QGraphicsLineItem_VTable* vtbl, void* vdata, const QLineF& line, QGraphicsItem* parent): QGraphicsLineItem(line, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLineItem(const QGraphicsLineItem_VTable* vtbl, void* vdata, qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem* parent): QGraphicsLineItem(x1, y1, x2, y2, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsLineItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsLineItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsLineItem_virtualbase_boundingRect(const VirtualQGraphicsLineItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsLineItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsLineItem_virtualbase_shape(const VirtualQGraphicsLineItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsLineItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_contains(const VirtualQGraphicsLineItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsLineItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsLineItem_virtualbase_paint(VirtualQGraphicsLineItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsLineItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_isObscuredBy(const VirtualQGraphicsLineItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsLineItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsLineItem_virtualbase_opaqueArea(const VirtualQGraphicsLineItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsLineItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsLineItem_virtualbase_type(const VirtualQGraphicsLineItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsLineItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_supportsExtension(const VirtualQGraphicsLineItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsLineItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsLineItem_virtualbase_setExtension(VirtualQGraphicsLineItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsLineItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsLineItem_virtualbase_extension(const VirtualQGraphicsLineItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsLineItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_advance(VirtualQGraphicsLineItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsLineItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_collidesWithItem(const VirtualQGraphicsLineItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsLineItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_collidesWithPath(const VirtualQGraphicsLineItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsLineItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_sceneEventFilter(VirtualQGraphicsLineItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsLineItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsLineItem_virtualbase_sceneEvent(VirtualQGraphicsLineItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsLineItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_contextMenuEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsLineItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_dragEnterEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsLineItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_dragLeaveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsLineItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_dragMoveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsLineItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_dropEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsLineItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_focusInEvent(VirtualQGraphicsLineItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsLineItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_focusOutEvent(VirtualQGraphicsLineItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsLineItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_hoverEnterEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsLineItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_hoverMoveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsLineItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsLineItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_keyPressEvent(VirtualQGraphicsLineItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsLineItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_keyReleaseEvent(VirtualQGraphicsLineItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsLineItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_mousePressEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsLineItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_mouseMoveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsLineItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsLineItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsLineItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_wheelEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsLineItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsLineItem_virtualbase_inputMethodEvent(VirtualQGraphicsLineItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsLineItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsLineItem_virtualbase_inputMethodQuery(const VirtualQGraphicsLineItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsLineItem::itemChange(change, value);
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

	friend QVariant* QGraphicsLineItem_virtualbase_itemChange(VirtualQGraphicsLineItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsLineItem_protectedbase_updateMicroFocus(VirtualQGraphicsLineItem* self);
	friend void QGraphicsLineItem_protectedbase_addToIndex(VirtualQGraphicsLineItem* self);
	friend void QGraphicsLineItem_protectedbase_removeFromIndex(VirtualQGraphicsLineItem* self);
	friend void QGraphicsLineItem_protectedbase_prepareGeometryChange(VirtualQGraphicsLineItem* self);
};

VirtualQGraphicsLineItem* QGraphicsLineItem_new(const QGraphicsLineItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsLineItem(vtbl, vdata);
}

VirtualQGraphicsLineItem* QGraphicsLineItem_new2(const QGraphicsLineItem_VTable* vtbl, void* vdata, QLineF* line) {
	return new VirtualQGraphicsLineItem(vtbl, vdata, *line);
}

VirtualQGraphicsLineItem* QGraphicsLineItem_new3(const QGraphicsLineItem_VTable* vtbl, void* vdata, double x1, double y1, double x2, double y2) {
	return new VirtualQGraphicsLineItem(vtbl, vdata, static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2));
}

VirtualQGraphicsLineItem* QGraphicsLineItem_new4(const QGraphicsLineItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsLineItem(vtbl, vdata, parent);
}

VirtualQGraphicsLineItem* QGraphicsLineItem_new5(const QGraphicsLineItem_VTable* vtbl, void* vdata, QLineF* line, QGraphicsItem* parent) {
	return new VirtualQGraphicsLineItem(vtbl, vdata, *line, parent);
}

VirtualQGraphicsLineItem* QGraphicsLineItem_new6(const QGraphicsLineItem_VTable* vtbl, void* vdata, double x1, double y1, double x2, double y2, QGraphicsItem* parent) {
	return new VirtualQGraphicsLineItem(vtbl, vdata, static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2), parent);
}

void QGraphicsLineItem_virtbase(QGraphicsLineItem* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QPen* QGraphicsLineItem_pen(const QGraphicsLineItem* self) {
	return new QPen(self->pen());
}

void QGraphicsLineItem_setPen(QGraphicsLineItem* self, QPen* pen) {
	self->setPen(*pen);
}

QLineF* QGraphicsLineItem_line(const QGraphicsLineItem* self) {
	return new QLineF(self->line());
}

void QGraphicsLineItem_setLine(QGraphicsLineItem* self, QLineF* line) {
	self->setLine(*line);
}

void QGraphicsLineItem_setLine2(QGraphicsLineItem* self, double x1, double y1, double x2, double y2) {
	self->setLine(static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2));
}

QRectF* QGraphicsLineItem_boundingRect(const QGraphicsLineItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsLineItem_shape(const QGraphicsLineItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsLineItem_contains(const QGraphicsLineItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsLineItem_paint(QGraphicsLineItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsLineItem_isObscuredBy(const QGraphicsLineItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsLineItem_opaqueArea(const QGraphicsLineItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsLineItem_type(const QGraphicsLineItem* self) {
	return self->type();
}

QRectF* QGraphicsLineItem_virtualbase_boundingRect(const VirtualQGraphicsLineItem* self) {

	return new QRectF(self->QGraphicsLineItem::boundingRect());
}

QPainterPath* QGraphicsLineItem_virtualbase_shape(const VirtualQGraphicsLineItem* self) {

	return new QPainterPath(self->QGraphicsLineItem::shape());
}

bool QGraphicsLineItem_virtualbase_contains(const VirtualQGraphicsLineItem* self, QPointF* point) {

	return self->QGraphicsLineItem::contains(*point);
}

void QGraphicsLineItem_virtualbase_paint(VirtualQGraphicsLineItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsLineItem::paint(painter, option, widget);
}

bool QGraphicsLineItem_virtualbase_isObscuredBy(const VirtualQGraphicsLineItem* self, QGraphicsItem* item) {

	return self->QGraphicsLineItem::isObscuredBy(item);
}

QPainterPath* QGraphicsLineItem_virtualbase_opaqueArea(const VirtualQGraphicsLineItem* self) {

	return new QPainterPath(self->QGraphicsLineItem::opaqueArea());
}

int QGraphicsLineItem_virtualbase_type(const VirtualQGraphicsLineItem* self) {

	return self->QGraphicsLineItem::type();
}

bool QGraphicsLineItem_virtualbase_supportsExtension(const VirtualQGraphicsLineItem* self, int extension) {

	return self->QGraphicsLineItem::supportsExtension(static_cast<VirtualQGraphicsLineItem::Extension>(extension));
}

void QGraphicsLineItem_virtualbase_setExtension(VirtualQGraphicsLineItem* self, int extension, QVariant* variant) {

	self->QGraphicsLineItem::setExtension(static_cast<VirtualQGraphicsLineItem::Extension>(extension), *variant);
}

QVariant* QGraphicsLineItem_virtualbase_extension(const VirtualQGraphicsLineItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsLineItem::extension(*variant));
}

void QGraphicsLineItem_virtualbase_advance(VirtualQGraphicsLineItem* self, int phase) {

	self->QGraphicsLineItem::advance(static_cast<int>(phase));
}

bool QGraphicsLineItem_virtualbase_collidesWithItem(const VirtualQGraphicsLineItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsLineItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsLineItem_virtualbase_collidesWithPath(const VirtualQGraphicsLineItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsLineItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsLineItem_virtualbase_sceneEventFilter(VirtualQGraphicsLineItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsLineItem::sceneEventFilter(watched, event);
}

bool QGraphicsLineItem_virtualbase_sceneEvent(VirtualQGraphicsLineItem* self, QEvent* event) {

	return self->QGraphicsLineItem::sceneEvent(event);
}

void QGraphicsLineItem_virtualbase_contextMenuEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsLineItem::contextMenuEvent(event);
}

void QGraphicsLineItem_virtualbase_dragEnterEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsLineItem::dragEnterEvent(event);
}

void QGraphicsLineItem_virtualbase_dragLeaveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsLineItem::dragLeaveEvent(event);
}

void QGraphicsLineItem_virtualbase_dragMoveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsLineItem::dragMoveEvent(event);
}

void QGraphicsLineItem_virtualbase_dropEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsLineItem::dropEvent(event);
}

void QGraphicsLineItem_virtualbase_focusInEvent(VirtualQGraphicsLineItem* self, QFocusEvent* event) {

	self->QGraphicsLineItem::focusInEvent(event);
}

void QGraphicsLineItem_virtualbase_focusOutEvent(VirtualQGraphicsLineItem* self, QFocusEvent* event) {

	self->QGraphicsLineItem::focusOutEvent(event);
}

void QGraphicsLineItem_virtualbase_hoverEnterEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsLineItem::hoverEnterEvent(event);
}

void QGraphicsLineItem_virtualbase_hoverMoveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsLineItem::hoverMoveEvent(event);
}

void QGraphicsLineItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsLineItem::hoverLeaveEvent(event);
}

void QGraphicsLineItem_virtualbase_keyPressEvent(VirtualQGraphicsLineItem* self, QKeyEvent* event) {

	self->QGraphicsLineItem::keyPressEvent(event);
}

void QGraphicsLineItem_virtualbase_keyReleaseEvent(VirtualQGraphicsLineItem* self, QKeyEvent* event) {

	self->QGraphicsLineItem::keyReleaseEvent(event);
}

void QGraphicsLineItem_virtualbase_mousePressEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsLineItem::mousePressEvent(event);
}

void QGraphicsLineItem_virtualbase_mouseMoveEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsLineItem::mouseMoveEvent(event);
}

void QGraphicsLineItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsLineItem::mouseReleaseEvent(event);
}

void QGraphicsLineItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsLineItem::mouseDoubleClickEvent(event);
}

void QGraphicsLineItem_virtualbase_wheelEvent(VirtualQGraphicsLineItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsLineItem::wheelEvent(event);
}

void QGraphicsLineItem_virtualbase_inputMethodEvent(VirtualQGraphicsLineItem* self, QInputMethodEvent* event) {

	self->QGraphicsLineItem::inputMethodEvent(event);
}

QVariant* QGraphicsLineItem_virtualbase_inputMethodQuery(const VirtualQGraphicsLineItem* self, int query) {

	return new QVariant(self->QGraphicsLineItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsLineItem_virtualbase_itemChange(VirtualQGraphicsLineItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsLineItem::itemChange(static_cast<VirtualQGraphicsLineItem::GraphicsItemChange>(change), *value));
}

const QGraphicsLineItem_VTable* QGraphicsLineItem_vtbl(const VirtualQGraphicsLineItem* self) { return self->vtbl; }
void* QGraphicsLineItem_vdata(const VirtualQGraphicsLineItem* self) { return self->vdata; }
void QGraphicsLineItem_setVdata(VirtualQGraphicsLineItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsLineItem_protectedbase_updateMicroFocus(VirtualQGraphicsLineItem* self) {
	self->updateMicroFocus();
}

void QGraphicsLineItem_protectedbase_addToIndex(VirtualQGraphicsLineItem* self) {
	self->addToIndex();
}

void QGraphicsLineItem_protectedbase_removeFromIndex(VirtualQGraphicsLineItem* self) {
	self->removeFromIndex();
}

void QGraphicsLineItem_protectedbase_prepareGeometryChange(VirtualQGraphicsLineItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsLineItem_delete(QGraphicsLineItem* self) {
	delete self;
}

class VirtualQGraphicsPixmapItem final : public QGraphicsPixmapItem {
	const QGraphicsPixmapItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsPixmapItem_VTable* QGraphicsPixmapItem_vtbl(const VirtualQGraphicsPixmapItem* self);
	friend void* QGraphicsPixmapItem_vdata(const VirtualQGraphicsPixmapItem* self);
	friend void QGraphicsPixmapItem_setVdata(VirtualQGraphicsPixmapItem* self, void* vdata);

	VirtualQGraphicsPixmapItem(const QGraphicsPixmapItem_VTable* vtbl, void* vdata): QGraphicsPixmapItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPixmapItem(const QGraphicsPixmapItem_VTable* vtbl, void* vdata, const QPixmap& pixmap): QGraphicsPixmapItem(pixmap), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPixmapItem(const QGraphicsPixmapItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsPixmapItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsPixmapItem(const QGraphicsPixmapItem_VTable* vtbl, void* vdata, const QPixmap& pixmap, QGraphicsItem* parent): QGraphicsPixmapItem(pixmap, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsPixmapItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsPixmapItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsPixmapItem_virtualbase_boundingRect(const VirtualQGraphicsPixmapItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsPixmapItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsPixmapItem_virtualbase_shape(const VirtualQGraphicsPixmapItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsPixmapItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_contains(const VirtualQGraphicsPixmapItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsPixmapItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsPixmapItem_virtualbase_paint(VirtualQGraphicsPixmapItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsPixmapItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_isObscuredBy(const VirtualQGraphicsPixmapItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsPixmapItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsPixmapItem_virtualbase_opaqueArea(const VirtualQGraphicsPixmapItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsPixmapItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsPixmapItem_virtualbase_type(const VirtualQGraphicsPixmapItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsPixmapItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_supportsExtension(const VirtualQGraphicsPixmapItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsPixmapItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsPixmapItem_virtualbase_setExtension(VirtualQGraphicsPixmapItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsPixmapItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsPixmapItem_virtualbase_extension(const VirtualQGraphicsPixmapItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsPixmapItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_advance(VirtualQGraphicsPixmapItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsPixmapItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_collidesWithItem(const VirtualQGraphicsPixmapItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsPixmapItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_collidesWithPath(const VirtualQGraphicsPixmapItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsPixmapItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_sceneEventFilter(VirtualQGraphicsPixmapItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsPixmapItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsPixmapItem_virtualbase_sceneEvent(VirtualQGraphicsPixmapItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsPixmapItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_contextMenuEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsPixmapItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_dragEnterEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsPixmapItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_dragLeaveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsPixmapItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_dragMoveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsPixmapItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_dropEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsPixmapItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_focusInEvent(VirtualQGraphicsPixmapItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsPixmapItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_focusOutEvent(VirtualQGraphicsPixmapItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsPixmapItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_hoverEnterEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsPixmapItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_hoverMoveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsPixmapItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsPixmapItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_keyPressEvent(VirtualQGraphicsPixmapItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsPixmapItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_keyReleaseEvent(VirtualQGraphicsPixmapItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsPixmapItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_mousePressEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsPixmapItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_mouseMoveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsPixmapItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsPixmapItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsPixmapItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_wheelEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsPixmapItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsPixmapItem_virtualbase_inputMethodEvent(VirtualQGraphicsPixmapItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsPixmapItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsPixmapItem_virtualbase_inputMethodQuery(const VirtualQGraphicsPixmapItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsPixmapItem::itemChange(change, value);
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

	friend QVariant* QGraphicsPixmapItem_virtualbase_itemChange(VirtualQGraphicsPixmapItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsPixmapItem_protectedbase_updateMicroFocus(VirtualQGraphicsPixmapItem* self);
	friend void QGraphicsPixmapItem_protectedbase_addToIndex(VirtualQGraphicsPixmapItem* self);
	friend void QGraphicsPixmapItem_protectedbase_removeFromIndex(VirtualQGraphicsPixmapItem* self);
	friend void QGraphicsPixmapItem_protectedbase_prepareGeometryChange(VirtualQGraphicsPixmapItem* self);
};

VirtualQGraphicsPixmapItem* QGraphicsPixmapItem_new(const QGraphicsPixmapItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsPixmapItem(vtbl, vdata);
}

VirtualQGraphicsPixmapItem* QGraphicsPixmapItem_new2(const QGraphicsPixmapItem_VTable* vtbl, void* vdata, QPixmap* pixmap) {
	return new VirtualQGraphicsPixmapItem(vtbl, vdata, *pixmap);
}

VirtualQGraphicsPixmapItem* QGraphicsPixmapItem_new3(const QGraphicsPixmapItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsPixmapItem(vtbl, vdata, parent);
}

VirtualQGraphicsPixmapItem* QGraphicsPixmapItem_new4(const QGraphicsPixmapItem_VTable* vtbl, void* vdata, QPixmap* pixmap, QGraphicsItem* parent) {
	return new VirtualQGraphicsPixmapItem(vtbl, vdata, *pixmap, parent);
}

void QGraphicsPixmapItem_virtbase(QGraphicsPixmapItem* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QPixmap* QGraphicsPixmapItem_pixmap(const QGraphicsPixmapItem* self) {
	return new QPixmap(self->pixmap());
}

void QGraphicsPixmapItem_setPixmap(QGraphicsPixmapItem* self, QPixmap* pixmap) {
	self->setPixmap(*pixmap);
}

int QGraphicsPixmapItem_transformationMode(const QGraphicsPixmapItem* self) {
	Qt::TransformationMode _ret = self->transformationMode();
	return static_cast<int>(_ret);
}

void QGraphicsPixmapItem_setTransformationMode(QGraphicsPixmapItem* self, int mode) {
	self->setTransformationMode(static_cast<Qt::TransformationMode>(mode));
}

QPointF* QGraphicsPixmapItem_offset(const QGraphicsPixmapItem* self) {
	return new QPointF(self->offset());
}

void QGraphicsPixmapItem_setOffset(QGraphicsPixmapItem* self, QPointF* offset) {
	self->setOffset(*offset);
}

void QGraphicsPixmapItem_setOffset2(QGraphicsPixmapItem* self, double x, double y) {
	self->setOffset(static_cast<qreal>(x), static_cast<qreal>(y));
}

QRectF* QGraphicsPixmapItem_boundingRect(const QGraphicsPixmapItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsPixmapItem_shape(const QGraphicsPixmapItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsPixmapItem_contains(const QGraphicsPixmapItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsPixmapItem_paint(QGraphicsPixmapItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsPixmapItem_isObscuredBy(const QGraphicsPixmapItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsPixmapItem_opaqueArea(const QGraphicsPixmapItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsPixmapItem_type(const QGraphicsPixmapItem* self) {
	return self->type();
}

int QGraphicsPixmapItem_shapeMode(const QGraphicsPixmapItem* self) {
	QGraphicsPixmapItem::ShapeMode _ret = self->shapeMode();
	return static_cast<int>(_ret);
}

void QGraphicsPixmapItem_setShapeMode(QGraphicsPixmapItem* self, int mode) {
	self->setShapeMode(static_cast<QGraphicsPixmapItem::ShapeMode>(mode));
}

QRectF* QGraphicsPixmapItem_virtualbase_boundingRect(const VirtualQGraphicsPixmapItem* self) {

	return new QRectF(self->QGraphicsPixmapItem::boundingRect());
}

QPainterPath* QGraphicsPixmapItem_virtualbase_shape(const VirtualQGraphicsPixmapItem* self) {

	return new QPainterPath(self->QGraphicsPixmapItem::shape());
}

bool QGraphicsPixmapItem_virtualbase_contains(const VirtualQGraphicsPixmapItem* self, QPointF* point) {

	return self->QGraphicsPixmapItem::contains(*point);
}

void QGraphicsPixmapItem_virtualbase_paint(VirtualQGraphicsPixmapItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsPixmapItem::paint(painter, option, widget);
}

bool QGraphicsPixmapItem_virtualbase_isObscuredBy(const VirtualQGraphicsPixmapItem* self, QGraphicsItem* item) {

	return self->QGraphicsPixmapItem::isObscuredBy(item);
}

QPainterPath* QGraphicsPixmapItem_virtualbase_opaqueArea(const VirtualQGraphicsPixmapItem* self) {

	return new QPainterPath(self->QGraphicsPixmapItem::opaqueArea());
}

int QGraphicsPixmapItem_virtualbase_type(const VirtualQGraphicsPixmapItem* self) {

	return self->QGraphicsPixmapItem::type();
}

bool QGraphicsPixmapItem_virtualbase_supportsExtension(const VirtualQGraphicsPixmapItem* self, int extension) {

	return self->QGraphicsPixmapItem::supportsExtension(static_cast<VirtualQGraphicsPixmapItem::Extension>(extension));
}

void QGraphicsPixmapItem_virtualbase_setExtension(VirtualQGraphicsPixmapItem* self, int extension, QVariant* variant) {

	self->QGraphicsPixmapItem::setExtension(static_cast<VirtualQGraphicsPixmapItem::Extension>(extension), *variant);
}

QVariant* QGraphicsPixmapItem_virtualbase_extension(const VirtualQGraphicsPixmapItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsPixmapItem::extension(*variant));
}

void QGraphicsPixmapItem_virtualbase_advance(VirtualQGraphicsPixmapItem* self, int phase) {

	self->QGraphicsPixmapItem::advance(static_cast<int>(phase));
}

bool QGraphicsPixmapItem_virtualbase_collidesWithItem(const VirtualQGraphicsPixmapItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsPixmapItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsPixmapItem_virtualbase_collidesWithPath(const VirtualQGraphicsPixmapItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsPixmapItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsPixmapItem_virtualbase_sceneEventFilter(VirtualQGraphicsPixmapItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsPixmapItem::sceneEventFilter(watched, event);
}

bool QGraphicsPixmapItem_virtualbase_sceneEvent(VirtualQGraphicsPixmapItem* self, QEvent* event) {

	return self->QGraphicsPixmapItem::sceneEvent(event);
}

void QGraphicsPixmapItem_virtualbase_contextMenuEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsPixmapItem::contextMenuEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dragEnterEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPixmapItem::dragEnterEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dragLeaveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPixmapItem::dragLeaveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dragMoveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPixmapItem::dragMoveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dropEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsPixmapItem::dropEvent(event);
}

void QGraphicsPixmapItem_virtualbase_focusInEvent(VirtualQGraphicsPixmapItem* self, QFocusEvent* event) {

	self->QGraphicsPixmapItem::focusInEvent(event);
}

void QGraphicsPixmapItem_virtualbase_focusOutEvent(VirtualQGraphicsPixmapItem* self, QFocusEvent* event) {

	self->QGraphicsPixmapItem::focusOutEvent(event);
}

void QGraphicsPixmapItem_virtualbase_hoverEnterEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPixmapItem::hoverEnterEvent(event);
}

void QGraphicsPixmapItem_virtualbase_hoverMoveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPixmapItem::hoverMoveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsPixmapItem::hoverLeaveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_keyPressEvent(VirtualQGraphicsPixmapItem* self, QKeyEvent* event) {

	self->QGraphicsPixmapItem::keyPressEvent(event);
}

void QGraphicsPixmapItem_virtualbase_keyReleaseEvent(VirtualQGraphicsPixmapItem* self, QKeyEvent* event) {

	self->QGraphicsPixmapItem::keyReleaseEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mousePressEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPixmapItem::mousePressEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mouseMoveEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPixmapItem::mouseMoveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPixmapItem::mouseReleaseEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsPixmapItem::mouseDoubleClickEvent(event);
}

void QGraphicsPixmapItem_virtualbase_wheelEvent(VirtualQGraphicsPixmapItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsPixmapItem::wheelEvent(event);
}

void QGraphicsPixmapItem_virtualbase_inputMethodEvent(VirtualQGraphicsPixmapItem* self, QInputMethodEvent* event) {

	self->QGraphicsPixmapItem::inputMethodEvent(event);
}

QVariant* QGraphicsPixmapItem_virtualbase_inputMethodQuery(const VirtualQGraphicsPixmapItem* self, int query) {

	return new QVariant(self->QGraphicsPixmapItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsPixmapItem_virtualbase_itemChange(VirtualQGraphicsPixmapItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsPixmapItem::itemChange(static_cast<VirtualQGraphicsPixmapItem::GraphicsItemChange>(change), *value));
}

const QGraphicsPixmapItem_VTable* QGraphicsPixmapItem_vtbl(const VirtualQGraphicsPixmapItem* self) { return self->vtbl; }
void* QGraphicsPixmapItem_vdata(const VirtualQGraphicsPixmapItem* self) { return self->vdata; }
void QGraphicsPixmapItem_setVdata(VirtualQGraphicsPixmapItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsPixmapItem_protectedbase_updateMicroFocus(VirtualQGraphicsPixmapItem* self) {
	self->updateMicroFocus();
}

void QGraphicsPixmapItem_protectedbase_addToIndex(VirtualQGraphicsPixmapItem* self) {
	self->addToIndex();
}

void QGraphicsPixmapItem_protectedbase_removeFromIndex(VirtualQGraphicsPixmapItem* self) {
	self->removeFromIndex();
}

void QGraphicsPixmapItem_protectedbase_prepareGeometryChange(VirtualQGraphicsPixmapItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsPixmapItem_delete(QGraphicsPixmapItem* self) {
	delete self;
}

class VirtualQGraphicsTextItem final : public QGraphicsTextItem {
	const QGraphicsTextItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsTextItem_VTable* QGraphicsTextItem_vtbl(const VirtualQGraphicsTextItem* self);
	friend void* QGraphicsTextItem_vdata(const VirtualQGraphicsTextItem* self);
	friend void QGraphicsTextItem_setVdata(VirtualQGraphicsTextItem* self, void* vdata);

	VirtualQGraphicsTextItem(const QGraphicsTextItem_VTable* vtbl, void* vdata): QGraphicsTextItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsTextItem(const QGraphicsTextItem_VTable* vtbl, void* vdata, const QString& text): QGraphicsTextItem(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsTextItem(const QGraphicsTextItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsTextItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsTextItem(const QGraphicsTextItem_VTable* vtbl, void* vdata, const QString& text, QGraphicsItem* parent): QGraphicsTextItem(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsTextItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsTextItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsTextItem_virtualbase_metaObject(const VirtualQGraphicsTextItem* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsTextItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsTextItem_virtualbase_metacast(VirtualQGraphicsTextItem* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsTextItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsTextItem_virtualbase_metacall(VirtualQGraphicsTextItem* self, int param1, int param2, void** param3);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsTextItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsTextItem_virtualbase_boundingRect(const VirtualQGraphicsTextItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsTextItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsTextItem_virtualbase_shape(const VirtualQGraphicsTextItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsTextItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_contains(const VirtualQGraphicsTextItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsTextItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsTextItem_virtualbase_paint(VirtualQGraphicsTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsTextItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_isObscuredBy(const VirtualQGraphicsTextItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsTextItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsTextItem_virtualbase_opaqueArea(const VirtualQGraphicsTextItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsTextItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsTextItem_virtualbase_type(const VirtualQGraphicsTextItem* self);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsTextItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_sceneEvent(VirtualQGraphicsTextItem* self, QEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsTextItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_mousePressEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsTextItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_mouseMoveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsTextItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsTextItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsTextItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_contextMenuEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsTextItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_keyPressEvent(VirtualQGraphicsTextItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsTextItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_keyReleaseEvent(VirtualQGraphicsTextItem* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsTextItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_focusInEvent(VirtualQGraphicsTextItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsTextItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_focusOutEvent(VirtualQGraphicsTextItem* self, QFocusEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsTextItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_dragEnterEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsTextItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_dragLeaveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsTextItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_dragMoveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsTextItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_dropEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsTextItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_inputMethodEvent(VirtualQGraphicsTextItem* self, QInputMethodEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsTextItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_hoverEnterEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsTextItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_hoverMoveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsTextItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneHoverEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsTextItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsTextItem_virtualbase_inputMethodQuery(const VirtualQGraphicsTextItem* self, int query);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsTextItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_supportsExtension(const VirtualQGraphicsTextItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsTextItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsTextItem_virtualbase_setExtension(VirtualQGraphicsTextItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsTextItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsTextItem_virtualbase_extension(const VirtualQGraphicsTextItem* self, QVariant* variant);

	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsTextItem::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_event(VirtualQGraphicsTextItem* self, QEvent* ev);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsTextItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_eventFilter(VirtualQGraphicsTextItem* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsTextItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_timerEvent(VirtualQGraphicsTextItem* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsTextItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_childEvent(VirtualQGraphicsTextItem* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsTextItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_customEvent(VirtualQGraphicsTextItem* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsTextItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_connectNotify(VirtualQGraphicsTextItem* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsTextItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_disconnectNotify(VirtualQGraphicsTextItem* self, QMetaMethod* signal);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsTextItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_advance(VirtualQGraphicsTextItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsTextItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_collidesWithItem(const VirtualQGraphicsTextItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsTextItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_collidesWithPath(const VirtualQGraphicsTextItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsTextItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsTextItem_virtualbase_sceneEventFilter(VirtualQGraphicsTextItem* self, QGraphicsItem* watched, QEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsTextItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsTextItem_virtualbase_wheelEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneWheelEvent* event);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsTextItem::itemChange(change, value);
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

	friend QVariant* QGraphicsTextItem_virtualbase_itemChange(VirtualQGraphicsTextItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsTextItem_protectedbase_updateMicroFocus(VirtualQGraphicsTextItem* self);
	friend QObject* QGraphicsTextItem_protectedbase_sender(const VirtualQGraphicsTextItem* self);
	friend int QGraphicsTextItem_protectedbase_senderSignalIndex(const VirtualQGraphicsTextItem* self);
	friend int QGraphicsTextItem_protectedbase_receivers(const VirtualQGraphicsTextItem* self, const char* signal);
	friend bool QGraphicsTextItem_protectedbase_isSignalConnected(const VirtualQGraphicsTextItem* self, QMetaMethod* signal);
	friend void QGraphicsTextItem_protectedbase_addToIndex(VirtualQGraphicsTextItem* self);
	friend void QGraphicsTextItem_protectedbase_removeFromIndex(VirtualQGraphicsTextItem* self);
	friend void QGraphicsTextItem_protectedbase_prepareGeometryChange(VirtualQGraphicsTextItem* self);
};

VirtualQGraphicsTextItem* QGraphicsTextItem_new(const QGraphicsTextItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsTextItem(vtbl, vdata);
}

VirtualQGraphicsTextItem* QGraphicsTextItem_new2(const QGraphicsTextItem_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQGraphicsTextItem(vtbl, vdata, text_QString);
}

VirtualQGraphicsTextItem* QGraphicsTextItem_new3(const QGraphicsTextItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsTextItem(vtbl, vdata, parent);
}

VirtualQGraphicsTextItem* QGraphicsTextItem_new4(const QGraphicsTextItem_VTable* vtbl, void* vdata, struct miqt_string text, QGraphicsItem* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQGraphicsTextItem(vtbl, vdata, text_QString, parent);
}

void QGraphicsTextItem_virtbase(QGraphicsTextItem* src, QGraphicsObject** outptr_QGraphicsObject) {
	*outptr_QGraphicsObject = static_cast<QGraphicsObject*>(src);
}

QMetaObject* QGraphicsTextItem_metaObject(const QGraphicsTextItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsTextItem_metacast(QGraphicsTextItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsTextItem_metacall(QGraphicsTextItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsTextItem_tr(const char* s) {
	QString _ret = QGraphicsTextItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTextItem_toHtml(const QGraphicsTextItem* self) {
	QString _ret = self->toHtml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsTextItem_setHtml(QGraphicsTextItem* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

struct miqt_string QGraphicsTextItem_toPlainText(const QGraphicsTextItem* self) {
	QString _ret = self->toPlainText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsTextItem_setPlainText(QGraphicsTextItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setPlainText(text_QString);
}

QFont* QGraphicsTextItem_font(const QGraphicsTextItem* self) {
	return new QFont(self->font());
}

void QGraphicsTextItem_setFont(QGraphicsTextItem* self, QFont* font) {
	self->setFont(*font);
}

void QGraphicsTextItem_setDefaultTextColor(QGraphicsTextItem* self, QColor* c) {
	self->setDefaultTextColor(*c);
}

QColor* QGraphicsTextItem_defaultTextColor(const QGraphicsTextItem* self) {
	return new QColor(self->defaultTextColor());
}

QRectF* QGraphicsTextItem_boundingRect(const QGraphicsTextItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsTextItem_shape(const QGraphicsTextItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsTextItem_contains(const QGraphicsTextItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsTextItem_paint(QGraphicsTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsTextItem_isObscuredBy(const QGraphicsTextItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsTextItem_opaqueArea(const QGraphicsTextItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsTextItem_type(const QGraphicsTextItem* self) {
	return self->type();
}

void QGraphicsTextItem_setTextWidth(QGraphicsTextItem* self, double width) {
	self->setTextWidth(static_cast<qreal>(width));
}

double QGraphicsTextItem_textWidth(const QGraphicsTextItem* self) {
	qreal _ret = self->textWidth();
	return static_cast<double>(_ret);
}

void QGraphicsTextItem_adjustSize(QGraphicsTextItem* self) {
	self->adjustSize();
}

void QGraphicsTextItem_setDocument(QGraphicsTextItem* self, QTextDocument* document) {
	self->setDocument(document);
}

QTextDocument* QGraphicsTextItem_document(const QGraphicsTextItem* self) {
	return self->document();
}

void QGraphicsTextItem_setTextInteractionFlags(QGraphicsTextItem* self, int flags) {
	self->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

int QGraphicsTextItem_textInteractionFlags(const QGraphicsTextItem* self) {
	Qt::TextInteractionFlags _ret = self->textInteractionFlags();
	return static_cast<int>(_ret);
}

void QGraphicsTextItem_setTabChangesFocus(QGraphicsTextItem* self, bool b) {
	self->setTabChangesFocus(b);
}

bool QGraphicsTextItem_tabChangesFocus(const QGraphicsTextItem* self) {
	return self->tabChangesFocus();
}

void QGraphicsTextItem_setOpenExternalLinks(QGraphicsTextItem* self, bool open) {
	self->setOpenExternalLinks(open);
}

bool QGraphicsTextItem_openExternalLinks(const QGraphicsTextItem* self) {
	return self->openExternalLinks();
}

void QGraphicsTextItem_setTextCursor(QGraphicsTextItem* self, QTextCursor* cursor) {
	self->setTextCursor(*cursor);
}

QTextCursor* QGraphicsTextItem_textCursor(const QGraphicsTextItem* self) {
	return new QTextCursor(self->textCursor());
}

void QGraphicsTextItem_linkActivated(QGraphicsTextItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->linkActivated(param1_QString);
}

void QGraphicsTextItem_connect_linkActivated(VirtualQGraphicsTextItem* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
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
	VirtualQGraphicsTextItem::connect(self, static_cast<void (QGraphicsTextItem::*)(const QString&)>(&QGraphicsTextItem::linkActivated), self, local_caller{slot, callback, release});
}

void QGraphicsTextItem_linkHovered(QGraphicsTextItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->linkHovered(param1_QString);
}

void QGraphicsTextItem_connect_linkHovered(VirtualQGraphicsTextItem* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
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
	VirtualQGraphicsTextItem::connect(self, static_cast<void (QGraphicsTextItem::*)(const QString&)>(&QGraphicsTextItem::linkHovered), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsTextItem_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsTextItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTextItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsTextItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsTextItem_virtualbase_metaObject(const VirtualQGraphicsTextItem* self) {

	return (QMetaObject*) self->QGraphicsTextItem::metaObject();
}

void* QGraphicsTextItem_virtualbase_metacast(VirtualQGraphicsTextItem* self, const char* param1) {

	return self->QGraphicsTextItem::qt_metacast(param1);
}

int QGraphicsTextItem_virtualbase_metacall(VirtualQGraphicsTextItem* self, int param1, int param2, void** param3) {

	return self->QGraphicsTextItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QGraphicsTextItem_virtualbase_boundingRect(const VirtualQGraphicsTextItem* self) {

	return new QRectF(self->QGraphicsTextItem::boundingRect());
}

QPainterPath* QGraphicsTextItem_virtualbase_shape(const VirtualQGraphicsTextItem* self) {

	return new QPainterPath(self->QGraphicsTextItem::shape());
}

bool QGraphicsTextItem_virtualbase_contains(const VirtualQGraphicsTextItem* self, QPointF* point) {

	return self->QGraphicsTextItem::contains(*point);
}

void QGraphicsTextItem_virtualbase_paint(VirtualQGraphicsTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsTextItem::paint(painter, option, widget);
}

bool QGraphicsTextItem_virtualbase_isObscuredBy(const VirtualQGraphicsTextItem* self, QGraphicsItem* item) {

	return self->QGraphicsTextItem::isObscuredBy(item);
}

QPainterPath* QGraphicsTextItem_virtualbase_opaqueArea(const VirtualQGraphicsTextItem* self) {

	return new QPainterPath(self->QGraphicsTextItem::opaqueArea());
}

int QGraphicsTextItem_virtualbase_type(const VirtualQGraphicsTextItem* self) {

	return self->QGraphicsTextItem::type();
}

bool QGraphicsTextItem_virtualbase_sceneEvent(VirtualQGraphicsTextItem* self, QEvent* event) {

	return self->QGraphicsTextItem::sceneEvent(event);
}

void QGraphicsTextItem_virtualbase_mousePressEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsTextItem::mousePressEvent(event);
}

void QGraphicsTextItem_virtualbase_mouseMoveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsTextItem::mouseMoveEvent(event);
}

void QGraphicsTextItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsTextItem::mouseReleaseEvent(event);
}

void QGraphicsTextItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsTextItem::mouseDoubleClickEvent(event);
}

void QGraphicsTextItem_virtualbase_contextMenuEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsTextItem::contextMenuEvent(event);
}

void QGraphicsTextItem_virtualbase_keyPressEvent(VirtualQGraphicsTextItem* self, QKeyEvent* event) {

	self->QGraphicsTextItem::keyPressEvent(event);
}

void QGraphicsTextItem_virtualbase_keyReleaseEvent(VirtualQGraphicsTextItem* self, QKeyEvent* event) {

	self->QGraphicsTextItem::keyReleaseEvent(event);
}

void QGraphicsTextItem_virtualbase_focusInEvent(VirtualQGraphicsTextItem* self, QFocusEvent* event) {

	self->QGraphicsTextItem::focusInEvent(event);
}

void QGraphicsTextItem_virtualbase_focusOutEvent(VirtualQGraphicsTextItem* self, QFocusEvent* event) {

	self->QGraphicsTextItem::focusOutEvent(event);
}

void QGraphicsTextItem_virtualbase_dragEnterEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsTextItem::dragEnterEvent(event);
}

void QGraphicsTextItem_virtualbase_dragLeaveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsTextItem::dragLeaveEvent(event);
}

void QGraphicsTextItem_virtualbase_dragMoveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsTextItem::dragMoveEvent(event);
}

void QGraphicsTextItem_virtualbase_dropEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsTextItem::dropEvent(event);
}

void QGraphicsTextItem_virtualbase_inputMethodEvent(VirtualQGraphicsTextItem* self, QInputMethodEvent* event) {

	self->QGraphicsTextItem::inputMethodEvent(event);
}

void QGraphicsTextItem_virtualbase_hoverEnterEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsTextItem::hoverEnterEvent(event);
}

void QGraphicsTextItem_virtualbase_hoverMoveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsTextItem::hoverMoveEvent(event);
}

void QGraphicsTextItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsTextItem::hoverLeaveEvent(event);
}

QVariant* QGraphicsTextItem_virtualbase_inputMethodQuery(const VirtualQGraphicsTextItem* self, int query) {

	return new QVariant(self->QGraphicsTextItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QGraphicsTextItem_virtualbase_supportsExtension(const VirtualQGraphicsTextItem* self, int extension) {

	return self->QGraphicsTextItem::supportsExtension(static_cast<VirtualQGraphicsTextItem::Extension>(extension));
}

void QGraphicsTextItem_virtualbase_setExtension(VirtualQGraphicsTextItem* self, int extension, QVariant* variant) {

	self->QGraphicsTextItem::setExtension(static_cast<VirtualQGraphicsTextItem::Extension>(extension), *variant);
}

QVariant* QGraphicsTextItem_virtualbase_extension(const VirtualQGraphicsTextItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsTextItem::extension(*variant));
}

bool QGraphicsTextItem_virtualbase_event(VirtualQGraphicsTextItem* self, QEvent* ev) {

	return self->QGraphicsTextItem::event(ev);
}

bool QGraphicsTextItem_virtualbase_eventFilter(VirtualQGraphicsTextItem* self, QObject* watched, QEvent* event) {

	return self->QGraphicsTextItem::eventFilter(watched, event);
}

void QGraphicsTextItem_virtualbase_timerEvent(VirtualQGraphicsTextItem* self, QTimerEvent* event) {

	self->QGraphicsTextItem::timerEvent(event);
}

void QGraphicsTextItem_virtualbase_childEvent(VirtualQGraphicsTextItem* self, QChildEvent* event) {

	self->QGraphicsTextItem::childEvent(event);
}

void QGraphicsTextItem_virtualbase_customEvent(VirtualQGraphicsTextItem* self, QEvent* event) {

	self->QGraphicsTextItem::customEvent(event);
}

void QGraphicsTextItem_virtualbase_connectNotify(VirtualQGraphicsTextItem* self, QMetaMethod* signal) {

	self->QGraphicsTextItem::connectNotify(*signal);
}

void QGraphicsTextItem_virtualbase_disconnectNotify(VirtualQGraphicsTextItem* self, QMetaMethod* signal) {

	self->QGraphicsTextItem::disconnectNotify(*signal);
}

void QGraphicsTextItem_virtualbase_advance(VirtualQGraphicsTextItem* self, int phase) {

	self->QGraphicsTextItem::advance(static_cast<int>(phase));
}

bool QGraphicsTextItem_virtualbase_collidesWithItem(const VirtualQGraphicsTextItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsTextItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsTextItem_virtualbase_collidesWithPath(const VirtualQGraphicsTextItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsTextItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsTextItem_virtualbase_sceneEventFilter(VirtualQGraphicsTextItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsTextItem::sceneEventFilter(watched, event);
}

void QGraphicsTextItem_virtualbase_wheelEvent(VirtualQGraphicsTextItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsTextItem::wheelEvent(event);
}

QVariant* QGraphicsTextItem_virtualbase_itemChange(VirtualQGraphicsTextItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsTextItem::itemChange(static_cast<VirtualQGraphicsTextItem::GraphicsItemChange>(change), *value));
}

const QMetaObject* QGraphicsTextItem_staticMetaObject() { return &QGraphicsTextItem::staticMetaObject; }

const QGraphicsTextItem_VTable* QGraphicsTextItem_vtbl(const VirtualQGraphicsTextItem* self) { return self->vtbl; }
void* QGraphicsTextItem_vdata(const VirtualQGraphicsTextItem* self) { return self->vdata; }
void QGraphicsTextItem_setVdata(VirtualQGraphicsTextItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsTextItem_protectedbase_updateMicroFocus(VirtualQGraphicsTextItem* self) {
	self->updateMicroFocus();
}

QObject* QGraphicsTextItem_protectedbase_sender(const VirtualQGraphicsTextItem* self) {
	return self->sender();
}

int QGraphicsTextItem_protectedbase_senderSignalIndex(const VirtualQGraphicsTextItem* self) {
	return self->senderSignalIndex();
}

int QGraphicsTextItem_protectedbase_receivers(const VirtualQGraphicsTextItem* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsTextItem_protectedbase_isSignalConnected(const VirtualQGraphicsTextItem* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsTextItem_protectedbase_addToIndex(VirtualQGraphicsTextItem* self) {
	self->addToIndex();
}

void QGraphicsTextItem_protectedbase_removeFromIndex(VirtualQGraphicsTextItem* self) {
	self->removeFromIndex();
}

void QGraphicsTextItem_protectedbase_prepareGeometryChange(VirtualQGraphicsTextItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsTextItem_delete(QGraphicsTextItem* self) {
	delete self;
}

class VirtualQGraphicsSimpleTextItem final : public QGraphicsSimpleTextItem {
	const QGraphicsSimpleTextItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsSimpleTextItem_VTable* QGraphicsSimpleTextItem_vtbl(const VirtualQGraphicsSimpleTextItem* self);
	friend void* QGraphicsSimpleTextItem_vdata(const VirtualQGraphicsSimpleTextItem* self);
	friend void QGraphicsSimpleTextItem_setVdata(VirtualQGraphicsSimpleTextItem* self, void* vdata);

	VirtualQGraphicsSimpleTextItem(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata): QGraphicsSimpleTextItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsSimpleTextItem(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata, const QString& text): QGraphicsSimpleTextItem(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsSimpleTextItem(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsSimpleTextItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsSimpleTextItem(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata, const QString& text, QGraphicsItem* parent): QGraphicsSimpleTextItem(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsSimpleTextItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsSimpleTextItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsSimpleTextItem_virtualbase_boundingRect(const VirtualQGraphicsSimpleTextItem* self);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsSimpleTextItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsSimpleTextItem_virtualbase_shape(const VirtualQGraphicsSimpleTextItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsSimpleTextItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_contains(const VirtualQGraphicsSimpleTextItem* self, QPointF* point);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsSimpleTextItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_paint(VirtualQGraphicsSimpleTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsSimpleTextItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_isObscuredBy(const VirtualQGraphicsSimpleTextItem* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsSimpleTextItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsSimpleTextItem_virtualbase_opaqueArea(const VirtualQGraphicsSimpleTextItem* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsSimpleTextItem::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsSimpleTextItem_virtualbase_type(const VirtualQGraphicsSimpleTextItem* self);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsSimpleTextItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_supportsExtension(const VirtualQGraphicsSimpleTextItem* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsSimpleTextItem::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_setExtension(VirtualQGraphicsSimpleTextItem* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsSimpleTextItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsSimpleTextItem_virtualbase_extension(const VirtualQGraphicsSimpleTextItem* self, QVariant* variant);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsSimpleTextItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_advance(VirtualQGraphicsSimpleTextItem* self, int phase);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsSimpleTextItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_collidesWithItem(const VirtualQGraphicsSimpleTextItem* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsSimpleTextItem::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_collidesWithPath(const VirtualQGraphicsSimpleTextItem* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsSimpleTextItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_sceneEventFilter(VirtualQGraphicsSimpleTextItem* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsSimpleTextItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsSimpleTextItem_virtualbase_sceneEvent(VirtualQGraphicsSimpleTextItem* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsSimpleTextItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_contextMenuEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsSimpleTextItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_dragEnterEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsSimpleTextItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsSimpleTextItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_dragMoveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsSimpleTextItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_dropEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsSimpleTextItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_focusInEvent(VirtualQGraphicsSimpleTextItem* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsSimpleTextItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_focusOutEvent(VirtualQGraphicsSimpleTextItem* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsSimpleTextItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsSimpleTextItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsSimpleTextItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsSimpleTextItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_keyPressEvent(VirtualQGraphicsSimpleTextItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsSimpleTextItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(VirtualQGraphicsSimpleTextItem* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsSimpleTextItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_mousePressEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsSimpleTextItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsSimpleTextItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsSimpleTextItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsSimpleTextItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_wheelEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsSimpleTextItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsSimpleTextItem_virtualbase_inputMethodEvent(VirtualQGraphicsSimpleTextItem* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsSimpleTextItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsSimpleTextItem_virtualbase_inputMethodQuery(const VirtualQGraphicsSimpleTextItem* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsSimpleTextItem::itemChange(change, value);
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

	friend QVariant* QGraphicsSimpleTextItem_virtualbase_itemChange(VirtualQGraphicsSimpleTextItem* self, int change, QVariant* value);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsSimpleTextItem_protectedbase_updateMicroFocus(VirtualQGraphicsSimpleTextItem* self);
	friend void QGraphicsSimpleTextItem_protectedbase_addToIndex(VirtualQGraphicsSimpleTextItem* self);
	friend void QGraphicsSimpleTextItem_protectedbase_removeFromIndex(VirtualQGraphicsSimpleTextItem* self);
	friend void QGraphicsSimpleTextItem_protectedbase_prepareGeometryChange(VirtualQGraphicsSimpleTextItem* self);
};

VirtualQGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsSimpleTextItem(vtbl, vdata);
}

VirtualQGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new2(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQGraphicsSimpleTextItem(vtbl, vdata, text_QString);
}

VirtualQGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new3(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsSimpleTextItem(vtbl, vdata, parent);
}

VirtualQGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new4(const QGraphicsSimpleTextItem_VTable* vtbl, void* vdata, struct miqt_string text, QGraphicsItem* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQGraphicsSimpleTextItem(vtbl, vdata, text_QString, parent);
}

void QGraphicsSimpleTextItem_virtbase(QGraphicsSimpleTextItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

void QGraphicsSimpleTextItem_setText(QGraphicsSimpleTextItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

struct miqt_string QGraphicsSimpleTextItem_text(const QGraphicsSimpleTextItem* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsSimpleTextItem_setFont(QGraphicsSimpleTextItem* self, QFont* font) {
	self->setFont(*font);
}

QFont* QGraphicsSimpleTextItem_font(const QGraphicsSimpleTextItem* self) {
	return new QFont(self->font());
}

QRectF* QGraphicsSimpleTextItem_boundingRect(const QGraphicsSimpleTextItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsSimpleTextItem_shape(const QGraphicsSimpleTextItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsSimpleTextItem_contains(const QGraphicsSimpleTextItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsSimpleTextItem_paint(QGraphicsSimpleTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsSimpleTextItem_isObscuredBy(const QGraphicsSimpleTextItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsSimpleTextItem_opaqueArea(const QGraphicsSimpleTextItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsSimpleTextItem_type(const QGraphicsSimpleTextItem* self) {
	return self->type();
}

QRectF* QGraphicsSimpleTextItem_virtualbase_boundingRect(const VirtualQGraphicsSimpleTextItem* self) {

	return new QRectF(self->QGraphicsSimpleTextItem::boundingRect());
}

QPainterPath* QGraphicsSimpleTextItem_virtualbase_shape(const VirtualQGraphicsSimpleTextItem* self) {

	return new QPainterPath(self->QGraphicsSimpleTextItem::shape());
}

bool QGraphicsSimpleTextItem_virtualbase_contains(const VirtualQGraphicsSimpleTextItem* self, QPointF* point) {

	return self->QGraphicsSimpleTextItem::contains(*point);
}

void QGraphicsSimpleTextItem_virtualbase_paint(VirtualQGraphicsSimpleTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsSimpleTextItem::paint(painter, option, widget);
}

bool QGraphicsSimpleTextItem_virtualbase_isObscuredBy(const VirtualQGraphicsSimpleTextItem* self, QGraphicsItem* item) {

	return self->QGraphicsSimpleTextItem::isObscuredBy(item);
}

QPainterPath* QGraphicsSimpleTextItem_virtualbase_opaqueArea(const VirtualQGraphicsSimpleTextItem* self) {

	return new QPainterPath(self->QGraphicsSimpleTextItem::opaqueArea());
}

int QGraphicsSimpleTextItem_virtualbase_type(const VirtualQGraphicsSimpleTextItem* self) {

	return self->QGraphicsSimpleTextItem::type();
}

bool QGraphicsSimpleTextItem_virtualbase_supportsExtension(const VirtualQGraphicsSimpleTextItem* self, int extension) {

	return self->QGraphicsSimpleTextItem::supportsExtension(static_cast<VirtualQGraphicsSimpleTextItem::Extension>(extension));
}

void QGraphicsSimpleTextItem_virtualbase_setExtension(VirtualQGraphicsSimpleTextItem* self, int extension, QVariant* variant) {

	self->QGraphicsSimpleTextItem::setExtension(static_cast<VirtualQGraphicsSimpleTextItem::Extension>(extension), *variant);
}

QVariant* QGraphicsSimpleTextItem_virtualbase_extension(const VirtualQGraphicsSimpleTextItem* self, QVariant* variant) {

	return new QVariant(self->QGraphicsSimpleTextItem::extension(*variant));
}

void QGraphicsSimpleTextItem_virtualbase_advance(VirtualQGraphicsSimpleTextItem* self, int phase) {

	self->QGraphicsSimpleTextItem::advance(static_cast<int>(phase));
}

bool QGraphicsSimpleTextItem_virtualbase_collidesWithItem(const VirtualQGraphicsSimpleTextItem* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsSimpleTextItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsSimpleTextItem_virtualbase_collidesWithPath(const VirtualQGraphicsSimpleTextItem* self, QPainterPath* path, int mode) {

	return self->QGraphicsSimpleTextItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsSimpleTextItem_virtualbase_sceneEventFilter(VirtualQGraphicsSimpleTextItem* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsSimpleTextItem::sceneEventFilter(watched, event);
}

bool QGraphicsSimpleTextItem_virtualbase_sceneEvent(VirtualQGraphicsSimpleTextItem* self, QEvent* event) {

	return self->QGraphicsSimpleTextItem::sceneEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_contextMenuEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsSimpleTextItem::contextMenuEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dragEnterEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSimpleTextItem::dragEnterEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSimpleTextItem::dragLeaveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dragMoveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSimpleTextItem::dragMoveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dropEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsSimpleTextItem::dropEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_focusInEvent(VirtualQGraphicsSimpleTextItem* self, QFocusEvent* event) {

	self->QGraphicsSimpleTextItem::focusInEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_focusOutEvent(VirtualQGraphicsSimpleTextItem* self, QFocusEvent* event) {

	self->QGraphicsSimpleTextItem::focusOutEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsSimpleTextItem::hoverEnterEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsSimpleTextItem::hoverMoveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsSimpleTextItem::hoverLeaveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_keyPressEvent(VirtualQGraphicsSimpleTextItem* self, QKeyEvent* event) {

	self->QGraphicsSimpleTextItem::keyPressEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(VirtualQGraphicsSimpleTextItem* self, QKeyEvent* event) {

	self->QGraphicsSimpleTextItem::keyReleaseEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mousePressEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSimpleTextItem::mousePressEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSimpleTextItem::mouseMoveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSimpleTextItem::mouseReleaseEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsSimpleTextItem::mouseDoubleClickEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_wheelEvent(VirtualQGraphicsSimpleTextItem* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsSimpleTextItem::wheelEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_inputMethodEvent(VirtualQGraphicsSimpleTextItem* self, QInputMethodEvent* event) {

	self->QGraphicsSimpleTextItem::inputMethodEvent(event);
}

QVariant* QGraphicsSimpleTextItem_virtualbase_inputMethodQuery(const VirtualQGraphicsSimpleTextItem* self, int query) {

	return new QVariant(self->QGraphicsSimpleTextItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsSimpleTextItem_virtualbase_itemChange(VirtualQGraphicsSimpleTextItem* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsSimpleTextItem::itemChange(static_cast<VirtualQGraphicsSimpleTextItem::GraphicsItemChange>(change), *value));
}

const QGraphicsSimpleTextItem_VTable* QGraphicsSimpleTextItem_vtbl(const VirtualQGraphicsSimpleTextItem* self) { return self->vtbl; }
void* QGraphicsSimpleTextItem_vdata(const VirtualQGraphicsSimpleTextItem* self) { return self->vdata; }
void QGraphicsSimpleTextItem_setVdata(VirtualQGraphicsSimpleTextItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsSimpleTextItem_protectedbase_updateMicroFocus(VirtualQGraphicsSimpleTextItem* self) {
	self->updateMicroFocus();
}

void QGraphicsSimpleTextItem_protectedbase_addToIndex(VirtualQGraphicsSimpleTextItem* self) {
	self->addToIndex();
}

void QGraphicsSimpleTextItem_protectedbase_removeFromIndex(VirtualQGraphicsSimpleTextItem* self) {
	self->removeFromIndex();
}

void QGraphicsSimpleTextItem_protectedbase_prepareGeometryChange(VirtualQGraphicsSimpleTextItem* self) {
	self->prepareGeometryChange();
}

void QGraphicsSimpleTextItem_delete(QGraphicsSimpleTextItem* self) {
	delete self;
}

class VirtualQGraphicsItemGroup final : public QGraphicsItemGroup {
	const QGraphicsItemGroup_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsItemGroup_VTable* QGraphicsItemGroup_vtbl(const VirtualQGraphicsItemGroup* self);
	friend void* QGraphicsItemGroup_vdata(const VirtualQGraphicsItemGroup* self);
	friend void QGraphicsItemGroup_setVdata(VirtualQGraphicsItemGroup* self, void* vdata);

	VirtualQGraphicsItemGroup(const QGraphicsItemGroup_VTable* vtbl, void* vdata): QGraphicsItemGroup(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsItemGroup(const QGraphicsItemGroup_VTable* vtbl, void* vdata, QGraphicsItem* parent): QGraphicsItemGroup(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsItemGroup() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsItemGroup::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsItemGroup_virtualbase_boundingRect(const VirtualQGraphicsItemGroup* self);

	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsItemGroup::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QGraphicsItemGroup_virtualbase_paint(VirtualQGraphicsItemGroup* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);

	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsItemGroup::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_isObscuredBy(const VirtualQGraphicsItemGroup* self, QGraphicsItem* item);

	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsItemGroup::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsItemGroup_virtualbase_opaqueArea(const VirtualQGraphicsItemGroup* self);

	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsItemGroup::type();
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsItemGroup_virtualbase_type(const VirtualQGraphicsItemGroup* self);

	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsItemGroup::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_advance(VirtualQGraphicsItemGroup* self, int phase);

	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsItemGroup::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPainterPath* QGraphicsItemGroup_virtualbase_shape(const VirtualQGraphicsItemGroup* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsItemGroup::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_contains(const VirtualQGraphicsItemGroup* self, QPointF* point);

	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsItemGroup::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_collidesWithItem(const VirtualQGraphicsItemGroup* self, QGraphicsItem* other, int mode);

	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsItemGroup::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_collidesWithPath(const VirtualQGraphicsItemGroup* self, QPainterPath* path, int mode);

	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsItemGroup::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_sceneEventFilter(VirtualQGraphicsItemGroup* self, QGraphicsItem* watched, QEvent* event);

	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsItemGroup::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_sceneEvent(VirtualQGraphicsItemGroup* self, QEvent* event);

	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsItemGroup::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_contextMenuEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneContextMenuEvent* event);

	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsItemGroup::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_dragEnterEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsItemGroup::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_dragLeaveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event);

	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsItemGroup::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_dragMoveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event);

	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsItemGroup::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_dropEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsItemGroup::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_focusInEvent(VirtualQGraphicsItemGroup* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsItemGroup::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_focusOutEvent(VirtualQGraphicsItemGroup* self, QFocusEvent* event);

	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsItemGroup::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_hoverEnterEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsItemGroup::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_hoverMoveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneHoverEvent* event);

	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsItemGroup::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_hoverLeaveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneHoverEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsItemGroup::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_keyPressEvent(VirtualQGraphicsItemGroup* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsItemGroup::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_keyReleaseEvent(VirtualQGraphicsItemGroup* self, QKeyEvent* event);

	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsItemGroup::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_mousePressEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsItemGroup::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_mouseMoveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsItemGroup::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_mouseReleaseEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event);

	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsItemGroup::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event);

	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsItemGroup::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_wheelEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneWheelEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsItemGroup::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGraphicsItemGroup_virtualbase_inputMethodEvent(VirtualQGraphicsItemGroup* self, QInputMethodEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsItemGroup::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsItemGroup_virtualbase_inputMethodQuery(const VirtualQGraphicsItemGroup* self, int query);

	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsItemGroup::itemChange(change, value);
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

	friend QVariant* QGraphicsItemGroup_virtualbase_itemChange(VirtualQGraphicsItemGroup* self, int change, QVariant* value);

	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsItemGroup::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItemGroup_virtualbase_supportsExtension(const VirtualQGraphicsItemGroup* self, int extension);

	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsItemGroup::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(this, sigval1, sigval2);

	}

	friend void QGraphicsItemGroup_virtualbase_setExtension(VirtualQGraphicsItemGroup* self, int extension, QVariant* variant);

	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsItemGroup::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGraphicsItemGroup_virtualbase_extension(const VirtualQGraphicsItemGroup* self, QVariant* variant);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsItemGroup_protectedbase_updateMicroFocus(VirtualQGraphicsItemGroup* self);
	friend void QGraphicsItemGroup_protectedbase_addToIndex(VirtualQGraphicsItemGroup* self);
	friend void QGraphicsItemGroup_protectedbase_removeFromIndex(VirtualQGraphicsItemGroup* self);
	friend void QGraphicsItemGroup_protectedbase_prepareGeometryChange(VirtualQGraphicsItemGroup* self);
};

VirtualQGraphicsItemGroup* QGraphicsItemGroup_new(const QGraphicsItemGroup_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsItemGroup(vtbl, vdata);
}

VirtualQGraphicsItemGroup* QGraphicsItemGroup_new2(const QGraphicsItemGroup_VTable* vtbl, void* vdata, QGraphicsItem* parent) {
	return new VirtualQGraphicsItemGroup(vtbl, vdata, parent);
}

void QGraphicsItemGroup_virtbase(QGraphicsItemGroup* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

void QGraphicsItemGroup_addToGroup(QGraphicsItemGroup* self, QGraphicsItem* item) {
	self->addToGroup(item);
}

void QGraphicsItemGroup_removeFromGroup(QGraphicsItemGroup* self, QGraphicsItem* item) {
	self->removeFromGroup(item);
}

QRectF* QGraphicsItemGroup_boundingRect(const QGraphicsItemGroup* self) {
	return new QRectF(self->boundingRect());
}

void QGraphicsItemGroup_paint(QGraphicsItemGroup* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsItemGroup_isObscuredBy(const QGraphicsItemGroup* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsItemGroup_opaqueArea(const QGraphicsItemGroup* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsItemGroup_type(const QGraphicsItemGroup* self) {
	return self->type();
}

QRectF* QGraphicsItemGroup_virtualbase_boundingRect(const VirtualQGraphicsItemGroup* self) {

	return new QRectF(self->QGraphicsItemGroup::boundingRect());
}

void QGraphicsItemGroup_virtualbase_paint(VirtualQGraphicsItemGroup* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

	self->QGraphicsItemGroup::paint(painter, option, widget);
}

bool QGraphicsItemGroup_virtualbase_isObscuredBy(const VirtualQGraphicsItemGroup* self, QGraphicsItem* item) {

	return self->QGraphicsItemGroup::isObscuredBy(item);
}

QPainterPath* QGraphicsItemGroup_virtualbase_opaqueArea(const VirtualQGraphicsItemGroup* self) {

	return new QPainterPath(self->QGraphicsItemGroup::opaqueArea());
}

int QGraphicsItemGroup_virtualbase_type(const VirtualQGraphicsItemGroup* self) {

	return self->QGraphicsItemGroup::type();
}

void QGraphicsItemGroup_virtualbase_advance(VirtualQGraphicsItemGroup* self, int phase) {

	self->QGraphicsItemGroup::advance(static_cast<int>(phase));
}

QPainterPath* QGraphicsItemGroup_virtualbase_shape(const VirtualQGraphicsItemGroup* self) {

	return new QPainterPath(self->QGraphicsItemGroup::shape());
}

bool QGraphicsItemGroup_virtualbase_contains(const VirtualQGraphicsItemGroup* self, QPointF* point) {

	return self->QGraphicsItemGroup::contains(*point);
}

bool QGraphicsItemGroup_virtualbase_collidesWithItem(const VirtualQGraphicsItemGroup* self, QGraphicsItem* other, int mode) {

	return self->QGraphicsItemGroup::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsItemGroup_virtualbase_collidesWithPath(const VirtualQGraphicsItemGroup* self, QPainterPath* path, int mode) {

	return self->QGraphicsItemGroup::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsItemGroup_virtualbase_sceneEventFilter(VirtualQGraphicsItemGroup* self, QGraphicsItem* watched, QEvent* event) {

	return self->QGraphicsItemGroup::sceneEventFilter(watched, event);
}

bool QGraphicsItemGroup_virtualbase_sceneEvent(VirtualQGraphicsItemGroup* self, QEvent* event) {

	return self->QGraphicsItemGroup::sceneEvent(event);
}

void QGraphicsItemGroup_virtualbase_contextMenuEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneContextMenuEvent* event) {

	self->QGraphicsItemGroup::contextMenuEvent(event);
}

void QGraphicsItemGroup_virtualbase_dragEnterEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItemGroup::dragEnterEvent(event);
}

void QGraphicsItemGroup_virtualbase_dragLeaveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItemGroup::dragLeaveEvent(event);
}

void QGraphicsItemGroup_virtualbase_dragMoveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItemGroup::dragMoveEvent(event);
}

void QGraphicsItemGroup_virtualbase_dropEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneDragDropEvent* event) {

	self->QGraphicsItemGroup::dropEvent(event);
}

void QGraphicsItemGroup_virtualbase_focusInEvent(VirtualQGraphicsItemGroup* self, QFocusEvent* event) {

	self->QGraphicsItemGroup::focusInEvent(event);
}

void QGraphicsItemGroup_virtualbase_focusOutEvent(VirtualQGraphicsItemGroup* self, QFocusEvent* event) {

	self->QGraphicsItemGroup::focusOutEvent(event);
}

void QGraphicsItemGroup_virtualbase_hoverEnterEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsItemGroup::hoverEnterEvent(event);
}

void QGraphicsItemGroup_virtualbase_hoverMoveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsItemGroup::hoverMoveEvent(event);
}

void QGraphicsItemGroup_virtualbase_hoverLeaveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneHoverEvent* event) {

	self->QGraphicsItemGroup::hoverLeaveEvent(event);
}

void QGraphicsItemGroup_virtualbase_keyPressEvent(VirtualQGraphicsItemGroup* self, QKeyEvent* event) {

	self->QGraphicsItemGroup::keyPressEvent(event);
}

void QGraphicsItemGroup_virtualbase_keyReleaseEvent(VirtualQGraphicsItemGroup* self, QKeyEvent* event) {

	self->QGraphicsItemGroup::keyReleaseEvent(event);
}

void QGraphicsItemGroup_virtualbase_mousePressEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItemGroup::mousePressEvent(event);
}

void QGraphicsItemGroup_virtualbase_mouseMoveEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItemGroup::mouseMoveEvent(event);
}

void QGraphicsItemGroup_virtualbase_mouseReleaseEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItemGroup::mouseReleaseEvent(event);
}

void QGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneMouseEvent* event) {

	self->QGraphicsItemGroup::mouseDoubleClickEvent(event);
}

void QGraphicsItemGroup_virtualbase_wheelEvent(VirtualQGraphicsItemGroup* self, QGraphicsSceneWheelEvent* event) {

	self->QGraphicsItemGroup::wheelEvent(event);
}

void QGraphicsItemGroup_virtualbase_inputMethodEvent(VirtualQGraphicsItemGroup* self, QInputMethodEvent* event) {

	self->QGraphicsItemGroup::inputMethodEvent(event);
}

QVariant* QGraphicsItemGroup_virtualbase_inputMethodQuery(const VirtualQGraphicsItemGroup* self, int query) {

	return new QVariant(self->QGraphicsItemGroup::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QVariant* QGraphicsItemGroup_virtualbase_itemChange(VirtualQGraphicsItemGroup* self, int change, QVariant* value) {

	return new QVariant(self->QGraphicsItemGroup::itemChange(static_cast<VirtualQGraphicsItemGroup::GraphicsItemChange>(change), *value));
}

bool QGraphicsItemGroup_virtualbase_supportsExtension(const VirtualQGraphicsItemGroup* self, int extension) {

	return self->QGraphicsItemGroup::supportsExtension(static_cast<VirtualQGraphicsItemGroup::Extension>(extension));
}

void QGraphicsItemGroup_virtualbase_setExtension(VirtualQGraphicsItemGroup* self, int extension, QVariant* variant) {

	self->QGraphicsItemGroup::setExtension(static_cast<VirtualQGraphicsItemGroup::Extension>(extension), *variant);
}

QVariant* QGraphicsItemGroup_virtualbase_extension(const VirtualQGraphicsItemGroup* self, QVariant* variant) {

	return new QVariant(self->QGraphicsItemGroup::extension(*variant));
}

const QGraphicsItemGroup_VTable* QGraphicsItemGroup_vtbl(const VirtualQGraphicsItemGroup* self) { return self->vtbl; }
void* QGraphicsItemGroup_vdata(const VirtualQGraphicsItemGroup* self) { return self->vdata; }
void QGraphicsItemGroup_setVdata(VirtualQGraphicsItemGroup* self, void* vdata) { self->vdata = vdata; }

void QGraphicsItemGroup_protectedbase_updateMicroFocus(VirtualQGraphicsItemGroup* self) {
	self->updateMicroFocus();
}

void QGraphicsItemGroup_protectedbase_addToIndex(VirtualQGraphicsItemGroup* self) {
	self->addToIndex();
}

void QGraphicsItemGroup_protectedbase_removeFromIndex(VirtualQGraphicsItemGroup* self) {
	self->removeFromIndex();
}

void QGraphicsItemGroup_protectedbase_prepareGeometryChange(VirtualQGraphicsItemGroup* self) {
	self->prepareGeometryChange();
}

void QGraphicsItemGroup_delete(QGraphicsItemGroup* self) {
	delete self;
}

