#include <QEvent>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneEvent>
#include <QGraphicsSceneHelpEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneMoveEvent>
#include <QGraphicsSceneResizeEvent>
#include <QGraphicsSceneWheelEvent>
#include <QMimeData>
#include <QPoint>
#include <QPointF>
#include <QSizeF>
#include <QWidget>
#include <qgraphicssceneevent.h>
#include "gen_qgraphicssceneevent.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsSceneEvent final : public QGraphicsSceneEvent {
	struct QGraphicsSceneEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneEvent(struct QGraphicsSceneEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneEvent* QGraphicsSceneEvent_new(struct QGraphicsSceneEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneEvent_virtbase(QGraphicsSceneEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QWidget* QGraphicsSceneEvent_widget(const QGraphicsSceneEvent* self) {
	return self->widget();
}

void QGraphicsSceneEvent_setWidget(QGraphicsSceneEvent* self, QWidget* widget) {
	self->setWidget(widget);
}

unsigned long long QGraphicsSceneEvent_timestamp(const QGraphicsSceneEvent* self) {
	quint64 _ret = self->timestamp();
	return static_cast<unsigned long long>(_ret);
}

void QGraphicsSceneEvent_setTimestamp(QGraphicsSceneEvent* self, unsigned long long ts) {
	self->setTimestamp(static_cast<quint64>(ts));
}

void QGraphicsSceneEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneEvent*)(self) )->QGraphicsSceneEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneEvent*)(self) )->QGraphicsSceneEvent::clone();

}

