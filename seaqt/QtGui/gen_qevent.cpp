#include <QAction>
#include <QActionEvent>
#include <QApplicationStateChangeEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QEventPoint>
#include <QExposeEvent>
#include <QFile>
#include <QFileOpenEvent>
#include <QFocusEvent>
#include <QHelpEvent>
#include <QHideEvent>
#include <QHoverEvent>
#include <QIconDragEvent>
#include <QInputDevice>
#include <QInputEvent>
#include <QInputMethodEvent>
#define WORKAROUND_INNER_CLASS_DEFINITION_QInputMethodEvent__Attribute
#include <QInputMethodQueryEvent>
#include <QKeyCombination>
#include <QKeyEvent>
#include <QKeySequence>
#include <QList>
#include <QMimeData>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QNativeGestureEvent>
#include <QObject>
#include <QPaintEvent>
#include <QPoint>
#include <QPointF>
#include <QPointerEvent>
#include <QPointingDevice>
#include <QRect>
#include <QRectF>
#include <QRegion>
#include <QResizeEvent>
#include <QScreen>
#include <QScreenOrientationChangeEvent>
#include <QScrollEvent>
#include <QScrollPrepareEvent>
#include <QShortcutEvent>
#include <QShowEvent>
#include <QSinglePointEvent>
#include <QSize>
#include <QSizeF>
#include <QStatusTipEvent>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QToolBarChangeEvent>
#include <QTouchEvent>
#include <QUrl>
#include <QVariant>
#include <QWhatsThisClickedEvent>
#include <QWheelEvent>
#include <QWindowStateChangeEvent>
#include <qevent.h>
#include "gen_qevent.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQInputEvent final : public QInputEvent {
	struct QInputEvent_VTable* vtbl;
public:

	VirtualQInputEvent(struct QInputEvent_VTable* vtbl, QEvent::Type type, const QInputDevice* m_dev): QInputEvent(type, m_dev), vtbl(vtbl) {};
	VirtualQInputEvent(struct QInputEvent_VTable* vtbl, QEvent::Type type, const QInputDevice* m_dev, Qt::KeyboardModifiers modifiers): QInputEvent(type, m_dev, modifiers), vtbl(vtbl) {};

	virtual ~VirtualQInputEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QInputEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QInputEvent::clone();
		}


		QInputEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QInputEvent* QInputEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QInputEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QInputEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QInputEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QInputEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QInputEvent* QInputEvent_new(struct QInputEvent_VTable* vtbl, int type, QInputDevice* m_dev) {
	return new VirtualQInputEvent(vtbl, static_cast<QEvent::Type>(type), m_dev);
}

QInputEvent* QInputEvent_new2(struct QInputEvent_VTable* vtbl, int type, QInputDevice* m_dev, int modifiers) {
	return new VirtualQInputEvent(vtbl, static_cast<QEvent::Type>(type), m_dev, static_cast<Qt::KeyboardModifiers>(modifiers));
}

void QInputEvent_virtbase(QInputEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QInputEvent* QInputEvent_clone(const QInputEvent* self) {
	return self->clone();
}

QInputDevice* QInputEvent_device(const QInputEvent* self) {
	return (QInputDevice*) self->device();
}

int QInputEvent_deviceType(const QInputEvent* self) {
	QInputDevice::DeviceType _ret = self->deviceType();
	return static_cast<int>(_ret);
}

int QInputEvent_modifiers(const QInputEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

void QInputEvent_setModifiers(QInputEvent* self, int modifiers) {
	self->setModifiers(static_cast<Qt::KeyboardModifiers>(modifiers));
}

unsigned long long QInputEvent_timestamp(const QInputEvent* self) {
	quint64 _ret = self->timestamp();
	return static_cast<unsigned long long>(_ret);
}

void QInputEvent_setTimestamp(QInputEvent* self, unsigned long long timestamp) {
	self->setTimestamp(static_cast<quint64>(timestamp));
}

QInputEvent* QInputEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQInputEvent*)(self) )->QInputEvent::clone();

}

void QInputEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQInputEvent*)(self) )->QInputEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QInputEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQInputEvent*)(self) )->QInputEvent::setAccepted(accepted);

}

void QInputEvent_delete(QInputEvent* self) {
	delete self;
}

class VirtualQPointerEvent final : public QPointerEvent {
	struct QPointerEvent_VTable* vtbl;
public:

	VirtualQPointerEvent(struct QPointerEvent_VTable* vtbl, QEvent::Type type, const QPointingDevice* dev): QPointerEvent(type, dev), vtbl(vtbl) {};
	VirtualQPointerEvent(struct QPointerEvent_VTable* vtbl, QEvent::Type type, const QPointingDevice* dev, Qt::KeyboardModifiers modifiers): QPointerEvent(type, dev, modifiers), vtbl(vtbl) {};
	VirtualQPointerEvent(struct QPointerEvent_VTable* vtbl, QEvent::Type type, const QPointingDevice* dev, Qt::KeyboardModifiers modifiers, const QList<QEventPoint>& points): QPointerEvent(type, dev, modifiers, points), vtbl(vtbl) {};

	virtual ~VirtualQPointerEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QPointerEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QPointerEvent::clone();
		}


		QPointerEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QPointerEvent* QPointerEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QPointerEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QPointerEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QPointerEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QPointerEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QPointerEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QPointerEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QPointerEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QPointerEvent* QPointerEvent_new(struct QPointerEvent_VTable* vtbl, int type, QPointingDevice* dev) {
	return new VirtualQPointerEvent(vtbl, static_cast<QEvent::Type>(type), dev);
}

QPointerEvent* QPointerEvent_new2(struct QPointerEvent_VTable* vtbl, int type, QPointingDevice* dev, int modifiers) {
	return new VirtualQPointerEvent(vtbl, static_cast<QEvent::Type>(type), dev, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QPointerEvent* QPointerEvent_new3(struct QPointerEvent_VTable* vtbl, int type, QPointingDevice* dev, int modifiers, struct miqt_array /* of QEventPoint* */  points) {
	QList<QEventPoint> points_QList;
	points_QList.reserve(points.len);
	QEventPoint** points_arr = static_cast<QEventPoint**>(points.data);
	for(size_t i = 0; i < points.len; ++i) {
		points_QList.push_back(*(points_arr[i]));
	}
	return new VirtualQPointerEvent(vtbl, static_cast<QEvent::Type>(type), dev, static_cast<Qt::KeyboardModifiers>(modifiers), points_QList);
}

void QPointerEvent_virtbase(QPointerEvent* src, QInputEvent** outptr_QInputEvent) {
	*outptr_QInputEvent = static_cast<QInputEvent*>(src);
}

QPointerEvent* QPointerEvent_clone(const QPointerEvent* self) {
	return self->clone();
}

QPointingDevice* QPointerEvent_pointingDevice(const QPointerEvent* self) {
	return (QPointingDevice*) self->pointingDevice();
}

int QPointerEvent_pointerType(const QPointerEvent* self) {
	QPointingDevice::PointerType _ret = self->pointerType();
	return static_cast<int>(_ret);
}

void QPointerEvent_setTimestamp(QPointerEvent* self, unsigned long long timestamp) {
	self->setTimestamp(static_cast<quint64>(timestamp));
}

ptrdiff_t QPointerEvent_pointCount(const QPointerEvent* self) {
	qsizetype _ret = self->pointCount();
	return static_cast<ptrdiff_t>(_ret);
}

QEventPoint* QPointerEvent_point(QPointerEvent* self, ptrdiff_t i) {
	QEventPoint& _ret = self->point((qsizetype)(i));
	// Cast returned reference into pointer
	return &_ret;
}

struct miqt_array /* of QEventPoint* */  QPointerEvent_points(const QPointerEvent* self) {
	const QList<QEventPoint>& _ret = self->points();
	// Convert QList<> from C++ memory to manually-managed C memory
	QEventPoint** _arr = static_cast<QEventPoint**>(malloc(sizeof(QEventPoint*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QEventPoint(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QEventPoint* QPointerEvent_pointById(QPointerEvent* self, int id) {
	return self->pointById(static_cast<int>(id));
}

bool QPointerEvent_allPointsGrabbed(const QPointerEvent* self) {
	return self->allPointsGrabbed();
}

bool QPointerEvent_isBeginEvent(const QPointerEvent* self) {
	return self->isBeginEvent();
}

bool QPointerEvent_isUpdateEvent(const QPointerEvent* self) {
	return self->isUpdateEvent();
}

bool QPointerEvent_isEndEvent(const QPointerEvent* self) {
	return self->isEndEvent();
}

bool QPointerEvent_allPointsAccepted(const QPointerEvent* self) {
	return self->allPointsAccepted();
}

void QPointerEvent_setAccepted(QPointerEvent* self, bool accepted) {
	self->setAccepted(accepted);
}

QObject* QPointerEvent_exclusiveGrabber(const QPointerEvent* self, QEventPoint* point) {
	return self->exclusiveGrabber(*point);
}

void QPointerEvent_setExclusiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* exclusiveGrabber) {
	self->setExclusiveGrabber(*point, exclusiveGrabber);
}

void QPointerEvent_clearPassiveGrabbers(QPointerEvent* self, QEventPoint* point) {
	self->clearPassiveGrabbers(*point);
}

bool QPointerEvent_addPassiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* grabber) {
	return self->addPassiveGrabber(*point, grabber);
}

bool QPointerEvent_removePassiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* grabber) {
	return self->removePassiveGrabber(*point, grabber);
}

QPointerEvent* QPointerEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::clone();

}

void QPointerEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQPointerEvent*)(self) )->QPointerEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QPointerEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::isBeginEvent();

}

bool QPointerEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::isUpdateEvent();

}

bool QPointerEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::isEndEvent();

}

void QPointerEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQPointerEvent*)(self) )->QPointerEvent::setAccepted(accepted);

}

void QPointerEvent_delete(QPointerEvent* self) {
	delete self;
}

void QSinglePointEvent_virtbase(QSinglePointEvent* src, QPointerEvent** outptr_QPointerEvent) {
	*outptr_QPointerEvent = static_cast<QPointerEvent*>(src);
}

QSinglePointEvent* QSinglePointEvent_clone(const QSinglePointEvent* self) {
	return self->clone();
}

int QSinglePointEvent_button(const QSinglePointEvent* self) {
	Qt::MouseButton _ret = self->button();
	return static_cast<int>(_ret);
}

int QSinglePointEvent_buttons(const QSinglePointEvent* self) {
	Qt::MouseButtons _ret = self->buttons();
	return static_cast<int>(_ret);
}

QPointF* QSinglePointEvent_position(const QSinglePointEvent* self) {
	return new QPointF(self->position());
}

QPointF* QSinglePointEvent_scenePosition(const QSinglePointEvent* self) {
	return new QPointF(self->scenePosition());
}

QPointF* QSinglePointEvent_globalPosition(const QSinglePointEvent* self) {
	return new QPointF(self->globalPosition());
}

bool QSinglePointEvent_isBeginEvent(const QSinglePointEvent* self) {
	return self->isBeginEvent();
}

bool QSinglePointEvent_isUpdateEvent(const QSinglePointEvent* self) {
	return self->isUpdateEvent();
}

bool QSinglePointEvent_isEndEvent(const QSinglePointEvent* self) {
	return self->isEndEvent();
}

QObject* QSinglePointEvent_exclusivePointGrabber(const QSinglePointEvent* self) {
	return self->exclusivePointGrabber();
}

void QSinglePointEvent_setExclusivePointGrabber(QSinglePointEvent* self, QObject* exclusiveGrabber) {
	self->setExclusivePointGrabber(exclusiveGrabber);
}

const QMetaObject* QSinglePointEvent_staticMetaObject() { return &QSinglePointEvent::staticMetaObject; }
void QSinglePointEvent_delete(QSinglePointEvent* self) {
	delete self;
}

class VirtualQEnterEvent final : public QEnterEvent {
	struct QEnterEvent_VTable* vtbl;
public:

