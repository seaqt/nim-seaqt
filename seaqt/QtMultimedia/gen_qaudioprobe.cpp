#include <QAudioBuffer>
#include <QAudioProbe>
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
#include <qaudioprobe.h>
#include "gen_qaudioprobe.h"
class VirtualQAudioProbe final : public QAudioProbe {
	const QAudioProbe_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioProbe_VTable* QAudioProbe_vtbl(const VirtualQAudioProbe* self);
	friend void* QAudioProbe_vdata(const VirtualQAudioProbe* self);
	friend void QAudioProbe_setVdata(VirtualQAudioProbe* self, void* vdata);

	VirtualQAudioProbe(const QAudioProbe_VTable* vtbl, void* vdata): QAudioProbe(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioProbe(const QAudioProbe_VTable* vtbl, void* vdata, QObject* parent): QAudioProbe(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioProbe() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioProbe::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioProbe_virtualbase_metaObject(const VirtualQAudioProbe* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioProbe::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioProbe_virtualbase_metacast(VirtualQAudioProbe* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioProbe::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioProbe_virtualbase_metacall(VirtualQAudioProbe* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioProbe::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioProbe_virtualbase_event(VirtualQAudioProbe* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioProbe::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioProbe_virtualbase_eventFilter(VirtualQAudioProbe* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioProbe::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioProbe_virtualbase_timerEvent(VirtualQAudioProbe* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioProbe::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioProbe_virtualbase_childEvent(VirtualQAudioProbe* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioProbe::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioProbe_virtualbase_customEvent(VirtualQAudioProbe* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioProbe::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioProbe_virtualbase_connectNotify(VirtualQAudioProbe* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioProbe::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioProbe_virtualbase_disconnectNotify(VirtualQAudioProbe* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioProbe_protectedbase_sender(const VirtualQAudioProbe* self);
	friend int QAudioProbe_protectedbase_senderSignalIndex(const VirtualQAudioProbe* self);
	friend int QAudioProbe_protectedbase_receivers(const VirtualQAudioProbe* self, const char* signal);
	friend bool QAudioProbe_protectedbase_isSignalConnected(const VirtualQAudioProbe* self, QMetaMethod* signal);
};

VirtualQAudioProbe* QAudioProbe_new(const QAudioProbe_VTable* vtbl, void* vdata) {
	return new VirtualQAudioProbe(vtbl, vdata);
}

VirtualQAudioProbe* QAudioProbe_new2(const QAudioProbe_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAudioProbe(vtbl, vdata, parent);
}

void QAudioProbe_virtbase(QAudioProbe* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioProbe_metaObject(const QAudioProbe* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioProbe_metacast(QAudioProbe* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioProbe_metacall(QAudioProbe* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioProbe_tr(const char* s) {
	QString _ret = QAudioProbe::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_trUtf8(const char* s) {
	QString _ret = QAudioProbe::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioProbe_setSource(QAudioProbe* self, QMediaObject* source) {
	return self->setSource(source);
}

bool QAudioProbe_setSourceWithSource(QAudioProbe* self, QMediaRecorder* source) {
	return self->setSource(source);
}

bool QAudioProbe_isActive(const QAudioProbe* self) {
	return self->isActive();
}

void QAudioProbe_audioBufferProbed(QAudioProbe* self, QAudioBuffer* buffer) {
	self->audioBufferProbed(*buffer);
}

void QAudioProbe_connect_audioBufferProbed(VirtualQAudioProbe* self, intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAudioBuffer*);
		void operator()(const QAudioBuffer& buffer) {
			const QAudioBuffer& buffer_ret = buffer;
			// Cast returned reference into pointer
			QAudioBuffer* sigval1 = const_cast<QAudioBuffer*>(&buffer_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioProbe::connect(self, static_cast<void (QAudioProbe::*)(const QAudioBuffer&)>(&QAudioProbe::audioBufferProbed), self, local_caller{slot, callback, release});
}

void QAudioProbe_flush(QAudioProbe* self) {
	self->flush();
}

void QAudioProbe_connect_flush(VirtualQAudioProbe* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioProbe::connect(self, static_cast<void (QAudioProbe::*)()>(&QAudioProbe::flush), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioProbe_tr2(const char* s, const char* c) {
	QString _ret = QAudioProbe::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioProbe::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioProbe::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioProbe::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioProbe_virtualbase_metaObject(const VirtualQAudioProbe* self) {

	return (QMetaObject*) self->QAudioProbe::metaObject();
}

void* QAudioProbe_virtualbase_metacast(VirtualQAudioProbe* self, const char* param1) {

	return self->QAudioProbe::qt_metacast(param1);
}

int QAudioProbe_virtualbase_metacall(VirtualQAudioProbe* self, int param1, int param2, void** param3) {

	return self->QAudioProbe::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioProbe_virtualbase_event(VirtualQAudioProbe* self, QEvent* event) {

	return self->QAudioProbe::event(event);
}

bool QAudioProbe_virtualbase_eventFilter(VirtualQAudioProbe* self, QObject* watched, QEvent* event) {

	return self->QAudioProbe::eventFilter(watched, event);
}

void QAudioProbe_virtualbase_timerEvent(VirtualQAudioProbe* self, QTimerEvent* event) {

	self->QAudioProbe::timerEvent(event);
}

void QAudioProbe_virtualbase_childEvent(VirtualQAudioProbe* self, QChildEvent* event) {

	self->QAudioProbe::childEvent(event);
}

void QAudioProbe_virtualbase_customEvent(VirtualQAudioProbe* self, QEvent* event) {

	self->QAudioProbe::customEvent(event);
}

void QAudioProbe_virtualbase_connectNotify(VirtualQAudioProbe* self, QMetaMethod* signal) {

	self->QAudioProbe::connectNotify(*signal);
}

void QAudioProbe_virtualbase_disconnectNotify(VirtualQAudioProbe* self, QMetaMethod* signal) {

	self->QAudioProbe::disconnectNotify(*signal);
}

const QMetaObject* QAudioProbe_staticMetaObject() { return &QAudioProbe::staticMetaObject; }

const QAudioProbe_VTable* QAudioProbe_vtbl(const VirtualQAudioProbe* self) { return self->vtbl; }
void* QAudioProbe_vdata(const VirtualQAudioProbe* self) { return self->vdata; }
void QAudioProbe_setVdata(VirtualQAudioProbe* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioProbe_protectedbase_sender(const VirtualQAudioProbe* self) {
	return self->sender();
}

int QAudioProbe_protectedbase_senderSignalIndex(const VirtualQAudioProbe* self) {
	return self->senderSignalIndex();
}

int QAudioProbe_protectedbase_receivers(const VirtualQAudioProbe* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioProbe_protectedbase_isSignalConnected(const VirtualQAudioProbe* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioProbe_delete(QAudioProbe* self) {
	delete self;
}

