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

QInputEvent* miqt_exec_callback_QInputEvent_clone(const QInputEvent*, intptr_t);
void miqt_exec_callback_QInputEvent_setTimestamp(QInputEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QInputEvent_setAccepted(QInputEvent*, intptr_t, bool);
QPointerEvent* miqt_exec_callback_QPointerEvent_clone(const QPointerEvent*, intptr_t);
void miqt_exec_callback_QPointerEvent_setTimestamp(QPointerEvent*, intptr_t, unsigned long long);
bool miqt_exec_callback_QPointerEvent_isBeginEvent(const QPointerEvent*, intptr_t);
bool miqt_exec_callback_QPointerEvent_isUpdateEvent(const QPointerEvent*, intptr_t);
bool miqt_exec_callback_QPointerEvent_isEndEvent(const QPointerEvent*, intptr_t);
void miqt_exec_callback_QPointerEvent_setAccepted(QPointerEvent*, intptr_t, bool);
QEnterEvent* miqt_exec_callback_QEnterEvent_clone(const QEnterEvent*, intptr_t);
bool miqt_exec_callback_QEnterEvent_isBeginEvent(const QEnterEvent*, intptr_t);
bool miqt_exec_callback_QEnterEvent_isUpdateEvent(const QEnterEvent*, intptr_t);
bool miqt_exec_callback_QEnterEvent_isEndEvent(const QEnterEvent*, intptr_t);
void miqt_exec_callback_QEnterEvent_setTimestamp(QEnterEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QEnterEvent_setAccepted(QEnterEvent*, intptr_t, bool);
QMouseEvent* miqt_exec_callback_QMouseEvent_clone(const QMouseEvent*, intptr_t);
bool miqt_exec_callback_QMouseEvent_isBeginEvent(const QMouseEvent*, intptr_t);
bool miqt_exec_callback_QMouseEvent_isUpdateEvent(const QMouseEvent*, intptr_t);
bool miqt_exec_callback_QMouseEvent_isEndEvent(const QMouseEvent*, intptr_t);
void miqt_exec_callback_QMouseEvent_setTimestamp(QMouseEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QMouseEvent_setAccepted(QMouseEvent*, intptr_t, bool);
QHoverEvent* miqt_exec_callback_QHoverEvent_clone(const QHoverEvent*, intptr_t);
bool miqt_exec_callback_QHoverEvent_isUpdateEvent(const QHoverEvent*, intptr_t);
bool miqt_exec_callback_QHoverEvent_isBeginEvent(const QHoverEvent*, intptr_t);
bool miqt_exec_callback_QHoverEvent_isEndEvent(const QHoverEvent*, intptr_t);
void miqt_exec_callback_QHoverEvent_setTimestamp(QHoverEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QHoverEvent_setAccepted(QHoverEvent*, intptr_t, bool);
QWheelEvent* miqt_exec_callback_QWheelEvent_clone(const QWheelEvent*, intptr_t);
bool miqt_exec_callback_QWheelEvent_isBeginEvent(const QWheelEvent*, intptr_t);
bool miqt_exec_callback_QWheelEvent_isUpdateEvent(const QWheelEvent*, intptr_t);
bool miqt_exec_callback_QWheelEvent_isEndEvent(const QWheelEvent*, intptr_t);
void miqt_exec_callback_QWheelEvent_setTimestamp(QWheelEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QWheelEvent_setAccepted(QWheelEvent*, intptr_t, bool);
QTabletEvent* miqt_exec_callback_QTabletEvent_clone(const QTabletEvent*, intptr_t);
bool miqt_exec_callback_QTabletEvent_isBeginEvent(const QTabletEvent*, intptr_t);
bool miqt_exec_callback_QTabletEvent_isUpdateEvent(const QTabletEvent*, intptr_t);
bool miqt_exec_callback_QTabletEvent_isEndEvent(const QTabletEvent*, intptr_t);
void miqt_exec_callback_QTabletEvent_setTimestamp(QTabletEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QTabletEvent_setAccepted(QTabletEvent*, intptr_t, bool);
QNativeGestureEvent* miqt_exec_callback_QNativeGestureEvent_clone(const QNativeGestureEvent*, intptr_t);
bool miqt_exec_callback_QNativeGestureEvent_isBeginEvent(const QNativeGestureEvent*, intptr_t);
bool miqt_exec_callback_QNativeGestureEvent_isUpdateEvent(const QNativeGestureEvent*, intptr_t);
bool miqt_exec_callback_QNativeGestureEvent_isEndEvent(const QNativeGestureEvent*, intptr_t);
void miqt_exec_callback_QNativeGestureEvent_setTimestamp(QNativeGestureEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QNativeGestureEvent_setAccepted(QNativeGestureEvent*, intptr_t, bool);
QKeyEvent* miqt_exec_callback_QKeyEvent_clone(const QKeyEvent*, intptr_t);
void miqt_exec_callback_QKeyEvent_setTimestamp(QKeyEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QKeyEvent_setAccepted(QKeyEvent*, intptr_t, bool);
QFocusEvent* miqt_exec_callback_QFocusEvent_clone(const QFocusEvent*, intptr_t);
void miqt_exec_callback_QFocusEvent_setAccepted(QFocusEvent*, intptr_t, bool);
QPaintEvent* miqt_exec_callback_QPaintEvent_clone(const QPaintEvent*, intptr_t);
void miqt_exec_callback_QPaintEvent_setAccepted(QPaintEvent*, intptr_t, bool);
QMoveEvent* miqt_exec_callback_QMoveEvent_clone(const QMoveEvent*, intptr_t);
void miqt_exec_callback_QMoveEvent_setAccepted(QMoveEvent*, intptr_t, bool);
QExposeEvent* miqt_exec_callback_QExposeEvent_clone(const QExposeEvent*, intptr_t);
void miqt_exec_callback_QExposeEvent_setAccepted(QExposeEvent*, intptr_t, bool);
QPlatformSurfaceEvent* miqt_exec_callback_QPlatformSurfaceEvent_clone(const QPlatformSurfaceEvent*, intptr_t);
void miqt_exec_callback_QPlatformSurfaceEvent_setAccepted(QPlatformSurfaceEvent*, intptr_t, bool);
QResizeEvent* miqt_exec_callback_QResizeEvent_clone(const QResizeEvent*, intptr_t);
void miqt_exec_callback_QResizeEvent_setAccepted(QResizeEvent*, intptr_t, bool);
QCloseEvent* miqt_exec_callback_QCloseEvent_clone(const QCloseEvent*, intptr_t);
void miqt_exec_callback_QCloseEvent_setAccepted(QCloseEvent*, intptr_t, bool);
QIconDragEvent* miqt_exec_callback_QIconDragEvent_clone(const QIconDragEvent*, intptr_t);
void miqt_exec_callback_QIconDragEvent_setAccepted(QIconDragEvent*, intptr_t, bool);
QShowEvent* miqt_exec_callback_QShowEvent_clone(const QShowEvent*, intptr_t);
void miqt_exec_callback_QShowEvent_setAccepted(QShowEvent*, intptr_t, bool);
QHideEvent* miqt_exec_callback_QHideEvent_clone(const QHideEvent*, intptr_t);
void miqt_exec_callback_QHideEvent_setAccepted(QHideEvent*, intptr_t, bool);
QContextMenuEvent* miqt_exec_callback_QContextMenuEvent_clone(const QContextMenuEvent*, intptr_t);
void miqt_exec_callback_QContextMenuEvent_setTimestamp(QContextMenuEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QContextMenuEvent_setAccepted(QContextMenuEvent*, intptr_t, bool);
QInputMethodEvent* miqt_exec_callback_QInputMethodEvent_clone(const QInputMethodEvent*, intptr_t);
void miqt_exec_callback_QInputMethodEvent_setAccepted(QInputMethodEvent*, intptr_t, bool);
QInputMethodQueryEvent* miqt_exec_callback_QInputMethodQueryEvent_clone(const QInputMethodQueryEvent*, intptr_t);
void miqt_exec_callback_QInputMethodQueryEvent_setAccepted(QInputMethodQueryEvent*, intptr_t, bool);
QDropEvent* miqt_exec_callback_QDropEvent_clone(const QDropEvent*, intptr_t);
void miqt_exec_callback_QDropEvent_setAccepted(QDropEvent*, intptr_t, bool);
QDragMoveEvent* miqt_exec_callback_QDragMoveEvent_clone(const QDragMoveEvent*, intptr_t);
void miqt_exec_callback_QDragMoveEvent_setAccepted(QDragMoveEvent*, intptr_t, bool);
QDragEnterEvent* miqt_exec_callback_QDragEnterEvent_clone(const QDragEnterEvent*, intptr_t);
void miqt_exec_callback_QDragEnterEvent_setAccepted(QDragEnterEvent*, intptr_t, bool);
QDragLeaveEvent* miqt_exec_callback_QDragLeaveEvent_clone(const QDragLeaveEvent*, intptr_t);
void miqt_exec_callback_QDragLeaveEvent_setAccepted(QDragLeaveEvent*, intptr_t, bool);
QHelpEvent* miqt_exec_callback_QHelpEvent_clone(const QHelpEvent*, intptr_t);
void miqt_exec_callback_QHelpEvent_setAccepted(QHelpEvent*, intptr_t, bool);
QStatusTipEvent* miqt_exec_callback_QStatusTipEvent_clone(const QStatusTipEvent*, intptr_t);
void miqt_exec_callback_QStatusTipEvent_setAccepted(QStatusTipEvent*, intptr_t, bool);
QWhatsThisClickedEvent* miqt_exec_callback_QWhatsThisClickedEvent_clone(const QWhatsThisClickedEvent*, intptr_t);
void miqt_exec_callback_QWhatsThisClickedEvent_setAccepted(QWhatsThisClickedEvent*, intptr_t, bool);
QActionEvent* miqt_exec_callback_QActionEvent_clone(const QActionEvent*, intptr_t);
void miqt_exec_callback_QActionEvent_setAccepted(QActionEvent*, intptr_t, bool);
QFileOpenEvent* miqt_exec_callback_QFileOpenEvent_clone(const QFileOpenEvent*, intptr_t);
void miqt_exec_callback_QFileOpenEvent_setAccepted(QFileOpenEvent*, intptr_t, bool);
QToolBarChangeEvent* miqt_exec_callback_QToolBarChangeEvent_clone(const QToolBarChangeEvent*, intptr_t);
void miqt_exec_callback_QToolBarChangeEvent_setAccepted(QToolBarChangeEvent*, intptr_t, bool);
QShortcutEvent* miqt_exec_callback_QShortcutEvent_clone(const QShortcutEvent*, intptr_t);
void miqt_exec_callback_QShortcutEvent_setAccepted(QShortcutEvent*, intptr_t, bool);
QWindowStateChangeEvent* miqt_exec_callback_QWindowStateChangeEvent_clone(const QWindowStateChangeEvent*, intptr_t);
void miqt_exec_callback_QWindowStateChangeEvent_setAccepted(QWindowStateChangeEvent*, intptr_t, bool);
QTouchEvent* miqt_exec_callback_QTouchEvent_clone(const QTouchEvent*, intptr_t);
bool miqt_exec_callback_QTouchEvent_isBeginEvent(const QTouchEvent*, intptr_t);
bool miqt_exec_callback_QTouchEvent_isUpdateEvent(const QTouchEvent*, intptr_t);
bool miqt_exec_callback_QTouchEvent_isEndEvent(const QTouchEvent*, intptr_t);
void miqt_exec_callback_QTouchEvent_setTimestamp(QTouchEvent*, intptr_t, unsigned long long);
void miqt_exec_callback_QTouchEvent_setAccepted(QTouchEvent*, intptr_t, bool);
QScrollPrepareEvent* miqt_exec_callback_QScrollPrepareEvent_clone(const QScrollPrepareEvent*, intptr_t);
void miqt_exec_callback_QScrollPrepareEvent_setAccepted(QScrollPrepareEvent*, intptr_t, bool);
QScrollEvent* miqt_exec_callback_QScrollEvent_clone(const QScrollEvent*, intptr_t);
void miqt_exec_callback_QScrollEvent_setAccepted(QScrollEvent*, intptr_t, bool);
QScreenOrientationChangeEvent* miqt_exec_callback_QScreenOrientationChangeEvent_clone(const QScreenOrientationChangeEvent*, intptr_t);
void miqt_exec_callback_QScreenOrientationChangeEvent_setAccepted(QScreenOrientationChangeEvent*, intptr_t, bool);
QApplicationStateChangeEvent* miqt_exec_callback_QApplicationStateChangeEvent_clone(const QApplicationStateChangeEvent*, intptr_t);
void miqt_exec_callback_QApplicationStateChangeEvent_setAccepted(QApplicationStateChangeEvent*, intptr_t, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQInputEvent final : public QInputEvent {
public:

	VirtualQInputEvent(QEvent::Type type, const QInputDevice* m_dev): QInputEvent(type, m_dev) {};
	VirtualQInputEvent(QEvent::Type type, const QInputDevice* m_dev, Qt::KeyboardModifiers modifiers): QInputEvent(type, m_dev, modifiers) {};

	virtual ~VirtualQInputEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QInputEvent* clone() const override {
		if (handle__clone == 0) {
			return QInputEvent::clone();
		}
		

		QInputEvent* callback_return_value = miqt_exec_callback_QInputEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QInputEvent* QInputEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QInputEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QInputEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QInputEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QInputEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QInputEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QInputEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QInputEvent* QInputEvent_new(int type, QInputDevice* m_dev) {
	return new VirtualQInputEvent(static_cast<QEvent::Type>(type), m_dev);
}

QInputEvent* QInputEvent_new2(int type, QInputDevice* m_dev, int modifiers) {
	return new VirtualQInputEvent(static_cast<QEvent::Type>(type), m_dev, static_cast<Qt::KeyboardModifiers>(modifiers));
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

bool QInputEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQInputEvent* self_cast = dynamic_cast<VirtualQInputEvent*>( (QInputEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QInputEvent* QInputEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQInputEvent*)(self) )->QInputEvent::clone();

}

bool QInputEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQInputEvent* self_cast = dynamic_cast<VirtualQInputEvent*>( (QInputEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QInputEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQInputEvent*)(self) )->QInputEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QInputEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQInputEvent* self_cast = dynamic_cast<VirtualQInputEvent*>( (QInputEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QInputEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQInputEvent*)(self) )->QInputEvent::setAccepted(accepted);

}

void QInputEvent_delete(QInputEvent* self) {
	delete self;
}

class VirtualQPointerEvent final : public QPointerEvent {
public:

	VirtualQPointerEvent(QEvent::Type type, const QPointingDevice* dev): QPointerEvent(type, dev) {};
	VirtualQPointerEvent(QEvent::Type type, const QPointingDevice* dev, Qt::KeyboardModifiers modifiers): QPointerEvent(type, dev, modifiers) {};
	VirtualQPointerEvent(QEvent::Type type, const QPointingDevice* dev, Qt::KeyboardModifiers modifiers, const QList<QEventPoint>& points): QPointerEvent(type, dev, modifiers, points) {};

	virtual ~VirtualQPointerEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QPointerEvent* clone() const override {
		if (handle__clone == 0) {
			return QPointerEvent::clone();
		}
		

		QPointerEvent* callback_return_value = miqt_exec_callback_QPointerEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QPointerEvent* QPointerEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QPointerEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QPointerEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QPointerEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QPointerEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QPointerEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QPointerEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QPointerEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QPointerEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QPointerEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QPointerEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QPointerEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QPointerEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QPointerEvent* QPointerEvent_new(int type, QPointingDevice* dev) {
	return new VirtualQPointerEvent(static_cast<QEvent::Type>(type), dev);
}

QPointerEvent* QPointerEvent_new2(int type, QPointingDevice* dev, int modifiers) {
	return new VirtualQPointerEvent(static_cast<QEvent::Type>(type), dev, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QPointerEvent* QPointerEvent_new3(int type, QPointingDevice* dev, int modifiers, struct miqt_array /* of QEventPoint* */  points) {
	QList<QEventPoint> points_QList;
	points_QList.reserve(points.len);
	QEventPoint** points_arr = static_cast<QEventPoint**>(points.data);
	for(size_t i = 0; i < points.len; ++i) {
		points_QList.push_back(*(points_arr[i]));
	}
	return new VirtualQPointerEvent(static_cast<QEvent::Type>(type), dev, static_cast<Qt::KeyboardModifiers>(modifiers), points_QList);
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

bool QPointerEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQPointerEvent* self_cast = dynamic_cast<VirtualQPointerEvent*>( (QPointerEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QPointerEvent* QPointerEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::clone();

}

bool QPointerEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQPointerEvent* self_cast = dynamic_cast<VirtualQPointerEvent*>( (QPointerEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QPointerEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQPointerEvent*)(self) )->QPointerEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QPointerEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQPointerEvent* self_cast = dynamic_cast<VirtualQPointerEvent*>( (QPointerEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QPointerEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::isBeginEvent();

}

bool QPointerEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQPointerEvent* self_cast = dynamic_cast<VirtualQPointerEvent*>( (QPointerEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QPointerEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::isUpdateEvent();

}

bool QPointerEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQPointerEvent* self_cast = dynamic_cast<VirtualQPointerEvent*>( (QPointerEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QPointerEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQPointerEvent*)(self) )->QPointerEvent::isEndEvent();

}

bool QPointerEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQPointerEvent* self_cast = dynamic_cast<VirtualQPointerEvent*>( (QPointerEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
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
public:

	VirtualQEnterEvent(const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos): QEnterEvent(localPos, scenePos, globalPos) {};
	VirtualQEnterEvent(const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, const QPointingDevice* device): QEnterEvent(localPos, scenePos, globalPos, device) {};

	virtual ~VirtualQEnterEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QEnterEvent* clone() const override {
		if (handle__clone == 0) {
			return QEnterEvent::clone();
		}
		

		QEnterEvent* callback_return_value = miqt_exec_callback_QEnterEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QEnterEvent* QEnterEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QEnterEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QEnterEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QEnterEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QEnterEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QEnterEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QEnterEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QEnterEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QEnterEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QEnterEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QEnterEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QEnterEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QEnterEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QEnterEvent* QEnterEvent_new(QPointF* localPos, QPointF* scenePos, QPointF* globalPos) {
	return new VirtualQEnterEvent(*localPos, *scenePos, *globalPos);
}

QEnterEvent* QEnterEvent_new2(QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device) {
	return new VirtualQEnterEvent(*localPos, *scenePos, *globalPos, device);
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

bool QEnterEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQEnterEvent* self_cast = dynamic_cast<VirtualQEnterEvent*>( (QEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QEnterEvent* QEnterEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::clone();

}

bool QEnterEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQEnterEvent* self_cast = dynamic_cast<VirtualQEnterEvent*>( (QEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QEnterEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::isBeginEvent();

}

bool QEnterEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQEnterEvent* self_cast = dynamic_cast<VirtualQEnterEvent*>( (QEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QEnterEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::isUpdateEvent();

}

bool QEnterEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQEnterEvent* self_cast = dynamic_cast<VirtualQEnterEvent*>( (QEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QEnterEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQEnterEvent*)(self) )->QEnterEvent::isEndEvent();

}

bool QEnterEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQEnterEvent* self_cast = dynamic_cast<VirtualQEnterEvent*>( (QEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QEnterEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQEnterEvent*)(self) )->QEnterEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QEnterEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQEnterEvent* self_cast = dynamic_cast<VirtualQEnterEvent*>( (QEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QEnterEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQEnterEvent*)(self) )->QEnterEvent::setAccepted(accepted);

}

void QEnterEvent_delete(QEnterEvent* self) {
	delete self;
}

class VirtualQMouseEvent final : public QMouseEvent {
public:

	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, button, buttons, modifiers) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, globalPos, button, buttons, modifiers) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, source) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, button, buttons, modifiers, device) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, globalPos, button, buttons, modifiers, device) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, device) {};
	VirtualQMouseEvent(QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source, const QPointingDevice* device): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, source, device) {};

	virtual ~VirtualQMouseEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QMouseEvent* clone() const override {
		if (handle__clone == 0) {
			return QMouseEvent::clone();
		}
		

		QMouseEvent* callback_return_value = miqt_exec_callback_QMouseEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QMouseEvent* QMouseEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QMouseEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QMouseEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QMouseEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QMouseEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QMouseEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QMouseEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QMouseEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QMouseEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QMouseEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QMouseEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QMouseEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QMouseEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QMouseEvent* QMouseEvent_new(int type, QPointF* localPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QMouseEvent* QMouseEvent_new2(int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QMouseEvent* QMouseEvent_new3(int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QMouseEvent* QMouseEvent_new4(int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::MouseEventSource>(source));
}

QMouseEvent* QMouseEvent_new5(int type, QPointF* localPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QMouseEvent* QMouseEvent_new6(int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QMouseEvent* QMouseEvent_new7(int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QMouseEvent* QMouseEvent_new8(int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source, QPointingDevice* device) {
	return new VirtualQMouseEvent(static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::MouseEventSource>(source), device);
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

bool QMouseEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQMouseEvent* self_cast = dynamic_cast<VirtualQMouseEvent*>( (QMouseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QMouseEvent* QMouseEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::clone();

}

bool QMouseEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQMouseEvent* self_cast = dynamic_cast<VirtualQMouseEvent*>( (QMouseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QMouseEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::isBeginEvent();

}

bool QMouseEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQMouseEvent* self_cast = dynamic_cast<VirtualQMouseEvent*>( (QMouseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QMouseEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::isUpdateEvent();

}

bool QMouseEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQMouseEvent* self_cast = dynamic_cast<VirtualQMouseEvent*>( (QMouseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QMouseEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQMouseEvent*)(self) )->QMouseEvent::isEndEvent();

}

bool QMouseEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQMouseEvent* self_cast = dynamic_cast<VirtualQMouseEvent*>( (QMouseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QMouseEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQMouseEvent*)(self) )->QMouseEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QMouseEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQMouseEvent* self_cast = dynamic_cast<VirtualQMouseEvent*>( (QMouseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QMouseEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQMouseEvent*)(self) )->QMouseEvent::setAccepted(accepted);

}

void QMouseEvent_delete(QMouseEvent* self) {
	delete self;
}

class VirtualQHoverEvent final : public QHoverEvent {
public:

	VirtualQHoverEvent(QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos): QHoverEvent(type, scenePos, globalPos, oldPos) {};
	VirtualQHoverEvent(QEvent::Type type, const QPointF& pos, const QPointF& oldPos): QHoverEvent(type, pos, oldPos) {};
	VirtualQHoverEvent(QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers): QHoverEvent(type, scenePos, globalPos, oldPos, modifiers) {};
	VirtualQHoverEvent(QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QHoverEvent(type, scenePos, globalPos, oldPos, modifiers, device) {};
	VirtualQHoverEvent(QEvent::Type type, const QPointF& pos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers): QHoverEvent(type, pos, oldPos, modifiers) {};
	VirtualQHoverEvent(QEvent::Type type, const QPointF& pos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QHoverEvent(type, pos, oldPos, modifiers, device) {};

	virtual ~VirtualQHoverEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QHoverEvent* clone() const override {
		if (handle__clone == 0) {
			return QHoverEvent::clone();
		}
		

		QHoverEvent* callback_return_value = miqt_exec_callback_QHoverEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QHoverEvent* QHoverEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QHoverEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QHoverEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QHoverEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QHoverEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QHoverEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QHoverEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QHoverEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QHoverEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QHoverEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QHoverEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QHoverEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QHoverEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QHoverEvent* QHoverEvent_new(int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos) {
	return new VirtualQHoverEvent(static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos);
}

QHoverEvent* QHoverEvent_new2(int type, QPointF* pos, QPointF* oldPos) {
	return new VirtualQHoverEvent(static_cast<QEvent::Type>(type), *pos, *oldPos);
}

QHoverEvent* QHoverEvent_new3(int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers) {
	return new VirtualQHoverEvent(static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QHoverEvent* QHoverEvent_new4(int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers, QPointingDevice* device) {
	return new VirtualQHoverEvent(static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

QHoverEvent* QHoverEvent_new5(int type, QPointF* pos, QPointF* oldPos, int modifiers) {
	return new VirtualQHoverEvent(static_cast<QEvent::Type>(type), *pos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QHoverEvent* QHoverEvent_new6(int type, QPointF* pos, QPointF* oldPos, int modifiers, QPointingDevice* device) {
	return new VirtualQHoverEvent(static_cast<QEvent::Type>(type), *pos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers), device);
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

bool QHoverEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQHoverEvent* self_cast = dynamic_cast<VirtualQHoverEvent*>( (QHoverEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QHoverEvent* QHoverEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::clone();

}

bool QHoverEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQHoverEvent* self_cast = dynamic_cast<VirtualQHoverEvent*>( (QHoverEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QHoverEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::isUpdateEvent();

}

bool QHoverEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQHoverEvent* self_cast = dynamic_cast<VirtualQHoverEvent*>( (QHoverEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QHoverEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::isBeginEvent();

}

bool QHoverEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQHoverEvent* self_cast = dynamic_cast<VirtualQHoverEvent*>( (QHoverEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QHoverEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQHoverEvent*)(self) )->QHoverEvent::isEndEvent();

}

bool QHoverEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQHoverEvent* self_cast = dynamic_cast<VirtualQHoverEvent*>( (QHoverEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QHoverEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQHoverEvent*)(self) )->QHoverEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QHoverEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQHoverEvent* self_cast = dynamic_cast<VirtualQHoverEvent*>( (QHoverEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QHoverEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQHoverEvent*)(self) )->QHoverEvent::setAccepted(accepted);

}

void QHoverEvent_delete(QHoverEvent* self) {
	delete self;
}

class VirtualQWheelEvent final : public QWheelEvent {
public:

	VirtualQWheelEvent(const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted) {};
	VirtualQWheelEvent(const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted, Qt::MouseEventSource source): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted, source) {};
	VirtualQWheelEvent(const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted, Qt::MouseEventSource source, const QPointingDevice* device): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted, source, device) {};

	virtual ~VirtualQWheelEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QWheelEvent* clone() const override {
		if (handle__clone == 0) {
			return QWheelEvent::clone();
		}
		

		QWheelEvent* callback_return_value = miqt_exec_callback_QWheelEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QWheelEvent* QWheelEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QWheelEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QWheelEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QWheelEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QWheelEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QWheelEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QWheelEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QWheelEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QWheelEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QWheelEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QWheelEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QWheelEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QWheelEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QWheelEvent* QWheelEvent_new(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted) {
	return new VirtualQWheelEvent(*pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted);
}

QWheelEvent* QWheelEvent_new2(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source) {
	return new VirtualQWheelEvent(*pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted, static_cast<Qt::MouseEventSource>(source));
}

QWheelEvent* QWheelEvent_new3(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source, QPointingDevice* device) {
	return new VirtualQWheelEvent(*pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted, static_cast<Qt::MouseEventSource>(source), device);
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

bool QWheelEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQWheelEvent* self_cast = dynamic_cast<VirtualQWheelEvent*>( (QWheelEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QWheelEvent* QWheelEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::clone();

}

bool QWheelEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQWheelEvent* self_cast = dynamic_cast<VirtualQWheelEvent*>( (QWheelEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QWheelEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::isBeginEvent();

}

bool QWheelEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQWheelEvent* self_cast = dynamic_cast<VirtualQWheelEvent*>( (QWheelEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QWheelEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::isUpdateEvent();

}

bool QWheelEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQWheelEvent* self_cast = dynamic_cast<VirtualQWheelEvent*>( (QWheelEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QWheelEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQWheelEvent*)(self) )->QWheelEvent::isEndEvent();

}

bool QWheelEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQWheelEvent* self_cast = dynamic_cast<VirtualQWheelEvent*>( (QWheelEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QWheelEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQWheelEvent*)(self) )->QWheelEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QWheelEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQWheelEvent* self_cast = dynamic_cast<VirtualQWheelEvent*>( (QWheelEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QWheelEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQWheelEvent*)(self) )->QWheelEvent::setAccepted(accepted);

}

const QMetaObject* QWheelEvent_staticMetaObject() { return &QWheelEvent::staticMetaObject; }
void QWheelEvent_delete(QWheelEvent* self) {
	delete self;
}

class VirtualQTabletEvent final : public QTabletEvent {
public:

	VirtualQTabletEvent(QEvent::Type t, const QPointingDevice* device, const QPointF& pos, const QPointF& globalPos, qreal pressure, float xTilt, float yTilt, float tangentialPressure, qreal rotation, float z, Qt::KeyboardModifiers keyState, Qt::MouseButton button, Qt::MouseButtons buttons): QTabletEvent(t, device, pos, globalPos, pressure, xTilt, yTilt, tangentialPressure, rotation, z, keyState, button, buttons) {};

	virtual ~VirtualQTabletEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QTabletEvent* clone() const override {
		if (handle__clone == 0) {
			return QTabletEvent::clone();
		}
		

		QTabletEvent* callback_return_value = miqt_exec_callback_QTabletEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QTabletEvent* QTabletEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QTabletEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QTabletEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QTabletEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QTabletEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QTabletEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QTabletEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QTabletEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QTabletEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QTabletEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QTabletEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QTabletEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QTabletEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QTabletEvent* QTabletEvent_new(int t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int keyState, int button, int buttons) {
	return new VirtualQTabletEvent(static_cast<QEvent::Type>(t), device, *pos, *globalPos, static_cast<qreal>(pressure), static_cast<float>(xTilt), static_cast<float>(yTilt), static_cast<float>(tangentialPressure), static_cast<qreal>(rotation), static_cast<float>(z), static_cast<Qt::KeyboardModifiers>(keyState), static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons));
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

bool QTabletEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQTabletEvent* self_cast = dynamic_cast<VirtualQTabletEvent*>( (QTabletEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QTabletEvent* QTabletEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::clone();

}

bool QTabletEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQTabletEvent* self_cast = dynamic_cast<VirtualQTabletEvent*>( (QTabletEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QTabletEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::isBeginEvent();

}

bool QTabletEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQTabletEvent* self_cast = dynamic_cast<VirtualQTabletEvent*>( (QTabletEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QTabletEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::isUpdateEvent();

}

bool QTabletEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQTabletEvent* self_cast = dynamic_cast<VirtualQTabletEvent*>( (QTabletEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QTabletEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQTabletEvent*)(self) )->QTabletEvent::isEndEvent();

}

bool QTabletEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQTabletEvent* self_cast = dynamic_cast<VirtualQTabletEvent*>( (QTabletEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QTabletEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQTabletEvent*)(self) )->QTabletEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QTabletEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQTabletEvent* self_cast = dynamic_cast<VirtualQTabletEvent*>( (QTabletEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QTabletEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQTabletEvent*)(self) )->QTabletEvent::setAccepted(accepted);

}

void QTabletEvent_delete(QTabletEvent* self) {
	delete self;
}

class VirtualQNativeGestureEvent final : public QNativeGestureEvent {
public:

	VirtualQNativeGestureEvent(Qt::NativeGestureType type, const QPointingDevice* dev, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, quint64 sequenceId, quint64 intArgument): QNativeGestureEvent(type, dev, localPos, scenePos, globalPos, value, sequenceId, intArgument) {};
	VirtualQNativeGestureEvent(Qt::NativeGestureType type, const QPointingDevice* dev, int fingerCount, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, const QPointF& delta): QNativeGestureEvent(type, dev, fingerCount, localPos, scenePos, globalPos, value, delta) {};
	VirtualQNativeGestureEvent(Qt::NativeGestureType type, const QPointingDevice* dev, int fingerCount, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, const QPointF& delta, quint64 sequenceId): QNativeGestureEvent(type, dev, fingerCount, localPos, scenePos, globalPos, value, delta, sequenceId) {};

	virtual ~VirtualQNativeGestureEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QNativeGestureEvent* clone() const override {
		if (handle__clone == 0) {
			return QNativeGestureEvent::clone();
		}
		

		QNativeGestureEvent* callback_return_value = miqt_exec_callback_QNativeGestureEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QNativeGestureEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QNativeGestureEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QNativeGestureEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QNativeGestureEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QNativeGestureEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QNativeGestureEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QNativeGestureEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QNativeGestureEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QNativeGestureEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QNativeGestureEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QNativeGestureEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QNativeGestureEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QNativeGestureEvent* QNativeGestureEvent_new(int type, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, unsigned long long sequenceId, unsigned long long intArgument) {
	return new VirtualQNativeGestureEvent(static_cast<Qt::NativeGestureType>(type), dev, *localPos, *scenePos, *globalPos, static_cast<qreal>(value), static_cast<quint64>(sequenceId), static_cast<quint64>(intArgument));
}

QNativeGestureEvent* QNativeGestureEvent_new2(int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta) {
	return new VirtualQNativeGestureEvent(static_cast<Qt::NativeGestureType>(type), dev, static_cast<int>(fingerCount), *localPos, *scenePos, *globalPos, static_cast<qreal>(value), *delta);
}

QNativeGestureEvent* QNativeGestureEvent_new3(int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, unsigned long long sequenceId) {
	return new VirtualQNativeGestureEvent(static_cast<Qt::NativeGestureType>(type), dev, static_cast<int>(fingerCount), *localPos, *scenePos, *globalPos, static_cast<qreal>(value), *delta, static_cast<quint64>(sequenceId));
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

bool QNativeGestureEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQNativeGestureEvent* self_cast = dynamic_cast<VirtualQNativeGestureEvent*>( (QNativeGestureEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::clone();

}

bool QNativeGestureEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQNativeGestureEvent* self_cast = dynamic_cast<VirtualQNativeGestureEvent*>( (QNativeGestureEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QNativeGestureEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::isBeginEvent();

}

bool QNativeGestureEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQNativeGestureEvent* self_cast = dynamic_cast<VirtualQNativeGestureEvent*>( (QNativeGestureEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QNativeGestureEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::isUpdateEvent();

}

bool QNativeGestureEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQNativeGestureEvent* self_cast = dynamic_cast<VirtualQNativeGestureEvent*>( (QNativeGestureEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QNativeGestureEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::isEndEvent();

}

bool QNativeGestureEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQNativeGestureEvent* self_cast = dynamic_cast<VirtualQNativeGestureEvent*>( (QNativeGestureEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QNativeGestureEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QNativeGestureEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQNativeGestureEvent* self_cast = dynamic_cast<VirtualQNativeGestureEvent*>( (QNativeGestureEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QNativeGestureEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQNativeGestureEvent*)(self) )->QNativeGestureEvent::setAccepted(accepted);

}

void QNativeGestureEvent_delete(QNativeGestureEvent* self) {
	delete self;
}

class VirtualQKeyEvent final : public QKeyEvent {
public:

	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers): QKeyEvent(type, key, modifiers) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text): QKeyEvent(type, key, modifiers, text) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text, bool autorep): QKeyEvent(type, key, modifiers, text, autorep) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text, bool autorep, quint16 count): QKeyEvent(type, key, modifiers, text, autorep, count) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep, quint16 count): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep, count) {};
	VirtualQKeyEvent(QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep, quint16 count, const QInputDevice* device): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep, count, device) {};

	virtual ~VirtualQKeyEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QKeyEvent* clone() const override {
		if (handle__clone == 0) {
			return QKeyEvent::clone();
		}
		

		QKeyEvent* callback_return_value = miqt_exec_callback_QKeyEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QKeyEvent* QKeyEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QKeyEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QKeyEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QKeyEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QKeyEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QKeyEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QKeyEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QKeyEvent* QKeyEvent_new(int type, int key, int modifiers) {
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QKeyEvent* QKeyEvent_new2(int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers) {
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers));
}

QKeyEvent* QKeyEvent_new3(int type, int key, int modifiers, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString);
}

QKeyEvent* QKeyEvent_new4(int type, int key, int modifiers, struct miqt_string text, bool autorep) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString, autorep);
}

QKeyEvent* QKeyEvent_new5(int type, int key, int modifiers, struct miqt_string text, bool autorep, uint16_t count) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString, autorep, static_cast<quint16>(count));
}

QKeyEvent* QKeyEvent_new6(int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString);
}

QKeyEvent* QKeyEvent_new7(int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep);
}

QKeyEvent* QKeyEvent_new8(int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep, static_cast<quint16>(count));
}

QKeyEvent* QKeyEvent_new9(int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count, QInputDevice* device) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep, static_cast<quint16>(count), device);
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

bool QKeyEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQKeyEvent* self_cast = dynamic_cast<VirtualQKeyEvent*>( (QKeyEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QKeyEvent* QKeyEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQKeyEvent*)(self) )->QKeyEvent::clone();

}

bool QKeyEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQKeyEvent* self_cast = dynamic_cast<VirtualQKeyEvent*>( (QKeyEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QKeyEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQKeyEvent*)(self) )->QKeyEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QKeyEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQKeyEvent* self_cast = dynamic_cast<VirtualQKeyEvent*>( (QKeyEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QKeyEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQKeyEvent*)(self) )->QKeyEvent::setAccepted(accepted);

}

void QKeyEvent_delete(QKeyEvent* self) {
	delete self;
}

class VirtualQFocusEvent final : public QFocusEvent {
public:

	VirtualQFocusEvent(QEvent::Type type): QFocusEvent(type) {};
	VirtualQFocusEvent(QEvent::Type type, Qt::FocusReason reason): QFocusEvent(type, reason) {};

	virtual ~VirtualQFocusEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QFocusEvent* clone() const override {
		if (handle__clone == 0) {
			return QFocusEvent::clone();
		}
		

		QFocusEvent* callback_return_value = miqt_exec_callback_QFocusEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QFocusEvent* QFocusEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QFocusEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QFocusEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QFocusEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QFocusEvent* QFocusEvent_new(int type) {
	return new VirtualQFocusEvent(static_cast<QEvent::Type>(type));
}

QFocusEvent* QFocusEvent_new2(int type, int reason) {
	return new VirtualQFocusEvent(static_cast<QEvent::Type>(type), static_cast<Qt::FocusReason>(reason));
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

bool QFocusEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQFocusEvent* self_cast = dynamic_cast<VirtualQFocusEvent*>( (QFocusEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QFocusEvent* QFocusEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQFocusEvent*)(self) )->QFocusEvent::clone();

}

bool QFocusEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQFocusEvent* self_cast = dynamic_cast<VirtualQFocusEvent*>( (QFocusEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QFocusEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQFocusEvent*)(self) )->QFocusEvent::setAccepted(accepted);

}

void QFocusEvent_delete(QFocusEvent* self) {
	delete self;
}

class VirtualQPaintEvent final : public QPaintEvent {
public:

	VirtualQPaintEvent(const QRegion& paintRegion): QPaintEvent(paintRegion) {};
	VirtualQPaintEvent(const QRect& paintRect): QPaintEvent(paintRect) {};

	virtual ~VirtualQPaintEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QPaintEvent* clone() const override {
		if (handle__clone == 0) {
			return QPaintEvent::clone();
		}
		

		QPaintEvent* callback_return_value = miqt_exec_callback_QPaintEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QPaintEvent* QPaintEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QPaintEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QPaintEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QPaintEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QPaintEvent* QPaintEvent_new(QRegion* paintRegion) {
	return new VirtualQPaintEvent(*paintRegion);
}

QPaintEvent* QPaintEvent_new2(QRect* paintRect) {
	return new VirtualQPaintEvent(*paintRect);
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

bool QPaintEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQPaintEvent* self_cast = dynamic_cast<VirtualQPaintEvent*>( (QPaintEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QPaintEvent* QPaintEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQPaintEvent*)(self) )->QPaintEvent::clone();

}

bool QPaintEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQPaintEvent* self_cast = dynamic_cast<VirtualQPaintEvent*>( (QPaintEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QPaintEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQPaintEvent*)(self) )->QPaintEvent::setAccepted(accepted);

}

void QPaintEvent_delete(QPaintEvent* self) {
	delete self;
}

class VirtualQMoveEvent final : public QMoveEvent {
public:

	VirtualQMoveEvent(const QPoint& pos, const QPoint& oldPos): QMoveEvent(pos, oldPos) {};

	virtual ~VirtualQMoveEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QMoveEvent* clone() const override {
		if (handle__clone == 0) {
			return QMoveEvent::clone();
		}
		

		QMoveEvent* callback_return_value = miqt_exec_callback_QMoveEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QMoveEvent* QMoveEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QMoveEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QMoveEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QMoveEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QMoveEvent* QMoveEvent_new(QPoint* pos, QPoint* oldPos) {
	return new VirtualQMoveEvent(*pos, *oldPos);
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

bool QMoveEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQMoveEvent* self_cast = dynamic_cast<VirtualQMoveEvent*>( (QMoveEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QMoveEvent* QMoveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQMoveEvent*)(self) )->QMoveEvent::clone();

}

bool QMoveEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQMoveEvent* self_cast = dynamic_cast<VirtualQMoveEvent*>( (QMoveEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QMoveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQMoveEvent*)(self) )->QMoveEvent::setAccepted(accepted);

}

void QMoveEvent_delete(QMoveEvent* self) {
	delete self;
}

class VirtualQExposeEvent final : public QExposeEvent {
public:

	VirtualQExposeEvent(const QRegion& m_region): QExposeEvent(m_region) {};

	virtual ~VirtualQExposeEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QExposeEvent* clone() const override {
		if (handle__clone == 0) {
			return QExposeEvent::clone();
		}
		

		QExposeEvent* callback_return_value = miqt_exec_callback_QExposeEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QExposeEvent* QExposeEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QExposeEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QExposeEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QExposeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QExposeEvent* QExposeEvent_new(QRegion* m_region) {
	return new VirtualQExposeEvent(*m_region);
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

bool QExposeEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQExposeEvent* self_cast = dynamic_cast<VirtualQExposeEvent*>( (QExposeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QExposeEvent* QExposeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQExposeEvent*)(self) )->QExposeEvent::clone();

}

bool QExposeEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQExposeEvent* self_cast = dynamic_cast<VirtualQExposeEvent*>( (QExposeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QExposeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQExposeEvent*)(self) )->QExposeEvent::setAccepted(accepted);

}

void QExposeEvent_delete(QExposeEvent* self) {
	delete self;
}

class VirtualQPlatformSurfaceEvent final : public QPlatformSurfaceEvent {
public:

	VirtualQPlatformSurfaceEvent(QPlatformSurfaceEvent::SurfaceEventType surfaceEventType): QPlatformSurfaceEvent(surfaceEventType) {};

	virtual ~VirtualQPlatformSurfaceEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QPlatformSurfaceEvent* clone() const override {
		if (handle__clone == 0) {
			return QPlatformSurfaceEvent::clone();
		}
		

		QPlatformSurfaceEvent* callback_return_value = miqt_exec_callback_QPlatformSurfaceEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QPlatformSurfaceEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QPlatformSurfaceEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QPlatformSurfaceEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QPlatformSurfaceEvent* QPlatformSurfaceEvent_new(int surfaceEventType) {
	return new VirtualQPlatformSurfaceEvent(static_cast<QPlatformSurfaceEvent::SurfaceEventType>(surfaceEventType));
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

bool QPlatformSurfaceEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQPlatformSurfaceEvent* self_cast = dynamic_cast<VirtualQPlatformSurfaceEvent*>( (QPlatformSurfaceEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQPlatformSurfaceEvent*)(self) )->QPlatformSurfaceEvent::clone();

}

bool QPlatformSurfaceEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQPlatformSurfaceEvent* self_cast = dynamic_cast<VirtualQPlatformSurfaceEvent*>( (QPlatformSurfaceEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QPlatformSurfaceEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQPlatformSurfaceEvent*)(self) )->QPlatformSurfaceEvent::setAccepted(accepted);

}

void QPlatformSurfaceEvent_delete(QPlatformSurfaceEvent* self) {
	delete self;
}

class VirtualQResizeEvent final : public QResizeEvent {
public:

	VirtualQResizeEvent(const QSize& size, const QSize& oldSize): QResizeEvent(size, oldSize) {};

	virtual ~VirtualQResizeEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QResizeEvent* clone() const override {
		if (handle__clone == 0) {
			return QResizeEvent::clone();
		}
		

		QResizeEvent* callback_return_value = miqt_exec_callback_QResizeEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QResizeEvent* QResizeEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QResizeEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QResizeEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QResizeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QResizeEvent* QResizeEvent_new(QSize* size, QSize* oldSize) {
	return new VirtualQResizeEvent(*size, *oldSize);
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

bool QResizeEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQResizeEvent* self_cast = dynamic_cast<VirtualQResizeEvent*>( (QResizeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QResizeEvent* QResizeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQResizeEvent*)(self) )->QResizeEvent::clone();

}

bool QResizeEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQResizeEvent* self_cast = dynamic_cast<VirtualQResizeEvent*>( (QResizeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QResizeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQResizeEvent*)(self) )->QResizeEvent::setAccepted(accepted);

}

void QResizeEvent_delete(QResizeEvent* self) {
	delete self;
}

class VirtualQCloseEvent final : public QCloseEvent {
public:

	VirtualQCloseEvent(): QCloseEvent() {};

	virtual ~VirtualQCloseEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QCloseEvent* clone() const override {
		if (handle__clone == 0) {
			return QCloseEvent::clone();
		}
		

		QCloseEvent* callback_return_value = miqt_exec_callback_QCloseEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QCloseEvent* QCloseEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QCloseEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QCloseEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QCloseEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QCloseEvent* QCloseEvent_new() {
	return new VirtualQCloseEvent();
}

void QCloseEvent_virtbase(QCloseEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QCloseEvent* QCloseEvent_clone(const QCloseEvent* self) {
	return self->clone();
}

bool QCloseEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQCloseEvent* self_cast = dynamic_cast<VirtualQCloseEvent*>( (QCloseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QCloseEvent* QCloseEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQCloseEvent*)(self) )->QCloseEvent::clone();

}

bool QCloseEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQCloseEvent* self_cast = dynamic_cast<VirtualQCloseEvent*>( (QCloseEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QCloseEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQCloseEvent*)(self) )->QCloseEvent::setAccepted(accepted);

}

void QCloseEvent_delete(QCloseEvent* self) {
	delete self;
}

class VirtualQIconDragEvent final : public QIconDragEvent {
public:

	VirtualQIconDragEvent(): QIconDragEvent() {};

	virtual ~VirtualQIconDragEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QIconDragEvent* clone() const override {
		if (handle__clone == 0) {
			return QIconDragEvent::clone();
		}
		

		QIconDragEvent* callback_return_value = miqt_exec_callback_QIconDragEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QIconDragEvent* QIconDragEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QIconDragEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QIconDragEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QIconDragEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QIconDragEvent* QIconDragEvent_new() {
	return new VirtualQIconDragEvent();
}

void QIconDragEvent_virtbase(QIconDragEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QIconDragEvent* QIconDragEvent_clone(const QIconDragEvent* self) {
	return self->clone();
}

bool QIconDragEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQIconDragEvent* self_cast = dynamic_cast<VirtualQIconDragEvent*>( (QIconDragEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QIconDragEvent* QIconDragEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQIconDragEvent*)(self) )->QIconDragEvent::clone();

}

bool QIconDragEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQIconDragEvent* self_cast = dynamic_cast<VirtualQIconDragEvent*>( (QIconDragEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QIconDragEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQIconDragEvent*)(self) )->QIconDragEvent::setAccepted(accepted);

}

void QIconDragEvent_delete(QIconDragEvent* self) {
	delete self;
}

class VirtualQShowEvent final : public QShowEvent {
public:

	VirtualQShowEvent(): QShowEvent() {};

	virtual ~VirtualQShowEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QShowEvent* clone() const override {
		if (handle__clone == 0) {
			return QShowEvent::clone();
		}
		

		QShowEvent* callback_return_value = miqt_exec_callback_QShowEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QShowEvent* QShowEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QShowEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QShowEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QShowEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QShowEvent* QShowEvent_new() {
	return new VirtualQShowEvent();
}

void QShowEvent_virtbase(QShowEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QShowEvent* QShowEvent_clone(const QShowEvent* self) {
	return self->clone();
}

bool QShowEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQShowEvent* self_cast = dynamic_cast<VirtualQShowEvent*>( (QShowEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QShowEvent* QShowEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQShowEvent*)(self) )->QShowEvent::clone();

}

bool QShowEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQShowEvent* self_cast = dynamic_cast<VirtualQShowEvent*>( (QShowEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QShowEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQShowEvent*)(self) )->QShowEvent::setAccepted(accepted);

}

void QShowEvent_delete(QShowEvent* self) {
	delete self;
}

class VirtualQHideEvent final : public QHideEvent {
public:

	VirtualQHideEvent(): QHideEvent() {};

	virtual ~VirtualQHideEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QHideEvent* clone() const override {
		if (handle__clone == 0) {
			return QHideEvent::clone();
		}
		

		QHideEvent* callback_return_value = miqt_exec_callback_QHideEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QHideEvent* QHideEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QHideEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QHideEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QHideEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QHideEvent* QHideEvent_new() {
	return new VirtualQHideEvent();
}

void QHideEvent_virtbase(QHideEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QHideEvent* QHideEvent_clone(const QHideEvent* self) {
	return self->clone();
}

bool QHideEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQHideEvent* self_cast = dynamic_cast<VirtualQHideEvent*>( (QHideEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QHideEvent* QHideEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQHideEvent*)(self) )->QHideEvent::clone();

}

bool QHideEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQHideEvent* self_cast = dynamic_cast<VirtualQHideEvent*>( (QHideEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QHideEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQHideEvent*)(self) )->QHideEvent::setAccepted(accepted);

}

void QHideEvent_delete(QHideEvent* self) {
	delete self;
}

class VirtualQContextMenuEvent final : public QContextMenuEvent {
public:

	VirtualQContextMenuEvent(QContextMenuEvent::Reason reason, const QPoint& pos, const QPoint& globalPos): QContextMenuEvent(reason, pos, globalPos) {};
	VirtualQContextMenuEvent(QContextMenuEvent::Reason reason, const QPoint& pos): QContextMenuEvent(reason, pos) {};
	VirtualQContextMenuEvent(QContextMenuEvent::Reason reason, const QPoint& pos, const QPoint& globalPos, Qt::KeyboardModifiers modifiers): QContextMenuEvent(reason, pos, globalPos, modifiers) {};

	virtual ~VirtualQContextMenuEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QContextMenuEvent* clone() const override {
		if (handle__clone == 0) {
			return QContextMenuEvent::clone();
		}
		

		QContextMenuEvent* callback_return_value = miqt_exec_callback_QContextMenuEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QContextMenuEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QContextMenuEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QContextMenuEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QContextMenuEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QContextMenuEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QContextMenuEvent* QContextMenuEvent_new(int reason, QPoint* pos, QPoint* globalPos) {
	return new VirtualQContextMenuEvent(static_cast<QContextMenuEvent::Reason>(reason), *pos, *globalPos);
}

QContextMenuEvent* QContextMenuEvent_new2(int reason, QPoint* pos) {
	return new VirtualQContextMenuEvent(static_cast<QContextMenuEvent::Reason>(reason), *pos);
}

QContextMenuEvent* QContextMenuEvent_new3(int reason, QPoint* pos, QPoint* globalPos, int modifiers) {
	return new VirtualQContextMenuEvent(static_cast<QContextMenuEvent::Reason>(reason), *pos, *globalPos, static_cast<Qt::KeyboardModifiers>(modifiers));
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

bool QContextMenuEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQContextMenuEvent* self_cast = dynamic_cast<VirtualQContextMenuEvent*>( (QContextMenuEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQContextMenuEvent*)(self) )->QContextMenuEvent::clone();

}

bool QContextMenuEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQContextMenuEvent* self_cast = dynamic_cast<VirtualQContextMenuEvent*>( (QContextMenuEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QContextMenuEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQContextMenuEvent*)(self) )->QContextMenuEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QContextMenuEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQContextMenuEvent* self_cast = dynamic_cast<VirtualQContextMenuEvent*>( (QContextMenuEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQContextMenuEvent*)(self) )->QContextMenuEvent::setAccepted(accepted);

}

void QContextMenuEvent_delete(QContextMenuEvent* self) {
	delete self;
}

class VirtualQInputMethodEvent final : public QInputMethodEvent {
public:

	VirtualQInputMethodEvent(): QInputMethodEvent() {};
	VirtualQInputMethodEvent(const QString& preeditText, const QList<QInputMethodEvent::Attribute>& attributes): QInputMethodEvent(preeditText, attributes) {};

	virtual ~VirtualQInputMethodEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QInputMethodEvent* clone() const override {
		if (handle__clone == 0) {
			return QInputMethodEvent::clone();
		}
		

		QInputMethodEvent* callback_return_value = miqt_exec_callback_QInputMethodEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QInputMethodEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QInputMethodEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QInputMethodEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QInputMethodEvent* QInputMethodEvent_new() {
	return new VirtualQInputMethodEvent();
}

QInputMethodEvent* QInputMethodEvent_new2(struct miqt_string preeditText, struct miqt_array /* of QInputMethodEvent__Attribute* */  attributes) {
	QString preeditText_QString = QString::fromUtf8(preeditText.data, preeditText.len);
	QList<QInputMethodEvent::Attribute> attributes_QList;
	attributes_QList.reserve(attributes.len);
	QInputMethodEvent__Attribute** attributes_arr = static_cast<QInputMethodEvent__Attribute**>(attributes.data);
	for(size_t i = 0; i < attributes.len; ++i) {
		attributes_QList.push_back(*(attributes_arr[i]));
	}
	return new VirtualQInputMethodEvent(preeditText_QString, attributes_QList);
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

bool QInputMethodEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQInputMethodEvent* self_cast = dynamic_cast<VirtualQInputMethodEvent*>( (QInputMethodEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQInputMethodEvent*)(self) )->QInputMethodEvent::clone();

}

bool QInputMethodEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQInputMethodEvent* self_cast = dynamic_cast<VirtualQInputMethodEvent*>( (QInputMethodEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QInputMethodEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQInputMethodEvent*)(self) )->QInputMethodEvent::setAccepted(accepted);

}

void QInputMethodEvent_delete(QInputMethodEvent* self) {
	delete self;
}

class VirtualQInputMethodQueryEvent final : public QInputMethodQueryEvent {
public:

	VirtualQInputMethodQueryEvent(Qt::InputMethodQueries queries): QInputMethodQueryEvent(queries) {};

	virtual ~VirtualQInputMethodQueryEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QInputMethodQueryEvent* clone() const override {
		if (handle__clone == 0) {
			return QInputMethodQueryEvent::clone();
		}
		

		QInputMethodQueryEvent* callback_return_value = miqt_exec_callback_QInputMethodQueryEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QInputMethodQueryEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QInputMethodQueryEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QInputMethodQueryEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QInputMethodQueryEvent* QInputMethodQueryEvent_new(int queries) {
	return new VirtualQInputMethodQueryEvent(static_cast<Qt::InputMethodQueries>(queries));
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

bool QInputMethodQueryEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQInputMethodQueryEvent* self_cast = dynamic_cast<VirtualQInputMethodQueryEvent*>( (QInputMethodQueryEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQInputMethodQueryEvent*)(self) )->QInputMethodQueryEvent::clone();

}

bool QInputMethodQueryEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQInputMethodQueryEvent* self_cast = dynamic_cast<VirtualQInputMethodQueryEvent*>( (QInputMethodQueryEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QInputMethodQueryEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQInputMethodQueryEvent*)(self) )->QInputMethodQueryEvent::setAccepted(accepted);

}

void QInputMethodQueryEvent_delete(QInputMethodQueryEvent* self) {
	delete self;
}

class VirtualQDropEvent final : public QDropEvent {
public:

	VirtualQDropEvent(const QPointF& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDropEvent(pos, actions, data, buttons, modifiers) {};
	VirtualQDropEvent(const QPointF& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type): QDropEvent(pos, actions, data, buttons, modifiers, type) {};

	virtual ~VirtualQDropEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QDropEvent* clone() const override {
		if (handle__clone == 0) {
			return QDropEvent::clone();
		}
		

		QDropEvent* callback_return_value = miqt_exec_callback_QDropEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QDropEvent* QDropEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QDropEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QDropEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QDropEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDropEvent* QDropEvent_new(QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDropEvent(*pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QDropEvent* QDropEvent_new2(QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int type) {
	return new VirtualQDropEvent(*pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEvent::Type>(type));
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

bool QDropEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQDropEvent* self_cast = dynamic_cast<VirtualQDropEvent*>( (QDropEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QDropEvent* QDropEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDropEvent*)(self) )->QDropEvent::clone();

}

bool QDropEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQDropEvent* self_cast = dynamic_cast<VirtualQDropEvent*>( (QDropEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QDropEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDropEvent*)(self) )->QDropEvent::setAccepted(accepted);

}

void QDropEvent_delete(QDropEvent* self) {
	delete self;
}

class VirtualQDragMoveEvent final : public QDragMoveEvent {
public:

	VirtualQDragMoveEvent(const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDragMoveEvent(pos, actions, data, buttons, modifiers) {};
	VirtualQDragMoveEvent(const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type): QDragMoveEvent(pos, actions, data, buttons, modifiers, type) {};

	virtual ~VirtualQDragMoveEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QDragMoveEvent* clone() const override {
		if (handle__clone == 0) {
			return QDragMoveEvent::clone();
		}
		

		QDragMoveEvent* callback_return_value = miqt_exec_callback_QDragMoveEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QDragMoveEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QDragMoveEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QDragMoveEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDragMoveEvent* QDragMoveEvent_new(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDragMoveEvent(*pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

QDragMoveEvent* QDragMoveEvent_new2(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int type) {
	return new VirtualQDragMoveEvent(*pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEvent::Type>(type));
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

bool QDragMoveEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQDragMoveEvent* self_cast = dynamic_cast<VirtualQDragMoveEvent*>( (QDragMoveEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDragMoveEvent*)(self) )->QDragMoveEvent::clone();

}

bool QDragMoveEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQDragMoveEvent* self_cast = dynamic_cast<VirtualQDragMoveEvent*>( (QDragMoveEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QDragMoveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDragMoveEvent*)(self) )->QDragMoveEvent::setAccepted(accepted);

}

void QDragMoveEvent_delete(QDragMoveEvent* self) {
	delete self;
}

class VirtualQDragEnterEvent final : public QDragEnterEvent {
public:

	VirtualQDragEnterEvent(const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDragEnterEvent(pos, actions, data, buttons, modifiers) {};

	virtual ~VirtualQDragEnterEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QDragEnterEvent* clone() const override {
		if (handle__clone == 0) {
			return QDragEnterEvent::clone();
		}
		

		QDragEnterEvent* callback_return_value = miqt_exec_callback_QDragEnterEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QDragEnterEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QDragEnterEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QDragEnterEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDragEnterEvent* QDragEnterEvent_new(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDragEnterEvent(*pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

void QDragEnterEvent_virtbase(QDragEnterEvent* src, QDragMoveEvent** outptr_QDragMoveEvent) {
	*outptr_QDragMoveEvent = static_cast<QDragMoveEvent*>(src);
}

QDragEnterEvent* QDragEnterEvent_clone(const QDragEnterEvent* self) {
	return self->clone();
}

bool QDragEnterEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQDragEnterEvent* self_cast = dynamic_cast<VirtualQDragEnterEvent*>( (QDragEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDragEnterEvent*)(self) )->QDragEnterEvent::clone();

}

bool QDragEnterEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQDragEnterEvent* self_cast = dynamic_cast<VirtualQDragEnterEvent*>( (QDragEnterEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QDragEnterEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDragEnterEvent*)(self) )->QDragEnterEvent::setAccepted(accepted);

}

void QDragEnterEvent_delete(QDragEnterEvent* self) {
	delete self;
}

class VirtualQDragLeaveEvent final : public QDragLeaveEvent {
public:

	VirtualQDragLeaveEvent(): QDragLeaveEvent() {};

	virtual ~VirtualQDragLeaveEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QDragLeaveEvent* clone() const override {
		if (handle__clone == 0) {
			return QDragLeaveEvent::clone();
		}
		

		QDragLeaveEvent* callback_return_value = miqt_exec_callback_QDragLeaveEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QDragLeaveEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QDragLeaveEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QDragLeaveEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDragLeaveEvent* QDragLeaveEvent_new() {
	return new VirtualQDragLeaveEvent();
}

void QDragLeaveEvent_virtbase(QDragLeaveEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDragLeaveEvent* QDragLeaveEvent_clone(const QDragLeaveEvent* self) {
	return self->clone();
}

bool QDragLeaveEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQDragLeaveEvent* self_cast = dynamic_cast<VirtualQDragLeaveEvent*>( (QDragLeaveEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDragLeaveEvent*)(self) )->QDragLeaveEvent::clone();

}

bool QDragLeaveEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQDragLeaveEvent* self_cast = dynamic_cast<VirtualQDragLeaveEvent*>( (QDragLeaveEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QDragLeaveEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDragLeaveEvent*)(self) )->QDragLeaveEvent::setAccepted(accepted);

}

void QDragLeaveEvent_delete(QDragLeaveEvent* self) {
	delete self;
}

class VirtualQHelpEvent final : public QHelpEvent {
public:

	VirtualQHelpEvent(QEvent::Type type, const QPoint& pos, const QPoint& globalPos): QHelpEvent(type, pos, globalPos) {};

	virtual ~VirtualQHelpEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QHelpEvent* clone() const override {
		if (handle__clone == 0) {
			return QHelpEvent::clone();
		}
		

		QHelpEvent* callback_return_value = miqt_exec_callback_QHelpEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QHelpEvent* QHelpEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QHelpEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QHelpEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QHelpEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QHelpEvent* QHelpEvent_new(int type, QPoint* pos, QPoint* globalPos) {
	return new VirtualQHelpEvent(static_cast<QEvent::Type>(type), *pos, *globalPos);
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

bool QHelpEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQHelpEvent* self_cast = dynamic_cast<VirtualQHelpEvent*>( (QHelpEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QHelpEvent* QHelpEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQHelpEvent*)(self) )->QHelpEvent::clone();

}

bool QHelpEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQHelpEvent* self_cast = dynamic_cast<VirtualQHelpEvent*>( (QHelpEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QHelpEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQHelpEvent*)(self) )->QHelpEvent::setAccepted(accepted);

}

void QHelpEvent_delete(QHelpEvent* self) {
	delete self;
}

class VirtualQStatusTipEvent final : public QStatusTipEvent {
public:

	VirtualQStatusTipEvent(const QString& tip): QStatusTipEvent(tip) {};

	virtual ~VirtualQStatusTipEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QStatusTipEvent* clone() const override {
		if (handle__clone == 0) {
			return QStatusTipEvent::clone();
		}
		

		QStatusTipEvent* callback_return_value = miqt_exec_callback_QStatusTipEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QStatusTipEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QStatusTipEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QStatusTipEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QStatusTipEvent* QStatusTipEvent_new(struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	return new VirtualQStatusTipEvent(tip_QString);
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

bool QStatusTipEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQStatusTipEvent* self_cast = dynamic_cast<VirtualQStatusTipEvent*>( (QStatusTipEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQStatusTipEvent*)(self) )->QStatusTipEvent::clone();

}

bool QStatusTipEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQStatusTipEvent* self_cast = dynamic_cast<VirtualQStatusTipEvent*>( (QStatusTipEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QStatusTipEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQStatusTipEvent*)(self) )->QStatusTipEvent::setAccepted(accepted);

}

void QStatusTipEvent_delete(QStatusTipEvent* self) {
	delete self;
}

class VirtualQWhatsThisClickedEvent final : public QWhatsThisClickedEvent {
public:

	VirtualQWhatsThisClickedEvent(const QString& href): QWhatsThisClickedEvent(href) {};

	virtual ~VirtualQWhatsThisClickedEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QWhatsThisClickedEvent* clone() const override {
		if (handle__clone == 0) {
			return QWhatsThisClickedEvent::clone();
		}
		

		QWhatsThisClickedEvent* callback_return_value = miqt_exec_callback_QWhatsThisClickedEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QWhatsThisClickedEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QWhatsThisClickedEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QWhatsThisClickedEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QWhatsThisClickedEvent* QWhatsThisClickedEvent_new(struct miqt_string href) {
	QString href_QString = QString::fromUtf8(href.data, href.len);
	return new VirtualQWhatsThisClickedEvent(href_QString);
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

bool QWhatsThisClickedEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQWhatsThisClickedEvent* self_cast = dynamic_cast<VirtualQWhatsThisClickedEvent*>( (QWhatsThisClickedEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQWhatsThisClickedEvent*)(self) )->QWhatsThisClickedEvent::clone();

}

bool QWhatsThisClickedEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQWhatsThisClickedEvent* self_cast = dynamic_cast<VirtualQWhatsThisClickedEvent*>( (QWhatsThisClickedEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QWhatsThisClickedEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQWhatsThisClickedEvent*)(self) )->QWhatsThisClickedEvent::setAccepted(accepted);

}

void QWhatsThisClickedEvent_delete(QWhatsThisClickedEvent* self) {
	delete self;
}

class VirtualQActionEvent final : public QActionEvent {
public:

	VirtualQActionEvent(int type, QAction* action): QActionEvent(type, action) {};
	VirtualQActionEvent(int type, QAction* action, QAction* before): QActionEvent(type, action, before) {};

	virtual ~VirtualQActionEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QActionEvent* clone() const override {
		if (handle__clone == 0) {
			return QActionEvent::clone();
		}
		

		QActionEvent* callback_return_value = miqt_exec_callback_QActionEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QActionEvent* QActionEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QActionEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QActionEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QActionEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QActionEvent* QActionEvent_new(int type, QAction* action) {
	return new VirtualQActionEvent(static_cast<int>(type), action);
}

QActionEvent* QActionEvent_new2(int type, QAction* action, QAction* before) {
	return new VirtualQActionEvent(static_cast<int>(type), action, before);
}

void QActionEvent_virtbase(QActionEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QActionEvent* QActionEvent_clone(const QActionEvent* self) {
	return self->clone();
}

bool QActionEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQActionEvent* self_cast = dynamic_cast<VirtualQActionEvent*>( (QActionEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QActionEvent* QActionEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQActionEvent*)(self) )->QActionEvent::clone();

}

bool QActionEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQActionEvent* self_cast = dynamic_cast<VirtualQActionEvent*>( (QActionEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QActionEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQActionEvent*)(self) )->QActionEvent::setAccepted(accepted);

}

void QActionEvent_delete(QActionEvent* self) {
	delete self;
}

class VirtualQFileOpenEvent final : public QFileOpenEvent {
public:

	VirtualQFileOpenEvent(const QString& file): QFileOpenEvent(file) {};
	VirtualQFileOpenEvent(const QUrl& url): QFileOpenEvent(url) {};

	virtual ~VirtualQFileOpenEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QFileOpenEvent* clone() const override {
		if (handle__clone == 0) {
			return QFileOpenEvent::clone();
		}
		

		QFileOpenEvent* callback_return_value = miqt_exec_callback_QFileOpenEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QFileOpenEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QFileOpenEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QFileOpenEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QFileOpenEvent* QFileOpenEvent_new(struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQFileOpenEvent(file_QString);
}

QFileOpenEvent* QFileOpenEvent_new2(QUrl* url) {
	return new VirtualQFileOpenEvent(*url);
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

bool QFileOpenEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQFileOpenEvent* self_cast = dynamic_cast<VirtualQFileOpenEvent*>( (QFileOpenEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQFileOpenEvent*)(self) )->QFileOpenEvent::clone();

}

bool QFileOpenEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQFileOpenEvent* self_cast = dynamic_cast<VirtualQFileOpenEvent*>( (QFileOpenEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QFileOpenEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQFileOpenEvent*)(self) )->QFileOpenEvent::setAccepted(accepted);

}

void QFileOpenEvent_delete(QFileOpenEvent* self) {
	delete self;
}

class VirtualQToolBarChangeEvent final : public QToolBarChangeEvent {
public:

	VirtualQToolBarChangeEvent(bool t): QToolBarChangeEvent(t) {};

	virtual ~VirtualQToolBarChangeEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QToolBarChangeEvent* clone() const override {
		if (handle__clone == 0) {
			return QToolBarChangeEvent::clone();
		}
		

		QToolBarChangeEvent* callback_return_value = miqt_exec_callback_QToolBarChangeEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QToolBarChangeEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QToolBarChangeEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QToolBarChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QToolBarChangeEvent* QToolBarChangeEvent_new(bool t) {
	return new VirtualQToolBarChangeEvent(t);
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

bool QToolBarChangeEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQToolBarChangeEvent* self_cast = dynamic_cast<VirtualQToolBarChangeEvent*>( (QToolBarChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQToolBarChangeEvent*)(self) )->QToolBarChangeEvent::clone();

}

bool QToolBarChangeEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQToolBarChangeEvent* self_cast = dynamic_cast<VirtualQToolBarChangeEvent*>( (QToolBarChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QToolBarChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQToolBarChangeEvent*)(self) )->QToolBarChangeEvent::setAccepted(accepted);

}

void QToolBarChangeEvent_delete(QToolBarChangeEvent* self) {
	delete self;
}

class VirtualQShortcutEvent final : public QShortcutEvent {
public:

	VirtualQShortcutEvent(const QKeySequence& key, int id): QShortcutEvent(key, id) {};
	VirtualQShortcutEvent(const QKeySequence& key, int id, bool ambiguous): QShortcutEvent(key, id, ambiguous) {};

	virtual ~VirtualQShortcutEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QShortcutEvent* clone() const override {
		if (handle__clone == 0) {
			return QShortcutEvent::clone();
		}
		

		QShortcutEvent* callback_return_value = miqt_exec_callback_QShortcutEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QShortcutEvent* QShortcutEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QShortcutEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QShortcutEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QShortcutEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QShortcutEvent* QShortcutEvent_new(QKeySequence* key, int id) {
	return new VirtualQShortcutEvent(*key, static_cast<int>(id));
}

QShortcutEvent* QShortcutEvent_new2(QKeySequence* key, int id, bool ambiguous) {
	return new VirtualQShortcutEvent(*key, static_cast<int>(id), ambiguous);
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

bool QShortcutEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQShortcutEvent* self_cast = dynamic_cast<VirtualQShortcutEvent*>( (QShortcutEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QShortcutEvent* QShortcutEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQShortcutEvent*)(self) )->QShortcutEvent::clone();

}

bool QShortcutEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQShortcutEvent* self_cast = dynamic_cast<VirtualQShortcutEvent*>( (QShortcutEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QShortcutEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQShortcutEvent*)(self) )->QShortcutEvent::setAccepted(accepted);

}

void QShortcutEvent_delete(QShortcutEvent* self) {
	delete self;
}

class VirtualQWindowStateChangeEvent final : public QWindowStateChangeEvent {
public:

	VirtualQWindowStateChangeEvent(Qt::WindowStates oldState): QWindowStateChangeEvent(oldState) {};
	VirtualQWindowStateChangeEvent(Qt::WindowStates oldState, bool isOverride): QWindowStateChangeEvent(oldState, isOverride) {};

	virtual ~VirtualQWindowStateChangeEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QWindowStateChangeEvent* clone() const override {
		if (handle__clone == 0) {
			return QWindowStateChangeEvent::clone();
		}
		

		QWindowStateChangeEvent* callback_return_value = miqt_exec_callback_QWindowStateChangeEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QWindowStateChangeEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QWindowStateChangeEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QWindowStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QWindowStateChangeEvent* QWindowStateChangeEvent_new(int oldState) {
	return new VirtualQWindowStateChangeEvent(static_cast<Qt::WindowStates>(oldState));
}

QWindowStateChangeEvent* QWindowStateChangeEvent_new2(int oldState, bool isOverride) {
	return new VirtualQWindowStateChangeEvent(static_cast<Qt::WindowStates>(oldState), isOverride);
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

bool QWindowStateChangeEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQWindowStateChangeEvent* self_cast = dynamic_cast<VirtualQWindowStateChangeEvent*>( (QWindowStateChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQWindowStateChangeEvent*)(self) )->QWindowStateChangeEvent::clone();

}

bool QWindowStateChangeEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQWindowStateChangeEvent* self_cast = dynamic_cast<VirtualQWindowStateChangeEvent*>( (QWindowStateChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QWindowStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQWindowStateChangeEvent*)(self) )->QWindowStateChangeEvent::setAccepted(accepted);

}

void QWindowStateChangeEvent_delete(QWindowStateChangeEvent* self) {
	delete self;
}

class VirtualQTouchEvent final : public QTouchEvent {
public:

	VirtualQTouchEvent(QEvent::Type eventType): QTouchEvent(eventType) {};
	VirtualQTouchEvent(QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, QEventPoint::States touchPointStates): QTouchEvent(eventType, device, modifiers, touchPointStates) {};
	VirtualQTouchEvent(QEvent::Type eventType, const QPointingDevice* device): QTouchEvent(eventType, device) {};
	VirtualQTouchEvent(QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers): QTouchEvent(eventType, device, modifiers) {};
	VirtualQTouchEvent(QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, const QList<QEventPoint>& touchPoints): QTouchEvent(eventType, device, modifiers, touchPoints) {};
	VirtualQTouchEvent(QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, QEventPoint::States touchPointStates, const QList<QEventPoint>& touchPoints): QTouchEvent(eventType, device, modifiers, touchPointStates, touchPoints) {};

	virtual ~VirtualQTouchEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QTouchEvent* clone() const override {
		if (handle__clone == 0) {
			return QTouchEvent::clone();
		}
		

		QTouchEvent* callback_return_value = miqt_exec_callback_QTouchEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QTouchEvent* QTouchEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isBeginEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isBeginEvent() const override {
		if (handle__isBeginEvent == 0) {
			return QTouchEvent::isBeginEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QTouchEvent_isBeginEvent(this, handle__isBeginEvent);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isBeginEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isUpdateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isUpdateEvent() const override {
		if (handle__isUpdateEvent == 0) {
			return QTouchEvent::isUpdateEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QTouchEvent_isUpdateEvent(this, handle__isUpdateEvent);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isUpdateEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isEndEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isEndEvent() const override {
		if (handle__isEndEvent == 0) {
			return QTouchEvent::isEndEvent();
		}
		

		bool callback_return_value = miqt_exec_callback_QTouchEvent_isEndEvent(this, handle__isEndEvent);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isEndEvent(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setTimestamp = 0;

	// Subclass to allow providing a Go implementation
	virtual void setTimestamp(quint64 timestamp) override {
		if (handle__setTimestamp == 0) {
			QTouchEvent::setTimestamp(timestamp);
			return;
		}
		
		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		miqt_exec_callback_QTouchEvent_setTimestamp(this, handle__setTimestamp, sigval1);

		
	}

	friend void QTouchEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QTouchEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QTouchEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QTouchEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QTouchEvent* QTouchEvent_new(int eventType) {
	return new VirtualQTouchEvent(static_cast<QEvent::Type>(eventType));
}

QTouchEvent* QTouchEvent_new2(int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates) {
	return new VirtualQTouchEvent(static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEventPoint::States>(touchPointStates));
}

QTouchEvent* QTouchEvent_new3(int eventType, QPointingDevice* device) {
	return new VirtualQTouchEvent(static_cast<QEvent::Type>(eventType), device);
}

QTouchEvent* QTouchEvent_new4(int eventType, QPointingDevice* device, int modifiers) {
	return new VirtualQTouchEvent(static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers));
}

QTouchEvent* QTouchEvent_new5(int eventType, QPointingDevice* device, int modifiers, struct miqt_array /* of QEventPoint* */  touchPoints) {
	QList<QEventPoint> touchPoints_QList;
	touchPoints_QList.reserve(touchPoints.len);
	QEventPoint** touchPoints_arr = static_cast<QEventPoint**>(touchPoints.data);
	for(size_t i = 0; i < touchPoints.len; ++i) {
		touchPoints_QList.push_back(*(touchPoints_arr[i]));
	}
	return new VirtualQTouchEvent(static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), touchPoints_QList);
}

QTouchEvent* QTouchEvent_new6(int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates, struct miqt_array /* of QEventPoint* */  touchPoints) {
	QList<QEventPoint> touchPoints_QList;
	touchPoints_QList.reserve(touchPoints.len);
	QEventPoint** touchPoints_arr = static_cast<QEventPoint**>(touchPoints.data);
	for(size_t i = 0; i < touchPoints.len; ++i) {
		touchPoints_QList.push_back(*(touchPoints_arr[i]));
	}
	return new VirtualQTouchEvent(static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEventPoint::States>(touchPointStates), touchPoints_QList);
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

bool QTouchEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQTouchEvent* self_cast = dynamic_cast<VirtualQTouchEvent*>( (QTouchEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QTouchEvent* QTouchEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::clone();

}

bool QTouchEvent_override_virtual_isBeginEvent(void* self, intptr_t slot) {
	VirtualQTouchEvent* self_cast = dynamic_cast<VirtualQTouchEvent*>( (QTouchEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isBeginEvent = slot;
	return true;
}

bool QTouchEvent_virtualbase_isBeginEvent(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::isBeginEvent();

}

bool QTouchEvent_override_virtual_isUpdateEvent(void* self, intptr_t slot) {
	VirtualQTouchEvent* self_cast = dynamic_cast<VirtualQTouchEvent*>( (QTouchEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isUpdateEvent = slot;
	return true;
}

bool QTouchEvent_virtualbase_isUpdateEvent(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::isUpdateEvent();

}

bool QTouchEvent_override_virtual_isEndEvent(void* self, intptr_t slot) {
	VirtualQTouchEvent* self_cast = dynamic_cast<VirtualQTouchEvent*>( (QTouchEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isEndEvent = slot;
	return true;
}

bool QTouchEvent_virtualbase_isEndEvent(const void* self) {

	return ( (const VirtualQTouchEvent*)(self) )->QTouchEvent::isEndEvent();

}

bool QTouchEvent_override_virtual_setTimestamp(void* self, intptr_t slot) {
	VirtualQTouchEvent* self_cast = dynamic_cast<VirtualQTouchEvent*>( (QTouchEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setTimestamp = slot;
	return true;
}

void QTouchEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp) {

	( (VirtualQTouchEvent*)(self) )->QTouchEvent::setTimestamp(static_cast<quint64>(timestamp));

}

bool QTouchEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQTouchEvent* self_cast = dynamic_cast<VirtualQTouchEvent*>( (QTouchEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QTouchEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQTouchEvent*)(self) )->QTouchEvent::setAccepted(accepted);

}

void QTouchEvent_delete(QTouchEvent* self) {
	delete self;
}

class VirtualQScrollPrepareEvent final : public QScrollPrepareEvent {
public:

	VirtualQScrollPrepareEvent(const QPointF& startPos): QScrollPrepareEvent(startPos) {};

	virtual ~VirtualQScrollPrepareEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QScrollPrepareEvent* clone() const override {
		if (handle__clone == 0) {
			return QScrollPrepareEvent::clone();
		}
		

		QScrollPrepareEvent* callback_return_value = miqt_exec_callback_QScrollPrepareEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QScrollPrepareEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QScrollPrepareEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QScrollPrepareEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QScrollPrepareEvent* QScrollPrepareEvent_new(QPointF* startPos) {
	return new VirtualQScrollPrepareEvent(*startPos);
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

bool QScrollPrepareEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQScrollPrepareEvent* self_cast = dynamic_cast<VirtualQScrollPrepareEvent*>( (QScrollPrepareEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQScrollPrepareEvent*)(self) )->QScrollPrepareEvent::clone();

}

bool QScrollPrepareEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQScrollPrepareEvent* self_cast = dynamic_cast<VirtualQScrollPrepareEvent*>( (QScrollPrepareEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QScrollPrepareEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQScrollPrepareEvent*)(self) )->QScrollPrepareEvent::setAccepted(accepted);

}

void QScrollPrepareEvent_delete(QScrollPrepareEvent* self) {
	delete self;
}

class VirtualQScrollEvent final : public QScrollEvent {
public:

	VirtualQScrollEvent(const QPointF& contentPos, const QPointF& overshoot, QScrollEvent::ScrollState scrollState): QScrollEvent(contentPos, overshoot, scrollState) {};

	virtual ~VirtualQScrollEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QScrollEvent* clone() const override {
		if (handle__clone == 0) {
			return QScrollEvent::clone();
		}
		

		QScrollEvent* callback_return_value = miqt_exec_callback_QScrollEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QScrollEvent* QScrollEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QScrollEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QScrollEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QScrollEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QScrollEvent* QScrollEvent_new(QPointF* contentPos, QPointF* overshoot, int scrollState) {
	return new VirtualQScrollEvent(*contentPos, *overshoot, static_cast<QScrollEvent::ScrollState>(scrollState));
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

bool QScrollEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQScrollEvent* self_cast = dynamic_cast<VirtualQScrollEvent*>( (QScrollEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QScrollEvent* QScrollEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQScrollEvent*)(self) )->QScrollEvent::clone();

}

bool QScrollEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQScrollEvent* self_cast = dynamic_cast<VirtualQScrollEvent*>( (QScrollEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QScrollEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQScrollEvent*)(self) )->QScrollEvent::setAccepted(accepted);

}

void QScrollEvent_delete(QScrollEvent* self) {
	delete self;
}

class VirtualQScreenOrientationChangeEvent final : public QScreenOrientationChangeEvent {
public:

	VirtualQScreenOrientationChangeEvent(QScreen* screen, Qt::ScreenOrientation orientation): QScreenOrientationChangeEvent(screen, orientation) {};

	virtual ~VirtualQScreenOrientationChangeEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QScreenOrientationChangeEvent* clone() const override {
		if (handle__clone == 0) {
			return QScreenOrientationChangeEvent::clone();
		}
		

		QScreenOrientationChangeEvent* callback_return_value = miqt_exec_callback_QScreenOrientationChangeEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QScreenOrientationChangeEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QScreenOrientationChangeEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QScreenOrientationChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(QScreen* screen, int orientation) {
	return new VirtualQScreenOrientationChangeEvent(screen, static_cast<Qt::ScreenOrientation>(orientation));
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

bool QScreenOrientationChangeEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQScreenOrientationChangeEvent* self_cast = dynamic_cast<VirtualQScreenOrientationChangeEvent*>( (QScreenOrientationChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQScreenOrientationChangeEvent*)(self) )->QScreenOrientationChangeEvent::clone();

}

bool QScreenOrientationChangeEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQScreenOrientationChangeEvent* self_cast = dynamic_cast<VirtualQScreenOrientationChangeEvent*>( (QScreenOrientationChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
}

void QScreenOrientationChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQScreenOrientationChangeEvent*)(self) )->QScreenOrientationChangeEvent::setAccepted(accepted);

}

void QScreenOrientationChangeEvent_delete(QScreenOrientationChangeEvent* self) {
	delete self;
}

class VirtualQApplicationStateChangeEvent final : public QApplicationStateChangeEvent {
public:

	VirtualQApplicationStateChangeEvent(Qt::ApplicationState state): QApplicationStateChangeEvent(state) {};

	virtual ~VirtualQApplicationStateChangeEvent() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clone = 0;

	// Subclass to allow providing a Go implementation
	virtual QApplicationStateChangeEvent* clone() const override {
		if (handle__clone == 0) {
			return QApplicationStateChangeEvent::clone();
		}
		

		QApplicationStateChangeEvent* callback_return_value = miqt_exec_callback_QApplicationStateChangeEvent_clone(this, handle__clone);

		return callback_return_value;
	}

	friend QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAccepted = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (handle__setAccepted == 0) {
			QApplicationStateChangeEvent::setAccepted(accepted);
			return;
		}
		
		bool sigval1 = accepted;

		miqt_exec_callback_QApplicationStateChangeEvent_setAccepted(this, handle__setAccepted, sigval1);

		
	}

	friend void QApplicationStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QApplicationStateChangeEvent* QApplicationStateChangeEvent_new(int state) {
	return new VirtualQApplicationStateChangeEvent(static_cast<Qt::ApplicationState>(state));
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

bool QApplicationStateChangeEvent_override_virtual_clone(void* self, intptr_t slot) {
	VirtualQApplicationStateChangeEvent* self_cast = dynamic_cast<VirtualQApplicationStateChangeEvent*>( (QApplicationStateChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clone = slot;
	return true;
}

QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQApplicationStateChangeEvent*)(self) )->QApplicationStateChangeEvent::clone();

}

bool QApplicationStateChangeEvent_override_virtual_setAccepted(void* self, intptr_t slot) {
	VirtualQApplicationStateChangeEvent* self_cast = dynamic_cast<VirtualQApplicationStateChangeEvent*>( (QApplicationStateChangeEvent*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAccepted = slot;
	return true;
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