	VirtualQEnterEvent(struct QEnterEvent_VTable* vtbl, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos): QEnterEvent(localPos, scenePos, globalPos), vtbl(vtbl) {};
	VirtualQEnterEvent(struct QEnterEvent_VTable* vtbl, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, const QPointingDevice* device): QEnterEvent(localPos, scenePos, globalPos, device), vtbl(vtbl) {};

	virtual ~VirtualQEnterEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QEnterEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QEnterEvent::clone();
		}


		QEnterEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEnterEvent* QEnterEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QEnterEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QEnterEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QEnterEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QEnterEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QEnterEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QEnterEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QEnterEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QEnterEvent* QEnterEvent_new(struct QEnterEvent_VTable* vtbl, QPointF* localPos, QPointF* scenePos, QPointF* globalPos) {
	return new VirtualQEnterEvent(vtbl, *localPos, *scenePos, *globalPos);
}

QEnterEvent* QEnterEvent_new2(struct QEnterEvent_VTable* vtbl, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device) {
	return new VirtualQEnterEvent(vtbl, *localPos, *scenePos, *globalPos, device);
}

void QEnterEvent_virtbase(QEnterEvent* src, QSinglePointEvent** outptr_QSinglePointEvent) {
	*outptr_QSinglePointEvent = static_cast<QSinglePointEvent*>(src);
}

QEnterEvent* QEnterEvent_clone(const QEnterEvent* self) {
	return self->clone();
}

QPoint* QEnterEvent_pos(const QEnterEvent* self) {
	return new QPoint(self->pos());
}

QPoint* QEnterEvent_globalPos(const QEnterEvent* self) {
	return new QPoint(self->globalPos());
}

int QEnterEvent_x(const QEnterEvent* self) {
	return self->x();
}

int QEnterEvent_y(const QEnterEvent* self) {
	return self->y();
}

int QEnterEvent_globalX(const QEnterEvent* self) {
	return self->globalX();
}

int QEnterEvent_globalY(const QEnterEvent* self) {
	return self->globalY();
}

QPointF* QEnterEvent_localPos(const QEnterEvent* self) {
	return new QPointF(self->localPos());
}

QPointF* QEnterEvent_windowPos(const QEnterEvent* self) {
	return new QPointF(self->windowPos());
}

QPointF* QEnterEvent_screenPos(const QEnterEvent* self) {
	return new QPointF(self->screenPos());
}

QEnterEvent* QEnterEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::clone();

}

bool QEnterEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::isBeginEvent();

}

bool QEnterEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::isUpdateEvent();

}

bool QEnterEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::isEndEvent();

}

void QEnterEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQEnterEvent*)(self) )->QEnterEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QEnterEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQEnterEvent*)(self) )->QEnterEvent::setAccepted(accepted);

}

void QEnterEvent_delete(QEnterEvent* self) {
	delete self;
}

class VirtualQMouseEvent final : public QMouseEvent {
	struct QMouseEvent_VTable* vtbl;
public:

	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, button, buttons, modifiers), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, globalPos, button, buttons, modifiers), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, source), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, button, buttons, modifiers, device), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, globalPos, button, buttons, modifiers, device), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, device), vtbl(vtbl) {};
	VirtualQMouseEvent(struct QMouseEvent_VTable* vtbl, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source, const QPointingDevice* device): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, source, device), vtbl(vtbl) {};

	virtual ~VirtualQMouseEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QMouseEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QMouseEvent::clone();
		}


		QMouseEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QMouseEvent* QMouseEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QMouseEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QMouseEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QMouseEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QMouseEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QMouseEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QMouseEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QMouseEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QMouseEvent* QMouseEvent_new(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QMouseEvent* QMouseEvent_new2(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QMouseEvent* QMouseEvent_new3(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QMouseEvent* QMouseEvent_new4(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::MouseEventSource>(source));
}

QMouseEvent* QMouseEvent_new5(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QMouseEvent* QMouseEvent_new6(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QMouseEvent* QMouseEvent_new7(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QMouseEvent* QMouseEvent_new8(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::MouseEventSource>(source), device);
}

void QMouseEvent_virtbase(QMouseEvent* src, QSinglePointEvent** outptr_QSinglePointEvent) {
	*outptr_QSinglePointEvent = static_cast<QSinglePointEvent*>(src);
}

QMouseEvent* QMouseEvent_clone(const QMouseEvent* self) {
	return self->clone();
}

QPoint* QMouseEvent_pos(const QMouseEvent* self) {
	return new QPoint(self->pos());
}

QPoint* QMouseEvent_globalPos(const QMouseEvent* self) {
	return new QPoint(self->globalPos());
}

int QMouseEvent_x(const QMouseEvent* self) {
	return self->x();
}

int QMouseEvent_y(const QMouseEvent* self) {
	return self->y();
}

int QMouseEvent_globalX(const QMouseEvent* self) {
	return self->globalX();
}

int QMouseEvent_globalY(const QMouseEvent* self) {
	return self->globalY();
}

QPointF* QMouseEvent_localPos(const QMouseEvent* self) {
	return new QPointF(self->localPos());
}

QPointF* QMouseEvent_windowPos(const QMouseEvent* self) {
	return new QPointF(self->windowPos());
}

QPointF* QMouseEvent_screenPos(const QMouseEvent* self) {
	return new QPointF(self->screenPos());
}

int QMouseEvent_source(const QMouseEvent* self) {
	Qt::MouseEventSource _ret = self->source();
	return static_cast<int>(_ret);
}

int QMouseEvent_flags(const QMouseEvent* self) {
	Qt::MouseEventFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

QMouseEvent* QMouseEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::clone();

}

bool QMouseEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::isBeginEvent();

}

bool QMouseEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::isUpdateEvent();

}

bool QMouseEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::isEndEvent();

}

void QMouseEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQMouseEvent*)(self) )->QMouseEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QMouseEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQMouseEvent*)(self) )->QMouseEvent::setAccepted(accepted);

}

void QMouseEvent_delete(QMouseEvent* self) {
	delete self;
}

class VirtualQHoverEvent final : public QHoverEvent {
	struct QHoverEvent_VTable* vtbl;
public:

	VirtualQHoverEvent(struct QHoverEvent_VTable* vtbl, QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos): QHoverEvent(type, scenePos, globalPos, oldPos), vtbl(vtbl) {};
	VirtualQHoverEvent(struct QHoverEvent_VTable* vtbl, QEvent::Type type, const QPointF& pos, const QPointF& oldPos): QHoverEvent(type, pos, oldPos), vtbl(vtbl) {};
	VirtualQHoverEvent(struct QHoverEvent_VTable* vtbl, QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers): QHoverEvent(type, scenePos, globalPos, oldPos, modifiers), vtbl(vtbl) {};
	VirtualQHoverEvent(struct QHoverEvent_VTable* vtbl, QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QHoverEvent(type, scenePos, globalPos, oldPos, modifiers, device), vtbl(vtbl) {};
	VirtualQHoverEvent(struct QHoverEvent_VTable* vtbl, QEvent::Type type, const QPointF& pos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers): QHoverEvent(type, pos, oldPos, modifiers), vtbl(vtbl) {};
	VirtualQHoverEvent(struct QHoverEvent_VTable* vtbl, QEvent::Type type, const QPointF& pos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QHoverEvent(type, pos, oldPos, modifiers, device), vtbl(vtbl) {};

	virtual ~VirtualQHoverEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QHoverEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QHoverEvent::clone();
		}


		QHoverEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QHoverEvent* QHoverEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QHoverEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QHoverEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QHoverEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QHoverEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QHoverEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QHoverEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QHoverEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QHoverEvent* QHoverEvent_new(struct QHoverEvent_VTable* vtbl, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos) {
	return new VirtualQHoverEvent(vtbl, static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos);
}

QHoverEvent* QHoverEvent_new2(struct QHoverEvent_VTable* vtbl, int type, QPointF* pos, QPointF* oldPos) {
	return new VirtualQHoverEvent(vtbl, static_cast<QEvent::Type>(type), *pos, *oldPos);
}

QHoverEvent* QHoverEvent_new3(struct QHoverEvent_VTable* vtbl, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers) {
	return new VirtualQHoverEvent(vtbl, static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QHoverEvent* QHoverEvent_new4(struct QHoverEvent_VTable* vtbl, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers, QPointingDevice* device) {
	return new VirtualQHoverEvent(vtbl, static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QHoverEvent* QHoverEvent_new5(struct QHoverEvent_VTable* vtbl, int type, QPointF* pos, QPointF* oldPos, int modifiers) {
	return new VirtualQHoverEvent(vtbl, static_cast<QEvent::Type>(type), *pos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QHoverEvent* QHoverEvent_new6(struct QHoverEvent_VTable* vtbl, int type, QPointF* pos, QPointF* oldPos, int modifiers, QPointingDevice* device) {
	return new VirtualQHoverEvent(vtbl, static_cast<QEvent::Type>(type), *pos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

void QHoverEvent_virtbase(QHoverEvent* src, QSinglePointEvent** outptr_QSinglePointEvent) {
	*outptr_QSinglePointEvent = static_cast<QSinglePointEvent*>(src);
}

QHoverEvent* QHoverEvent_clone(const QHoverEvent* self) {
	return self->clone();
}

QPoint* QHoverEvent_pos(const QHoverEvent* self) {
	return new QPoint(self->pos());
}

QPointF* QHoverEvent_posF(const QHoverEvent* self) {
	return new QPointF(self->posF());
}

bool QHoverEvent_isUpdateEvent(const QHoverEvent* self) {
	return self->isUpdateEvent();
}

QPoint* QHoverEvent_oldPos(const QHoverEvent* self) {
	return new QPoint(self->oldPos());
}

QPointF* QHoverEvent_oldPosF(const QHoverEvent* self) {
	return new QPointF(self->oldPosF());
}

QHoverEvent* QHoverEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::clone();

}

bool QHoverEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::isUpdateEvent();

}

bool QHoverEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::isBeginEvent();

}

bool QHoverEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::isEndEvent();

}

void QHoverEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQHoverEvent*)(self) )->QHoverEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QHoverEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQHoverEvent*)(self) )->QHoverEvent::setAccepted(accepted);

}

void QHoverEvent_delete(QHoverEvent* self) {
	delete self;
}

class VirtualQWheelEvent final : public QWheelEvent {
	struct QWheelEvent_VTable* vtbl;
public:

	VirtualQWheelEvent(struct QWheelEvent_VTable* vtbl, const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted), vtbl(vtbl) {};
	VirtualQWheelEvent(struct QWheelEvent_VTable* vtbl, const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted, Qt::MouseEventSource source): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted, source), vtbl(vtbl) {};
	VirtualQWheelEvent(struct QWheelEvent_VTable* vtbl, const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted, Qt::MouseEventSource source, const QPointingDevice* device): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted, source, device), vtbl(vtbl) {};

	virtual ~VirtualQWheelEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QWheelEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QWheelEvent::clone();
		}


		QWheelEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QWheelEvent* QWheelEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QWheelEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QWheelEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QWheelEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QWheelEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QWheelEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QWheelEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QWheelEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QWheelEvent* QWheelEvent_new(struct QWheelEvent_VTable* vtbl, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted) {
	return new VirtualQWheelEvent(vtbl, *pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted);
}

QWheelEvent* QWheelEvent_new2(struct QWheelEvent_VTable* vtbl, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source) {
	return new VirtualQWheelEvent(vtbl, *pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted, static_cast<Qt::MouseEventSource>(source));
}

QWheelEvent* QWheelEvent_new3(struct QWheelEvent_VTable* vtbl, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source, QPointingDevice* device) {
	return new VirtualQWheelEvent(vtbl, *pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted, static_cast<Qt::MouseEventSource>(source), device);
}

void QWheelEvent_virtbase(QWheelEvent* src, QSinglePointEvent** outptr_QSinglePointEvent) {
	*outptr_QSinglePointEvent = static_cast<QSinglePointEvent*>(src);
}

QWheelEvent* QWheelEvent_clone(const QWheelEvent* self) {
	return self->clone();
}

QPoint* QWheelEvent_pixelDelta(const QWheelEvent* self) {
	return new QPoint(self->pixelDelta());
}

