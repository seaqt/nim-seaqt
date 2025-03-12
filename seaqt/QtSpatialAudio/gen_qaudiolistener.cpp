#include <QAudioEngine>
#include <QAudioListener>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuaternion>
#include <QTimerEvent>
#include <QVector3D>
#include <qaudiolistener.h>
#include "gen_qaudiolistener.h"
class VirtualQAudioListener final : public QAudioListener {
	const QAudioListener_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioListener_VTable* QAudioListener_vtbl(const VirtualQAudioListener* self);
	friend void* QAudioListener_vdata(const VirtualQAudioListener* self);
	friend void QAudioListener_setVdata(VirtualQAudioListener* self, void* vdata);

	VirtualQAudioListener(const QAudioListener_VTable* vtbl, void* vdata, QAudioEngine* engine): QAudioListener(engine), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioListener() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioListener::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioListener_virtualbase_metaObject(const VirtualQAudioListener* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioListener::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioListener_virtualbase_metacast(VirtualQAudioListener* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioListener::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioListener_virtualbase_metacall(VirtualQAudioListener* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioListener::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioListener_virtualbase_event(VirtualQAudioListener* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioListener::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioListener_virtualbase_eventFilter(VirtualQAudioListener* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioListener::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioListener_virtualbase_timerEvent(VirtualQAudioListener* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioListener::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioListener_virtualbase_childEvent(VirtualQAudioListener* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioListener::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioListener_virtualbase_customEvent(VirtualQAudioListener* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioListener::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioListener_virtualbase_connectNotify(VirtualQAudioListener* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioListener::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioListener_virtualbase_disconnectNotify(VirtualQAudioListener* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioListener_protectedbase_sender(const VirtualQAudioListener* self);
	friend int QAudioListener_protectedbase_senderSignalIndex(const VirtualQAudioListener* self);
	friend int QAudioListener_protectedbase_receivers(const VirtualQAudioListener* self, const char* signal);
	friend bool QAudioListener_protectedbase_isSignalConnected(const VirtualQAudioListener* self, QMetaMethod* signal);
};

VirtualQAudioListener* QAudioListener_new(const QAudioListener_VTable* vtbl, void* vdata, QAudioEngine* engine) {
	return new VirtualQAudioListener(vtbl, vdata, engine);
}

void QAudioListener_virtbase(QAudioListener* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

void QAudioListener_setPosition(QAudioListener* self, QVector3D* pos) {
	self->setPosition(*pos);
}

QVector3D* QAudioListener_position(const QAudioListener* self) {
	return new QVector3D(self->position());
}

void QAudioListener_setRotation(QAudioListener* self, QQuaternion* q) {
	self->setRotation(*q);
}

QQuaternion* QAudioListener_rotation(const QAudioListener* self) {
	return new QQuaternion(self->rotation());
}

QAudioEngine* QAudioListener_engine(const QAudioListener* self) {
	return self->engine();
}

QMetaObject* QAudioListener_virtualbase_metaObject(const VirtualQAudioListener* self) {

	return (QMetaObject*) self->QAudioListener::metaObject();
}

void* QAudioListener_virtualbase_metacast(VirtualQAudioListener* self, const char* param1) {

	return self->QAudioListener::qt_metacast(param1);
}

int QAudioListener_virtualbase_metacall(VirtualQAudioListener* self, int param1, int param2, void** param3) {

	return self->QAudioListener::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioListener_virtualbase_event(VirtualQAudioListener* self, QEvent* event) {

	return self->QAudioListener::event(event);
}

bool QAudioListener_virtualbase_eventFilter(VirtualQAudioListener* self, QObject* watched, QEvent* event) {

	return self->QAudioListener::eventFilter(watched, event);
}

void QAudioListener_virtualbase_timerEvent(VirtualQAudioListener* self, QTimerEvent* event) {

	self->QAudioListener::timerEvent(event);
}

void QAudioListener_virtualbase_childEvent(VirtualQAudioListener* self, QChildEvent* event) {

	self->QAudioListener::childEvent(event);
}

void QAudioListener_virtualbase_customEvent(VirtualQAudioListener* self, QEvent* event) {

	self->QAudioListener::customEvent(event);
}

void QAudioListener_virtualbase_connectNotify(VirtualQAudioListener* self, QMetaMethod* signal) {

	self->QAudioListener::connectNotify(*signal);
}

void QAudioListener_virtualbase_disconnectNotify(VirtualQAudioListener* self, QMetaMethod* signal) {

	self->QAudioListener::disconnectNotify(*signal);
}

const QAudioListener_VTable* QAudioListener_vtbl(const VirtualQAudioListener* self) { return self->vtbl; }
void* QAudioListener_vdata(const VirtualQAudioListener* self) { return self->vdata; }
void QAudioListener_setVdata(VirtualQAudioListener* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioListener_protectedbase_sender(const VirtualQAudioListener* self) {
	return self->sender();
}

int QAudioListener_protectedbase_senderSignalIndex(const VirtualQAudioListener* self) {
	return self->senderSignalIndex();
}

int QAudioListener_protectedbase_receivers(const VirtualQAudioListener* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioListener_protectedbase_isSignalConnected(const VirtualQAudioListener* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioListener_delete(QAudioListener* self) {
	delete self;
}