void QGraphicsSceneEvent_delete(QGraphicsSceneEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneMouseEvent final : public QGraphicsSceneMouseEvent {
	struct QGraphicsSceneMouseEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneMouseEvent(struct QGraphicsSceneMouseEvent_VTable* vtbl): QGraphicsSceneMouseEvent(), vtbl(vtbl) {};
	VirtualQGraphicsSceneMouseEvent(struct QGraphicsSceneMouseEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneMouseEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneMouseEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneMouseEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneMouseEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneMouseEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneMouseEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new(struct QGraphicsSceneMouseEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneMouseEvent(vtbl);
}

QGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new2(struct QGraphicsSceneMouseEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneMouseEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneMouseEvent_virtbase(QGraphicsSceneMouseEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneMouseEvent_pos(const QGraphicsSceneMouseEvent* self) {
	return new QPointF(self->pos());
}

void QGraphicsSceneMouseEvent_setPos(QGraphicsSceneMouseEvent* self, QPointF* pos) {
	self->setPos(*pos);
}

QPointF* QGraphicsSceneMouseEvent_scenePos(const QGraphicsSceneMouseEvent* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsSceneMouseEvent_setScenePos(QGraphicsSceneMouseEvent* self, QPointF* pos) {
	self->setScenePos(*pos);
}

QPoint* QGraphicsSceneMouseEvent_screenPos(const QGraphicsSceneMouseEvent* self) {
	return new QPoint(self->screenPos());
}

void QGraphicsSceneMouseEvent_setScreenPos(QGraphicsSceneMouseEvent* self, QPoint* pos) {
	self->setScreenPos(*pos);
}

QPointF* QGraphicsSceneMouseEvent_buttonDownPos(const QGraphicsSceneMouseEvent* self, int button) {
	return new QPointF(self->buttonDownPos(static_cast<Qt::MouseButton>(button)));
}

void QGraphicsSceneMouseEvent_setButtonDownPos(QGraphicsSceneMouseEvent* self, int button, QPointF* pos) {
	self->setButtonDownPos(static_cast<Qt::MouseButton>(button), *pos);
}

QPointF* QGraphicsSceneMouseEvent_buttonDownScenePos(const QGraphicsSceneMouseEvent* self, int button) {
	return new QPointF(self->buttonDownScenePos(static_cast<Qt::MouseButton>(button)));
}

void QGraphicsSceneMouseEvent_setButtonDownScenePos(QGraphicsSceneMouseEvent* self, int button, QPointF* pos) {
	self->setButtonDownScenePos(static_cast<Qt::MouseButton>(button), *pos);
}

QPoint* QGraphicsSceneMouseEvent_buttonDownScreenPos(const QGraphicsSceneMouseEvent* self, int button) {
	return new QPoint(self->buttonDownScreenPos(static_cast<Qt::MouseButton>(button)));
}

void QGraphicsSceneMouseEvent_setButtonDownScreenPos(QGraphicsSceneMouseEvent* self, int button, QPoint* pos) {
	self->setButtonDownScreenPos(static_cast<Qt::MouseButton>(button), *pos);
}

QPointF* QGraphicsSceneMouseEvent_lastPos(const QGraphicsSceneMouseEvent* self) {
	return new QPointF(self->lastPos());
}

void QGraphicsSceneMouseEvent_setLastPos(QGraphicsSceneMouseEvent* self, QPointF* pos) {
	self->setLastPos(*pos);
}

QPointF* QGraphicsSceneMouseEvent_lastScenePos(const QGraphicsSceneMouseEvent* self) {
	return new QPointF(self->lastScenePos());
}

void QGraphicsSceneMouseEvent_setLastScenePos(QGraphicsSceneMouseEvent* self, QPointF* pos) {
	self->setLastScenePos(*pos);
}

QPoint* QGraphicsSceneMouseEvent_lastScreenPos(const QGraphicsSceneMouseEvent* self) {
	return new QPoint(self->lastScreenPos());
}

void QGraphicsSceneMouseEvent_setLastScreenPos(QGraphicsSceneMouseEvent* self, QPoint* pos) {
	self->setLastScreenPos(*pos);
}

int QGraphicsSceneMouseEvent_buttons(const QGraphicsSceneMouseEvent* self) {
	Qt::MouseButtons _ret = self->buttons();
	return static_cast<int>(_ret);
}

void QGraphicsSceneMouseEvent_setButtons(QGraphicsSceneMouseEvent* self, int buttons) {
	self->setButtons(static_cast<Qt::MouseButtons>(buttons));
}

int QGraphicsSceneMouseEvent_button(const QGraphicsSceneMouseEvent* self) {
	Qt::MouseButton _ret = self->button();
	return static_cast<int>(_ret);
}

void QGraphicsSceneMouseEvent_setButton(QGraphicsSceneMouseEvent* self, int button) {
	self->setButton(static_cast<Qt::MouseButton>(button));
}

int QGraphicsSceneMouseEvent_modifiers(const QGraphicsSceneMouseEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

void QGraphicsSceneMouseEvent_setModifiers(QGraphicsSceneMouseEvent* self, int modifiers) {
	self->setModifiers(static_cast<Qt::KeyboardModifiers>(modifiers));
}

int QGraphicsSceneMouseEvent_source(const QGraphicsSceneMouseEvent* self) {
	Qt::MouseEventSource _ret = self->source();
	return static_cast<int>(_ret);
}

void QGraphicsSceneMouseEvent_setSource(QGraphicsSceneMouseEvent* self, int source) {
	self->setSource(static_cast<Qt::MouseEventSource>(source));
}

int QGraphicsSceneMouseEvent_flags(const QGraphicsSceneMouseEvent* self) {
	Qt::MouseEventFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QGraphicsSceneMouseEvent_setFlags(QGraphicsSceneMouseEvent* self, int flags) {
	self->setFlags(static_cast<Qt::MouseEventFlags>(flags));
}

void QGraphicsSceneMouseEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneMouseEvent*)(self) )->QGraphicsSceneMouseEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneMouseEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneMouseEvent*)(self) )->QGraphicsSceneMouseEvent::clone();

}

void QGraphicsSceneMouseEvent_delete(QGraphicsSceneMouseEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneWheelEvent final : public QGraphicsSceneWheelEvent {
	struct QGraphicsSceneWheelEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneWheelEvent(struct QGraphicsSceneWheelEvent_VTable* vtbl): QGraphicsSceneWheelEvent(), vtbl(vtbl) {};
	VirtualQGraphicsSceneWheelEvent(struct QGraphicsSceneWheelEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneWheelEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneWheelEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneWheelEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneWheelEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneWheelEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneWheelEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new(struct QGraphicsSceneWheelEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneWheelEvent(vtbl);
}

QGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new2(struct QGraphicsSceneWheelEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneWheelEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneWheelEvent_virtbase(QGraphicsSceneWheelEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneWheelEvent_pos(const QGraphicsSceneWheelEvent* self) {
	return new QPointF(self->pos());
}

void QGraphicsSceneWheelEvent_setPos(QGraphicsSceneWheelEvent* self, QPointF* pos) {
	self->setPos(*pos);
}

QPointF* QGraphicsSceneWheelEvent_scenePos(const QGraphicsSceneWheelEvent* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsSceneWheelEvent_setScenePos(QGraphicsSceneWheelEvent* self, QPointF* pos) {
	self->setScenePos(*pos);
}

QPoint* QGraphicsSceneWheelEvent_screenPos(const QGraphicsSceneWheelEvent* self) {
	return new QPoint(self->screenPos());
}

void QGraphicsSceneWheelEvent_setScreenPos(QGraphicsSceneWheelEvent* self, QPoint* pos) {
	self->setScreenPos(*pos);
}

int QGraphicsSceneWheelEvent_buttons(const QGraphicsSceneWheelEvent* self) {
	Qt::MouseButtons _ret = self->buttons();
	return static_cast<int>(_ret);
}

void QGraphicsSceneWheelEvent_setButtons(QGraphicsSceneWheelEvent* self, int buttons) {
	self->setButtons(static_cast<Qt::MouseButtons>(buttons));
}

int QGraphicsSceneWheelEvent_modifiers(const QGraphicsSceneWheelEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

void QGraphicsSceneWheelEvent_setModifiers(QGraphicsSceneWheelEvent* self, int modifiers) {
	self->setModifiers(static_cast<Qt::KeyboardModifiers>(modifiers));
}

int QGraphicsSceneWheelEvent_delta(const QGraphicsSceneWheelEvent* self) {
	return self->delta();
}

void QGraphicsSceneWheelEvent_setDelta(QGraphicsSceneWheelEvent* self, int delta) {
	self->setDelta(static_cast<int>(delta));
}

int QGraphicsSceneWheelEvent_orientation(const QGraphicsSceneWheelEvent* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QGraphicsSceneWheelEvent_setOrientation(QGraphicsSceneWheelEvent* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QGraphicsSceneWheelEvent_phase(const QGraphicsSceneWheelEvent* self) {
	Qt::ScrollPhase _ret = self->phase();
	return static_cast<int>(_ret);
}

void QGraphicsSceneWheelEvent_setPhase(QGraphicsSceneWheelEvent* self, int scrollPhase) {
	self->setPhase(static_cast<Qt::ScrollPhase>(scrollPhase));
}

QPoint* QGraphicsSceneWheelEvent_pixelDelta(const QGraphicsSceneWheelEvent* self) {
	return new QPoint(self->pixelDelta());
}

void QGraphicsSceneWheelEvent_setPixelDelta(QGraphicsSceneWheelEvent* self, QPoint* delta) {
	self->setPixelDelta(*delta);
}

bool QGraphicsSceneWheelEvent_isInverted(const QGraphicsSceneWheelEvent* self) {
	return self->isInverted();
}

void QGraphicsSceneWheelEvent_setInverted(QGraphicsSceneWheelEvent* self, bool inverted) {
	self->setInverted(inverted);
}

void QGraphicsSceneWheelEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneWheelEvent*)(self) )->QGraphicsSceneWheelEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneWheelEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneWheelEvent*)(self) )->QGraphicsSceneWheelEvent::clone();

}

void QGraphicsSceneWheelEvent_delete(QGraphicsSceneWheelEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneContextMenuEvent final : public QGraphicsSceneContextMenuEvent {
	struct QGraphicsSceneContextMenuEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneContextMenuEvent(struct QGraphicsSceneContextMenuEvent_VTable* vtbl): QGraphicsSceneContextMenuEvent(), vtbl(vtbl) {};
	VirtualQGraphicsSceneContextMenuEvent(struct QGraphicsSceneContextMenuEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneContextMenuEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneContextMenuEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneContextMenuEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneContextMenuEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneContextMenuEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new(struct QGraphicsSceneContextMenuEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneContextMenuEvent(vtbl);
}

QGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new2(struct QGraphicsSceneContextMenuEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneContextMenuEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneContextMenuEvent_virtbase(QGraphicsSceneContextMenuEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneContextMenuEvent_pos(const QGraphicsSceneContextMenuEvent* self) {
	return new QPointF(self->pos());
}

void QGraphicsSceneContextMenuEvent_setPos(QGraphicsSceneContextMenuEvent* self, QPointF* pos) {
	self->setPos(*pos);
}

QPointF* QGraphicsSceneContextMenuEvent_scenePos(const QGraphicsSceneContextMenuEvent* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsSceneContextMenuEvent_setScenePos(QGraphicsSceneContextMenuEvent* self, QPointF* pos) {
	self->setScenePos(*pos);
}

QPoint* QGraphicsSceneContextMenuEvent_screenPos(const QGraphicsSceneContextMenuEvent* self) {
	return new QPoint(self->screenPos());
}

void QGraphicsSceneContextMenuEvent_setScreenPos(QGraphicsSceneContextMenuEvent* self, QPoint* pos) {
	self->setScreenPos(*pos);
}

int QGraphicsSceneContextMenuEvent_modifiers(const QGraphicsSceneContextMenuEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

void QGraphicsSceneContextMenuEvent_setModifiers(QGraphicsSceneContextMenuEvent* self, int modifiers) {
	self->setModifiers(static_cast<Qt::KeyboardModifiers>(modifiers));
}

int QGraphicsSceneContextMenuEvent_reason(const QGraphicsSceneContextMenuEvent* self) {
	QGraphicsSceneContextMenuEvent::Reason _ret = self->reason();
	return static_cast<int>(_ret);
}

void QGraphicsSceneContextMenuEvent_setReason(QGraphicsSceneContextMenuEvent* self, int reason) {
	self->setReason(static_cast<QGraphicsSceneContextMenuEvent::Reason>(reason));
}

void QGraphicsSceneContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneContextMenuEvent*)(self) )->QGraphicsSceneContextMenuEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneContextMenuEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneContextMenuEvent*)(self) )->QGraphicsSceneContextMenuEvent::clone();

}

void QGraphicsSceneContextMenuEvent_delete(QGraphicsSceneContextMenuEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneHoverEvent final : public QGraphicsSceneHoverEvent {
	struct QGraphicsSceneHoverEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneHoverEvent(struct QGraphicsSceneHoverEvent_VTable* vtbl): QGraphicsSceneHoverEvent(), vtbl(vtbl) {};
	VirtualQGraphicsSceneHoverEvent(struct QGraphicsSceneHoverEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneHoverEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneHoverEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneHoverEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneHoverEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneHoverEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneHoverEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new(struct QGraphicsSceneHoverEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneHoverEvent(vtbl);
}

QGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new2(struct QGraphicsSceneHoverEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneHoverEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneHoverEvent_virtbase(QGraphicsSceneHoverEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneHoverEvent_pos(const QGraphicsSceneHoverEvent* self) {
	return new QPointF(self->pos());
}

void QGraphicsSceneHoverEvent_setPos(QGraphicsSceneHoverEvent* self, QPointF* pos) {
	self->setPos(*pos);
}

QPointF* QGraphicsSceneHoverEvent_scenePos(const QGraphicsSceneHoverEvent* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsSceneHoverEvent_setScenePos(QGraphicsSceneHoverEvent* self, QPointF* pos) {
	self->setScenePos(*pos);
}

QPoint* QGraphicsSceneHoverEvent_screenPos(const QGraphicsSceneHoverEvent* self) {
	return new QPoint(self->screenPos());
}

void QGraphicsSceneHoverEvent_setScreenPos(QGraphicsSceneHoverEvent* self, QPoint* pos) {
	self->setScreenPos(*pos);
}

QPointF* QGraphicsSceneHoverEvent_lastPos(const QGraphicsSceneHoverEvent* self) {
	return new QPointF(self->lastPos());
}

void QGraphicsSceneHoverEvent_setLastPos(QGraphicsSceneHoverEvent* self, QPointF* pos) {
	self->setLastPos(*pos);
}

QPointF* QGraphicsSceneHoverEvent_lastScenePos(const QGraphicsSceneHoverEvent* self) {
	return new QPointF(self->lastScenePos());
}

void QGraphicsSceneHoverEvent_setLastScenePos(QGraphicsSceneHoverEvent* self, QPointF* pos) {
	self->setLastScenePos(*pos);
}

QPoint* QGraphicsSceneHoverEvent_lastScreenPos(const QGraphicsSceneHoverEvent* self) {
	return new QPoint(self->lastScreenPos());
}

void QGraphicsSceneHoverEvent_setLastScreenPos(QGraphicsSceneHoverEvent* self, QPoint* pos) {
	self->setLastScreenPos(*pos);
}

int QGraphicsSceneHoverEvent_modifiers(const QGraphicsSceneHoverEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

void QGraphicsSceneHoverEvent_setModifiers(QGraphicsSceneHoverEvent* self, int modifiers) {
	self->setModifiers(static_cast<Qt::KeyboardModifiers>(modifiers));
}

void QGraphicsSceneHoverEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneHoverEvent*)(self) )->QGraphicsSceneHoverEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneHoverEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneHoverEvent*)(self) )->QGraphicsSceneHoverEvent::clone();

}

void QGraphicsSceneHoverEvent_delete(QGraphicsSceneHoverEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneHelpEvent final : public QGraphicsSceneHelpEvent {
	struct QGraphicsSceneHelpEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneHelpEvent(struct QGraphicsSceneHelpEvent_VTable* vtbl): QGraphicsSceneHelpEvent(), vtbl(vtbl) {};
	VirtualQGraphicsSceneHelpEvent(struct QGraphicsSceneHelpEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneHelpEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneHelpEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneHelpEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneHelpEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneHelpEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneHelpEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new(struct QGraphicsSceneHelpEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneHelpEvent(vtbl);
}

QGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new2(struct QGraphicsSceneHelpEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneHelpEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneHelpEvent_virtbase(QGraphicsSceneHelpEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneHelpEvent_scenePos(const QGraphicsSceneHelpEvent* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsSceneHelpEvent_setScenePos(QGraphicsSceneHelpEvent* self, QPointF* pos) {
	self->setScenePos(*pos);
}

QPoint* QGraphicsSceneHelpEvent_screenPos(const QGraphicsSceneHelpEvent* self) {
	return new QPoint(self->screenPos());
}

void QGraphicsSceneHelpEvent_setScreenPos(QGraphicsSceneHelpEvent* self, QPoint* pos) {
	self->setScreenPos(*pos);
}

void QGraphicsSceneHelpEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneHelpEvent*)(self) )->QGraphicsSceneHelpEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneHelpEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneHelpEvent*)(self) )->QGraphicsSceneHelpEvent::clone();

}

void QGraphicsSceneHelpEvent_delete(QGraphicsSceneHelpEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneDragDropEvent final : public QGraphicsSceneDragDropEvent {
	struct QGraphicsSceneDragDropEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneDragDropEvent(struct QGraphicsSceneDragDropEvent_VTable* vtbl): QGraphicsSceneDragDropEvent(), vtbl(vtbl) {};
	VirtualQGraphicsSceneDragDropEvent(struct QGraphicsSceneDragDropEvent_VTable* vtbl, QEvent::Type type): QGraphicsSceneDragDropEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneDragDropEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneDragDropEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneDragDropEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneDragDropEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneDragDropEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new(struct QGraphicsSceneDragDropEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneDragDropEvent(vtbl);
}

QGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new2(struct QGraphicsSceneDragDropEvent_VTable* vtbl, int type) {
	return new VirtualQGraphicsSceneDragDropEvent(vtbl, static_cast<QEvent::Type>(type));
}

void QGraphicsSceneDragDropEvent_virtbase(QGraphicsSceneDragDropEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneDragDropEvent_pos(const QGraphicsSceneDragDropEvent* self) {
	return new QPointF(self->pos());
}

void QGraphicsSceneDragDropEvent_setPos(QGraphicsSceneDragDropEvent* self, QPointF* pos) {
	self->setPos(*pos);
}

QPointF* QGraphicsSceneDragDropEvent_scenePos(const QGraphicsSceneDragDropEvent* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsSceneDragDropEvent_setScenePos(QGraphicsSceneDragDropEvent* self, QPointF* pos) {
	self->setScenePos(*pos);
}

QPoint* QGraphicsSceneDragDropEvent_screenPos(const QGraphicsSceneDragDropEvent* self) {
	return new QPoint(self->screenPos());
}

void QGraphicsSceneDragDropEvent_setScreenPos(QGraphicsSceneDragDropEvent* self, QPoint* pos) {
	self->setScreenPos(*pos);
}

int QGraphicsSceneDragDropEvent_buttons(const QGraphicsSceneDragDropEvent* self) {
	Qt::MouseButtons _ret = self->buttons();
	return static_cast<int>(_ret);
}

void QGraphicsSceneDragDropEvent_setButtons(QGraphicsSceneDragDropEvent* self, int buttons) {
	self->setButtons(static_cast<Qt::MouseButtons>(buttons));
}

int QGraphicsSceneDragDropEvent_modifiers(const QGraphicsSceneDragDropEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

void QGraphicsSceneDragDropEvent_setModifiers(QGraphicsSceneDragDropEvent* self, int modifiers) {
	self->setModifiers(static_cast<Qt::KeyboardModifiers>(modifiers));
}

int QGraphicsSceneDragDropEvent_possibleActions(const QGraphicsSceneDragDropEvent* self) {
	Qt::DropActions _ret = self->possibleActions();
	return static_cast<int>(_ret);
}

void QGraphicsSceneDragDropEvent_setPossibleActions(QGraphicsSceneDragDropEvent* self, int actions) {
	self->setPossibleActions(static_cast<Qt::DropActions>(actions));
}

int QGraphicsSceneDragDropEvent_proposedAction(const QGraphicsSceneDragDropEvent* self) {
	Qt::DropAction _ret = self->proposedAction();
	return static_cast<int>(_ret);
}

void QGraphicsSceneDragDropEvent_setProposedAction(QGraphicsSceneDragDropEvent* self, int action) {
	self->setProposedAction(static_cast<Qt::DropAction>(action));
}

void QGraphicsSceneDragDropEvent_acceptProposedAction(QGraphicsSceneDragDropEvent* self) {
	self->acceptProposedAction();
}

int QGraphicsSceneDragDropEvent_dropAction(const QGraphicsSceneDragDropEvent* self) {
	Qt::DropAction _ret = self->dropAction();
	return static_cast<int>(_ret);
}

void QGraphicsSceneDragDropEvent_setDropAction(QGraphicsSceneDragDropEvent* self, int action) {
	self->setDropAction(static_cast<Qt::DropAction>(action));
}

QWidget* QGraphicsSceneDragDropEvent_source(const QGraphicsSceneDragDropEvent* self) {
	return self->source();
}

void QGraphicsSceneDragDropEvent_setSource(QGraphicsSceneDragDropEvent* self, QWidget* source) {
	self->setSource(source);
}

QMimeData* QGraphicsSceneDragDropEvent_mimeData(const QGraphicsSceneDragDropEvent* self) {
	return (QMimeData*) self->mimeData();
}

void QGraphicsSceneDragDropEvent_setMimeData(QGraphicsSceneDragDropEvent* self, QMimeData* data) {
	self->setMimeData(data);
}

void QGraphicsSceneDragDropEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneDragDropEvent*)(self) )->QGraphicsSceneDragDropEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneDragDropEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneDragDropEvent*)(self) )->QGraphicsSceneDragDropEvent::clone();

}

void QGraphicsSceneDragDropEvent_delete(QGraphicsSceneDragDropEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneResizeEvent final : public QGraphicsSceneResizeEvent {
	struct QGraphicsSceneResizeEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneResizeEvent(struct QGraphicsSceneResizeEvent_VTable* vtbl): QGraphicsSceneResizeEvent(), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneResizeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneResizeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneResizeEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneResizeEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneResizeEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneResizeEvent* QGraphicsSceneResizeEvent_new(struct QGraphicsSceneResizeEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneResizeEvent(vtbl);
}

void QGraphicsSceneResizeEvent_virtbase(QGraphicsSceneResizeEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QSizeF* QGraphicsSceneResizeEvent_oldSize(const QGraphicsSceneResizeEvent* self) {
	return new QSizeF(self->oldSize());
}

void QGraphicsSceneResizeEvent_setOldSize(QGraphicsSceneResizeEvent* self, QSizeF* size) {
	self->setOldSize(*size);
}

QSizeF* QGraphicsSceneResizeEvent_newSize(const QGraphicsSceneResizeEvent* self) {
	return new QSizeF(self->newSize());
}

void QGraphicsSceneResizeEvent_setNewSize(QGraphicsSceneResizeEvent* self, QSizeF* size) {
	self->setNewSize(*size);
}

void QGraphicsSceneResizeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneResizeEvent*)(self) )->QGraphicsSceneResizeEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneResizeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneResizeEvent*)(self) )->QGraphicsSceneResizeEvent::clone();

}

void QGraphicsSceneResizeEvent_delete(QGraphicsSceneResizeEvent* self) {
	delete self;
}

class VirtualQGraphicsSceneMoveEvent final : public QGraphicsSceneMoveEvent {
	struct QGraphicsSceneMoveEvent_VTable* vtbl;
public:

	VirtualQGraphicsSceneMoveEvent(struct QGraphicsSceneMoveEvent_VTable* vtbl): QGraphicsSceneMoveEvent(), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsSceneMoveEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGraphicsSceneMoveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGraphicsSceneMoveEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGraphicsSceneMoveEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGraphicsSceneMoveEvent_virtualbase_clone(const void* self);

};

QGraphicsSceneMoveEvent* QGraphicsSceneMoveEvent_new(struct QGraphicsSceneMoveEvent_VTable* vtbl) {
	return new VirtualQGraphicsSceneMoveEvent(vtbl);
}

void QGraphicsSceneMoveEvent_virtbase(QGraphicsSceneMoveEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent) {
	*outptr_QGraphicsSceneEvent = static_cast<QGraphicsSceneEvent*>(src);
}

QPointF* QGraphicsSceneMoveEvent_oldPos(const QGraphicsSceneMoveEvent* self) {
	return new QPointF(self->oldPos());
}

void QGraphicsSceneMoveEvent_setOldPos(QGraphicsSceneMoveEvent* self, QPointF* pos) {
	self->setOldPos(*pos);
}

QPointF* QGraphicsSceneMoveEvent_newPos(const QGraphicsSceneMoveEvent* self) {
	return new QPointF(self->newPos());
}

void QGraphicsSceneMoveEvent_setNewPos(QGraphicsSceneMoveEvent* self, QPointF* pos) {
	self->setNewPos(*pos);
}

void QGraphicsSceneMoveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGraphicsSceneMoveEvent*)(self) )->QGraphicsSceneMoveEvent::setAccepted(accepted);

}

QEvent* QGraphicsSceneMoveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGraphicsSceneMoveEvent*)(self) )->QGraphicsSceneMoveEvent::clone();

}

void QGraphicsSceneMoveEvent_delete(QGraphicsSceneMoveEvent* self) {
	delete self;
}