QPoint* QWheelEvent_angleDelta(const QWheelEvent* self) {
	return new QPoint(self->angleDelta());
}

int QWheelEvent_phase(const QWheelEvent* self) {
	Qt::ScrollPhase _ret = self->phase();
	return static_cast<int>(_ret);
}

bool QWheelEvent_inverted(const QWheelEvent* self) {
	return self->inverted();
}

bool QWheelEvent_isInverted(const QWheelEvent* self) {
	return self->isInverted();
}

bool QWheelEvent_hasPixelDelta(const QWheelEvent* self) {
	return self->hasPixelDelta();
}

bool QWheelEvent_isBeginEvent(const QWheelEvent* self) {
	return self->isBeginEvent();
}

bool QWheelEvent_isUpdateEvent(const QWheelEvent* self) {
	return self->isUpdateEvent();
}

bool QWheelEvent_isEndEvent(const QWheelEvent* self) {
	return self->isEndEvent();
}

int QWheelEvent_source(const QWheelEvent* self) {
	Qt::MouseEventSource _ret = self->source();
	return static_cast<int>(_ret);
}

QWheelEvent* QWheelEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::clone();

}

bool QWheelEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::isBeginEvent();

}

bool QWheelEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::isUpdateEvent();

}

bool QWheelEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::isEndEvent();

}

void QWheelEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQWheelEvent*)(self) )->QWheelEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QWheelEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQWheelEvent*)(self) )->QWheelEvent::setAccepted(accepted);

}

const QMetaObject* QWheelEvent_staticMetaObject() { return &QWheelEvent::staticMetaObject; }
void QWheelEvent_delete(QWheelEvent* self) {
	delete self;
}

class VirtualQTabletEvent final : public QTabletEvent {
	struct QTabletEvent_VTable* vtbl;
public:

	VirtualQTabletEvent(struct QTabletEvent_VTable* vtbl, QEvent::Type t, const QPointingDevice* device, const QPointF& pos, const QPointF& globalPos, qreal pressure, float xTilt, float yTilt, float tangentialPressure, qreal rotation, float z, Qt::KeyboardModifiers keyState, Qt::MouseButton button, Qt::MouseButtons buttons): QTabletEvent(t, device, pos, globalPos, pressure, xTilt, yTilt, tangentialPressure, rotation, z, keyState, button, buttons), vtbl(vtbl) {};

	virtual ~VirtualQTabletEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTabletEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTabletEvent::clone();
		}


		QTabletEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QTabletEvent* QTabletEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QTabletEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QTabletEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QTabletEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QTabletEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QTabletEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTabletEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QTabletEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QTabletEvent* QTabletEvent_new(struct QTabletEvent_VTable* vtbl, int t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int keyState, int button, int buttons) {
	return new VirtualQTabletEvent(vtbl, static_cast<QEvent::Type>(t), device, *pos, *globalPos, static_cast<qreal>(pressure), static_cast<float>(xTilt), static_cast<float>(yTilt), static_cast<float>(tangentialPressure), static_cast<qreal>(rotation), static_cast<float>(z), static_cast<Qt::KeyboardModifiers>(keyState), static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons));
}

void QTabletEvent_virtbase(QTabletEvent* src, QSinglePointEvent** outptr_QSinglePointEvent) {
	*outptr_QSinglePointEvent = static_cast<QSinglePointEvent*>(src);
}

QTabletEvent* QTabletEvent_clone(const QTabletEvent* self) {
	return self->clone();
}

QPoint* QTabletEvent_pos(const QTabletEvent* self) {
	return new QPoint(self->pos());
}

QPoint* QTabletEvent_globalPos(const QTabletEvent* self) {
	return new QPoint(self->globalPos());
}

QPointF* QTabletEvent_posF(const QTabletEvent* self) {
	return new QPointF(self->posF());
}

QPointF* QTabletEvent_globalPosF(const QTabletEvent* self) {
	return new QPointF(self->globalPosF());
}

int QTabletEvent_x(const QTabletEvent* self) {
	return self->x();
}

int QTabletEvent_y(const QTabletEvent* self) {
	return self->y();
}

int QTabletEvent_globalX(const QTabletEvent* self) {
	return self->globalX();
}

int QTabletEvent_globalY(const QTabletEvent* self) {
	return self->globalY();
}

double QTabletEvent_hiResGlobalX(const QTabletEvent* self) {
	qreal _ret = self->hiResGlobalX();
	return static_cast<double>(_ret);
}

double QTabletEvent_hiResGlobalY(const QTabletEvent* self) {
	qreal _ret = self->hiResGlobalY();
	return static_cast<double>(_ret);
}

long long QTabletEvent_uniqueId(const QTabletEvent* self) {
	qint64 _ret = self->uniqueId();
	return static_cast<long long>(_ret);
}

double QTabletEvent_pressure(const QTabletEvent* self) {
	qreal _ret = self->pressure();
	return static_cast<double>(_ret);
}

double QTabletEvent_rotation(const QTabletEvent* self) {
	qreal _ret = self->rotation();
	return static_cast<double>(_ret);
}

double QTabletEvent_z(const QTabletEvent* self) {
	qreal _ret = self->z();
	return static_cast<double>(_ret);
}

double QTabletEvent_tangentialPressure(const QTabletEvent* self) {
	qreal _ret = self->tangentialPressure();
	return static_cast<double>(_ret);
}

double QTabletEvent_xTilt(const QTabletEvent* self) {
	qreal _ret = self->xTilt();
	return static_cast<double>(_ret);
}

double QTabletEvent_yTilt(const QTabletEvent* self) {
	qreal _ret = self->yTilt();
	return static_cast<double>(_ret);
}

QTabletEvent* QTabletEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::clone();

}

bool QTabletEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::isBeginEvent();

}

bool QTabletEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::isUpdateEvent();

}

bool QTabletEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::isEndEvent();

}

void QTabletEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQTabletEvent*)(self) )->QTabletEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QTabletEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQTabletEvent*)(self) )->QTabletEvent::setAccepted(accepted);

}

void QTabletEvent_delete(QTabletEvent* self) {
	delete self;
}

class VirtualQNativeGestureEvent final : public QNativeGestureEvent {
	struct QNativeGestureEvent_VTable* vtbl;
public:

	VirtualQNativeGestureEvent(struct QNativeGestureEvent_VTable* vtbl, Qt::NativeGestureType type, const QPointingDevice* dev, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, quint64 sequenceId, quint64 intArgument): QNativeGestureEvent(type, dev, localPos, scenePos, globalPos, value, sequenceId, intArgument), vtbl(vtbl) {};
	VirtualQNativeGestureEvent(struct QNativeGestureEvent_VTable* vtbl, Qt::NativeGestureType type, const QPointingDevice* dev, int fingerCount, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, const QPointF& delta): QNativeGestureEvent(type, dev, fingerCount, localPos, scenePos, globalPos, value, delta), vtbl(vtbl) {};
	VirtualQNativeGestureEvent(struct QNativeGestureEvent_VTable* vtbl, Qt::NativeGestureType type, const QPointingDevice* dev, int fingerCount, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, const QPointF& delta, quint64 sequenceId): QNativeGestureEvent(type, dev, fingerCount, localPos, scenePos, globalPos, value, delta, sequenceId), vtbl(vtbl) {};

	virtual ~VirtualQNativeGestureEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QNativeGestureEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QNativeGestureEvent::clone();
		}


		QNativeGestureEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QNativeGestureEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QNativeGestureEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QNativeGestureEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QNativeGestureEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QNativeGestureEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QNativeGestureEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QNativeGestureEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QNativeGestureEvent* QNativeGestureEvent_new(struct QNativeGestureEvent_VTable* vtbl, int type, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, unsigned long long sequenceId, unsigned long long intArgument) {
	return new VirtualQNativeGestureEvent(vtbl, static_cast<Qt::NativeGestureType>(type), dev, *localPos, *scenePos, *globalPos, static_cast<qreal>(value), static_cast<quint64>(sequenceId), static_cast<quint64>(intArgument));
}

QNativeGestureEvent* QNativeGestureEvent_new2(struct QNativeGestureEvent_VTable* vtbl, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta) {
	return new VirtualQNativeGestureEvent(vtbl, static_cast<Qt::NativeGestureType>(type), dev, static_cast<int>(fingerCount), *localPos, *scenePos, *globalPos, static_cast<qreal>(value), *delta);
}

QNativeGestureEvent* QNativeGestureEvent_new3(struct QNativeGestureEvent_VTable* vtbl, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, unsigned long long sequenceId) {
	return new VirtualQNativeGestureEvent(vtbl, static_cast<Qt::NativeGestureType>(type), dev, static_cast<int>(fingerCount), *localPos, *scenePos, *globalPos, static_cast<qreal>(value), *delta, static_cast<quint64>(sequenceId));
}

void QNativeGestureEvent_virtbase(QNativeGestureEvent* src, QSinglePointEvent** outptr_QSinglePointEvent) {
	*outptr_QSinglePointEvent = static_cast<QSinglePointEvent*>(src);
}

QNativeGestureEvent* QNativeGestureEvent_clone(const QNativeGestureEvent* self) {
	return self->clone();
}

int QNativeGestureEvent_gestureType(const QNativeGestureEvent* self) {
	Qt::NativeGestureType _ret = self->gestureType();
	return static_cast<int>(_ret);
}

int QNativeGestureEvent_fingerCount(const QNativeGestureEvent* self) {
	return self->fingerCount();
}

double QNativeGestureEvent_value(const QNativeGestureEvent* self) {
	qreal _ret = self->value();
	return static_cast<double>(_ret);
}

QPointF* QNativeGestureEvent_delta(const QNativeGestureEvent* self) {
	return new QPointF(self->delta());
}

QPoint* QNativeGestureEvent_pos(const QNativeGestureEvent* self) {
	return new QPoint(self->pos());
}

QPoint* QNativeGestureEvent_globalPos(const QNativeGestureEvent* self) {
	return new QPoint(self->globalPos());
}

QPointF* QNativeGestureEvent_localPos(const QNativeGestureEvent* self) {
	return new QPointF(self->localPos());
}

QPointF* QNativeGestureEvent_windowPos(const QNativeGestureEvent* self) {
	return new QPointF(self->windowPos());
}

QPointF* QNativeGestureEvent_screenPos(const QNativeGestureEvent* self) {
	return new QPointF(self->screenPos());
}

QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::clone();

}

bool QNativeGestureEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::isBeginEvent();

}

bool QNativeGestureEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::isUpdateEvent();

}

bool QNativeGestureEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::isEndEvent();

}

void QNativeGestureEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QNativeGestureEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::setAccepted(accepted);

}

void QNativeGestureEvent_delete(QNativeGestureEvent* self) {
	delete self;
}

class VirtualQKeyEvent final : public QKeyEvent {
	struct QKeyEvent_VTable* vtbl;
public:

	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers): QKeyEvent(type, key, modifiers), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text): QKeyEvent(type, key, modifiers, text), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text, bool autorep): QKeyEvent(type, key, modifiers, text, autorep), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text, bool autorep, quint16 count): QKeyEvent(type, key, modifiers, text, autorep, count), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep, quint16 count): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep, count), vtbl(vtbl) {};
	VirtualQKeyEvent(struct QKeyEvent_VTable* vtbl, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep, quint16 count, const QInputDevice* device): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep, count, device), vtbl(vtbl) {};

	virtual ~VirtualQKeyEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QKeyEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QKeyEvent::clone();
		}


		QKeyEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QKeyEvent* QKeyEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QKeyEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QKeyEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QKeyEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QKeyEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QKeyEvent* QKeyEvent_new(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers) {
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QKeyEvent* QKeyEvent_new2(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers) {
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers));
}

QKeyEvent* QKeyEvent_new3(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString);
}

QKeyEvent* QKeyEvent_new4(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, struct miqt_string text, bool autorep) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString, autorep);
}

QKeyEvent* QKeyEvent_new5(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, struct miqt_string text, bool autorep, uint16_t count) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString, autorep, static_cast<quint16>(count));
}

QKeyEvent* QKeyEvent_new6(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString);
}

