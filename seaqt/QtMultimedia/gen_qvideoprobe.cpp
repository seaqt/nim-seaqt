#include <QChildEvent>
#include <QEvent>
#include <QMediaObject>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoFrame>
#include <QVideoProbe>
#include <qvideoprobe.h>
#include "gen_qvideoprobe.h"
class VirtualQVideoProbe final : public QVideoProbe {
	const QVideoProbe_VTable* vtbl;
	void* vdata;
public:
	friend const QVideoProbe_VTable* QVideoProbe_vtbl(const VirtualQVideoProbe* self);
	friend void* QVideoProbe_vdata(const VirtualQVideoProbe* self);
	friend void QVideoProbe_setVdata(VirtualQVideoProbe* self, void* vdata);

	VirtualQVideoProbe(const QVideoProbe_VTable* vtbl, void* vdata): QVideoProbe(), vtbl(vtbl), vdata(vdata) {}
	VirtualQVideoProbe(const QVideoProbe_VTable* vtbl, void* vdata, QObject* parent): QVideoProbe(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQVideoProbe() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVideoProbe::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QVideoProbe_virtualbase_metaObject(const VirtualQVideoProbe* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVideoProbe::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QVideoProbe_virtualbase_metacast(VirtualQVideoProbe* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVideoProbe::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoProbe_virtualbase_metacall(VirtualQVideoProbe* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVideoProbe::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QVideoProbe_virtualbase_event(VirtualQVideoProbe* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVideoProbe::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVideoProbe_virtualbase_eventFilter(VirtualQVideoProbe* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVideoProbe::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QVideoProbe_virtualbase_timerEvent(VirtualQVideoProbe* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVideoProbe::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QVideoProbe_virtualbase_childEvent(VirtualQVideoProbe* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVideoProbe::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QVideoProbe_virtualbase_customEvent(VirtualQVideoProbe* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVideoProbe::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QVideoProbe_virtualbase_connectNotify(VirtualQVideoProbe* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVideoProbe::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QVideoProbe_virtualbase_disconnectNotify(VirtualQVideoProbe* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QVideoProbe_protectedbase_sender(const VirtualQVideoProbe* self);
	friend int QVideoProbe_protectedbase_senderSignalIndex(const VirtualQVideoProbe* self);
	friend int QVideoProbe_protectedbase_receivers(const VirtualQVideoProbe* self, const char* signal);
	friend bool QVideoProbe_protectedbase_isSignalConnected(const VirtualQVideoProbe* self, QMetaMethod* signal);
};

VirtualQVideoProbe* QVideoProbe_new(const QVideoProbe_VTable* vtbl, void* vdata) {
	return new VirtualQVideoProbe(vtbl, vdata);
}

VirtualQVideoProbe* QVideoProbe_new2(const QVideoProbe_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQVideoProbe(vtbl, vdata, parent);
}

void QVideoProbe_virtbase(QVideoProbe* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QVideoProbe_metaObject(const QVideoProbe* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoProbe_metacast(QVideoProbe* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoProbe_metacall(QVideoProbe* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVideoProbe_tr(const char* s) {
	QString _ret = QVideoProbe::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_trUtf8(const char* s) {
	QString _ret = QVideoProbe::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QVideoProbe_setSource(QVideoProbe* self, QMediaObject* source) {
	return self->setSource(source);
}

bool QVideoProbe_setSourceWithSource(QVideoProbe* self, QMediaRecorder* source) {
	return self->setSource(source);
}

bool QVideoProbe_isActive(const QVideoProbe* self) {
	return self->isActive();
}

void QVideoProbe_videoFrameProbed(QVideoProbe* self, QVideoFrame* frame) {
	self->videoFrameProbed(*frame);
}

void QVideoProbe_connect_videoFrameProbed(VirtualQVideoProbe* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QVideoFrame*);
		void operator()(const QVideoFrame& frame) {
			const QVideoFrame& frame_ret = frame;
			// Cast returned reference into pointer
			QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQVideoProbe::connect(self, static_cast<void (QVideoProbe::*)(const QVideoFrame&)>(&QVideoProbe::videoFrameProbed), self, local_caller{slot, callback, release});
}

void QVideoProbe_flush(QVideoProbe* self) {
	self->flush();
}

void QVideoProbe_connect_flush(VirtualQVideoProbe* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQVideoProbe::connect(self, static_cast<void (QVideoProbe::*)()>(&QVideoProbe::flush), self, local_caller{slot, callback, release});
}

struct miqt_string QVideoProbe_tr2(const char* s, const char* c) {
	QString _ret = QVideoProbe::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_tr3(const char* s, const char* c, int n) {
	QString _ret = QVideoProbe::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_trUtf82(const char* s, const char* c) {
	QString _ret = QVideoProbe::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVideoProbe::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVideoProbe_virtualbase_metaObject(const VirtualQVideoProbe* self) {

	return (QMetaObject*) self->QVideoProbe::metaObject();
}

void* QVideoProbe_virtualbase_metacast(VirtualQVideoProbe* self, const char* param1) {

	return self->QVideoProbe::qt_metacast(param1);
}

int QVideoProbe_virtualbase_metacall(VirtualQVideoProbe* self, int param1, int param2, void** param3) {

	return self->QVideoProbe::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QVideoProbe_virtualbase_event(VirtualQVideoProbe* self, QEvent* event) {

	return self->QVideoProbe::event(event);
}

bool QVideoProbe_virtualbase_eventFilter(VirtualQVideoProbe* self, QObject* watched, QEvent* event) {

	return self->QVideoProbe::eventFilter(watched, event);
}

void QVideoProbe_virtualbase_timerEvent(VirtualQVideoProbe* self, QTimerEvent* event) {

	self->QVideoProbe::timerEvent(event);
}

void QVideoProbe_virtualbase_childEvent(VirtualQVideoProbe* self, QChildEvent* event) {

	self->QVideoProbe::childEvent(event);
}

void QVideoProbe_virtualbase_customEvent(VirtualQVideoProbe* self, QEvent* event) {

	self->QVideoProbe::customEvent(event);
}

void QVideoProbe_virtualbase_connectNotify(VirtualQVideoProbe* self, QMetaMethod* signal) {

	self->QVideoProbe::connectNotify(*signal);
}

void QVideoProbe_virtualbase_disconnectNotify(VirtualQVideoProbe* self, QMetaMethod* signal) {

	self->QVideoProbe::disconnectNotify(*signal);
}

const QMetaObject* QVideoProbe_staticMetaObject() { return &QVideoProbe::staticMetaObject; }

const QVideoProbe_VTable* QVideoProbe_vtbl(const VirtualQVideoProbe* self) { return self->vtbl; }
void* QVideoProbe_vdata(const VirtualQVideoProbe* self) { return self->vdata; }
void QVideoProbe_setVdata(VirtualQVideoProbe* self, void* vdata) { self->vdata = vdata; }

QObject* QVideoProbe_protectedbase_sender(const VirtualQVideoProbe* self) {
	return self->sender();
}

int QVideoProbe_protectedbase_senderSignalIndex(const VirtualQVideoProbe* self) {
	return self->senderSignalIndex();
}

int QVideoProbe_protectedbase_receivers(const VirtualQVideoProbe* self, const char* signal) {
	return self->receivers(signal);
}

bool QVideoProbe_protectedbase_isSignalConnected(const VirtualQVideoProbe* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QVideoProbe_delete(QVideoProbe* self) {
	delete self;
}

