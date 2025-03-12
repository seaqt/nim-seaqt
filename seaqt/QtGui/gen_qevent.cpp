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
class VirtualQInputEvent final : public QInputEvent {
	const QInputEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QInputEvent_VTable* QInputEvent_vtbl(const VirtualQInputEvent* self);
	friend void* QInputEvent_vdata(const VirtualQInputEvent* self);
	friend void QInputEvent_setVdata(VirtualQInputEvent* self, void* vdata);

	VirtualQInputEvent(const QInputEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QInputDevice* m_dev): QInputEvent(type, m_dev), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputEvent(const QInputEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QInputDevice* m_dev, Qt::KeyboardModifiers modifiers): QInputEvent(type, m_dev, modifiers), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQInputEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QInputEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QInputEvent::clone();
		}


		QInputEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QInputEvent* QInputEvent_virtualbase_clone(const VirtualQInputEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QInputEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QInputEvent_virtualbase_setTimestamp(VirtualQInputEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QInputEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QInputEvent_virtualbase_setAccepted(VirtualQInputEvent* self, bool accepted);

};

VirtualQInputEvent* QInputEvent_new(const QInputEvent_VTable* vtbl, void* vdata, int type, QInputDevice* m_dev) {
	return new VirtualQInputEvent(vtbl, vdata, static_cast<QEvent::Type>(type), m_dev);
}

VirtualQInputEvent* QInputEvent_new2(const QInputEvent_VTable* vtbl, void* vdata, int type, QInputDevice* m_dev, int modifiers) {
	return new VirtualQInputEvent(vtbl, vdata, static_cast<QEvent::Type>(type), m_dev, static_cast<Qt::KeyboardModifiers>(modifiers));
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

QInputEvent* QInputEvent_virtualbase_clone(const VirtualQInputEvent* self) {

	return self->QInputEvent::clone();
}

void QInputEvent_virtualbase_setTimestamp(VirtualQInputEvent* self, unsigned long long timestamp) {

	self->QInputEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QInputEvent_virtualbase_setAccepted(VirtualQInputEvent* self, bool accepted) {

	self->QInputEvent::setAccepted(accepted);
}

const QInputEvent_VTable* QInputEvent_vtbl(const VirtualQInputEvent* self) { return self->vtbl; }
void* QInputEvent_vdata(const VirtualQInputEvent* self) { return self->vdata; }
void QInputEvent_setVdata(VirtualQInputEvent* self, void* vdata) { self->vdata = vdata; }

void QInputEvent_delete(QInputEvent* self) {
	delete self;
}

class VirtualQPointerEvent final : public QPointerEvent {
	const QPointerEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QPointerEvent_VTable* QPointerEvent_vtbl(const VirtualQPointerEvent* self);
	friend void* QPointerEvent_vdata(const VirtualQPointerEvent* self);
	friend void QPointerEvent_setVdata(VirtualQPointerEvent* self, void* vdata);

	VirtualQPointerEvent(const QPointerEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointingDevice* dev): QPointerEvent(type, dev), vtbl(vtbl), vdata(vdata) {}
	VirtualQPointerEvent(const QPointerEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointingDevice* dev, Qt::KeyboardModifiers modifiers): QPointerEvent(type, dev, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQPointerEvent(const QPointerEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointingDevice* dev, Qt::KeyboardModifiers modifiers, const QList<QEventPoint>& points): QPointerEvent(type, dev, modifiers, points), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPointerEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QPointerEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QPointerEvent::clone();
		}


		QPointerEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QPointerEvent* QPointerEvent_virtualbase_clone(const VirtualQPointerEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QPointerEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QPointerEvent_virtualbase_setTimestamp(VirtualQPointerEvent* self, unsigned long long timestamp);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QPointerEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isBeginEvent(const VirtualQPointerEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QPointerEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isUpdateEvent(const VirtualQPointerEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QPointerEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QPointerEvent_virtualbase_isEndEvent(const VirtualQPointerEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QPointerEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QPointerEvent_virtualbase_setAccepted(VirtualQPointerEvent* self, bool accepted);

};

VirtualQPointerEvent* QPointerEvent_new(const QPointerEvent_VTable* vtbl, void* vdata, int type, QPointingDevice* dev) {
	return new VirtualQPointerEvent(vtbl, vdata, static_cast<QEvent::Type>(type), dev);
}

VirtualQPointerEvent* QPointerEvent_new2(const QPointerEvent_VTable* vtbl, void* vdata, int type, QPointingDevice* dev, int modifiers) {
	return new VirtualQPointerEvent(vtbl, vdata, static_cast<QEvent::Type>(type), dev, static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQPointerEvent* QPointerEvent_new3(const QPointerEvent_VTable* vtbl, void* vdata, int type, QPointingDevice* dev, int modifiers, struct miqt_array /* of QEventPoint* */  points) {
	QList<QEventPoint> points_QList;
	points_QList.reserve(points.len);
	QEventPoint** points_arr = static_cast<QEventPoint**>(points.data);
	for(size_t i = 0; i < points.len; ++i) {
		points_QList.push_back(*(points_arr[i]));
	}
	return new VirtualQPointerEvent(vtbl, vdata, static_cast<QEvent::Type>(type), dev, static_cast<Qt::KeyboardModifiers>(modifiers), points_QList);
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

QPointerEvent* QPointerEvent_virtualbase_clone(const VirtualQPointerEvent* self) {

	return self->QPointerEvent::clone();
}

void QPointerEvent_virtualbase_setTimestamp(VirtualQPointerEvent* self, unsigned long long timestamp) {

	self->QPointerEvent::setTimestamp(static_cast<quint64>(timestamp));
}

bool QPointerEvent_virtualbase_isBeginEvent(const VirtualQPointerEvent* self) {

	return self->QPointerEvent::isBeginEvent();
}

bool QPointerEvent_virtualbase_isUpdateEvent(const VirtualQPointerEvent* self) {

	return self->QPointerEvent::isUpdateEvent();
}

bool QPointerEvent_virtualbase_isEndEvent(const VirtualQPointerEvent* self) {

	return self->QPointerEvent::isEndEvent();
}

void QPointerEvent_virtualbase_setAccepted(VirtualQPointerEvent* self, bool accepted) {

	self->QPointerEvent::setAccepted(accepted);
}

const QPointerEvent_VTable* QPointerEvent_vtbl(const VirtualQPointerEvent* self) { return self->vtbl; }
void* QPointerEvent_vdata(const VirtualQPointerEvent* self) { return self->vdata; }
void QPointerEvent_setVdata(VirtualQPointerEvent* self, void* vdata) { self->vdata = vdata; }

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
	const QEnterEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QEnterEvent_VTable* QEnterEvent_vtbl(const VirtualQEnterEvent* self);
	friend void* QEnterEvent_vdata(const VirtualQEnterEvent* self);
	friend void QEnterEvent_setVdata(VirtualQEnterEvent* self, void* vdata);

	VirtualQEnterEvent(const QEnterEvent_VTable* vtbl, void* vdata, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos): QEnterEvent(localPos, scenePos, globalPos), vtbl(vtbl), vdata(vdata) {}
	VirtualQEnterEvent(const QEnterEvent_VTable* vtbl, void* vdata, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, const QPointingDevice* device): QEnterEvent(localPos, scenePos, globalPos, device), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQEnterEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QEnterEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QEnterEvent::clone();
		}


		QEnterEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QEnterEvent* QEnterEvent_virtualbase_clone(const VirtualQEnterEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QEnterEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isBeginEvent(const VirtualQEnterEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QEnterEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isUpdateEvent(const VirtualQEnterEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QEnterEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QEnterEvent_virtualbase_isEndEvent(const VirtualQEnterEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QEnterEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QEnterEvent_virtualbase_setTimestamp(VirtualQEnterEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QEnterEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QEnterEvent_virtualbase_setAccepted(VirtualQEnterEvent* self, bool accepted);

};

VirtualQEnterEvent* QEnterEvent_new(const QEnterEvent_VTable* vtbl, void* vdata, QPointF* localPos, QPointF* scenePos, QPointF* globalPos) {
	return new VirtualQEnterEvent(vtbl, vdata, *localPos, *scenePos, *globalPos);
}

VirtualQEnterEvent* QEnterEvent_new2(const QEnterEvent_VTable* vtbl, void* vdata, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device) {
	return new VirtualQEnterEvent(vtbl, vdata, *localPos, *scenePos, *globalPos, device);
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

QEnterEvent* QEnterEvent_virtualbase_clone(const VirtualQEnterEvent* self) {

	return self->QEnterEvent::clone();
}

bool QEnterEvent_virtualbase_isBeginEvent(const VirtualQEnterEvent* self) {

	return self->QEnterEvent::isBeginEvent();
}

bool QEnterEvent_virtualbase_isUpdateEvent(const VirtualQEnterEvent* self) {

	return self->QEnterEvent::isUpdateEvent();
}

bool QEnterEvent_virtualbase_isEndEvent(const VirtualQEnterEvent* self) {

	return self->QEnterEvent::isEndEvent();
}

void QEnterEvent_virtualbase_setTimestamp(VirtualQEnterEvent* self, unsigned long long timestamp) {

	self->QEnterEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QEnterEvent_virtualbase_setAccepted(VirtualQEnterEvent* self, bool accepted) {

	self->QEnterEvent::setAccepted(accepted);
}

const QEnterEvent_VTable* QEnterEvent_vtbl(const VirtualQEnterEvent* self) { return self->vtbl; }
void* QEnterEvent_vdata(const VirtualQEnterEvent* self) { return self->vdata; }
void QEnterEvent_setVdata(VirtualQEnterEvent* self, void* vdata) { self->vdata = vdata; }

void QEnterEvent_delete(QEnterEvent* self) {
	delete self;
}

class VirtualQMouseEvent final : public QMouseEvent {
	const QMouseEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QMouseEvent_VTable* QMouseEvent_vtbl(const VirtualQMouseEvent* self);
	friend void* QMouseEvent_vdata(const VirtualQMouseEvent* self);
	friend void QMouseEvent_setVdata(VirtualQMouseEvent* self, void* vdata);

	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, button, buttons, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, globalPos, button, buttons, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, source), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, button, buttons, modifiers, device), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, globalPos, button, buttons, modifiers, device), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, device), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEvent(const QMouseEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source, const QPointingDevice* device): QMouseEvent(type, localPos, scenePos, globalPos, button, buttons, modifiers, source, device), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMouseEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QMouseEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QMouseEvent::clone();
		}


		QMouseEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QMouseEvent* QMouseEvent_virtualbase_clone(const VirtualQMouseEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QMouseEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isBeginEvent(const VirtualQMouseEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QMouseEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isUpdateEvent(const VirtualQMouseEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QMouseEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QMouseEvent_virtualbase_isEndEvent(const VirtualQMouseEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QMouseEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QMouseEvent_virtualbase_setTimestamp(VirtualQMouseEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QMouseEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QMouseEvent_virtualbase_setAccepted(VirtualQMouseEvent* self, bool accepted);

};

VirtualQMouseEvent* QMouseEvent_new(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQMouseEvent* QMouseEvent_new2(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQMouseEvent* QMouseEvent_new3(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQMouseEvent* QMouseEvent_new4(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::MouseEventSource>(source));
}

VirtualQMouseEvent* QMouseEvent_new5(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

VirtualQMouseEvent* QMouseEvent_new6(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

VirtualQMouseEvent* QMouseEvent_new7(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

VirtualQMouseEvent* QMouseEvent_new8(const QMouseEvent_VTable* vtbl, void* vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source, QPointingDevice* device) {
	return new VirtualQMouseEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *localPos, *scenePos, *globalPos, static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::MouseEventSource>(source), device);
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

QMouseEvent* QMouseEvent_virtualbase_clone(const VirtualQMouseEvent* self) {

	return self->QMouseEvent::clone();
}

bool QMouseEvent_virtualbase_isBeginEvent(const VirtualQMouseEvent* self) {

	return self->QMouseEvent::isBeginEvent();
}

bool QMouseEvent_virtualbase_isUpdateEvent(const VirtualQMouseEvent* self) {

	return self->QMouseEvent::isUpdateEvent();
}

bool QMouseEvent_virtualbase_isEndEvent(const VirtualQMouseEvent* self) {

	return self->QMouseEvent::isEndEvent();
}

void QMouseEvent_virtualbase_setTimestamp(VirtualQMouseEvent* self, unsigned long long timestamp) {

	self->QMouseEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QMouseEvent_virtualbase_setAccepted(VirtualQMouseEvent* self, bool accepted) {

	self->QMouseEvent::setAccepted(accepted);
}

const QMouseEvent_VTable* QMouseEvent_vtbl(const VirtualQMouseEvent* self) { return self->vtbl; }
void* QMouseEvent_vdata(const VirtualQMouseEvent* self) { return self->vdata; }
void QMouseEvent_setVdata(VirtualQMouseEvent* self, void* vdata) { self->vdata = vdata; }

void QMouseEvent_delete(QMouseEvent* self) {
	delete self;
}

class VirtualQHoverEvent final : public QHoverEvent {
	const QHoverEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QHoverEvent_VTable* QHoverEvent_vtbl(const VirtualQHoverEvent* self);
	friend void* QHoverEvent_vdata(const VirtualQHoverEvent* self);
	friend void QHoverEvent_setVdata(VirtualQHoverEvent* self, void* vdata);

	VirtualQHoverEvent(const QHoverEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos): QHoverEvent(type, scenePos, globalPos, oldPos), vtbl(vtbl), vdata(vdata) {}
	VirtualQHoverEvent(const QHoverEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& pos, const QPointF& oldPos): QHoverEvent(type, pos, oldPos), vtbl(vtbl), vdata(vdata) {}
	VirtualQHoverEvent(const QHoverEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers): QHoverEvent(type, scenePos, globalPos, oldPos, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQHoverEvent(const QHoverEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& scenePos, const QPointF& globalPos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QHoverEvent(type, scenePos, globalPos, oldPos, modifiers, device), vtbl(vtbl), vdata(vdata) {}
	VirtualQHoverEvent(const QHoverEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& pos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers): QHoverEvent(type, pos, oldPos, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQHoverEvent(const QHoverEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPointF& pos, const QPointF& oldPos, Qt::KeyboardModifiers modifiers, const QPointingDevice* device): QHoverEvent(type, pos, oldPos, modifiers, device), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQHoverEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QHoverEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QHoverEvent::clone();
		}


		QHoverEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QHoverEvent* QHoverEvent_virtualbase_clone(const VirtualQHoverEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QHoverEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isUpdateEvent(const VirtualQHoverEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QHoverEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isBeginEvent(const VirtualQHoverEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QHoverEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QHoverEvent_virtualbase_isEndEvent(const VirtualQHoverEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QHoverEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QHoverEvent_virtualbase_setTimestamp(VirtualQHoverEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QHoverEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QHoverEvent_virtualbase_setAccepted(VirtualQHoverEvent* self, bool accepted);

};

VirtualQHoverEvent* QHoverEvent_new(const QHoverEvent_VTable* vtbl, void* vdata, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos) {
	return new VirtualQHoverEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos);
}

VirtualQHoverEvent* QHoverEvent_new2(const QHoverEvent_VTable* vtbl, void* vdata, int type, QPointF* pos, QPointF* oldPos) {
	return new VirtualQHoverEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *pos, *oldPos);
}

VirtualQHoverEvent* QHoverEvent_new3(const QHoverEvent_VTable* vtbl, void* vdata, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers) {
	return new VirtualQHoverEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQHoverEvent* QHoverEvent_new4(const QHoverEvent_VTable* vtbl, void* vdata, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers, QPointingDevice* device) {
	return new VirtualQHoverEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *scenePos, *globalPos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers), device);
}

VirtualQHoverEvent* QHoverEvent_new5(const QHoverEvent_VTable* vtbl, void* vdata, int type, QPointF* pos, QPointF* oldPos, int modifiers) {
	return new VirtualQHoverEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *pos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQHoverEvent* QHoverEvent_new6(const QHoverEvent_VTable* vtbl, void* vdata, int type, QPointF* pos, QPointF* oldPos, int modifiers, QPointingDevice* device) {
	return new VirtualQHoverEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *pos, *oldPos, static_cast<Qt::KeyboardModifiers>(modifiers), device);
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

QHoverEvent* QHoverEvent_virtualbase_clone(const VirtualQHoverEvent* self) {

	return self->QHoverEvent::clone();
}

bool QHoverEvent_virtualbase_isUpdateEvent(const VirtualQHoverEvent* self) {

	return self->QHoverEvent::isUpdateEvent();
}

bool QHoverEvent_virtualbase_isBeginEvent(const VirtualQHoverEvent* self) {

	return self->QHoverEvent::isBeginEvent();
}

bool QHoverEvent_virtualbase_isEndEvent(const VirtualQHoverEvent* self) {

	return self->QHoverEvent::isEndEvent();
}

void QHoverEvent_virtualbase_setTimestamp(VirtualQHoverEvent* self, unsigned long long timestamp) {

	self->QHoverEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QHoverEvent_virtualbase_setAccepted(VirtualQHoverEvent* self, bool accepted) {

	self->QHoverEvent::setAccepted(accepted);
}

const QHoverEvent_VTable* QHoverEvent_vtbl(const VirtualQHoverEvent* self) { return self->vtbl; }
void* QHoverEvent_vdata(const VirtualQHoverEvent* self) { return self->vdata; }
void QHoverEvent_setVdata(VirtualQHoverEvent* self, void* vdata) { self->vdata = vdata; }

void QHoverEvent_delete(QHoverEvent* self) {
	delete self;
}

class VirtualQWheelEvent final : public QWheelEvent {
	const QWheelEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QWheelEvent_VTable* QWheelEvent_vtbl(const VirtualQWheelEvent* self);
	friend void* QWheelEvent_vdata(const VirtualQWheelEvent* self);
	friend void QWheelEvent_setVdata(VirtualQWheelEvent* self, void* vdata);

	VirtualQWheelEvent(const QWheelEvent_VTable* vtbl, void* vdata, const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted), vtbl(vtbl), vdata(vdata) {}
	VirtualQWheelEvent(const QWheelEvent_VTable* vtbl, void* vdata, const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted, Qt::MouseEventSource source): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted, source), vtbl(vtbl), vdata(vdata) {}
	VirtualQWheelEvent(const QWheelEvent_VTable* vtbl, void* vdata, const QPointF& pos, const QPointF& globalPos, QPoint pixelDelta, QPoint angleDelta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::ScrollPhase phase, bool inverted, Qt::MouseEventSource source, const QPointingDevice* device): QWheelEvent(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted, source, device), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWheelEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QWheelEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QWheelEvent::clone();
		}


		QWheelEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QWheelEvent* QWheelEvent_virtualbase_clone(const VirtualQWheelEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QWheelEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isBeginEvent(const VirtualQWheelEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QWheelEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isUpdateEvent(const VirtualQWheelEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QWheelEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QWheelEvent_virtualbase_isEndEvent(const VirtualQWheelEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QWheelEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QWheelEvent_virtualbase_setTimestamp(VirtualQWheelEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QWheelEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QWheelEvent_virtualbase_setAccepted(VirtualQWheelEvent* self, bool accepted);

};

VirtualQWheelEvent* QWheelEvent_new(const QWheelEvent_VTable* vtbl, void* vdata, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted) {
	return new VirtualQWheelEvent(vtbl, vdata, *pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted);
}

VirtualQWheelEvent* QWheelEvent_new2(const QWheelEvent_VTable* vtbl, void* vdata, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source) {
	return new VirtualQWheelEvent(vtbl, vdata, *pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted, static_cast<Qt::MouseEventSource>(source));
}

VirtualQWheelEvent* QWheelEvent_new3(const QWheelEvent_VTable* vtbl, void* vdata, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source, QPointingDevice* device) {
	return new VirtualQWheelEvent(vtbl, vdata, *pos, *globalPos, *pixelDelta, *angleDelta, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::ScrollPhase>(phase), inverted, static_cast<Qt::MouseEventSource>(source), device);
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

QWheelEvent* QWheelEvent_virtualbase_clone(const VirtualQWheelEvent* self) {

	return self->QWheelEvent::clone();
}

bool QWheelEvent_virtualbase_isBeginEvent(const VirtualQWheelEvent* self) {

	return self->QWheelEvent::isBeginEvent();
}

bool QWheelEvent_virtualbase_isUpdateEvent(const VirtualQWheelEvent* self) {

	return self->QWheelEvent::isUpdateEvent();
}

bool QWheelEvent_virtualbase_isEndEvent(const VirtualQWheelEvent* self) {

	return self->QWheelEvent::isEndEvent();
}

void QWheelEvent_virtualbase_setTimestamp(VirtualQWheelEvent* self, unsigned long long timestamp) {

	self->QWheelEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QWheelEvent_virtualbase_setAccepted(VirtualQWheelEvent* self, bool accepted) {

	self->QWheelEvent::setAccepted(accepted);
}

const QMetaObject* QWheelEvent_staticMetaObject() { return &QWheelEvent::staticMetaObject; }

const QWheelEvent_VTable* QWheelEvent_vtbl(const VirtualQWheelEvent* self) { return self->vtbl; }
void* QWheelEvent_vdata(const VirtualQWheelEvent* self) { return self->vdata; }
void QWheelEvent_setVdata(VirtualQWheelEvent* self, void* vdata) { self->vdata = vdata; }

void QWheelEvent_delete(QWheelEvent* self) {
	delete self;
}

class VirtualQTabletEvent final : public QTabletEvent {
	const QTabletEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QTabletEvent_VTable* QTabletEvent_vtbl(const VirtualQTabletEvent* self);
	friend void* QTabletEvent_vdata(const VirtualQTabletEvent* self);
	friend void QTabletEvent_setVdata(VirtualQTabletEvent* self, void* vdata);

	VirtualQTabletEvent(const QTabletEvent_VTable* vtbl, void* vdata, QEvent::Type t, const QPointingDevice* device, const QPointF& pos, const QPointF& globalPos, qreal pressure, float xTilt, float yTilt, float tangentialPressure, qreal rotation, float z, Qt::KeyboardModifiers keyState, Qt::MouseButton button, Qt::MouseButtons buttons): QTabletEvent(t, device, pos, globalPos, pressure, xTilt, yTilt, tangentialPressure, rotation, z, keyState, button, buttons), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTabletEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QTabletEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTabletEvent::clone();
		}


		QTabletEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QTabletEvent* QTabletEvent_virtualbase_clone(const VirtualQTabletEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QTabletEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isBeginEvent(const VirtualQTabletEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QTabletEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isUpdateEvent(const VirtualQTabletEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QTabletEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QTabletEvent_virtualbase_isEndEvent(const VirtualQTabletEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QTabletEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QTabletEvent_virtualbase_setTimestamp(VirtualQTabletEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTabletEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QTabletEvent_virtualbase_setAccepted(VirtualQTabletEvent* self, bool accepted);

};

VirtualQTabletEvent* QTabletEvent_new(const QTabletEvent_VTable* vtbl, void* vdata, int t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int keyState, int button, int buttons) {
	return new VirtualQTabletEvent(vtbl, vdata, static_cast<QEvent::Type>(t), device, *pos, *globalPos, static_cast<qreal>(pressure), static_cast<float>(xTilt), static_cast<float>(yTilt), static_cast<float>(tangentialPressure), static_cast<qreal>(rotation), static_cast<float>(z), static_cast<Qt::KeyboardModifiers>(keyState), static_cast<Qt::MouseButton>(button), static_cast<Qt::MouseButtons>(buttons));
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

QTabletEvent* QTabletEvent_virtualbase_clone(const VirtualQTabletEvent* self) {

	return self->QTabletEvent::clone();
}

bool QTabletEvent_virtualbase_isBeginEvent(const VirtualQTabletEvent* self) {

	return self->QTabletEvent::isBeginEvent();
}

bool QTabletEvent_virtualbase_isUpdateEvent(const VirtualQTabletEvent* self) {

	return self->QTabletEvent::isUpdateEvent();
}

bool QTabletEvent_virtualbase_isEndEvent(const VirtualQTabletEvent* self) {

	return self->QTabletEvent::isEndEvent();
}

void QTabletEvent_virtualbase_setTimestamp(VirtualQTabletEvent* self, unsigned long long timestamp) {

	self->QTabletEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QTabletEvent_virtualbase_setAccepted(VirtualQTabletEvent* self, bool accepted) {

	self->QTabletEvent::setAccepted(accepted);
}

const QTabletEvent_VTable* QTabletEvent_vtbl(const VirtualQTabletEvent* self) { return self->vtbl; }
void* QTabletEvent_vdata(const VirtualQTabletEvent* self) { return self->vdata; }
void QTabletEvent_setVdata(VirtualQTabletEvent* self, void* vdata) { self->vdata = vdata; }

void QTabletEvent_delete(QTabletEvent* self) {
	delete self;
}

class VirtualQNativeGestureEvent final : public QNativeGestureEvent {
	const QNativeGestureEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QNativeGestureEvent_VTable* QNativeGestureEvent_vtbl(const VirtualQNativeGestureEvent* self);
	friend void* QNativeGestureEvent_vdata(const VirtualQNativeGestureEvent* self);
	friend void QNativeGestureEvent_setVdata(VirtualQNativeGestureEvent* self, void* vdata);

	VirtualQNativeGestureEvent(const QNativeGestureEvent_VTable* vtbl, void* vdata, Qt::NativeGestureType type, const QPointingDevice* dev, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, quint64 sequenceId, quint64 intArgument): QNativeGestureEvent(type, dev, localPos, scenePos, globalPos, value, sequenceId, intArgument), vtbl(vtbl), vdata(vdata) {}
	VirtualQNativeGestureEvent(const QNativeGestureEvent_VTable* vtbl, void* vdata, Qt::NativeGestureType type, const QPointingDevice* dev, int fingerCount, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, const QPointF& delta): QNativeGestureEvent(type, dev, fingerCount, localPos, scenePos, globalPos, value, delta), vtbl(vtbl), vdata(vdata) {}
	VirtualQNativeGestureEvent(const QNativeGestureEvent_VTable* vtbl, void* vdata, Qt::NativeGestureType type, const QPointingDevice* dev, int fingerCount, const QPointF& localPos, const QPointF& scenePos, const QPointF& globalPos, qreal value, const QPointF& delta, quint64 sequenceId): QNativeGestureEvent(type, dev, fingerCount, localPos, scenePos, globalPos, value, delta, sequenceId), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQNativeGestureEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QNativeGestureEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QNativeGestureEvent::clone();
		}


		QNativeGestureEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const VirtualQNativeGestureEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QNativeGestureEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isBeginEvent(const VirtualQNativeGestureEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QNativeGestureEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isUpdateEvent(const VirtualQNativeGestureEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QNativeGestureEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QNativeGestureEvent_virtualbase_isEndEvent(const VirtualQNativeGestureEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QNativeGestureEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QNativeGestureEvent_virtualbase_setTimestamp(VirtualQNativeGestureEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QNativeGestureEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QNativeGestureEvent_virtualbase_setAccepted(VirtualQNativeGestureEvent* self, bool accepted);

};

VirtualQNativeGestureEvent* QNativeGestureEvent_new(const QNativeGestureEvent_VTable* vtbl, void* vdata, int type, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, unsigned long long sequenceId, unsigned long long intArgument) {
	return new VirtualQNativeGestureEvent(vtbl, vdata, static_cast<Qt::NativeGestureType>(type), dev, *localPos, *scenePos, *globalPos, static_cast<qreal>(value), static_cast<quint64>(sequenceId), static_cast<quint64>(intArgument));
}

VirtualQNativeGestureEvent* QNativeGestureEvent_new2(const QNativeGestureEvent_VTable* vtbl, void* vdata, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta) {
	return new VirtualQNativeGestureEvent(vtbl, vdata, static_cast<Qt::NativeGestureType>(type), dev, static_cast<int>(fingerCount), *localPos, *scenePos, *globalPos, static_cast<qreal>(value), *delta);
}

VirtualQNativeGestureEvent* QNativeGestureEvent_new3(const QNativeGestureEvent_VTable* vtbl, void* vdata, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, unsigned long long sequenceId) {
	return new VirtualQNativeGestureEvent(vtbl, vdata, static_cast<Qt::NativeGestureType>(type), dev, static_cast<int>(fingerCount), *localPos, *scenePos, *globalPos, static_cast<qreal>(value), *delta, static_cast<quint64>(sequenceId));
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

QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const VirtualQNativeGestureEvent* self) {

	return self->QNativeGestureEvent::clone();
}

bool QNativeGestureEvent_virtualbase_isBeginEvent(const VirtualQNativeGestureEvent* self) {

	return self->QNativeGestureEvent::isBeginEvent();
}

bool QNativeGestureEvent_virtualbase_isUpdateEvent(const VirtualQNativeGestureEvent* self) {

	return self->QNativeGestureEvent::isUpdateEvent();
}

bool QNativeGestureEvent_virtualbase_isEndEvent(const VirtualQNativeGestureEvent* self) {

	return self->QNativeGestureEvent::isEndEvent();
}

void QNativeGestureEvent_virtualbase_setTimestamp(VirtualQNativeGestureEvent* self, unsigned long long timestamp) {

	self->QNativeGestureEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QNativeGestureEvent_virtualbase_setAccepted(VirtualQNativeGestureEvent* self, bool accepted) {

	self->QNativeGestureEvent::setAccepted(accepted);
}

const QNativeGestureEvent_VTable* QNativeGestureEvent_vtbl(const VirtualQNativeGestureEvent* self) { return self->vtbl; }
void* QNativeGestureEvent_vdata(const VirtualQNativeGestureEvent* self) { return self->vdata; }
void QNativeGestureEvent_setVdata(VirtualQNativeGestureEvent* self, void* vdata) { self->vdata = vdata; }

void QNativeGestureEvent_delete(QNativeGestureEvent* self) {
	delete self;
}

class VirtualQKeyEvent final : public QKeyEvent {
	const QKeyEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QKeyEvent_VTable* QKeyEvent_vtbl(const VirtualQKeyEvent* self);
	friend void* QKeyEvent_vdata(const VirtualQKeyEvent* self);
	friend void QKeyEvent_setVdata(VirtualQKeyEvent* self, void* vdata);

	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers): QKeyEvent(type, key, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text): QKeyEvent(type, key, modifiers, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text, bool autorep): QKeyEvent(type, key, modifiers, text, autorep), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString& text, bool autorep, quint16 count): QKeyEvent(type, key, modifiers, text, autorep, count), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep, quint16 count): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep, count), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeyEvent(const QKeyEvent_VTable* vtbl, void* vdata, QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString& text, bool autorep, quint16 count, const QInputDevice* device): QKeyEvent(type, key, modifiers, nativeScanCode, nativeVirtualKey, nativeModifiers, text, autorep, count, device), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQKeyEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QKeyEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QKeyEvent::clone();
		}


		QKeyEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QKeyEvent* QKeyEvent_virtualbase_clone(const VirtualQKeyEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QKeyEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QKeyEvent_virtualbase_setTimestamp(VirtualQKeyEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QKeyEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QKeyEvent_virtualbase_setAccepted(VirtualQKeyEvent* self, bool accepted);

};

VirtualQKeyEvent* QKeyEvent_new(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers) {
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQKeyEvent* QKeyEvent_new2(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers) {
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers));
}

VirtualQKeyEvent* QKeyEvent_new3(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString);
}

VirtualQKeyEvent* QKeyEvent_new4(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, struct miqt_string text, bool autorep) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString, autorep);
}

VirtualQKeyEvent* QKeyEvent_new5(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, struct miqt_string text, bool autorep, uint16_t count) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), text_QString, autorep, static_cast<quint16>(count));
}

VirtualQKeyEvent* QKeyEvent_new6(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString);
}

VirtualQKeyEvent* QKeyEvent_new7(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep);
}

VirtualQKeyEvent* QKeyEvent_new8(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep, static_cast<quint16>(count));
}

VirtualQKeyEvent* QKeyEvent_new9(const QKeyEvent_VTable* vtbl, void* vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count, QInputDevice* device) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQKeyEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<int>(key), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<quint32>(nativeScanCode), static_cast<quint32>(nativeVirtualKey), static_cast<quint32>(nativeModifiers), text_QString, autorep, static_cast<quint16>(count), device);
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

QKeyEvent* QKeyEvent_virtualbase_clone(const VirtualQKeyEvent* self) {

	return self->QKeyEvent::clone();
}

void QKeyEvent_virtualbase_setTimestamp(VirtualQKeyEvent* self, unsigned long long timestamp) {

	self->QKeyEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QKeyEvent_virtualbase_setAccepted(VirtualQKeyEvent* self, bool accepted) {

	self->QKeyEvent::setAccepted(accepted);
}

const QKeyEvent_VTable* QKeyEvent_vtbl(const VirtualQKeyEvent* self) { return self->vtbl; }
void* QKeyEvent_vdata(const VirtualQKeyEvent* self) { return self->vdata; }
void QKeyEvent_setVdata(VirtualQKeyEvent* self, void* vdata) { self->vdata = vdata; }

void QKeyEvent_delete(QKeyEvent* self) {
	delete self;
}

class VirtualQFocusEvent final : public QFocusEvent {
	const QFocusEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QFocusEvent_VTable* QFocusEvent_vtbl(const VirtualQFocusEvent* self);
	friend void* QFocusEvent_vdata(const VirtualQFocusEvent* self);
	friend void QFocusEvent_setVdata(VirtualQFocusEvent* self, void* vdata);

	VirtualQFocusEvent(const QFocusEvent_VTable* vtbl, void* vdata, QEvent::Type type): QFocusEvent(type), vtbl(vtbl), vdata(vdata) {}
	VirtualQFocusEvent(const QFocusEvent_VTable* vtbl, void* vdata, QEvent::Type type, Qt::FocusReason reason): QFocusEvent(type, reason), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFocusEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QFocusEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QFocusEvent::clone();
		}


		QFocusEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QFocusEvent* QFocusEvent_virtualbase_clone(const VirtualQFocusEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QFocusEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QFocusEvent_virtualbase_setAccepted(VirtualQFocusEvent* self, bool accepted);

};

VirtualQFocusEvent* QFocusEvent_new(const QFocusEvent_VTable* vtbl, void* vdata, int type) {
	return new VirtualQFocusEvent(vtbl, vdata, static_cast<QEvent::Type>(type));
}

VirtualQFocusEvent* QFocusEvent_new2(const QFocusEvent_VTable* vtbl, void* vdata, int type, int reason) {
	return new VirtualQFocusEvent(vtbl, vdata, static_cast<QEvent::Type>(type), static_cast<Qt::FocusReason>(reason));
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

QFocusEvent* QFocusEvent_virtualbase_clone(const VirtualQFocusEvent* self) {

	return self->QFocusEvent::clone();
}

void QFocusEvent_virtualbase_setAccepted(VirtualQFocusEvent* self, bool accepted) {

	self->QFocusEvent::setAccepted(accepted);
}

const QFocusEvent_VTable* QFocusEvent_vtbl(const VirtualQFocusEvent* self) { return self->vtbl; }
void* QFocusEvent_vdata(const VirtualQFocusEvent* self) { return self->vdata; }
void QFocusEvent_setVdata(VirtualQFocusEvent* self, void* vdata) { self->vdata = vdata; }

void QFocusEvent_delete(QFocusEvent* self) {
	delete self;
}

class VirtualQPaintEvent final : public QPaintEvent {
	const QPaintEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QPaintEvent_VTable* QPaintEvent_vtbl(const VirtualQPaintEvent* self);
	friend void* QPaintEvent_vdata(const VirtualQPaintEvent* self);
	friend void QPaintEvent_setVdata(VirtualQPaintEvent* self, void* vdata);

	VirtualQPaintEvent(const QPaintEvent_VTable* vtbl, void* vdata, const QRegion& paintRegion): QPaintEvent(paintRegion), vtbl(vtbl), vdata(vdata) {}
	VirtualQPaintEvent(const QPaintEvent_VTable* vtbl, void* vdata, const QRect& paintRect): QPaintEvent(paintRect), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPaintEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QPaintEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QPaintEvent::clone();
		}


		QPaintEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QPaintEvent* QPaintEvent_virtualbase_clone(const VirtualQPaintEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QPaintEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QPaintEvent_virtualbase_setAccepted(VirtualQPaintEvent* self, bool accepted);

};

VirtualQPaintEvent* QPaintEvent_new(const QPaintEvent_VTable* vtbl, void* vdata, QRegion* paintRegion) {
	return new VirtualQPaintEvent(vtbl, vdata, *paintRegion);
}

VirtualQPaintEvent* QPaintEvent_new2(const QPaintEvent_VTable* vtbl, void* vdata, QRect* paintRect) {
	return new VirtualQPaintEvent(vtbl, vdata, *paintRect);
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

QPaintEvent* QPaintEvent_virtualbase_clone(const VirtualQPaintEvent* self) {

	return self->QPaintEvent::clone();
}

void QPaintEvent_virtualbase_setAccepted(VirtualQPaintEvent* self, bool accepted) {

	self->QPaintEvent::setAccepted(accepted);
}

const QPaintEvent_VTable* QPaintEvent_vtbl(const VirtualQPaintEvent* self) { return self->vtbl; }
void* QPaintEvent_vdata(const VirtualQPaintEvent* self) { return self->vdata; }
void QPaintEvent_setVdata(VirtualQPaintEvent* self, void* vdata) { self->vdata = vdata; }

void QPaintEvent_delete(QPaintEvent* self) {
	delete self;
}

class VirtualQMoveEvent final : public QMoveEvent {
	const QMoveEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QMoveEvent_VTable* QMoveEvent_vtbl(const VirtualQMoveEvent* self);
	friend void* QMoveEvent_vdata(const VirtualQMoveEvent* self);
	friend void QMoveEvent_setVdata(VirtualQMoveEvent* self, void* vdata);

	VirtualQMoveEvent(const QMoveEvent_VTable* vtbl, void* vdata, const QPoint& pos, const QPoint& oldPos): QMoveEvent(pos, oldPos), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMoveEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QMoveEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QMoveEvent::clone();
		}


		QMoveEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QMoveEvent* QMoveEvent_virtualbase_clone(const VirtualQMoveEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QMoveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QMoveEvent_virtualbase_setAccepted(VirtualQMoveEvent* self, bool accepted);

};

VirtualQMoveEvent* QMoveEvent_new(const QMoveEvent_VTable* vtbl, void* vdata, QPoint* pos, QPoint* oldPos) {
	return new VirtualQMoveEvent(vtbl, vdata, *pos, *oldPos);
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

QMoveEvent* QMoveEvent_virtualbase_clone(const VirtualQMoveEvent* self) {

	return self->QMoveEvent::clone();
}

void QMoveEvent_virtualbase_setAccepted(VirtualQMoveEvent* self, bool accepted) {

	self->QMoveEvent::setAccepted(accepted);
}

const QMoveEvent_VTable* QMoveEvent_vtbl(const VirtualQMoveEvent* self) { return self->vtbl; }
void* QMoveEvent_vdata(const VirtualQMoveEvent* self) { return self->vdata; }
void QMoveEvent_setVdata(VirtualQMoveEvent* self, void* vdata) { self->vdata = vdata; }

void QMoveEvent_delete(QMoveEvent* self) {
	delete self;
}

class VirtualQExposeEvent final : public QExposeEvent {
	const QExposeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QExposeEvent_VTable* QExposeEvent_vtbl(const VirtualQExposeEvent* self);
	friend void* QExposeEvent_vdata(const VirtualQExposeEvent* self);
	friend void QExposeEvent_setVdata(VirtualQExposeEvent* self, void* vdata);

	VirtualQExposeEvent(const QExposeEvent_VTable* vtbl, void* vdata, const QRegion& m_region): QExposeEvent(m_region), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQExposeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QExposeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QExposeEvent::clone();
		}


		QExposeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QExposeEvent* QExposeEvent_virtualbase_clone(const VirtualQExposeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QExposeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QExposeEvent_virtualbase_setAccepted(VirtualQExposeEvent* self, bool accepted);

};

VirtualQExposeEvent* QExposeEvent_new(const QExposeEvent_VTable* vtbl, void* vdata, QRegion* m_region) {
	return new VirtualQExposeEvent(vtbl, vdata, *m_region);
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

QExposeEvent* QExposeEvent_virtualbase_clone(const VirtualQExposeEvent* self) {

	return self->QExposeEvent::clone();
}

void QExposeEvent_virtualbase_setAccepted(VirtualQExposeEvent* self, bool accepted) {

	self->QExposeEvent::setAccepted(accepted);
}

const QExposeEvent_VTable* QExposeEvent_vtbl(const VirtualQExposeEvent* self) { return self->vtbl; }
void* QExposeEvent_vdata(const VirtualQExposeEvent* self) { return self->vdata; }
void QExposeEvent_setVdata(VirtualQExposeEvent* self, void* vdata) { self->vdata = vdata; }

void QExposeEvent_delete(QExposeEvent* self) {
	delete self;
}

class VirtualQPlatformSurfaceEvent final : public QPlatformSurfaceEvent {
	const QPlatformSurfaceEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QPlatformSurfaceEvent_VTable* QPlatformSurfaceEvent_vtbl(const VirtualQPlatformSurfaceEvent* self);
	friend void* QPlatformSurfaceEvent_vdata(const VirtualQPlatformSurfaceEvent* self);
	friend void QPlatformSurfaceEvent_setVdata(VirtualQPlatformSurfaceEvent* self, void* vdata);

	VirtualQPlatformSurfaceEvent(const QPlatformSurfaceEvent_VTable* vtbl, void* vdata, QPlatformSurfaceEvent::SurfaceEventType surfaceEventType): QPlatformSurfaceEvent(surfaceEventType), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPlatformSurfaceEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QPlatformSurfaceEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QPlatformSurfaceEvent::clone();
		}


		QPlatformSurfaceEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const VirtualQPlatformSurfaceEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QPlatformSurfaceEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QPlatformSurfaceEvent_virtualbase_setAccepted(VirtualQPlatformSurfaceEvent* self, bool accepted);

};

VirtualQPlatformSurfaceEvent* QPlatformSurfaceEvent_new(const QPlatformSurfaceEvent_VTable* vtbl, void* vdata, int surfaceEventType) {
	return new VirtualQPlatformSurfaceEvent(vtbl, vdata, static_cast<QPlatformSurfaceEvent::SurfaceEventType>(surfaceEventType));
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

QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const VirtualQPlatformSurfaceEvent* self) {

	return self->QPlatformSurfaceEvent::clone();
}

void QPlatformSurfaceEvent_virtualbase_setAccepted(VirtualQPlatformSurfaceEvent* self, bool accepted) {

	self->QPlatformSurfaceEvent::setAccepted(accepted);
}

const QPlatformSurfaceEvent_VTable* QPlatformSurfaceEvent_vtbl(const VirtualQPlatformSurfaceEvent* self) { return self->vtbl; }
void* QPlatformSurfaceEvent_vdata(const VirtualQPlatformSurfaceEvent* self) { return self->vdata; }
void QPlatformSurfaceEvent_setVdata(VirtualQPlatformSurfaceEvent* self, void* vdata) { self->vdata = vdata; }

void QPlatformSurfaceEvent_delete(QPlatformSurfaceEvent* self) {
	delete self;
}

class VirtualQResizeEvent final : public QResizeEvent {
	const QResizeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QResizeEvent_VTable* QResizeEvent_vtbl(const VirtualQResizeEvent* self);
	friend void* QResizeEvent_vdata(const VirtualQResizeEvent* self);
	friend void QResizeEvent_setVdata(VirtualQResizeEvent* self, void* vdata);

	VirtualQResizeEvent(const QResizeEvent_VTable* vtbl, void* vdata, const QSize& size, const QSize& oldSize): QResizeEvent(size, oldSize), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQResizeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QResizeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QResizeEvent::clone();
		}


		QResizeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QResizeEvent* QResizeEvent_virtualbase_clone(const VirtualQResizeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QResizeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QResizeEvent_virtualbase_setAccepted(VirtualQResizeEvent* self, bool accepted);

};

VirtualQResizeEvent* QResizeEvent_new(const QResizeEvent_VTable* vtbl, void* vdata, QSize* size, QSize* oldSize) {
	return new VirtualQResizeEvent(vtbl, vdata, *size, *oldSize);
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

QResizeEvent* QResizeEvent_virtualbase_clone(const VirtualQResizeEvent* self) {

	return self->QResizeEvent::clone();
}

void QResizeEvent_virtualbase_setAccepted(VirtualQResizeEvent* self, bool accepted) {

	self->QResizeEvent::setAccepted(accepted);
}

const QResizeEvent_VTable* QResizeEvent_vtbl(const VirtualQResizeEvent* self) { return self->vtbl; }
void* QResizeEvent_vdata(const VirtualQResizeEvent* self) { return self->vdata; }
void QResizeEvent_setVdata(VirtualQResizeEvent* self, void* vdata) { self->vdata = vdata; }

void QResizeEvent_delete(QResizeEvent* self) {
	delete self;
}

class VirtualQCloseEvent final : public QCloseEvent {
	const QCloseEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QCloseEvent_VTable* QCloseEvent_vtbl(const VirtualQCloseEvent* self);
	friend void* QCloseEvent_vdata(const VirtualQCloseEvent* self);
	friend void QCloseEvent_setVdata(VirtualQCloseEvent* self, void* vdata);

	VirtualQCloseEvent(const QCloseEvent_VTable* vtbl, void* vdata): QCloseEvent(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQCloseEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QCloseEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QCloseEvent::clone();
		}


		QCloseEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QCloseEvent* QCloseEvent_virtualbase_clone(const VirtualQCloseEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QCloseEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QCloseEvent_virtualbase_setAccepted(VirtualQCloseEvent* self, bool accepted);

};

VirtualQCloseEvent* QCloseEvent_new(const QCloseEvent_VTable* vtbl, void* vdata) {
	return new VirtualQCloseEvent(vtbl, vdata);
}

void QCloseEvent_virtbase(QCloseEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QCloseEvent* QCloseEvent_clone(const QCloseEvent* self) {
	return self->clone();
}

QCloseEvent* QCloseEvent_virtualbase_clone(const VirtualQCloseEvent* self) {

	return self->QCloseEvent::clone();
}

void QCloseEvent_virtualbase_setAccepted(VirtualQCloseEvent* self, bool accepted) {

	self->QCloseEvent::setAccepted(accepted);
}

const QCloseEvent_VTable* QCloseEvent_vtbl(const VirtualQCloseEvent* self) { return self->vtbl; }
void* QCloseEvent_vdata(const VirtualQCloseEvent* self) { return self->vdata; }
void QCloseEvent_setVdata(VirtualQCloseEvent* self, void* vdata) { self->vdata = vdata; }

void QCloseEvent_delete(QCloseEvent* self) {
	delete self;
}

class VirtualQIconDragEvent final : public QIconDragEvent {
	const QIconDragEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QIconDragEvent_VTable* QIconDragEvent_vtbl(const VirtualQIconDragEvent* self);
	friend void* QIconDragEvent_vdata(const VirtualQIconDragEvent* self);
	friend void QIconDragEvent_setVdata(VirtualQIconDragEvent* self, void* vdata);

	VirtualQIconDragEvent(const QIconDragEvent_VTable* vtbl, void* vdata): QIconDragEvent(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQIconDragEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QIconDragEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QIconDragEvent::clone();
		}


		QIconDragEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QIconDragEvent* QIconDragEvent_virtualbase_clone(const VirtualQIconDragEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QIconDragEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QIconDragEvent_virtualbase_setAccepted(VirtualQIconDragEvent* self, bool accepted);

};

VirtualQIconDragEvent* QIconDragEvent_new(const QIconDragEvent_VTable* vtbl, void* vdata) {
	return new VirtualQIconDragEvent(vtbl, vdata);
}

void QIconDragEvent_virtbase(QIconDragEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QIconDragEvent* QIconDragEvent_clone(const QIconDragEvent* self) {
	return self->clone();
}

QIconDragEvent* QIconDragEvent_virtualbase_clone(const VirtualQIconDragEvent* self) {

	return self->QIconDragEvent::clone();
}

void QIconDragEvent_virtualbase_setAccepted(VirtualQIconDragEvent* self, bool accepted) {

	self->QIconDragEvent::setAccepted(accepted);
}

const QIconDragEvent_VTable* QIconDragEvent_vtbl(const VirtualQIconDragEvent* self) { return self->vtbl; }
void* QIconDragEvent_vdata(const VirtualQIconDragEvent* self) { return self->vdata; }
void QIconDragEvent_setVdata(VirtualQIconDragEvent* self, void* vdata) { self->vdata = vdata; }

void QIconDragEvent_delete(QIconDragEvent* self) {
	delete self;
}

class VirtualQShowEvent final : public QShowEvent {
	const QShowEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QShowEvent_VTable* QShowEvent_vtbl(const VirtualQShowEvent* self);
	friend void* QShowEvent_vdata(const VirtualQShowEvent* self);
	friend void QShowEvent_setVdata(VirtualQShowEvent* self, void* vdata);

	VirtualQShowEvent(const QShowEvent_VTable* vtbl, void* vdata): QShowEvent(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQShowEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QShowEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QShowEvent::clone();
		}


		QShowEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QShowEvent* QShowEvent_virtualbase_clone(const VirtualQShowEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QShowEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QShowEvent_virtualbase_setAccepted(VirtualQShowEvent* self, bool accepted);

};

VirtualQShowEvent* QShowEvent_new(const QShowEvent_VTable* vtbl, void* vdata) {
	return new VirtualQShowEvent(vtbl, vdata);
}

void QShowEvent_virtbase(QShowEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QShowEvent* QShowEvent_clone(const QShowEvent* self) {
	return self->clone();
}

QShowEvent* QShowEvent_virtualbase_clone(const VirtualQShowEvent* self) {

	return self->QShowEvent::clone();
}

void QShowEvent_virtualbase_setAccepted(VirtualQShowEvent* self, bool accepted) {

	self->QShowEvent::setAccepted(accepted);
}

const QShowEvent_VTable* QShowEvent_vtbl(const VirtualQShowEvent* self) { return self->vtbl; }
void* QShowEvent_vdata(const VirtualQShowEvent* self) { return self->vdata; }
void QShowEvent_setVdata(VirtualQShowEvent* self, void* vdata) { self->vdata = vdata; }

void QShowEvent_delete(QShowEvent* self) {
	delete self;
}

class VirtualQHideEvent final : public QHideEvent {
	const QHideEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QHideEvent_VTable* QHideEvent_vtbl(const VirtualQHideEvent* self);
	friend void* QHideEvent_vdata(const VirtualQHideEvent* self);
	friend void QHideEvent_setVdata(VirtualQHideEvent* self, void* vdata);

	VirtualQHideEvent(const QHideEvent_VTable* vtbl, void* vdata): QHideEvent(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQHideEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QHideEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QHideEvent::clone();
		}


		QHideEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QHideEvent* QHideEvent_virtualbase_clone(const VirtualQHideEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QHideEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QHideEvent_virtualbase_setAccepted(VirtualQHideEvent* self, bool accepted);

};

VirtualQHideEvent* QHideEvent_new(const QHideEvent_VTable* vtbl, void* vdata) {
	return new VirtualQHideEvent(vtbl, vdata);
}

void QHideEvent_virtbase(QHideEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QHideEvent* QHideEvent_clone(const QHideEvent* self) {
	return self->clone();
}

QHideEvent* QHideEvent_virtualbase_clone(const VirtualQHideEvent* self) {

	return self->QHideEvent::clone();
}

void QHideEvent_virtualbase_setAccepted(VirtualQHideEvent* self, bool accepted) {

	self->QHideEvent::setAccepted(accepted);
}

const QHideEvent_VTable* QHideEvent_vtbl(const VirtualQHideEvent* self) { return self->vtbl; }
void* QHideEvent_vdata(const VirtualQHideEvent* self) { return self->vdata; }
void QHideEvent_setVdata(VirtualQHideEvent* self, void* vdata) { self->vdata = vdata; }

void QHideEvent_delete(QHideEvent* self) {
	delete self;
}

class VirtualQContextMenuEvent final : public QContextMenuEvent {
	const QContextMenuEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QContextMenuEvent_VTable* QContextMenuEvent_vtbl(const VirtualQContextMenuEvent* self);
	friend void* QContextMenuEvent_vdata(const VirtualQContextMenuEvent* self);
	friend void QContextMenuEvent_setVdata(VirtualQContextMenuEvent* self, void* vdata);

	VirtualQContextMenuEvent(const QContextMenuEvent_VTable* vtbl, void* vdata, QContextMenuEvent::Reason reason, const QPoint& pos, const QPoint& globalPos): QContextMenuEvent(reason, pos, globalPos), vtbl(vtbl), vdata(vdata) {}
	VirtualQContextMenuEvent(const QContextMenuEvent_VTable* vtbl, void* vdata, QContextMenuEvent::Reason reason, const QPoint& pos): QContextMenuEvent(reason, pos), vtbl(vtbl), vdata(vdata) {}
	VirtualQContextMenuEvent(const QContextMenuEvent_VTable* vtbl, void* vdata, QContextMenuEvent::Reason reason, const QPoint& pos, const QPoint& globalPos, Qt::KeyboardModifiers modifiers): QContextMenuEvent(reason, pos, globalPos, modifiers), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQContextMenuEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QContextMenuEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QContextMenuEvent::clone();
		}


		QContextMenuEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const VirtualQContextMenuEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QContextMenuEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QContextMenuEvent_virtualbase_setTimestamp(VirtualQContextMenuEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QContextMenuEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QContextMenuEvent_virtualbase_setAccepted(VirtualQContextMenuEvent* self, bool accepted);

};

VirtualQContextMenuEvent* QContextMenuEvent_new(const QContextMenuEvent_VTable* vtbl, void* vdata, int reason, QPoint* pos, QPoint* globalPos) {
	return new VirtualQContextMenuEvent(vtbl, vdata, static_cast<QContextMenuEvent::Reason>(reason), *pos, *globalPos);
}

VirtualQContextMenuEvent* QContextMenuEvent_new2(const QContextMenuEvent_VTable* vtbl, void* vdata, int reason, QPoint* pos) {
	return new VirtualQContextMenuEvent(vtbl, vdata, static_cast<QContextMenuEvent::Reason>(reason), *pos);
}

VirtualQContextMenuEvent* QContextMenuEvent_new3(const QContextMenuEvent_VTable* vtbl, void* vdata, int reason, QPoint* pos, QPoint* globalPos, int modifiers) {
	return new VirtualQContextMenuEvent(vtbl, vdata, static_cast<QContextMenuEvent::Reason>(reason), *pos, *globalPos, static_cast<Qt::KeyboardModifiers>(modifiers));
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

QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const VirtualQContextMenuEvent* self) {

	return self->QContextMenuEvent::clone();
}

void QContextMenuEvent_virtualbase_setTimestamp(VirtualQContextMenuEvent* self, unsigned long long timestamp) {

	self->QContextMenuEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QContextMenuEvent_virtualbase_setAccepted(VirtualQContextMenuEvent* self, bool accepted) {

	self->QContextMenuEvent::setAccepted(accepted);
}

const QContextMenuEvent_VTable* QContextMenuEvent_vtbl(const VirtualQContextMenuEvent* self) { return self->vtbl; }
void* QContextMenuEvent_vdata(const VirtualQContextMenuEvent* self) { return self->vdata; }
void QContextMenuEvent_setVdata(VirtualQContextMenuEvent* self, void* vdata) { self->vdata = vdata; }

void QContextMenuEvent_delete(QContextMenuEvent* self) {
	delete self;
}

class VirtualQInputMethodEvent final : public QInputMethodEvent {
	const QInputMethodEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QInputMethodEvent_VTable* QInputMethodEvent_vtbl(const VirtualQInputMethodEvent* self);
	friend void* QInputMethodEvent_vdata(const VirtualQInputMethodEvent* self);
	friend void QInputMethodEvent_setVdata(VirtualQInputMethodEvent* self, void* vdata);

	VirtualQInputMethodEvent(const QInputMethodEvent_VTable* vtbl, void* vdata): QInputMethodEvent(), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputMethodEvent(const QInputMethodEvent_VTable* vtbl, void* vdata, const QString& preeditText, const QList<QInputMethodEvent::Attribute>& attributes): QInputMethodEvent(preeditText, attributes), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQInputMethodEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QInputMethodEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QInputMethodEvent::clone();
		}


		QInputMethodEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const VirtualQInputMethodEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QInputMethodEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QInputMethodEvent_virtualbase_setAccepted(VirtualQInputMethodEvent* self, bool accepted);

};

VirtualQInputMethodEvent* QInputMethodEvent_new(const QInputMethodEvent_VTable* vtbl, void* vdata) {
	return new VirtualQInputMethodEvent(vtbl, vdata);
}

VirtualQInputMethodEvent* QInputMethodEvent_new2(const QInputMethodEvent_VTable* vtbl, void* vdata, struct miqt_string preeditText, struct miqt_array /* of QInputMethodEvent__Attribute* */  attributes) {
	QString preeditText_QString = QString::fromUtf8(preeditText.data, preeditText.len);
	QList<QInputMethodEvent::Attribute> attributes_QList;
	attributes_QList.reserve(attributes.len);
	QInputMethodEvent__Attribute** attributes_arr = static_cast<QInputMethodEvent__Attribute**>(attributes.data);
	for(size_t i = 0; i < attributes.len; ++i) {
		attributes_QList.push_back(*(attributes_arr[i]));
	}
	return new VirtualQInputMethodEvent(vtbl, vdata, preeditText_QString, attributes_QList);
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

QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const VirtualQInputMethodEvent* self) {

	return self->QInputMethodEvent::clone();
}

void QInputMethodEvent_virtualbase_setAccepted(VirtualQInputMethodEvent* self, bool accepted) {

	self->QInputMethodEvent::setAccepted(accepted);
}

const QInputMethodEvent_VTable* QInputMethodEvent_vtbl(const VirtualQInputMethodEvent* self) { return self->vtbl; }
void* QInputMethodEvent_vdata(const VirtualQInputMethodEvent* self) { return self->vdata; }
void QInputMethodEvent_setVdata(VirtualQInputMethodEvent* self, void* vdata) { self->vdata = vdata; }

void QInputMethodEvent_delete(QInputMethodEvent* self) {
	delete self;
}

class VirtualQInputMethodQueryEvent final : public QInputMethodQueryEvent {
	const QInputMethodQueryEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QInputMethodQueryEvent_VTable* QInputMethodQueryEvent_vtbl(const VirtualQInputMethodQueryEvent* self);
	friend void* QInputMethodQueryEvent_vdata(const VirtualQInputMethodQueryEvent* self);
	friend void QInputMethodQueryEvent_setVdata(VirtualQInputMethodQueryEvent* self, void* vdata);

	VirtualQInputMethodQueryEvent(const QInputMethodQueryEvent_VTable* vtbl, void* vdata, Qt::InputMethodQueries queries): QInputMethodQueryEvent(queries), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQInputMethodQueryEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QInputMethodQueryEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QInputMethodQueryEvent::clone();
		}


		QInputMethodQueryEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const VirtualQInputMethodQueryEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QInputMethodQueryEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QInputMethodQueryEvent_virtualbase_setAccepted(VirtualQInputMethodQueryEvent* self, bool accepted);

};

VirtualQInputMethodQueryEvent* QInputMethodQueryEvent_new(const QInputMethodQueryEvent_VTable* vtbl, void* vdata, int queries) {
	return new VirtualQInputMethodQueryEvent(vtbl, vdata, static_cast<Qt::InputMethodQueries>(queries));
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

QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const VirtualQInputMethodQueryEvent* self) {

	return self->QInputMethodQueryEvent::clone();
}

void QInputMethodQueryEvent_virtualbase_setAccepted(VirtualQInputMethodQueryEvent* self, bool accepted) {

	self->QInputMethodQueryEvent::setAccepted(accepted);
}

const QInputMethodQueryEvent_VTable* QInputMethodQueryEvent_vtbl(const VirtualQInputMethodQueryEvent* self) { return self->vtbl; }
void* QInputMethodQueryEvent_vdata(const VirtualQInputMethodQueryEvent* self) { return self->vdata; }
void QInputMethodQueryEvent_setVdata(VirtualQInputMethodQueryEvent* self, void* vdata) { self->vdata = vdata; }

void QInputMethodQueryEvent_delete(QInputMethodQueryEvent* self) {
	delete self;
}

class VirtualQDropEvent final : public QDropEvent {
	const QDropEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QDropEvent_VTable* QDropEvent_vtbl(const VirtualQDropEvent* self);
	friend void* QDropEvent_vdata(const VirtualQDropEvent* self);
	friend void QDropEvent_setVdata(VirtualQDropEvent* self, void* vdata);

	VirtualQDropEvent(const QDropEvent_VTable* vtbl, void* vdata, const QPointF& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDropEvent(pos, actions, data, buttons, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQDropEvent(const QDropEvent_VTable* vtbl, void* vdata, const QPointF& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type): QDropEvent(pos, actions, data, buttons, modifiers, type), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDropEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QDropEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDropEvent::clone();
		}


		QDropEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QDropEvent* QDropEvent_virtualbase_clone(const VirtualQDropEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDropEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QDropEvent_virtualbase_setAccepted(VirtualQDropEvent* self, bool accepted);

};

VirtualQDropEvent* QDropEvent_new(const QDropEvent_VTable* vtbl, void* vdata, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDropEvent(vtbl, vdata, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQDropEvent* QDropEvent_new2(const QDropEvent_VTable* vtbl, void* vdata, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int type) {
	return new VirtualQDropEvent(vtbl, vdata, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEvent::Type>(type));
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

QDropEvent* QDropEvent_virtualbase_clone(const VirtualQDropEvent* self) {

	return self->QDropEvent::clone();
}

void QDropEvent_virtualbase_setAccepted(VirtualQDropEvent* self, bool accepted) {

	self->QDropEvent::setAccepted(accepted);
}

const QDropEvent_VTable* QDropEvent_vtbl(const VirtualQDropEvent* self) { return self->vtbl; }
void* QDropEvent_vdata(const VirtualQDropEvent* self) { return self->vdata; }
void QDropEvent_setVdata(VirtualQDropEvent* self, void* vdata) { self->vdata = vdata; }

void QDropEvent_delete(QDropEvent* self) {
	delete self;
}

class VirtualQDragMoveEvent final : public QDragMoveEvent {
	const QDragMoveEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QDragMoveEvent_VTable* QDragMoveEvent_vtbl(const VirtualQDragMoveEvent* self);
	friend void* QDragMoveEvent_vdata(const VirtualQDragMoveEvent* self);
	friend void QDragMoveEvent_setVdata(VirtualQDragMoveEvent* self, void* vdata);

	VirtualQDragMoveEvent(const QDragMoveEvent_VTable* vtbl, void* vdata, const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDragMoveEvent(pos, actions, data, buttons, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQDragMoveEvent(const QDragMoveEvent_VTable* vtbl, void* vdata, const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type): QDragMoveEvent(pos, actions, data, buttons, modifiers, type), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDragMoveEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QDragMoveEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDragMoveEvent::clone();
		}


		QDragMoveEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const VirtualQDragMoveEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDragMoveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QDragMoveEvent_virtualbase_setAccepted(VirtualQDragMoveEvent* self, bool accepted);

};

VirtualQDragMoveEvent* QDragMoveEvent_new(const QDragMoveEvent_VTable* vtbl, void* vdata, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDragMoveEvent(vtbl, vdata, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQDragMoveEvent* QDragMoveEvent_new2(const QDragMoveEvent_VTable* vtbl, void* vdata, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int type) {
	return new VirtualQDragMoveEvent(vtbl, vdata, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEvent::Type>(type));
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

QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const VirtualQDragMoveEvent* self) {

	return self->QDragMoveEvent::clone();
}

void QDragMoveEvent_virtualbase_setAccepted(VirtualQDragMoveEvent* self, bool accepted) {

	self->QDragMoveEvent::setAccepted(accepted);
}

const QDragMoveEvent_VTable* QDragMoveEvent_vtbl(const VirtualQDragMoveEvent* self) { return self->vtbl; }
void* QDragMoveEvent_vdata(const VirtualQDragMoveEvent* self) { return self->vdata; }
void QDragMoveEvent_setVdata(VirtualQDragMoveEvent* self, void* vdata) { self->vdata = vdata; }

void QDragMoveEvent_delete(QDragMoveEvent* self) {
	delete self;
}

class VirtualQDragEnterEvent final : public QDragEnterEvent {
	const QDragEnterEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QDragEnterEvent_VTable* QDragEnterEvent_vtbl(const VirtualQDragEnterEvent* self);
	friend void* QDragEnterEvent_vdata(const VirtualQDragEnterEvent* self);
	friend void QDragEnterEvent_setVdata(VirtualQDragEnterEvent* self, void* vdata);

	VirtualQDragEnterEvent(const QDragEnterEvent_VTable* vtbl, void* vdata, const QPoint& pos, Qt::DropActions actions, const QMimeData* data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers): QDragEnterEvent(pos, actions, data, buttons, modifiers), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDragEnterEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QDragEnterEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDragEnterEvent::clone();
		}


		QDragEnterEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const VirtualQDragEnterEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDragEnterEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QDragEnterEvent_virtualbase_setAccepted(VirtualQDragEnterEvent* self, bool accepted);

};

VirtualQDragEnterEvent* QDragEnterEvent_new(const QDragEnterEvent_VTable* vtbl, void* vdata, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers) {
	return new VirtualQDragEnterEvent(vtbl, vdata, *pos, static_cast<Qt::DropActions>(actions), data, static_cast<Qt::MouseButtons>(buttons), static_cast<Qt::KeyboardModifiers>(modifiers));
}

void QDragEnterEvent_virtbase(QDragEnterEvent* src, QDragMoveEvent** outptr_QDragMoveEvent) {
	*outptr_QDragMoveEvent = static_cast<QDragMoveEvent*>(src);
}

QDragEnterEvent* QDragEnterEvent_clone(const QDragEnterEvent* self) {
	return self->clone();
}

QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const VirtualQDragEnterEvent* self) {

	return self->QDragEnterEvent::clone();
}

void QDragEnterEvent_virtualbase_setAccepted(VirtualQDragEnterEvent* self, bool accepted) {

	self->QDragEnterEvent::setAccepted(accepted);
}

const QDragEnterEvent_VTable* QDragEnterEvent_vtbl(const VirtualQDragEnterEvent* self) { return self->vtbl; }
void* QDragEnterEvent_vdata(const VirtualQDragEnterEvent* self) { return self->vdata; }
void QDragEnterEvent_setVdata(VirtualQDragEnterEvent* self, void* vdata) { self->vdata = vdata; }

void QDragEnterEvent_delete(QDragEnterEvent* self) {
	delete self;
}

class VirtualQDragLeaveEvent final : public QDragLeaveEvent {
	const QDragLeaveEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QDragLeaveEvent_VTable* QDragLeaveEvent_vtbl(const VirtualQDragLeaveEvent* self);
	friend void* QDragLeaveEvent_vdata(const VirtualQDragLeaveEvent* self);
	friend void QDragLeaveEvent_setVdata(VirtualQDragLeaveEvent* self, void* vdata);

	VirtualQDragLeaveEvent(const QDragLeaveEvent_VTable* vtbl, void* vdata): QDragLeaveEvent(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDragLeaveEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QDragLeaveEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDragLeaveEvent::clone();
		}


		QDragLeaveEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const VirtualQDragLeaveEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDragLeaveEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QDragLeaveEvent_virtualbase_setAccepted(VirtualQDragLeaveEvent* self, bool accepted);

};

VirtualQDragLeaveEvent* QDragLeaveEvent_new(const QDragLeaveEvent_VTable* vtbl, void* vdata) {
	return new VirtualQDragLeaveEvent(vtbl, vdata);
}

void QDragLeaveEvent_virtbase(QDragLeaveEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDragLeaveEvent* QDragLeaveEvent_clone(const QDragLeaveEvent* self) {
	return self->clone();
}

QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const VirtualQDragLeaveEvent* self) {

	return self->QDragLeaveEvent::clone();
}

void QDragLeaveEvent_virtualbase_setAccepted(VirtualQDragLeaveEvent* self, bool accepted) {

	self->QDragLeaveEvent::setAccepted(accepted);
}

const QDragLeaveEvent_VTable* QDragLeaveEvent_vtbl(const VirtualQDragLeaveEvent* self) { return self->vtbl; }
void* QDragLeaveEvent_vdata(const VirtualQDragLeaveEvent* self) { return self->vdata; }
void QDragLeaveEvent_setVdata(VirtualQDragLeaveEvent* self, void* vdata) { self->vdata = vdata; }

void QDragLeaveEvent_delete(QDragLeaveEvent* self) {
	delete self;
}

class VirtualQHelpEvent final : public QHelpEvent {
	const QHelpEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QHelpEvent_VTable* QHelpEvent_vtbl(const VirtualQHelpEvent* self);
	friend void* QHelpEvent_vdata(const VirtualQHelpEvent* self);
	friend void QHelpEvent_setVdata(VirtualQHelpEvent* self, void* vdata);

	VirtualQHelpEvent(const QHelpEvent_VTable* vtbl, void* vdata, QEvent::Type type, const QPoint& pos, const QPoint& globalPos): QHelpEvent(type, pos, globalPos), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQHelpEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QHelpEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QHelpEvent::clone();
		}


		QHelpEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QHelpEvent* QHelpEvent_virtualbase_clone(const VirtualQHelpEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QHelpEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QHelpEvent_virtualbase_setAccepted(VirtualQHelpEvent* self, bool accepted);

};

VirtualQHelpEvent* QHelpEvent_new(const QHelpEvent_VTable* vtbl, void* vdata, int type, QPoint* pos, QPoint* globalPos) {
	return new VirtualQHelpEvent(vtbl, vdata, static_cast<QEvent::Type>(type), *pos, *globalPos);
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

QHelpEvent* QHelpEvent_virtualbase_clone(const VirtualQHelpEvent* self) {

	return self->QHelpEvent::clone();
}

void QHelpEvent_virtualbase_setAccepted(VirtualQHelpEvent* self, bool accepted) {

	self->QHelpEvent::setAccepted(accepted);
}

const QHelpEvent_VTable* QHelpEvent_vtbl(const VirtualQHelpEvent* self) { return self->vtbl; }
void* QHelpEvent_vdata(const VirtualQHelpEvent* self) { return self->vdata; }
void QHelpEvent_setVdata(VirtualQHelpEvent* self, void* vdata) { self->vdata = vdata; }

void QHelpEvent_delete(QHelpEvent* self) {
	delete self;
}

class VirtualQStatusTipEvent final : public QStatusTipEvent {
	const QStatusTipEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QStatusTipEvent_VTable* QStatusTipEvent_vtbl(const VirtualQStatusTipEvent* self);
	friend void* QStatusTipEvent_vdata(const VirtualQStatusTipEvent* self);
	friend void QStatusTipEvent_setVdata(VirtualQStatusTipEvent* self, void* vdata);

	VirtualQStatusTipEvent(const QStatusTipEvent_VTable* vtbl, void* vdata, const QString& tip): QStatusTipEvent(tip), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQStatusTipEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QStatusTipEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QStatusTipEvent::clone();
		}


		QStatusTipEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const VirtualQStatusTipEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QStatusTipEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QStatusTipEvent_virtualbase_setAccepted(VirtualQStatusTipEvent* self, bool accepted);

};

VirtualQStatusTipEvent* QStatusTipEvent_new(const QStatusTipEvent_VTable* vtbl, void* vdata, struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	return new VirtualQStatusTipEvent(vtbl, vdata, tip_QString);
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

QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const VirtualQStatusTipEvent* self) {

	return self->QStatusTipEvent::clone();
}

void QStatusTipEvent_virtualbase_setAccepted(VirtualQStatusTipEvent* self, bool accepted) {

	self->QStatusTipEvent::setAccepted(accepted);
}

const QStatusTipEvent_VTable* QStatusTipEvent_vtbl(const VirtualQStatusTipEvent* self) { return self->vtbl; }
void* QStatusTipEvent_vdata(const VirtualQStatusTipEvent* self) { return self->vdata; }
void QStatusTipEvent_setVdata(VirtualQStatusTipEvent* self, void* vdata) { self->vdata = vdata; }

void QStatusTipEvent_delete(QStatusTipEvent* self) {
	delete self;
}

class VirtualQWhatsThisClickedEvent final : public QWhatsThisClickedEvent {
	const QWhatsThisClickedEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QWhatsThisClickedEvent_VTable* QWhatsThisClickedEvent_vtbl(const VirtualQWhatsThisClickedEvent* self);
	friend void* QWhatsThisClickedEvent_vdata(const VirtualQWhatsThisClickedEvent* self);
	friend void QWhatsThisClickedEvent_setVdata(VirtualQWhatsThisClickedEvent* self, void* vdata);

	VirtualQWhatsThisClickedEvent(const QWhatsThisClickedEvent_VTable* vtbl, void* vdata, const QString& href): QWhatsThisClickedEvent(href), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWhatsThisClickedEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QWhatsThisClickedEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QWhatsThisClickedEvent::clone();
		}


		QWhatsThisClickedEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const VirtualQWhatsThisClickedEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QWhatsThisClickedEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QWhatsThisClickedEvent_virtualbase_setAccepted(VirtualQWhatsThisClickedEvent* self, bool accepted);

};

VirtualQWhatsThisClickedEvent* QWhatsThisClickedEvent_new(const QWhatsThisClickedEvent_VTable* vtbl, void* vdata, struct miqt_string href) {
	QString href_QString = QString::fromUtf8(href.data, href.len);
	return new VirtualQWhatsThisClickedEvent(vtbl, vdata, href_QString);
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

QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const VirtualQWhatsThisClickedEvent* self) {

	return self->QWhatsThisClickedEvent::clone();
}

void QWhatsThisClickedEvent_virtualbase_setAccepted(VirtualQWhatsThisClickedEvent* self, bool accepted) {

	self->QWhatsThisClickedEvent::setAccepted(accepted);
}

const QWhatsThisClickedEvent_VTable* QWhatsThisClickedEvent_vtbl(const VirtualQWhatsThisClickedEvent* self) { return self->vtbl; }
void* QWhatsThisClickedEvent_vdata(const VirtualQWhatsThisClickedEvent* self) { return self->vdata; }
void QWhatsThisClickedEvent_setVdata(VirtualQWhatsThisClickedEvent* self, void* vdata) { self->vdata = vdata; }

void QWhatsThisClickedEvent_delete(QWhatsThisClickedEvent* self) {
	delete self;
}

class VirtualQActionEvent final : public QActionEvent {
	const QActionEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QActionEvent_VTable* QActionEvent_vtbl(const VirtualQActionEvent* self);
	friend void* QActionEvent_vdata(const VirtualQActionEvent* self);
	friend void QActionEvent_setVdata(VirtualQActionEvent* self, void* vdata);

	VirtualQActionEvent(const QActionEvent_VTable* vtbl, void* vdata, int type, QAction* action): QActionEvent(type, action), vtbl(vtbl), vdata(vdata) {}
	VirtualQActionEvent(const QActionEvent_VTable* vtbl, void* vdata, int type, QAction* action, QAction* before): QActionEvent(type, action, before), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQActionEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QActionEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QActionEvent::clone();
		}


		QActionEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QActionEvent* QActionEvent_virtualbase_clone(const VirtualQActionEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QActionEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QActionEvent_virtualbase_setAccepted(VirtualQActionEvent* self, bool accepted);

};

VirtualQActionEvent* QActionEvent_new(const QActionEvent_VTable* vtbl, void* vdata, int type, QAction* action) {
	return new VirtualQActionEvent(vtbl, vdata, static_cast<int>(type), action);
}

VirtualQActionEvent* QActionEvent_new2(const QActionEvent_VTable* vtbl, void* vdata, int type, QAction* action, QAction* before) {
	return new VirtualQActionEvent(vtbl, vdata, static_cast<int>(type), action, before);
}

void QActionEvent_virtbase(QActionEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QActionEvent* QActionEvent_clone(const QActionEvent* self) {
	return self->clone();
}

QActionEvent* QActionEvent_virtualbase_clone(const VirtualQActionEvent* self) {

	return self->QActionEvent::clone();
}

void QActionEvent_virtualbase_setAccepted(VirtualQActionEvent* self, bool accepted) {

	self->QActionEvent::setAccepted(accepted);
}

const QActionEvent_VTable* QActionEvent_vtbl(const VirtualQActionEvent* self) { return self->vtbl; }
void* QActionEvent_vdata(const VirtualQActionEvent* self) { return self->vdata; }
void QActionEvent_setVdata(VirtualQActionEvent* self, void* vdata) { self->vdata = vdata; }

void QActionEvent_delete(QActionEvent* self) {
	delete self;
}

class VirtualQFileOpenEvent final : public QFileOpenEvent {
	const QFileOpenEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QFileOpenEvent_VTable* QFileOpenEvent_vtbl(const VirtualQFileOpenEvent* self);
	friend void* QFileOpenEvent_vdata(const VirtualQFileOpenEvent* self);
	friend void QFileOpenEvent_setVdata(VirtualQFileOpenEvent* self, void* vdata);

	VirtualQFileOpenEvent(const QFileOpenEvent_VTable* vtbl, void* vdata, const QString& file): QFileOpenEvent(file), vtbl(vtbl), vdata(vdata) {}
	VirtualQFileOpenEvent(const QFileOpenEvent_VTable* vtbl, void* vdata, const QUrl& url): QFileOpenEvent(url), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFileOpenEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QFileOpenEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QFileOpenEvent::clone();
		}


		QFileOpenEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const VirtualQFileOpenEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QFileOpenEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QFileOpenEvent_virtualbase_setAccepted(VirtualQFileOpenEvent* self, bool accepted);

};

VirtualQFileOpenEvent* QFileOpenEvent_new(const QFileOpenEvent_VTable* vtbl, void* vdata, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQFileOpenEvent(vtbl, vdata, file_QString);
}

VirtualQFileOpenEvent* QFileOpenEvent_new2(const QFileOpenEvent_VTable* vtbl, void* vdata, QUrl* url) {
	return new VirtualQFileOpenEvent(vtbl, vdata, *url);
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

QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const VirtualQFileOpenEvent* self) {

	return self->QFileOpenEvent::clone();
}

void QFileOpenEvent_virtualbase_setAccepted(VirtualQFileOpenEvent* self, bool accepted) {

	self->QFileOpenEvent::setAccepted(accepted);
}

const QFileOpenEvent_VTable* QFileOpenEvent_vtbl(const VirtualQFileOpenEvent* self) { return self->vtbl; }
void* QFileOpenEvent_vdata(const VirtualQFileOpenEvent* self) { return self->vdata; }
void QFileOpenEvent_setVdata(VirtualQFileOpenEvent* self, void* vdata) { self->vdata = vdata; }

void QFileOpenEvent_delete(QFileOpenEvent* self) {
	delete self;
}

class VirtualQToolBarChangeEvent final : public QToolBarChangeEvent {
	const QToolBarChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QToolBarChangeEvent_VTable* QToolBarChangeEvent_vtbl(const VirtualQToolBarChangeEvent* self);
	friend void* QToolBarChangeEvent_vdata(const VirtualQToolBarChangeEvent* self);
	friend void QToolBarChangeEvent_setVdata(VirtualQToolBarChangeEvent* self, void* vdata);

	VirtualQToolBarChangeEvent(const QToolBarChangeEvent_VTable* vtbl, void* vdata, bool t): QToolBarChangeEvent(t), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQToolBarChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QToolBarChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QToolBarChangeEvent::clone();
		}


		QToolBarChangeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const VirtualQToolBarChangeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QToolBarChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QToolBarChangeEvent_virtualbase_setAccepted(VirtualQToolBarChangeEvent* self, bool accepted);

};

VirtualQToolBarChangeEvent* QToolBarChangeEvent_new(const QToolBarChangeEvent_VTable* vtbl, void* vdata, bool t) {
	return new VirtualQToolBarChangeEvent(vtbl, vdata, t);
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

QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const VirtualQToolBarChangeEvent* self) {

	return self->QToolBarChangeEvent::clone();
}

void QToolBarChangeEvent_virtualbase_setAccepted(VirtualQToolBarChangeEvent* self, bool accepted) {

	self->QToolBarChangeEvent::setAccepted(accepted);
}

const QToolBarChangeEvent_VTable* QToolBarChangeEvent_vtbl(const VirtualQToolBarChangeEvent* self) { return self->vtbl; }
void* QToolBarChangeEvent_vdata(const VirtualQToolBarChangeEvent* self) { return self->vdata; }
void QToolBarChangeEvent_setVdata(VirtualQToolBarChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QToolBarChangeEvent_delete(QToolBarChangeEvent* self) {
	delete self;
}

class VirtualQShortcutEvent final : public QShortcutEvent {
	const QShortcutEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QShortcutEvent_VTable* QShortcutEvent_vtbl(const VirtualQShortcutEvent* self);
	friend void* QShortcutEvent_vdata(const VirtualQShortcutEvent* self);
	friend void QShortcutEvent_setVdata(VirtualQShortcutEvent* self, void* vdata);

	VirtualQShortcutEvent(const QShortcutEvent_VTable* vtbl, void* vdata, const QKeySequence& key, int id): QShortcutEvent(key, id), vtbl(vtbl), vdata(vdata) {}
	VirtualQShortcutEvent(const QShortcutEvent_VTable* vtbl, void* vdata, const QKeySequence& key, int id, bool ambiguous): QShortcutEvent(key, id, ambiguous), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQShortcutEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QShortcutEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QShortcutEvent::clone();
		}


		QShortcutEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QShortcutEvent* QShortcutEvent_virtualbase_clone(const VirtualQShortcutEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QShortcutEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QShortcutEvent_virtualbase_setAccepted(VirtualQShortcutEvent* self, bool accepted);

};

VirtualQShortcutEvent* QShortcutEvent_new(const QShortcutEvent_VTable* vtbl, void* vdata, QKeySequence* key, int id) {
	return new VirtualQShortcutEvent(vtbl, vdata, *key, static_cast<int>(id));
}

VirtualQShortcutEvent* QShortcutEvent_new2(const QShortcutEvent_VTable* vtbl, void* vdata, QKeySequence* key, int id, bool ambiguous) {
	return new VirtualQShortcutEvent(vtbl, vdata, *key, static_cast<int>(id), ambiguous);
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

QShortcutEvent* QShortcutEvent_virtualbase_clone(const VirtualQShortcutEvent* self) {

	return self->QShortcutEvent::clone();
}

void QShortcutEvent_virtualbase_setAccepted(VirtualQShortcutEvent* self, bool accepted) {

	self->QShortcutEvent::setAccepted(accepted);
}

const QShortcutEvent_VTable* QShortcutEvent_vtbl(const VirtualQShortcutEvent* self) { return self->vtbl; }
void* QShortcutEvent_vdata(const VirtualQShortcutEvent* self) { return self->vdata; }
void QShortcutEvent_setVdata(VirtualQShortcutEvent* self, void* vdata) { self->vdata = vdata; }

void QShortcutEvent_delete(QShortcutEvent* self) {
	delete self;
}

class VirtualQWindowStateChangeEvent final : public QWindowStateChangeEvent {
	const QWindowStateChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QWindowStateChangeEvent_VTable* QWindowStateChangeEvent_vtbl(const VirtualQWindowStateChangeEvent* self);
	friend void* QWindowStateChangeEvent_vdata(const VirtualQWindowStateChangeEvent* self);
	friend void QWindowStateChangeEvent_setVdata(VirtualQWindowStateChangeEvent* self, void* vdata);

	VirtualQWindowStateChangeEvent(const QWindowStateChangeEvent_VTable* vtbl, void* vdata, Qt::WindowStates oldState): QWindowStateChangeEvent(oldState), vtbl(vtbl), vdata(vdata) {}
	VirtualQWindowStateChangeEvent(const QWindowStateChangeEvent_VTable* vtbl, void* vdata, Qt::WindowStates oldState, bool isOverride): QWindowStateChangeEvent(oldState, isOverride), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWindowStateChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QWindowStateChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QWindowStateChangeEvent::clone();
		}


		QWindowStateChangeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const VirtualQWindowStateChangeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QWindowStateChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QWindowStateChangeEvent_virtualbase_setAccepted(VirtualQWindowStateChangeEvent* self, bool accepted);

};

VirtualQWindowStateChangeEvent* QWindowStateChangeEvent_new(const QWindowStateChangeEvent_VTable* vtbl, void* vdata, int oldState) {
	return new VirtualQWindowStateChangeEvent(vtbl, vdata, static_cast<Qt::WindowStates>(oldState));
}

VirtualQWindowStateChangeEvent* QWindowStateChangeEvent_new2(const QWindowStateChangeEvent_VTable* vtbl, void* vdata, int oldState, bool isOverride) {
	return new VirtualQWindowStateChangeEvent(vtbl, vdata, static_cast<Qt::WindowStates>(oldState), isOverride);
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

QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const VirtualQWindowStateChangeEvent* self) {

	return self->QWindowStateChangeEvent::clone();
}

void QWindowStateChangeEvent_virtualbase_setAccepted(VirtualQWindowStateChangeEvent* self, bool accepted) {

	self->QWindowStateChangeEvent::setAccepted(accepted);
}

const QWindowStateChangeEvent_VTable* QWindowStateChangeEvent_vtbl(const VirtualQWindowStateChangeEvent* self) { return self->vtbl; }
void* QWindowStateChangeEvent_vdata(const VirtualQWindowStateChangeEvent* self) { return self->vdata; }
void QWindowStateChangeEvent_setVdata(VirtualQWindowStateChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QWindowStateChangeEvent_delete(QWindowStateChangeEvent* self) {
	delete self;
}

class VirtualQTouchEvent final : public QTouchEvent {
	const QTouchEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QTouchEvent_VTable* QTouchEvent_vtbl(const VirtualQTouchEvent* self);
	friend void* QTouchEvent_vdata(const VirtualQTouchEvent* self);
	friend void QTouchEvent_setVdata(VirtualQTouchEvent* self, void* vdata);

	VirtualQTouchEvent(const QTouchEvent_VTable* vtbl, void* vdata, QEvent::Type eventType): QTouchEvent(eventType), vtbl(vtbl), vdata(vdata) {}
	VirtualQTouchEvent(const QTouchEvent_VTable* vtbl, void* vdata, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, QEventPoint::States touchPointStates): QTouchEvent(eventType, device, modifiers, touchPointStates), vtbl(vtbl), vdata(vdata) {}
	VirtualQTouchEvent(const QTouchEvent_VTable* vtbl, void* vdata, QEvent::Type eventType, const QPointingDevice* device): QTouchEvent(eventType, device), vtbl(vtbl), vdata(vdata) {}
	VirtualQTouchEvent(const QTouchEvent_VTable* vtbl, void* vdata, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers): QTouchEvent(eventType, device, modifiers), vtbl(vtbl), vdata(vdata) {}
	VirtualQTouchEvent(const QTouchEvent_VTable* vtbl, void* vdata, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, const QList<QEventPoint>& touchPoints): QTouchEvent(eventType, device, modifiers, touchPoints), vtbl(vtbl), vdata(vdata) {}
	VirtualQTouchEvent(const QTouchEvent_VTable* vtbl, void* vdata, QEvent::Type eventType, const QPointingDevice* device, Qt::KeyboardModifiers modifiers, QEventPoint::States touchPointStates, const QList<QEventPoint>& touchPoints): QTouchEvent(eventType, device, modifiers, touchPointStates, touchPoints), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTouchEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QTouchEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTouchEvent::clone();
		}


		QTouchEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QTouchEvent* QTouchEvent_virtualbase_clone(const VirtualQTouchEvent* self);

	virtual bool isBeginEvent() const override {
		if (vtbl->isBeginEvent == 0) {
			return QTouchEvent::isBeginEvent();
		}


		bool callback_return_value = vtbl->isBeginEvent(this);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isBeginEvent(const VirtualQTouchEvent* self);

	virtual bool isUpdateEvent() const override {
		if (vtbl->isUpdateEvent == 0) {
			return QTouchEvent::isUpdateEvent();
		}


		bool callback_return_value = vtbl->isUpdateEvent(this);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isUpdateEvent(const VirtualQTouchEvent* self);

	virtual bool isEndEvent() const override {
		if (vtbl->isEndEvent == 0) {
			return QTouchEvent::isEndEvent();
		}


		bool callback_return_value = vtbl->isEndEvent(this);

		return callback_return_value;
	}

	friend bool QTouchEvent_virtualbase_isEndEvent(const VirtualQTouchEvent* self);

	virtual void setTimestamp(quint64 timestamp) override {
		if (vtbl->setTimestamp == 0) {
			QTouchEvent::setTimestamp(timestamp);
			return;
		}

		quint64 timestamp_ret = timestamp;
		unsigned long long sigval1 = static_cast<unsigned long long>(timestamp_ret);

		vtbl->setTimestamp(this, sigval1);

	}

	friend void QTouchEvent_virtualbase_setTimestamp(VirtualQTouchEvent* self, unsigned long long timestamp);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTouchEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QTouchEvent_virtualbase_setAccepted(VirtualQTouchEvent* self, bool accepted);

};

VirtualQTouchEvent* QTouchEvent_new(const QTouchEvent_VTable* vtbl, void* vdata, int eventType) {
	return new VirtualQTouchEvent(vtbl, vdata, static_cast<QEvent::Type>(eventType));
}

VirtualQTouchEvent* QTouchEvent_new2(const QTouchEvent_VTable* vtbl, void* vdata, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates) {
	return new VirtualQTouchEvent(vtbl, vdata, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEventPoint::States>(touchPointStates));
}

VirtualQTouchEvent* QTouchEvent_new3(const QTouchEvent_VTable* vtbl, void* vdata, int eventType, QPointingDevice* device) {
	return new VirtualQTouchEvent(vtbl, vdata, static_cast<QEvent::Type>(eventType), device);
}

VirtualQTouchEvent* QTouchEvent_new4(const QTouchEvent_VTable* vtbl, void* vdata, int eventType, QPointingDevice* device, int modifiers) {
	return new VirtualQTouchEvent(vtbl, vdata, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers));
}

VirtualQTouchEvent* QTouchEvent_new5(const QTouchEvent_VTable* vtbl, void* vdata, int eventType, QPointingDevice* device, int modifiers, struct miqt_array /* of QEventPoint* */  touchPoints) {
	QList<QEventPoint> touchPoints_QList;
	touchPoints_QList.reserve(touchPoints.len);
	QEventPoint** touchPoints_arr = static_cast<QEventPoint**>(touchPoints.data);
	for(size_t i = 0; i < touchPoints.len; ++i) {
		touchPoints_QList.push_back(*(touchPoints_arr[i]));
	}
	return new VirtualQTouchEvent(vtbl, vdata, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), touchPoints_QList);
}

VirtualQTouchEvent* QTouchEvent_new6(const QTouchEvent_VTable* vtbl, void* vdata, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates, struct miqt_array /* of QEventPoint* */  touchPoints) {
	QList<QEventPoint> touchPoints_QList;
	touchPoints_QList.reserve(touchPoints.len);
	QEventPoint** touchPoints_arr = static_cast<QEventPoint**>(touchPoints.data);
	for(size_t i = 0; i < touchPoints.len; ++i) {
		touchPoints_QList.push_back(*(touchPoints_arr[i]));
	}
	return new VirtualQTouchEvent(vtbl, vdata, static_cast<QEvent::Type>(eventType), device, static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<QEventPoint::States>(touchPointStates), touchPoints_QList);
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

QTouchEvent* QTouchEvent_virtualbase_clone(const VirtualQTouchEvent* self) {

	return self->QTouchEvent::clone();
}

bool QTouchEvent_virtualbase_isBeginEvent(const VirtualQTouchEvent* self) {

	return self->QTouchEvent::isBeginEvent();
}

bool QTouchEvent_virtualbase_isUpdateEvent(const VirtualQTouchEvent* self) {

	return self->QTouchEvent::isUpdateEvent();
}

bool QTouchEvent_virtualbase_isEndEvent(const VirtualQTouchEvent* self) {

	return self->QTouchEvent::isEndEvent();
}

void QTouchEvent_virtualbase_setTimestamp(VirtualQTouchEvent* self, unsigned long long timestamp) {

	self->QTouchEvent::setTimestamp(static_cast<quint64>(timestamp));
}

void QTouchEvent_virtualbase_setAccepted(VirtualQTouchEvent* self, bool accepted) {

	self->QTouchEvent::setAccepted(accepted);
}

const QTouchEvent_VTable* QTouchEvent_vtbl(const VirtualQTouchEvent* self) { return self->vtbl; }
void* QTouchEvent_vdata(const VirtualQTouchEvent* self) { return self->vdata; }
void QTouchEvent_setVdata(VirtualQTouchEvent* self, void* vdata) { self->vdata = vdata; }

void QTouchEvent_delete(QTouchEvent* self) {
	delete self;
}

class VirtualQScrollPrepareEvent final : public QScrollPrepareEvent {
	const QScrollPrepareEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QScrollPrepareEvent_VTable* QScrollPrepareEvent_vtbl(const VirtualQScrollPrepareEvent* self);
	friend void* QScrollPrepareEvent_vdata(const VirtualQScrollPrepareEvent* self);
	friend void QScrollPrepareEvent_setVdata(VirtualQScrollPrepareEvent* self, void* vdata);

	VirtualQScrollPrepareEvent(const QScrollPrepareEvent_VTable* vtbl, void* vdata, const QPointF& startPos): QScrollPrepareEvent(startPos), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQScrollPrepareEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QScrollPrepareEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QScrollPrepareEvent::clone();
		}


		QScrollPrepareEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const VirtualQScrollPrepareEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QScrollPrepareEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QScrollPrepareEvent_virtualbase_setAccepted(VirtualQScrollPrepareEvent* self, bool accepted);

};

VirtualQScrollPrepareEvent* QScrollPrepareEvent_new(const QScrollPrepareEvent_VTable* vtbl, void* vdata, QPointF* startPos) {
	return new VirtualQScrollPrepareEvent(vtbl, vdata, *startPos);
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

QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const VirtualQScrollPrepareEvent* self) {

	return self->QScrollPrepareEvent::clone();
}

void QScrollPrepareEvent_virtualbase_setAccepted(VirtualQScrollPrepareEvent* self, bool accepted) {

	self->QScrollPrepareEvent::setAccepted(accepted);
}

const QScrollPrepareEvent_VTable* QScrollPrepareEvent_vtbl(const VirtualQScrollPrepareEvent* self) { return self->vtbl; }
void* QScrollPrepareEvent_vdata(const VirtualQScrollPrepareEvent* self) { return self->vdata; }
void QScrollPrepareEvent_setVdata(VirtualQScrollPrepareEvent* self, void* vdata) { self->vdata = vdata; }

void QScrollPrepareEvent_delete(QScrollPrepareEvent* self) {
	delete self;
}

class VirtualQScrollEvent final : public QScrollEvent {
	const QScrollEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QScrollEvent_VTable* QScrollEvent_vtbl(const VirtualQScrollEvent* self);
	friend void* QScrollEvent_vdata(const VirtualQScrollEvent* self);
	friend void QScrollEvent_setVdata(VirtualQScrollEvent* self, void* vdata);

	VirtualQScrollEvent(const QScrollEvent_VTable* vtbl, void* vdata, const QPointF& contentPos, const QPointF& overshoot, QScrollEvent::ScrollState scrollState): QScrollEvent(contentPos, overshoot, scrollState), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQScrollEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QScrollEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QScrollEvent::clone();
		}


		QScrollEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QScrollEvent* QScrollEvent_virtualbase_clone(const VirtualQScrollEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QScrollEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QScrollEvent_virtualbase_setAccepted(VirtualQScrollEvent* self, bool accepted);

};

VirtualQScrollEvent* QScrollEvent_new(const QScrollEvent_VTable* vtbl, void* vdata, QPointF* contentPos, QPointF* overshoot, int scrollState) {
	return new VirtualQScrollEvent(vtbl, vdata, *contentPos, *overshoot, static_cast<QScrollEvent::ScrollState>(scrollState));
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

QScrollEvent* QScrollEvent_virtualbase_clone(const VirtualQScrollEvent* self) {

	return self->QScrollEvent::clone();
}

void QScrollEvent_virtualbase_setAccepted(VirtualQScrollEvent* self, bool accepted) {

	self->QScrollEvent::setAccepted(accepted);
}

const QScrollEvent_VTable* QScrollEvent_vtbl(const VirtualQScrollEvent* self) { return self->vtbl; }
void* QScrollEvent_vdata(const VirtualQScrollEvent* self) { return self->vdata; }
void QScrollEvent_setVdata(VirtualQScrollEvent* self, void* vdata) { self->vdata = vdata; }

void QScrollEvent_delete(QScrollEvent* self) {
	delete self;
}

class VirtualQScreenOrientationChangeEvent final : public QScreenOrientationChangeEvent {
	const QScreenOrientationChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QScreenOrientationChangeEvent_VTable* QScreenOrientationChangeEvent_vtbl(const VirtualQScreenOrientationChangeEvent* self);
	friend void* QScreenOrientationChangeEvent_vdata(const VirtualQScreenOrientationChangeEvent* self);
	friend void QScreenOrientationChangeEvent_setVdata(VirtualQScreenOrientationChangeEvent* self, void* vdata);

	VirtualQScreenOrientationChangeEvent(const QScreenOrientationChangeEvent_VTable* vtbl, void* vdata, QScreen* screen, Qt::ScreenOrientation orientation): QScreenOrientationChangeEvent(screen, orientation), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQScreenOrientationChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QScreenOrientationChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QScreenOrientationChangeEvent::clone();
		}


		QScreenOrientationChangeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const VirtualQScreenOrientationChangeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QScreenOrientationChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QScreenOrientationChangeEvent_virtualbase_setAccepted(VirtualQScreenOrientationChangeEvent* self, bool accepted);

};

VirtualQScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(const QScreenOrientationChangeEvent_VTable* vtbl, void* vdata, QScreen* screen, int orientation) {
	return new VirtualQScreenOrientationChangeEvent(vtbl, vdata, screen, static_cast<Qt::ScreenOrientation>(orientation));
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

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const VirtualQScreenOrientationChangeEvent* self) {

	return self->QScreenOrientationChangeEvent::clone();
}

void QScreenOrientationChangeEvent_virtualbase_setAccepted(VirtualQScreenOrientationChangeEvent* self, bool accepted) {

	self->QScreenOrientationChangeEvent::setAccepted(accepted);
}

const QScreenOrientationChangeEvent_VTable* QScreenOrientationChangeEvent_vtbl(const VirtualQScreenOrientationChangeEvent* self) { return self->vtbl; }
void* QScreenOrientationChangeEvent_vdata(const VirtualQScreenOrientationChangeEvent* self) { return self->vdata; }
void QScreenOrientationChangeEvent_setVdata(VirtualQScreenOrientationChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QScreenOrientationChangeEvent_delete(QScreenOrientationChangeEvent* self) {
	delete self;
}

class VirtualQApplicationStateChangeEvent final : public QApplicationStateChangeEvent {
	const QApplicationStateChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QApplicationStateChangeEvent_VTable* QApplicationStateChangeEvent_vtbl(const VirtualQApplicationStateChangeEvent* self);
	friend void* QApplicationStateChangeEvent_vdata(const VirtualQApplicationStateChangeEvent* self);
	friend void QApplicationStateChangeEvent_setVdata(VirtualQApplicationStateChangeEvent* self, void* vdata);

	VirtualQApplicationStateChangeEvent(const QApplicationStateChangeEvent_VTable* vtbl, void* vdata, Qt::ApplicationState state): QApplicationStateChangeEvent(state), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQApplicationStateChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QApplicationStateChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QApplicationStateChangeEvent::clone();
		}


		QApplicationStateChangeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const VirtualQApplicationStateChangeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QApplicationStateChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QApplicationStateChangeEvent_virtualbase_setAccepted(VirtualQApplicationStateChangeEvent* self, bool accepted);

};

VirtualQApplicationStateChangeEvent* QApplicationStateChangeEvent_new(const QApplicationStateChangeEvent_VTable* vtbl, void* vdata, int state) {
	return new VirtualQApplicationStateChangeEvent(vtbl, vdata, static_cast<Qt::ApplicationState>(state));
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

QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const VirtualQApplicationStateChangeEvent* self) {

	return self->QApplicationStateChangeEvent::clone();
}

void QApplicationStateChangeEvent_virtualbase_setAccepted(VirtualQApplicationStateChangeEvent* self, bool accepted) {

	self->QApplicationStateChangeEvent::setAccepted(accepted);
}

const QApplicationStateChangeEvent_VTable* QApplicationStateChangeEvent_vtbl(const VirtualQApplicationStateChangeEvent* self) { return self->vtbl; }
void* QApplicationStateChangeEvent_vdata(const VirtualQApplicationStateChangeEvent* self) { return self->vdata; }
void QApplicationStateChangeEvent_setVdata(VirtualQApplicationStateChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QApplicationStateChangeEvent_delete(QApplicationStateChangeEvent* self) {
	delete self;
}

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new(int typ, int s, int l, QVariant* val) {
	return new QInputMethodEvent__Attribute(static_cast<QInputMethodEvent::AttributeType>(typ), static_cast<int>(s), static_cast<int>(l), *val);
}

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new2(int typ, int s, int l) {
	return new QInputMethodEvent__Attribute(static_cast<QInputMethodEvent::AttributeType>(typ), static_cast<int>(s), static_cast<int>(l));
}

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1) {
	return new QInputMethodEvent__Attribute(*param1);
}

void QInputMethodEvent__Attribute_operatorAssign(QInputMethodEvent__Attribute* self, QInputMethodEvent__Attribute* param1) {
	self->operator=(*param1);
}

void QInputMethodEvent__Attribute_delete(QInputMethodEvent__Attribute* self) {
	delete self;
}