QKeyEvent* QKeyEvent_new7(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep);
}

QKeyEvent* QKeyEvent_new8(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep, static_cast<quint16>(count));
}

QKeyEvent* QKeyEvent_new9(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count, QInputDevice* device) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep, static_cast<quint16>(count), device);
}

void QKeyEvent_virtbase(QKeyEvent* src, QInputEvent** outptr_QInputEvent) {
	*outptr_QInputEvent = static_cast<QInputEvent*>(src);
}

QKeyEvent* QKeyEvent_clone(const QKeyEvent* self) {
	return self->clone();
}

int QKeyEvent_key(const QKeyEvent* self) {
	return self->key();
}

bool QKeyEvent_matches(const QKeyEvent* self, int key) {
	return self->matches(static_cast<QKeySequence::StandardKey>(key));
}

int QKeyEvent_modifiers(const QKeyEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

QKeyCombination* QKeyEvent_keyCombination(const QKeyEvent* self) {
	return new QKeyCombination(self->keyCombination());
}

struct miqt_string QKeyEvent_text(const QKeyEvent* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QKeyEvent_isAutoRepeat(const QKeyEvent* self) {
	return self->isAutoRepeat();
}

int QKeyEvent_count(const QKeyEvent* self) {
	return self->count();
}

unsigned int QKeyEvent_nativeScanCode(const QKeyEvent* self) {
	quint32 _ret = self->nativeScanCode();
	return static_cast<unsigned int>(_ret);
}

unsigned int QKeyEvent_nativeVirtualKey(const QKeyEvent* self) {
	quint32 _ret = self->nativeVirtualKey();
	return static_cast<unsigned int>(_ret);
}

unsigned int QKeyEvent_nativeModifiers(const QKeyEvent* self) {
	quint32 _ret = self->nativeModifiers();
	return static_cast<unsigned int>(_ret);
}

QKeyEvent* QKeyEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQKeyEvent*)(self) )->QKeyEvent::clone();

}

void QKeyEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQKeyEvent*)(self) )->QKeyEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QKeyEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQKeyEvent*)(self) )->QKeyEvent::setAccepted(accepted);

}

void QKeyEvent_delete(QKeyEvent* self) {
	delete self;
}

class VirtualQFocusEvent final : public QFocusEvent {
	struct QFocusEvent_VTable* vtbl;
public:

	VirtualQFocusEvent(struct QFocusEvent_VTable* vtbl, QEvent::Type type): QFocusEvent(type), vtbl(vtbl) {};
	VirtualQFocusEvent(struct QFocusEvent_VTable* vtbl, QEvent::Type type, Qt::FocusReason reason): QFocusEvent(type, reason), vtbl(vtbl) {};

	virtual ~VirtualQFocusEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QFocusEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QFocusEvent::clone();
		}


		QFocusEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QFocusEvent* QFocusEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QFocusEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QFocusEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QFocusEvent* QFocusEvent_new(struct QFocusEvent_VTable* vtbl, int type) {
	return new VirtualQFocusEvent(vtbl, static_cast<QEvent::Type>(type));
}

QFocusEvent* QFocusEvent_new2(struct QFocusEvent_VTable* vtbl, int type, int reason) {
	return new VirtualQFocusEvent(vtbl, static_cast<QEvent::Type>(type), static_cast<Qt::FocusReason>(reason));
}

void QFocusEvent_virtbase(QFocusEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QFocusEvent* QFocusEvent_clone(const QFocusEvent* self) {
	return self->clone();
}

bool QFocusEvent_gotFocus(const QFocusEvent* self) {
	return self->gotFocus();
}

bool QFocusEvent_lostFocus(const QFocusEvent* self) {
	return self->lostFocus();
}

int QFocusEvent_reason(const QFocusEvent* self) {
	Qt::FocusReason _ret = self->reason();
	return static_cast<int>(_ret);
}

QFocusEvent* QFocusEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQFocusEvent*)(self) )->QFocusEvent::clone();

}

void QFocusEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQFocusEvent*)(self) )->QFocusEvent::setAccepted(accepted);

}

void QFocusEvent_delete(QFocusEvent* self) {
	delete self;
}

class VirtualQPaintEvent final : public QPaintEvent {
	struct QPaintEvent_VTable* vtbl;
public:

	VirtualQPaintEvent(struct QPaintEvent_VTable* vtbl, const QRegion& paintRegion): QPaintEvent(paintRegion), vtbl(vtbl) {};
	VirtualQPaintEvent(struct QPaintEvent_VTable* vtbl, const QRect& paintRect): QPaintEvent(paintRect), vtbl(vtbl) {};

	virtual ~VirtualQPaintEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QPaintEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QPaintEvent::clone();
		}


		QPaintEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEvent* QPaintEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QPaintEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QPaintEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QPaintEvent* QPaintEvent_new(struct QPaintEvent_VTable* vtbl, QRegion* paintRegion) {
	return new VirtualQPaintEvent(vtbl, *paintRegion);
}

QPaintEvent* QPaintEvent_new2(struct QPaintEvent_VTable* vtbl, QRect* paintRect) {
	return new VirtualQPaintEvent(vtbl, *paintRect);
}

void QPaintEvent_virtbase(QPaintEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QPaintEvent* QPaintEvent_clone(const QPaintEvent* self) {
	return self->clone();
}

QRect* QPaintEvent_rect(const QPaintEvent* self) {
	const QRect& _ret = self->rect();
	// Cast returned reference into pointer
	return const_cast<QRect*>(&_ret);
}

QRegion* QPaintEvent_region(const QPaintEvent* self) {
	const QRegion& _ret = self->region();
	// Cast returned reference into pointer
	return const_cast<QRegion*>(&_ret);
}

QPaintEvent* QPaintEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQPaintEvent*)(self) )->QPaintEvent::clone();

}

void QPaintEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQPaintEvent*)(self) )->QPaintEvent::setAccepted(accepted);

}

void QPaintEvent_delete(QPaintEvent* self) {
	delete self;
}

class VirtualQMoveEvent final : public QMoveEvent {
	struct QMoveEvent_VTable* vtbl;
public:

	VirtualQMoveEvent(struct QMoveEvent_VTable* vtbl, const QPoint& pos, const QPoint& oldPos): QMoveEvent(pos, oldPos), vtbl(vtbl) {};

	virtual ~VirtualQMoveEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QMoveEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QMoveEvent::clone();
		}


		QMoveEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QMoveEvent* QMoveEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QMoveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QMoveEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QMoveEvent* QMoveEvent_new(struct QMoveEvent_VTable* vtbl, QPoint* pos, QPoint* oldPos) {
	return new VirtualQMoveEvent(vtbl, *pos, *oldPos);
}

void QMoveEvent_virtbase(QMoveEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QMoveEvent* QMoveEvent_clone(const QMoveEvent* self) {
	return self->clone();
}

QPoint* QMoveEvent_pos(const QMoveEvent* self) {
	const QPoint& _ret = self->pos();
	// Cast returned reference into pointer
	return const_cast<QPoint*>(&_ret);
}

QPoint* QMoveEvent_oldPos(const QMoveEvent* self) {
	const QPoint& _ret = self->oldPos();
	// Cast returned reference into pointer
	return const_cast<QPoint*>(&_ret);
}

QMoveEvent* QMoveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQMoveEvent*)(self) )->QMoveEvent::clone();

}

void QMoveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQMoveEvent*)(self) )->QMoveEvent::setAccepted(accepted);

}

void QMoveEvent_delete(QMoveEvent* self) {
	delete self;
}

class VirtualQExposeEvent final : public QExposeEvent {
	struct QExposeEvent_VTable* vtbl;
public:

	VirtualQExposeEvent(struct QExposeEvent_VTable* vtbl, const QRegion& m_region): QExposeEvent(m_region), vtbl(vtbl) {};

	virtual ~VirtualQExposeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QExposeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QExposeEvent::clone();
		}


		QExposeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QExposeEvent* QExposeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QExposeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QExposeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QExposeEvent* QExposeEvent_new(struct QExposeEvent_VTable* vtbl, QRegion* m_region) {
	return new VirtualQExposeEvent(vtbl, *m_region);
}

void QExposeEvent_virtbase(QExposeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QExposeEvent* QExposeEvent_clone(const QExposeEvent* self) {
	return self->clone();
}

QRegion* QExposeEvent_region(const QExposeEvent* self) {
	const QRegion& _ret = self->region();
	// Cast returned reference into pointer
	return const_cast<QRegion*>(&_ret);
}

QExposeEvent* QExposeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQExposeEvent*)(self) )->QExposeEvent::clone();

}

void QExposeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQExposeEvent*)(self) )->QExposeEvent::setAccepted(accepted);

}

void QExposeEvent_delete(QExposeEvent* self) {
	delete self;
}

class VirtualQPlatformSurfaceEvent final : public QPlatformSurfaceEvent {
	struct QPlatformSurfaceEvent_VTable* vtbl;
public:

	VirtualQPlatformSurfaceEvent(struct QPlatformSurfaceEvent_VTable* vtbl, QPlatformSurfaceEvent::SurfaceEventType surfaceEventType): QPlatformSurfaceEvent(surfaceEventType), vtbl(vtbl) {};

	virtual ~VirtualQPlatformSurfaceEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QPlatformSurfaceEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QPlatformSurfaceEvent::clone();
		}


		QPlatformSurfaceEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QPlatformSurfaceEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QPlatformSurfaceEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QPlatformSurfaceEvent* QPlatformSurfaceEvent_new(struct QPlatformSurfaceEvent_VTable* vtbl, int surfaceEventType) {
	return new VirtualQPlatformSurfaceEvent(vtbl, static_cast<QPlatformSurfaceEvent::SurfaceEventType>(surfaceEventType));
}

void QPlatformSurfaceEvent_virtbase(QPlatformSurfaceEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QPlatformSurfaceEvent* QPlatformSurfaceEvent_clone(const QPlatformSurfaceEvent* self) {
	return self->clone();
}

int QPlatformSurfaceEvent_surfaceEventType(const QPlatformSurfaceEvent* self) {
	QPlatformSurfaceEvent::SurfaceEventType _ret = self->surfaceEventType();
	return static_cast<int>(_ret);
}

QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQPlatformSurfaceEvent*)(self) )->QPlatformSurfaceEvent::clone();

}

void QPlatformSurfaceEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQPlatformSurfaceEvent*)(self) )->QPlatformSurfaceEvent::setAccepted(accepted);

}

void QPlatformSurfaceEvent_delete(QPlatformSurfaceEvent* self) {
	delete self;
}

class VirtualQResizeEvent final : public QResizeEvent {
	struct QResizeEvent_VTable* vtbl;
public:

	VirtualQResizeEvent(struct QResizeEvent_VTable* vtbl, const QSize& size, const QSize& oldSize): QResizeEvent(size, oldSize), vtbl(vtbl) {};

	virtual ~VirtualQResizeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QResizeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QResizeEvent::clone();
		}


		QResizeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QResizeEvent* QResizeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QResizeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QResizeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QResizeEvent* QResizeEvent_new(struct QResizeEvent_VTable* vtbl, QSize* size, QSize* oldSize) {
	return new VirtualQResizeEvent(vtbl, *size, *oldSize);
}

void QResizeEvent_virtbase(QResizeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QResizeEvent* QResizeEvent_clone(const QResizeEvent* self) {
	return self->clone();
}

QSize* QResizeEvent_size(const QResizeEvent* self) {
	const QSize& _ret = self->size();
	// Cast returned reference into pointer
	return const_cast<QSize*>(&_ret);
}

QSize* QResizeEvent_oldSize(const QResizeEvent* self) {
	const QSize& _ret = self->oldSize();
	// Cast returned reference into pointer
	return const_cast<QSize*>(&_ret);
}

QResizeEvent* QResizeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQResizeEvent*)(self) )->QResizeEvent::clone();

}

void QResizeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQResizeEvent*)(self) )->QResizeEvent::setAccepted(accepted);

}

void QResizeEvent_delete(QResizeEvent* self) {
	delete self;
}

class VirtualQCloseEvent final : public QCloseEvent {
	struct QCloseEvent_VTable* vtbl;
public:

