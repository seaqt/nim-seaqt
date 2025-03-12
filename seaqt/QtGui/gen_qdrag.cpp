#include <QChildEvent>
#include <QDrag>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QObject>
#include <QPixmap>
#include <QPoint>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qdrag.h>
#include "gen_qdrag.h"
class VirtualQDrag final : public QDrag {
	const QDrag_VTable* vtbl;
	void* vdata;
public:
	friend const QDrag_VTable* QDrag_vtbl(const VirtualQDrag* self);
	friend void* QDrag_vdata(const VirtualQDrag* self);
	friend void QDrag_setVdata(VirtualQDrag* self, void* vdata);

	VirtualQDrag(const QDrag_VTable* vtbl, void* vdata, QObject* dragSource): QDrag(dragSource), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDrag() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDrag::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDrag_virtualbase_metaObject(const VirtualQDrag* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDrag::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDrag_virtualbase_metacast(VirtualQDrag* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDrag::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDrag_virtualbase_metacall(VirtualQDrag* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDrag::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDrag_virtualbase_event(VirtualQDrag* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDrag::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDrag_virtualbase_eventFilter(VirtualQDrag* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDrag::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDrag_virtualbase_timerEvent(VirtualQDrag* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDrag::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDrag_virtualbase_childEvent(VirtualQDrag* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDrag::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDrag_virtualbase_customEvent(VirtualQDrag* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDrag::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDrag_virtualbase_connectNotify(VirtualQDrag* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDrag::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDrag_virtualbase_disconnectNotify(VirtualQDrag* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDrag_protectedbase_sender(const VirtualQDrag* self);
	friend int QDrag_protectedbase_senderSignalIndex(const VirtualQDrag* self);
	friend int QDrag_protectedbase_receivers(const VirtualQDrag* self, const char* signal);
	friend bool QDrag_protectedbase_isSignalConnected(const VirtualQDrag* self, QMetaMethod* signal);
};

VirtualQDrag* QDrag_new(const QDrag_VTable* vtbl, void* vdata, QObject* dragSource) {
	return new VirtualQDrag(vtbl, vdata, dragSource);
}

void QDrag_virtbase(QDrag* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDrag_metaObject(const QDrag* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDrag_metacast(QDrag* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDrag_metacall(QDrag* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDrag_tr(const char* s) {
	QString _ret = QDrag::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDrag_setMimeData(QDrag* self, QMimeData* data) {
	self->setMimeData(data);
}

QMimeData* QDrag_mimeData(const QDrag* self) {
	return self->mimeData();
}

void QDrag_setPixmap(QDrag* self, QPixmap* pixmap) {
	self->setPixmap(*pixmap);
}

QPixmap* QDrag_pixmap(const QDrag* self) {
	return new QPixmap(self->pixmap());
}

void QDrag_setHotSpot(QDrag* self, QPoint* hotspot) {
	self->setHotSpot(*hotspot);
}

QPoint* QDrag_hotSpot(const QDrag* self) {
	return new QPoint(self->hotSpot());
}

QObject* QDrag_source(const QDrag* self) {
	return self->source();
}

QObject* QDrag_target(const QDrag* self) {
	return self->target();
}

int QDrag_exec(QDrag* self) {
	Qt::DropAction _ret = self->exec();
	return static_cast<int>(_ret);
}

int QDrag_exec2(QDrag* self, int supportedActions, int defaultAction) {
	Qt::DropAction _ret = self->exec(static_cast<Qt::DropActions>(supportedActions), static_cast<Qt::DropAction>(defaultAction));
	return static_cast<int>(_ret);
}

void QDrag_setDragCursor(QDrag* self, QPixmap* cursor, int action) {
	self->setDragCursor(*cursor, static_cast<Qt::DropAction>(action));
}

QPixmap* QDrag_dragCursor(const QDrag* self, int action) {
	return new QPixmap(self->dragCursor(static_cast<Qt::DropAction>(action)));
}

int QDrag_supportedActions(const QDrag* self) {
	Qt::DropActions _ret = self->supportedActions();
	return static_cast<int>(_ret);
}

int QDrag_defaultAction(const QDrag* self) {
	Qt::DropAction _ret = self->defaultAction();
	return static_cast<int>(_ret);
}

void QDrag_cancel() {
	QDrag::cancel();
}

void QDrag_actionChanged(QDrag* self, int action) {
	self->actionChanged(static_cast<Qt::DropAction>(action));
}

void QDrag_connect_actionChanged(VirtualQDrag* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::DropAction action) {
			Qt::DropAction action_ret = action;
			int sigval1 = static_cast<int>(action_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQDrag::connect(self, static_cast<void (QDrag::*)(Qt::DropAction)>(&QDrag::actionChanged), self, local_caller{slot, callback, release});
}

void QDrag_targetChanged(QDrag* self, QObject* newTarget) {
	self->targetChanged(newTarget);
}

void QDrag_connect_targetChanged(VirtualQDrag* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*);
		void operator()(QObject* newTarget) {
			QObject* sigval1 = newTarget;
			callback(slot, sigval1);
		}
	};
	VirtualQDrag::connect(self, static_cast<void (QDrag::*)(QObject*)>(&QDrag::targetChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDrag_tr2(const char* s, const char* c) {
	QString _ret = QDrag::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDrag_tr3(const char* s, const char* c, int n) {
	QString _ret = QDrag::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDrag_exec1(QDrag* self, int supportedActions) {
	Qt::DropAction _ret = self->exec(static_cast<Qt::DropActions>(supportedActions));
	return static_cast<int>(_ret);
}

QMetaObject* QDrag_virtualbase_metaObject(const VirtualQDrag* self) {

	return (QMetaObject*) self->QDrag::metaObject();
}

void* QDrag_virtualbase_metacast(VirtualQDrag* self, const char* param1) {

	return self->QDrag::qt_metacast(param1);
}

int QDrag_virtualbase_metacall(VirtualQDrag* self, int param1, int param2, void** param3) {

	return self->QDrag::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QDrag_virtualbase_event(VirtualQDrag* self, QEvent* event) {

	return self->QDrag::event(event);
}

bool QDrag_virtualbase_eventFilter(VirtualQDrag* self, QObject* watched, QEvent* event) {

	return self->QDrag::eventFilter(watched, event);
}

void QDrag_virtualbase_timerEvent(VirtualQDrag* self, QTimerEvent* event) {

	self->QDrag::timerEvent(event);
}

void QDrag_virtualbase_childEvent(VirtualQDrag* self, QChildEvent* event) {

	self->QDrag::childEvent(event);
}

void QDrag_virtualbase_customEvent(VirtualQDrag* self, QEvent* event) {

	self->QDrag::customEvent(event);
}

void QDrag_virtualbase_connectNotify(VirtualQDrag* self, QMetaMethod* signal) {

	self->QDrag::connectNotify(*signal);
}

void QDrag_virtualbase_disconnectNotify(VirtualQDrag* self, QMetaMethod* signal) {

	self->QDrag::disconnectNotify(*signal);
}

const QMetaObject* QDrag_staticMetaObject() { return &QDrag::staticMetaObject; }

const QDrag_VTable* QDrag_vtbl(const VirtualQDrag* self) { return self->vtbl; }
void* QDrag_vdata(const VirtualQDrag* self) { return self->vdata; }
void QDrag_setVdata(VirtualQDrag* self, void* vdata) { self->vdata = vdata; }

QObject* QDrag_protectedbase_sender(const VirtualQDrag* self) {
	return self->sender();
}

int QDrag_protectedbase_senderSignalIndex(const VirtualQDrag* self) {
	return self->senderSignalIndex();
}

int QDrag_protectedbase_receivers(const VirtualQDrag* self, const char* signal) {
	return self->receivers(signal);
}

bool QDrag_protectedbase_isSignalConnected(const VirtualQDrag* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDrag_delete(QDrag* self) {
	delete self;
}