	VirtualQCloseEvent(struct QCloseEvent_VTable* vtbl): QCloseEvent(), vtbl(vtbl) {};

	virtual ~VirtualQCloseEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QCloseEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QCloseEvent::clone();
		}


		QCloseEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QCloseEvent* QCloseEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QCloseEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QCloseEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QCloseEvent* QCloseEvent_new(struct QCloseEvent_VTable* vtbl) {
	return new VirtualQCloseEvent(vtbl);
}

void QCloseEvent_virtbase(QCloseEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QCloseEvent* QCloseEvent_clone(const QCloseEvent* self) {
	return self->clone();
}

QCloseEvent* QCloseEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQCloseEvent*)(self) )->QCloseEvent::clone();

}

void QCloseEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQCloseEvent*)(self) )->QCloseEvent::setAccepted(accepted);

}

void QCloseEvent_delete(QCloseEvent* self) {
	delete self;
}

class VirtualQIconDragEvent final : public QIconDragEvent {
	struct QIconDragEvent_VTable* vtbl;
public:

	VirtualQIconDragEvent(struct QIconDragEvent_VTable* vtbl): QIconDragEvent(), vtbl(vtbl) {};

	virtual ~VirtualQIconDragEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QIconDragEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QIconDragEvent::clone();
		}


		QIconDragEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QIconDragEvent* QIconDragEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QIconDragEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QIconDragEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QIconDragEvent* QIconDragEvent_new(struct QIconDragEvent_VTable* vtbl) {
	return new VirtualQIconDragEvent(vtbl);
}

void QIconDragEvent_virtbase(QIconDragEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QIconDragEvent* QIconDragEvent_clone(const QIconDragEvent* self) {
	return self->clone();
}

QIconDragEvent* QIconDragEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQIconDragEvent*)(self) )->QIconDragEvent::clone();

}

void QIconDragEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQIconDragEvent*)(self) )->QIconDragEvent::setAccepted(accepted);

}

void QIconDragEvent_delete(QIconDragEvent* self) {
	delete self;
}

class VirtualQShowEvent final : public QShowEvent {
	struct QShowEvent_VTable* vtbl;
public:

	VirtualQShowEvent(struct QShowEvent_VTable* vtbl): QShowEvent(), vtbl(vtbl) {};

	virtual ~VirtualQShowEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QShowEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QShowEvent::clone();
		}


		QShowEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QShowEvent* QShowEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QShowEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QShowEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QShowEvent* QShowEvent_new(struct QShowEvent_VTable* vtbl) {
	return new VirtualQShowEvent(vtbl);
}

void QShowEvent_virtbase(QShowEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QShowEvent* QShowEvent_clone(const QShowEvent* self) {
	return self->clone();
}

QShowEvent* QShowEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQShowEvent*)(self) )->QShowEvent::clone();

}

void QShowEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQShowEvent*)(self) )->QShowEvent::setAccepted(accepted);

}

void QShowEvent_delete(QShowEvent* self) {
	delete self;
}

class VirtualQHideEvent final : public QHideEvent {
	struct QHideEvent_VTable* vtbl;
public:

	VirtualQHideEvent(struct QHideEvent_VTable* vtbl): QHideEvent(), vtbl(vtbl) {};

	virtual ~VirtualQHideEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QHideEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QHideEvent::clone();
		}


		QHideEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QHideEvent* QHideEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QHideEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QHideEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QHideEvent* QHideEvent_new(struct QHideEvent_VTable* vtbl) {
	return new VirtualQHideEvent(vtbl);
}

void QHideEvent_virtbase(QHideEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QHideEvent* QHideEvent_clone(const QHideEvent* self) {
	return self->clone();
}

QHideEvent* QHideEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQHideEvent*)(self) )->QHideEvent::clone();

}

void QHideEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQHideEvent*)(self) )->QHideEvent::setAccepted(accepted);

}

void QHideEvent_delete(QHideEvent* self) {
	delete self;
}

class VirtualQContextMenuEvent final : public QContextMenuEvent {
	struct QContextMenuEvent_VTable* vtbl;
public:

	VirtualQContextMenuEvent(struct QContextMenuEvent_VTable* vtbl, QContextMenuEvent::Reason reason, const QPoint& pos, const QPoint& globalPos): QContextMenuEvent(reason, pos, globalPos), vtbl(vtbl) {};
	VirtualQContextMenuEvent(struct QContextMenuEvent_VTable* vtbl, QContextMenuEvent::Reason reason, const QPoint& pos): QContextMenuEvent(reason, pos), vtbl(vtbl) {};
	VirtualQContextMenuEvent(struct QContextMenuEvent_VTable* vtbl, QContextMenuEvent::Reason reason, const QPoint& pos, const QPoint& globalPos, Qt::KeyboardModifiers modifiers): QContextMenuEvent(reason, pos, globalPos, modifiers), vtbl(vtbl) {};

	virtual ~VirtualQContextMenuEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QContextMenuEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QContextMenuEvent::clone();
		}


		QContextMenuEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QContextMenuEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QContextMenuEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QContextMenuEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QContextMenuEvent* QContextMenuEvent_new(struct QContextMenuEvent_VTable* vtbl, int reason, QPoint* pos, QPoint* globalPos) {
	return new VirtualQContextMenuEvent(vtbl, static_cast<QContextMenuEvent::Reason>(reason), *pos, *globalPos);
}

QContextMenuEvent* QContextMenuEvent_new2(struct QContextMenuEvent_VTable* vtbl, int reason, QPoint* pos) {
	return new VirtualQContextMenuEvent(vtbl, static_cast<QContextMenuEvent::Reason>(reason), *pos);
}

QContextMenuEvent* QContextMenuEvent_new3(struct QContextMenuEvent_VTable* vtbl, int reason, QPoint* pos, QPoint* globalPos, int modifiers) {
	return new VirtualQContextMenuEvent(vtbl, static_cast<QContextMenuEvent::Reason>(reason), *pos, *globalPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

void QContextMenuEvent_virtbase(QContextMenuEvent* src, QInputEvent** outptr_QInputEvent) {
	*outptr_QInputEvent = static_cast<QInputEvent*>(src);
}

QContextMenuEvent* QContextMenuEvent_clone(const QContextMenuEvent* self) {
	return self->clone();
}

int QContextMenuEvent_x(const QContextMenuEvent* self) {
	return self->x();
}

int QContextMenuEvent_y(const QContextMenuEvent* self) {
	return self->y();
}

int QContextMenuEvent_globalX(const QContextMenuEvent* self) {
	return self->globalX();
}

int QContextMenuEvent_globalY(const QContextMenuEvent* self) {
	return self->globalY();
}

QPoint* QContextMenuEvent_pos(const QContextMenuEvent* self) {
	const QPoint& _ret = self->pos();
	// Cast returned reference into pointer
	return const_cast<QPoint*>(&_ret);
}

QPoint* QContextMenuEvent_globalPos(const QContextMenuEvent* self) {
	const QPoint& _ret = self->globalPos();
	// Cast returned reference into pointer
	return const_cast<QPoint*>(&_ret);
}

int QContextMenuEvent_reason(const QContextMenuEvent* self) {
	QContextMenuEvent::Reason _ret = self->reason();
	return static_cast<int>(_ret);
}

QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQContextMenuEvent*)(self) )->QContextMenuEvent::clone();

}

void QContextMenuEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQContextMenuEvent*)(self) )->QContextMenuEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQContextMenuEvent*)(self) )->QContextMenuEvent::setAccepted(accepted);

}

void QContextMenuEvent_delete(QContextMenuEvent* self) {
	delete self;
}

class VirtualQInputMethodEvent final : public QInputMethodEvent {
	struct QInputMethodEvent_VTable* vtbl;
public:

	VirtualQInputMethodEvent(struct QInputMethodEvent_VTable* vtbl): QInputMethodEvent(), vtbl(vtbl) {};
	VirtualQInputMethodEvent(struct QInputMethodEvent_VTable* vtbl, const QString& preeditText, const QList<QInputMethodEvent::Attribute>& attributes): QInputMethodEvent(preeditText, attributes), vtbl(vtbl) {};

	virtual ~VirtualQInputMethodEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QInputMethodEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QInputMethodEvent::clone();
		}


		QInputMethodEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QInputMethodEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QInputMethodEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QInputMethodEvent* QInputMethodEvent_new(struct QInputMethodEvent_VTable* vtbl) {
	return new VirtualQInputMethodEvent(vtbl);
}

QInputMethodEvent* QInputMethodEvent_new2(struct QInputMethodEvent_VTable* vtbl, struct miqt_string preeditText, struct miqt_array /* of QInputMethodEvent__Attribute* */  attributes) {
	QString preeditText_QString = QString::fromUtf8(preeditText.data, preeditText.len);
	QList<QInputMethodEvent::Attribute> attributes_QList;
	attributes_QList.reserve(attributes.len);
	QInputMethodEvent__Attribute** attributes_arr = static_cast<QInputMethodEvent__Attribute**>(attributes.data);
	for(size_t i = 0; i < attributes.len; ++i) {
		attributes_QList.push_back(*(attributes_arr[i]));
	}
	return new VirtualQInputMethodEvent(vtbl, preeditText_QString, attributes_QList);
}

void QInputMethodEvent_virtbase(QInputMethodEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QInputMethodEvent* QInputMethodEvent_clone(const QInputMethodEvent* self) {
	return self->clone();
}

void QInputMethodEvent_setCommitString(QInputMethodEvent* self, struct miqt_string commitString) {
	QString commitString_QString = QString::fromUtf8(commitString.data, commitString.len);
	self->setCommitString(commitString_QString);
}

struct miqt_array /* of QInputMethodEvent__Attribute* */  QInputMethodEvent_attributes(const QInputMethodEvent* self) {
	const QList<QInputMethodEvent::Attribute>& _ret = self->attributes();
	// Convert QList<> from C++ memory to manually-managed C memory
	QInputMethodEvent__Attribute** _arr = static_cast<QInputMethodEvent__Attribute**>(malloc(sizeof(QInputMethodEvent__Attribute*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QInputMethodEvent::Attribute(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QInputMethodEvent_preeditString(const QInputMethodEvent* self) {
	const QString _ret = self->preeditString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputMethodEvent_commitString(const QInputMethodEvent* self) {
	const QString _ret = self->commitString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QInputMethodEvent_replacementStart(const QInputMethodEvent* self) {
	return self->replacementStart();
}

int QInputMethodEvent_replacementLength(const QInputMethodEvent* self) {
	return self->replacementLength();
}

void QInputMethodEvent_setCommitString2(QInputMethodEvent* self, struct miqt_string commitString, int replaceFrom) {
	QString commitString_QString = QString::fromUtf8(commitString.data, commitString.len);
	self->setCommitString(commitString_QString, static_cast<int>(replaceFrom));
}

void QInputMethodEvent_setCommitString3(QInputMethodEvent* self, struct miqt_string commitString, int replaceFrom, int replaceLength) {
	QString commitString_QString = QString::fromUtf8(commitString.data, commitString.len);
	self->setCommitString(commitString_QString, static_cast<int>(replaceFrom), static_cast<int>(replaceLength));
}

QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQInputMethodEvent*)(self) )->QInputMethodEvent::clone();

}

void QInputMethodEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQInputMethodEvent*)(self) )->QInputMethodEvent::setAccepted(accepted);

}

void QInputMethodEvent_delete(QInputMethodEvent* self) {
	delete self;
}

class VirtualQInputMethodQueryEvent final : public QInputMethodQueryEvent {
	struct QInputMethodQueryEvent_VTable* vtbl;
public:

	VirtualQInputMethodQueryEvent(struct QInputMethodQueryEvent_VTable* vtbl, Qt::InputMethodQueries queries): QInputMethodQueryEvent(queries), vtbl(vtbl) {};

	virtual ~VirtualQInputMethodQueryEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QInputMethodQueryEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QInputMethodQueryEvent::clone();
		}


		QInputMethodQueryEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QInputMethodQueryEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QInputMethodQueryEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QInputMethodQueryEvent* QInputMethodQueryEvent_new(struct QInputMethodQueryEvent_VTable* vtbl, int queries) {
	return new VirtualQInputMethodQueryEvent(vtbl, static_cast<Qt::InputMethodQueries>(queries));
}

void QInputMethodQueryEvent_virtbase(QInputMethodQueryEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QInputMethodQueryEvent* QInputMethodQueryEvent_clone(const QInputMethodQueryEvent* self) {
	return self->clone();
}

int QInputMethodQueryEvent_queries(const QInputMethodQueryEvent* self) {
	Qt::InputMethodQueries _ret = self->queries();
	return static_cast<int>(_ret);
}

void QInputMethodQueryEvent_setValue(QInputMethodQueryEvent* self, int query, QVariant* value) {
	self->setValue(static_cast<Qt::InputMethodQuery>(query), *value);
}

QVariant* QInputMethodQueryEvent_value(const QInputMethodQueryEvent* self, int query) {
	return new QVariant(self->value(static_cast<Qt::InputMethodQuery>(query)));
}

QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQInputMethodQueryEvent*)(self) )->QInputMethodQueryEvent::clone();

}

void QInputMethodQueryEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQInputMethodQueryEvent*)(self) )->QInputMethodQueryEvent::setAccepted(accepted);

}

void QInputMethodQueryEvent_delete(QInputMethodQueryEvent* self) {
	delete self;
}

class VirtualQDropEvent final : public QDropEvent {
	struct QDropEvent_VTable* vtbl;
public:

	VirtualQDropEvent(struct QDropEvent_VTable* vtbl, const QPointF& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDropEvent(pos, actions, data, buttons, modifiers), vtbl(vtbl) {};
	VirtualQDropEvent(struct QDropEvent_VTable* vtbl, const QPointF& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type): QDropEvent(pos, actions, data, buttons, modifiers, type), vtbl(vtbl) {};

	virtual ~VirtualQDropEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QDropEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDropEvent::clone();
		}


		QDropEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QDropEvent* QDropEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDropEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QDropEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDropEvent* QDropEvent_new(struct QDropEvent_VTable* vtbl, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDropEvent(vtbl, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QDropEvent* QDropEvent_new2(struct QDropEvent_VTable* vtbl, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int type) {
	return new VirtualQDropEvent(vtbl, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEvent::Type>(type));
}

void QDropEvent_virtbase(QDropEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDropEvent* QDropEvent_clone(const QDropEvent* self) {
	return self->clone();
}

QPoint* QDropEvent_pos(const QDropEvent* self) {
	return new QPoint(self->pos());
}

QPointF* QDropEvent_posF(const QDropEvent* self) {
	return new QPointF(self->posF());
}

int QDropEvent_mouseButtons(const QDropEvent* self) {
	Qt::MouseButtons _ret = self->mouseButtons();
	return static_cast<int>(_ret);
}

int QDropEvent_keyboardModifiers(const QDropEvent* self) {
	Qt::KeyboardModifiers _ret = self->keyboardModifiers();
	return static_cast<int>(_ret);
}

QPointF* QDropEvent_position(const QDropEvent* self) {
	return new QPointF(self->position());
}

int QDropEvent_buttons(const QDropEvent* self) {
	Qt::MouseButtons _ret = self->buttons();
	return static_cast<int>(_ret);
}

int QDropEvent_modifiers(const QDropEvent* self) {
	Qt::KeyboardModifiers _ret = self->modifiers();
	return static_cast<int>(_ret);
}

int QDropEvent_possibleActions(const QDropEvent* self) {
	Qt::DropActions _ret = self->possibleActions();
	return static_cast<int>(_ret);
}

int QDropEvent_proposedAction(const QDropEvent* self) {
	Qt::DropAction _ret = self->proposedAction();
	return static_cast<int>(_ret);
}

void QDropEvent_acceptProposedAction(QDropEvent* self) {
	self->acceptProposedAction();
}

int QDropEvent_dropAction(const QDropEvent* self) {
	Qt::DropAction _ret = self->dropAction();
	return static_cast<int>(_ret);
}

void QDropEvent_setDropAction(QDropEvent* self, int action) {
	self->setDropAction(static_cast<Qt::DropAction>(action));
}

QObject* QDropEvent_source(const QDropEvent* self) {
	return self->source();
}

QMimeData* QDropEvent_mimeData(const QDropEvent* self) {
	return (QMimeData*) self->mimeData();
}

QDropEvent* QDropEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDropEvent*)(self) )->QDropEvent::clone();

}

void QDropEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDropEvent*)(self) )->QDropEvent::setAccepted(accepted);

}

void QDropEvent_delete(QDropEvent* self) {
	delete self;
}

class VirtualQDragMoveEvent final : public QDragMoveEvent {
	struct QDragMoveEvent_VTable* vtbl;
public:

	VirtualQDragMoveEvent(struct QDragMoveEvent_VTable* vtbl, const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDragMoveEvent(pos, actions, data, buttons, modifiers), vtbl(vtbl) {};
	VirtualQDragMoveEvent(struct QDragMoveEvent_VTable* vtbl, const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type): QDragMoveEvent(pos, actions, data, buttons, modifiers, type), vtbl(vtbl) {};

	virtual ~VirtualQDragMoveEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QDragMoveEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDragMoveEvent::clone();
		}


		QDragMoveEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDragMoveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QDragMoveEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDragMoveEvent* QDragMoveEvent_new(struct QDragMoveEvent_VTable* vtbl, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDragMoveEvent(vtbl, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QDragMoveEvent* QDragMoveEvent_new2(struct QDragMoveEvent_VTable* vtbl, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int type) {
	return new VirtualQDragMoveEvent(vtbl, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEvent::Type>(type));
}

void QDragMoveEvent_virtbase(QDragMoveEvent* src, QDropEvent** outptr_QDropEvent) {
	*outptr_QDropEvent = static_cast<QDropEvent*>(src);
}

QDragMoveEvent* QDragMoveEvent_clone(const QDragMoveEvent* self) {
	return self->clone();
}

QRect* QDragMoveEvent_answerRect(const QDragMoveEvent* self) {
	return new QRect(self->answerRect());
}

void QDragMoveEvent_accept(QDragMoveEvent* self) {
	self->accept();
}

void QDragMoveEvent_ignore(QDragMoveEvent* self) {
	self->ignore();
}

void QDragMoveEvent_acceptWithQRect(QDragMoveEvent* self, QRect* r) {
	self->accept(*r);
}

void QDragMoveEvent_ignoreWithQRect(QDragMoveEvent* self, QRect* r) {
	self->ignore(*r);
}

QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDragMoveEvent*)(self) )->QDragMoveEvent::clone();

}

void QDragMoveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDragMoveEvent*)(self) )->QDragMoveEvent::setAccepted(accepted);

}

void QDragMoveEvent_delete(QDragMoveEvent* self) {
	delete self;
}

class VirtualQDragEnterEvent final : public QDragEnterEvent {
	struct QDragEnterEvent_VTable* vtbl;
public:

	VirtualQDragEnterEvent(struct QDragEnterEvent_VTable* vtbl, const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDragEnterEvent(pos, actions, data, buttons, modifiers), vtbl(vtbl) {};

	virtual ~VirtualQDragEnterEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QDragEnterEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDragEnterEvent::clone();
		}


		QDragEnterEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDragEnterEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QDragEnterEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDragEnterEvent* QDragEnterEvent_new(struct QDragEnterEvent_VTable* vtbl, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDragEnterEvent(vtbl, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

void QDragEnterEvent_virtbase(QDragEnterEvent* src, QDragMoveEvent** outptr_QDragMoveEvent) {
	*outptr_QDragMoveEvent = static_cast<QDragMoveEvent*>(src);
}

QDragEnterEvent* QDragEnterEvent_clone(const QDragEnterEvent* self) {
	return self->clone();
}

QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDragEnterEvent*)(self) )->QDragEnterEvent::clone();

}

void QDragEnterEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDragEnterEvent*)(self) )->QDragEnterEvent::setAccepted(accepted);

}

void QDragEnterEvent_delete(QDragEnterEvent* self) {
	delete self;
}

class VirtualQDragLeaveEvent final : public QDragLeaveEvent {
	struct QDragLeaveEvent_VTable* vtbl;
public:

	VirtualQDragLeaveEvent(struct QDragLeaveEvent_VTable* vtbl): QDragLeaveEvent(), vtbl(vtbl) {};

	virtual ~VirtualQDragLeaveEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QDragLeaveEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDragLeaveEvent::clone();
		}


		QDragLeaveEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDragLeaveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QDragLeaveEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDragLeaveEvent* QDragLeaveEvent_new(struct QDragLeaveEvent_VTable* vtbl) {
	return new VirtualQDragLeaveEvent(vtbl);
}

void QDragLeaveEvent_virtbase(QDragLeaveEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDragLeaveEvent* QDragLeaveEvent_clone(const QDragLeaveEvent* self) {
	return self->clone();
}

QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDragLeaveEvent*)(self) )->QDragLeaveEvent::clone();

}

void QDragLeaveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDragLeaveEvent*)(self) )->QDragLeaveEvent::setAccepted(accepted);

}

void QDragLeaveEvent_delete(QDragLeaveEvent* self) {
	delete self;
}

class VirtualQHelpEvent final : public QHelpEvent {
	struct QHelpEvent_VTable* vtbl;
public:

	VirtualQHelpEvent(struct QHelpEvent_VTable* vtbl, QEvent::Type type, const QPoint& pos, const QPoint& globalPos): QHelpEvent(type, pos, globalPos), vtbl(vtbl) {};

	virtual ~VirtualQHelpEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QHelpEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QHelpEvent::clone();
		}


		QHelpEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QHelpEvent* QHelpEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QHelpEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QHelpEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QHelpEvent* QHelpEvent_new(struct QHelpEvent_VTable* vtbl, int type, QPoint* pos, QPoint* globalPos) {
	return new VirtualQHelpEvent(vtbl, static_cast<QEvent::Type>(type), *pos, *globalPos);
}

void QHelpEvent_virtbase(QHelpEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QHelpEvent* QHelpEvent_clone(const QHelpEvent* self) {
	return self->clone();
}

int QHelpEvent_x(const QHelpEvent* self) {
	return self->x();
}

int QHelpEvent_y(const QHelpEvent* self) {
	return self->y();
}

int QHelpEvent_globalX(const QHelpEvent* self) {
	return self->globalX();
}

int QHelpEvent_globalY(const QHelpEvent* self) {
	return self->globalY();
}

QPoint* QHelpEvent_pos(const QHelpEvent* self) {
	const QPoint& _ret = self->pos();
	// Cast returned reference into pointer
	return const_cast<QPoint*>(&_ret);
}

QPoint* QHelpEvent_globalPos(const QHelpEvent* self) {
	const QPoint& _ret = self->globalPos();
	// Cast returned reference into pointer
	return const_cast<QPoint*>(&_ret);
}

QHelpEvent* QHelpEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQHelpEvent*)(self) )->QHelpEvent::clone();

}

void QHelpEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQHelpEvent*)(self) )->QHelpEvent::setAccepted(accepted);

}

void QHelpEvent_delete(QHelpEvent* self) {
	delete self;
}

class VirtualQStatusTipEvent final : public QStatusTipEvent {
	struct QStatusTipEvent_VTable* vtbl;
public:

	VirtualQStatusTipEvent(struct QStatusTipEvent_VTable* vtbl, const QString& tip): QStatusTipEvent(tip), vtbl(vtbl) {};

	virtual ~VirtualQStatusTipEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QStatusTipEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QStatusTipEvent::clone();
		}


		QStatusTipEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QStatusTipEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QStatusTipEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QStatusTipEvent* QStatusTipEvent_new(struct QStatusTipEvent_VTable* vtbl, struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	return new VirtualQStatusTipEvent(vtbl, tip_QString);
}

void QStatusTipEvent_virtbase(QStatusTipEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QStatusTipEvent* QStatusTipEvent_clone(const QStatusTipEvent* self) {
	return self->clone();
}

struct miqt_string QStatusTipEvent_tip(const QStatusTipEvent* self) {
	QString _ret = self->tip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQStatusTipEvent*)(self) )->QStatusTipEvent::clone();

}

void QStatusTipEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQStatusTipEvent*)(self) )->QStatusTipEvent::setAccepted(accepted);

}

void QStatusTipEvent_delete(QStatusTipEvent* self) {
	delete self;
}

class VirtualQWhatsThisClickedEvent final : public QWhatsThisClickedEvent {
	struct QWhatsThisClickedEvent_VTable* vtbl;
public:

	VirtualQWhatsThisClickedEvent(struct QWhatsThisClickedEvent_VTable* vtbl, const QString& href): QWhatsThisClickedEvent(href), vtbl(vtbl) {};

	virtual ~VirtualQWhatsThisClickedEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QWhatsThisClickedEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QWhatsThisClickedEvent::clone();
		}


		QWhatsThisClickedEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QWhatsThisClickedEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QWhatsThisClickedEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QWhatsThisClickedEvent* QWhatsThisClickedEvent_new(struct QWhatsThisClickedEvent_VTable* vtbl, struct miqt_string href) {
	QString href_QString = QString::fromUtf8(href.data, href.len);
	return new VirtualQWhatsThisClickedEvent(vtbl, href_QString);
}

void QWhatsThisClickedEvent_virtbase(QWhatsThisClickedEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QWhatsThisClickedEvent* QWhatsThisClickedEvent_clone(const QWhatsThisClickedEvent* self) {
	return self->clone();
}

struct miqt_string QWhatsThisClickedEvent_href(const QWhatsThisClickedEvent* self) {
	QString _ret = self->href();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQWhatsThisClickedEvent*)(self) )->QWhatsThisClickedEvent::clone();

}

void QWhatsThisClickedEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQWhatsThisClickedEvent*)(self) )->QWhatsThisClickedEvent::setAccepted(accepted);

}

void QWhatsThisClickedEvent_delete(QWhatsThisClickedEvent* self) {
	delete self;
}

class VirtualQActionEvent final : public QActionEvent {
	struct QActionEvent_VTable* vtbl;
public:

	VirtualQActionEvent(struct QActionEvent_VTable* vtbl, int type, QAction* action): QActionEvent(type, action), vtbl(vtbl) {};
	VirtualQActionEvent(struct QActionEvent_VTable* vtbl, int type, QAction* action, QAction* before): QActionEvent(type, action, before), vtbl(vtbl) {};

	virtual ~VirtualQActionEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QActionEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QActionEvent::clone();
		}


		QActionEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QActionEvent* QActionEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QActionEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QActionEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QActionEvent* QActionEvent_new(struct QActionEvent_VTable* vtbl, int type, QAction* action) {
	return new VirtualQActionEvent(vtbl, static_cast<int>(type), action);
}

QActionEvent* QActionEvent_new2(struct QActionEvent_VTable* vtbl, int type, QAction* action, QAction* before) {
	return new VirtualQActionEvent(vtbl, static_cast<int>(type), action, before);
}

void QActionEvent_virtbase(QActionEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QActionEvent* QActionEvent_clone(const QActionEvent* self) {
	return self->clone();
}

QActionEvent* QActionEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQActionEvent*)(self) )->QActionEvent::clone();

}

void QActionEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQActionEvent*)(self) )->QActionEvent::setAccepted(accepted);

}

void QActionEvent_delete(QActionEvent* self) {
	delete self;
}

class VirtualQFileOpenEvent final : public QFileOpenEvent {
	struct QFileOpenEvent_VTable* vtbl;
public:

	VirtualQFileOpenEvent(struct QFileOpenEvent_VTable* vtbl, const QString& file): QFileOpenEvent(file), vtbl(vtbl) {};
	VirtualQFileOpenEvent(struct QFileOpenEvent_VTable* vtbl, const QUrl& url): QFileOpenEvent(url), vtbl(vtbl) {};

	virtual ~VirtualQFileOpenEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QFileOpenEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QFileOpenEvent::clone();
		}


		QFileOpenEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QFileOpenEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QFileOpenEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QFileOpenEvent* QFileOpenEvent_new(struct QFileOpenEvent_VTable* vtbl, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQFileOpenEvent(vtbl, file_QString);
}

QFileOpenEvent* QFileOpenEvent_new2(struct QFileOpenEvent_VTable* vtbl, QUrl* url) {
	return new VirtualQFileOpenEvent(vtbl, *url);
}

void QFileOpenEvent_virtbase(QFileOpenEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QFileOpenEvent* QFileOpenEvent_clone(const QFileOpenEvent* self) {
	return self->clone();
}

struct miqt_string QFileOpenEvent_file(const QFileOpenEvent* self) {
	QString _ret = self->file();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileOpenEvent_url(const QFileOpenEvent* self) {
	return new QUrl(self->url());
}

bool QFileOpenEvent_openFile(const QFileOpenEvent* self, QFile* file, int flags) {
	return self->openFile(*file, static_cast<QIODevice::OpenMode>(flags));
}

QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQFileOpenEvent*)(self) )->QFileOpenEvent::clone();

}

void QFileOpenEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQFileOpenEvent*)(self) )->QFileOpenEvent::setAccepted(accepted);

}

void QFileOpenEvent_delete(QFileOpenEvent* self) {
	delete self;
}

class VirtualQToolBarChangeEvent final : public QToolBarChangeEvent {
	struct QToolBarChangeEvent_VTable* vtbl;
public:

	VirtualQToolBarChangeEvent(struct QToolBarChangeEvent_VTable* vtbl, bool t): QToolBarChangeEvent(t), vtbl(vtbl) {};

	virtual ~VirtualQToolBarChangeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QToolBarChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QToolBarChangeEvent::clone();
		}


		QToolBarChangeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QToolBarChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QToolBarChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QToolBarChangeEvent* QToolBarChangeEvent_new(struct QToolBarChangeEvent_VTable* vtbl, bool t) {
	return new VirtualQToolBarChangeEvent(vtbl, t);
}

void QToolBarChangeEvent_virtbase(QToolBarChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QToolBarChangeEvent* QToolBarChangeEvent_clone(const QToolBarChangeEvent* self) {
	return self->clone();
}

bool QToolBarChangeEvent_toggle(const QToolBarChangeEvent* self) {
	return self->toggle();
}

QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQToolBarChangeEvent*)(self) )->QToolBarChangeEvent::clone();

}

void QToolBarChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQToolBarChangeEvent*)(self) )->QToolBarChangeEvent::setAccepted(accepted);

}

void QToolBarChangeEvent_delete(QToolBarChangeEvent* self) {
	delete self;
}

class VirtualQShortcutEvent final : public QShortcutEvent {
	struct QShortcutEvent_VTable* vtbl;
public:

	VirtualQShortcutEvent(struct QShortcutEvent_VTable* vtbl, const QKeySequence& key, int id): QShortcutEvent(key, id), vtbl(vtbl) {};
	VirtualQShortcutEvent(struct QShortcutEvent_VTable* vtbl, const QKeySequence& key, int id, bool ambiguous): QShortcutEvent(key, id, ambiguous), vtbl(vtbl) {};

	virtual ~VirtualQShortcutEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QShortcutEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QShortcutEvent::clone();
		}


		QShortcutEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QShortcutEvent* QShortcutEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QShortcutEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QShortcutEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QShortcutEvent* QShortcutEvent_new(struct QShortcutEvent_VTable* vtbl, QKeySequence* key, int id) {
	return new VirtualQShortcutEvent(vtbl, *key, static_cast<int>(id));
}

QShortcutEvent* QShortcutEvent_new2(struct QShortcutEvent_VTable* vtbl, QKeySequence* key, int id, bool ambiguous) {
	return new VirtualQShortcutEvent(vtbl, *key, static_cast<int>(id), ambiguous);
}

void QShortcutEvent_virtbase(QShortcutEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QShortcutEvent* QShortcutEvent_clone(const QShortcutEvent* self) {
	return self->clone();
}

QKeySequence* QShortcutEvent_key(const QShortcutEvent* self) {
	const QKeySequence& _ret = self->key();
	// Cast returned reference into pointer
	return const_cast<QKeySequence*>(&_ret);
}

int QShortcutEvent_shortcutId(const QShortcutEvent* self) {
	return self->shortcutId();
}

bool QShortcutEvent_isAmbiguous(const QShortcutEvent* self) {
	return self->isAmbiguous();
}

QShortcutEvent* QShortcutEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQShortcutEvent*)(self) )->QShortcutEvent::clone();

}

void QShortcutEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQShortcutEvent*)(self) )->QShortcutEvent::setAccepted(accepted);

}

void QShortcutEvent_delete(QShortcutEvent* self) {
	delete self;
}

class VirtualQWindowStateChangeEvent final : public QWindowStateChangeEvent {
	struct QWindowStateChangeEvent_VTable* vtbl;
public:

	VirtualQWindowStateChangeEvent(struct QWindowStateChangeEvent_VTable* vtbl, Qt::WindowStates oldState): QWindowStateChangeEvent(oldState), vtbl(vtbl) {};
	VirtualQWindowStateChangeEvent(struct QWindowStateChangeEvent_VTable* vtbl, Qt::WindowStates oldState, bool isOverride): QWindowStateChangeEvent(oldState, isOverride), vtbl(vtbl) {};

	virtual ~VirtualQWindowStateChangeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QWindowStateChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QWindowStateChangeEvent::clone();
		}


		QWindowStateChangeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QWindowStateChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QWindowStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QWindowStateChangeEvent* QWindowStateChangeEvent_new(struct QWindowStateChangeEvent_VTable* vtbl, int oldState) {
	return new VirtualQWindowStateChangeEvent(vtbl, static_cast<Qt::WindowStates>(oldState));
}

QWindowStateChangeEvent* QWindowStateChangeEvent_new2(struct QWindowStateChangeEvent_VTable* vtbl, int oldState, bool isOverride) {
	return new VirtualQWindowStateChangeEvent(vtbl, static_cast<Qt::WindowStates>(oldState), isOverride);
}

void QWindowStateChangeEvent_virtbase(QWindowStateChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QWindowStateChangeEvent* QWindowStateChangeEvent_clone(const QWindowStateChangeEvent* self) {
	return self->clone();
}

int QWindowStateChangeEvent_oldState(const QWindowStateChangeEvent* self) {
	Qt::WindowStates _ret = self->oldState();
	return static_cast<int>(_ret);
}

bool QWindowStateChangeEvent_isOverride(const QWindowStateChangeEvent* self) {
	return self->isOverride();
}

QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQWindowStateChangeEvent*)(self) )->QWindowStateChangeEvent::clone();

}

void QWindowStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQWindowStateChangeEvent*)(self) )->QWindowStateChangeEvent::setAccepted(accepted);

}

void QWindowStateChangeEvent_delete(QWindowStateChangeEvent* self) {
	delete self;
}

class VirtualQTouchEvent final : public QTouchEvent {
	struct QTouchEvent_VTable* vtbl;
public:

	VirtualQTouchEvent(struct QTouchEvent_VTable* vtbl, QEvent::Type eventType): QTouchEvent(eventType), vtbl(vtbl) {};
	VirtualQTouchEvent(struct QTouchEvent_VTable* vtbl, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, QEventPoint::States touchPointStates): QTouchEvent(eventType, device, modifiers, touchPointStates), vtbl(vtbl) {};
	VirtualQTouchEvent(struct QTouchEvent_VTable* vtbl, QEvent::Type eventType, const QPointingDevice* device): QTouchEvent(eventType, device), vtbl(vtbl) {};
	VirtualQTouchEvent(struct QTouchEvent_VTable* vtbl, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers): QTouchEvent(eventType, device, modifiers), vtbl(vtbl) {};
	VirtualQTouchEvent(struct QTouchEvent_VTable* vtbl, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, const QList<QEventPoint>& touchPoints): QTouchEvent(eventType, device, modifiers, touchPoints), vtbl(vtbl) {};
	VirtualQTouchEvent(struct QTouchEvent_VTable* vtbl, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, QEventPoint::States touchPointStates, const QList<QEventPoint>& touchPoints): QTouchEvent(eventType, device, modifiers, touchPointStates, touchPoints), vtbl(vtbl) {};

	virtual ~VirtualQTouchEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTouchEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTouchEvent::clone();
		}


		QTouchEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QTouchEvent* QTouchEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QTouchEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isBeginEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QTouchEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isUpdateEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QTouchEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(vtbl, this);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isEndEvent(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QTouchEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(vtbl, this, sigval1);

	}

	friend void QTouchEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTouchEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QTouchEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QTouchEvent* QTouchEvent_new(struct QTouchEvent_VTable* vtbl, int eventType) {
	return new VirtualQTouchEvent(vtbl, static_cast<QEvent::Type>(eventType));
}

QTouchEvent* QTouchEvent_new2(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates) {
	return new VirtualQTouchEvent(vtbl, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEventPoint::States>(touchPointStates));
}

QTouchEvent* QTouchEvent_new3(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device) {
	return new VirtualQTouchEvent(vtbl, static_cast<QEvent::Type>(eventType), device);
}

QTouchEvent* QTouchEvent_new4(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers) {
	return new VirtualQTouchEvent(vtbl, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QTouchEvent* QTouchEvent_new5(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers, struct miqt_array /* of QEventPoint* */  touchPoints) {
	QList<QEventPoint> touchPoints_QList;
	touchPoints_QList.reserve(touchPoints.len);
	QEventPoint** touchPoints_arr = static_cast<QEventPoint**>(touchPoints.data);
	for(size_t i = 0; i < touchPoints.len; ++i) {
		touchPoints_QList.push_back(*(touchPoints_arr[i]));
	}
	return new VirtualQTouchEvent(vtbl, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), touchPoints_QList);
}

QTouchEvent* QTouchEvent_new6(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates, struct miqt_array /* of QEventPoint* */  touchPoints) {
	QList<QEventPoint> touchPoints_QList;
	touchPoints_QList.reserve(touchPoints.len);
	QEventPoint** touchPoints_arr = static_cast<QEventPoint**>(touchPoints.data);
	for(size_t i = 0; i < touchPoints.len; ++i) {
		touchPoints_QList.push_back(*(touchPoints_arr[i]));
	}
	return new VirtualQTouchEvent(vtbl, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEventPoint::States>(touchPointStates), touchPoints_QList);
}

void QTouchEvent_virtbase(QTouchEvent* src, QPointerEvent** outptr_QPointerEvent) {
	*outptr_QPointerEvent = static_cast<QPointerEvent*>(src);
}

QTouchEvent* QTouchEvent_clone(const QTouchEvent* self) {
	return self->clone();
}

QObject* QTouchEvent_target(const QTouchEvent* self) {
	return self->target();
}

uint8_t QTouchEvent_touchPointStates(const QTouchEvent* self) {
	QEventPoint::States _ret = self->touchPointStates();
	return static_cast<uint8_t>(_ret);
}

struct miqt_array /* of QEventPoint* */  QTouchEvent_touchPoints(const QTouchEvent* self) {
	const QList<QEventPoint>& _ret = self->touchPoints();
	// Convert QList<> from C++ memory to manually-managed C memory
	QEventPoint** _arr = static_cast<QEventPoint**>(malloc(sizeof(QEventPoint*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QEventPoint(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QTouchEvent_isBeginEvent(const QTouchEvent* self) {
	return self->isBeginEvent();
}

bool QTouchEvent_isUpdateEvent(const QTouchEvent* self) {
	return self->isUpdateEvent();
}

bool QTouchEvent_isEndEvent(const QTouchEvent* self) {
	return self->isEndEvent();
}

QTouchEvent* QTouchEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::clone();

}

bool QTouchEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::isBeginEvent();

}

bool QTouchEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::isUpdateEvent();

}

bool QTouchEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::isEndEvent();

}

void QTouchEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQTouchEvent*)(self) )->QTouchEvent::setTimestamp(static_cast<quint64>(timestamp));

}

void QTouchEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQTouchEvent*)(self) )->QTouchEvent::setAccepted(accepted);

}

void QTouchEvent_delete(QTouchEvent* self) {
	delete self;
}

class VirtualQScrollPrepareEvent final : public QScrollPrepareEvent {
	struct QScrollPrepareEvent_VTable* vtbl;
public:

	VirtualQScrollPrepareEvent(struct QScrollPrepareEvent_VTable* vtbl, const QPointF& startPos): QScrollPrepareEvent(startPos), vtbl(vtbl) {};

	virtual ~VirtualQScrollPrepareEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QScrollPrepareEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QScrollPrepareEvent::clone();
		}


		QScrollPrepareEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QScrollPrepareEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QScrollPrepareEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QScrollPrepareEvent* QScrollPrepareEvent_new(struct QScrollPrepareEvent_VTable* vtbl, QPointF* startPos) {
	return new VirtualQScrollPrepareEvent(vtbl, *startPos);
}

void QScrollPrepareEvent_virtbase(QScrollPrepareEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QScrollPrepareEvent* QScrollPrepareEvent_clone(const QScrollPrepareEvent* self) {
	return self->clone();
}

QPointF* QScrollPrepareEvent_startPos(const QScrollPrepareEvent* self) {
	return new QPointF(self->startPos());
}

QSizeF* QScrollPrepareEvent_viewportSize(const QScrollPrepareEvent* self) {
	return new QSizeF(self->viewportSize());
}

QRectF* QScrollPrepareEvent_contentPosRange(const QScrollPrepareEvent* self) {
	return new QRectF(self->contentPosRange());
}

QPointF* QScrollPrepareEvent_contentPos(const QScrollPrepareEvent* self) {
	return new QPointF(self->contentPos());
}

void QScrollPrepareEvent_setViewportSize(QScrollPrepareEvent* self, QSizeF* size) {
	self->setViewportSize(*size);
}

void QScrollPrepareEvent_setContentPosRange(QScrollPrepareEvent* self, QRectF* rect) {
	self->setContentPosRange(*rect);
}

void QScrollPrepareEvent_setContentPos(QScrollPrepareEvent* self, QPointF* pos) {
	self->setContentPos(*pos);
}

QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQScrollPrepareEvent*)(self) )->QScrollPrepareEvent::clone();

}

void QScrollPrepareEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQScrollPrepareEvent*)(self) )->QScrollPrepareEvent::setAccepted(accepted);

}

void QScrollPrepareEvent_delete(QScrollPrepareEvent* self) {
	delete self;
}

class VirtualQScrollEvent final : public QScrollEvent {
	struct QScrollEvent_VTable* vtbl;
public:

	VirtualQScrollEvent(struct QScrollEvent_VTable* vtbl, const QPointF& contentPos, const QPointF& overshoot, QScrollEvent::ScrollState scrollState): QScrollEvent(contentPos, overshoot, scrollState), vtbl(vtbl) {};

	virtual ~VirtualQScrollEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QScrollEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QScrollEvent::clone();
		}


		QScrollEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QScrollEvent* QScrollEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QScrollEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QScrollEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QScrollEvent* QScrollEvent_new(struct QScrollEvent_VTable* vtbl, QPointF* contentPos, QPointF* overshoot, int scrollState) {
	return new VirtualQScrollEvent(vtbl, *contentPos, *overshoot, static_cast<QScrollEvent::ScrollState>(scrollState));
}

void QScrollEvent_virtbase(QScrollEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QScrollEvent* QScrollEvent_clone(const QScrollEvent* self) {
	return self->clone();
}

QPointF* QScrollEvent_contentPos(const QScrollEvent* self) {
	return new QPointF(self->contentPos());
}

QPointF* QScrollEvent_overshootDistance(const QScrollEvent* self) {
	return new QPointF(self->overshootDistance());
}

int QScrollEvent_scrollState(const QScrollEvent* self) {
	QScrollEvent::ScrollState _ret = self->scrollState();
	return static_cast<int>(_ret);
}

QScrollEvent* QScrollEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQScrollEvent*)(self) )->QScrollEvent::clone();

}

void QScrollEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQScrollEvent*)(self) )->QScrollEvent::setAccepted(accepted);

}

void QScrollEvent_delete(QScrollEvent* self) {
	delete self;
}

class VirtualQScreenOrientationChangeEvent final : public QScreenOrientationChangeEvent {
	struct QScreenOrientationChangeEvent_VTable* vtbl;
public:

	VirtualQScreenOrientationChangeEvent(struct QScreenOrientationChangeEvent_VTable* vtbl, QScreen* screen, Qt::ScreenOrientation orientation): QScreenOrientationChangeEvent(screen, orientation), vtbl(vtbl) {};

	virtual ~VirtualQScreenOrientationChangeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QScreenOrientationChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QScreenOrientationChangeEvent::clone();
		}


		QScreenOrientationChangeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QScreenOrientationChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QScreenOrientationChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(struct QScreenOrientationChangeEvent_VTable* vtbl, QScreen* screen, int orientation) {
	return new VirtualQScreenOrientationChangeEvent(vtbl, screen, static_cast<Qt::ScreenOrientation>(orientation));
}

void QScreenOrientationChangeEvent_virtbase(QScreenOrientationChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_clone(const QScreenOrientationChangeEvent* self) {
	return self->clone();
}

QScreen* QScreenOrientationChangeEvent_screen(const QScreenOrientationChangeEvent* self) {
	return self->screen();
}

int QScreenOrientationChangeEvent_orientation(const QScreenOrientationChangeEvent* self) {
	Qt::ScreenOrientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQScreenOrientationChangeEvent*)(self) )->QScreenOrientationChangeEvent::clone();

}

void QScreenOrientationChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQScreenOrientationChangeEvent*)(self) )->QScreenOrientationChangeEvent::setAccepted(accepted);

}

void QScreenOrientationChangeEvent_delete(QScreenOrientationChangeEvent* self) {
	delete self;
}

class VirtualQApplicationStateChangeEvent final : public QApplicationStateChangeEvent {
	struct QApplicationStateChangeEvent_VTable* vtbl;
public:

	VirtualQApplicationStateChangeEvent(struct QApplicationStateChangeEvent_VTable* vtbl, Qt::ApplicationState state): QApplicationStateChangeEvent(state), vtbl(vtbl) {};

	virtual ~VirtualQApplicationStateChangeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QApplicationStateChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QApplicationStateChangeEvent::clone();
		}


		QApplicationStateChangeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QApplicationStateChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QApplicationStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QApplicationStateChangeEvent* QApplicationStateChangeEvent_new(struct QApplicationStateChangeEvent_VTable* vtbl, int state) {
	return new VirtualQApplicationStateChangeEvent(vtbl, static_cast<Qt::ApplicationState>(state));
}

void QApplicationStateChangeEvent_virtbase(QApplicationStateChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QApplicationStateChangeEvent* QApplicationStateChangeEvent_clone(const QApplicationStateChangeEvent* self) {
	return self->clone();
}

int QApplicationStateChangeEvent_applicationState(const QApplicationStateChangeEvent* self) {
	Qt::ApplicationState _ret = self->applicationState();
	return static_cast<int>(_ret);
}

QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQApplicationStateChangeEvent*)(self) )->QApplicationStateChangeEvent::clone();

}

void QApplicationStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQApplicationStateChangeEvent*)(self) )->QApplicationStateChangeEvent::setAccepted(accepted);

}

void QApplicationStateChangeEvent_delete(QApplicationStateChangeEvent* self) {
	delete self;
}

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new(int typ, int s, int l, QVariant* val) {
	return new QInputMethodEvent::Attribute(static_cast<QInputMethodEvent::AttributeType>(typ), static_cast<int>(s), static_cast<int>(l), *val);
}

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new2(int typ, int s, int l) {
	return new QInputMethodEvent::Attribute(static_cast<QInputMethodEvent::AttributeType>(typ), static_cast<int>(s), static_cast<int>(l));
}

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1) {
	return new QInputMethodEvent::Attribute(*param1);
}

void QInputMethodEvent__Attribute_operatorAssign(QInputMethodEvent__Attribute* self, QInputMethodEvent__Attribute* param1) {
	self->operator=(*param1);
}

void QInputMethodEvent__Attribute_delete(QInputMethodEvent__Attribute* self) {
	delete self;
}

