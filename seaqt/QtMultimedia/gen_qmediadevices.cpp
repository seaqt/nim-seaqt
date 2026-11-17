#include <QAudioDevice>
#include <QCameraDevice>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaDevices>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qmediadevices.h>
#include "gen_qmediadevices.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQMediaDevices final : public QMediaDevices {
	const QMediaDevices_VTable* vtbl;
public:
	friend void* QMediaDevices_vdata(VirtualQMediaDevices* self);
	friend VirtualQMediaDevices* vdata_QMediaDevices(void* vdata);

	VirtualQMediaDevices(const QMediaDevices_VTable* vtbl): QMediaDevices(), vtbl(vtbl) {}
	VirtualQMediaDevices(const QMediaDevices_VTable* vtbl, QObject* parent): QMediaDevices(parent), vtbl(vtbl) {}

	virtual ~VirtualQMediaDevices() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaDevices::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QMediaDevices_virtualbase_metaObject(const VirtualQMediaDevices* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaDevices::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QMediaDevices_virtualbase_metacast(VirtualQMediaDevices* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaDevices::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QMediaDevices_virtualbase_metacall(VirtualQMediaDevices* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaDevices::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QMediaDevices_virtualbase_event(VirtualQMediaDevices* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaDevices::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QMediaDevices_virtualbase_eventFilter(VirtualQMediaDevices* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaDevices::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QMediaDevices_virtualbase_timerEvent(VirtualQMediaDevices* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaDevices::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QMediaDevices_virtualbase_childEvent(VirtualQMediaDevices* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaDevices::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QMediaDevices_virtualbase_customEvent(VirtualQMediaDevices* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaDevices::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QMediaDevices_virtualbase_connectNotify(VirtualQMediaDevices* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaDevices::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QMediaDevices_virtualbase_disconnectNotify(VirtualQMediaDevices* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaDevices_protectedbase_sender(const VirtualQMediaDevices* self);
	friend int QMediaDevices_protectedbase_senderSignalIndex(const VirtualQMediaDevices* self);
	friend int QMediaDevices_protectedbase_receivers(const VirtualQMediaDevices* self, const char* signal);
	friend bool QMediaDevices_protectedbase_isSignalConnected(const VirtualQMediaDevices* self, QMetaMethod* signal);
};

VirtualQMediaDevices* QMediaDevices_new(const QMediaDevices_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaDevices>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaDevices(vtbl) : nullptr;
}

VirtualQMediaDevices* QMediaDevices_new2(const QMediaDevices_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaDevices>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaDevices(vtbl, parent) : nullptr;
}

void QMediaDevices_virtbase(QMediaDevices* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMediaDevices_metaObject(const QMediaDevices* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaDevices_metacast(QMediaDevices* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaDevices_metacall(QMediaDevices* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaDevices_tr(const char* s) {
	QString _ret = QMediaDevices::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QAudioDevice* */  QMediaDevices_audioInputs() {
	QList<QAudioDevice> _ret = QMediaDevices::audioInputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAudioDevice** _arr = static_cast<QAudioDevice**>(malloc(sizeof(QAudioDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAudioDevice(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QAudioDevice* */  QMediaDevices_audioOutputs() {
	QList<QAudioDevice> _ret = QMediaDevices::audioOutputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAudioDevice** _arr = static_cast<QAudioDevice**>(malloc(sizeof(QAudioDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAudioDevice(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QCameraDevice* */  QMediaDevices_videoInputs() {
	QList<QCameraDevice> _ret = QMediaDevices::videoInputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	QCameraDevice** _arr = static_cast<QCameraDevice**>(malloc(sizeof(QCameraDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCameraDevice(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAudioDevice* QMediaDevices_defaultAudioInput() {
	return new QAudioDevice(QMediaDevices::defaultAudioInput());
}

QAudioDevice* QMediaDevices_defaultAudioOutput() {
	return new QAudioDevice(QMediaDevices::defaultAudioOutput());
}

QCameraDevice* QMediaDevices_defaultVideoInput() {
	return new QCameraDevice(QMediaDevices::defaultVideoInput());
}

void QMediaDevices_audioInputsChanged(QMediaDevices* self) {
	self->audioInputsChanged();
}

void QMediaDevices_connect_audioInputsChanged(QMediaDevices* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaDevices::connect(self, static_cast<void (QMediaDevices::*)()>(&QMediaDevices::audioInputsChanged), self, local_caller{slot, callback, release});
}

void QMediaDevices_audioOutputsChanged(QMediaDevices* self) {
	self->audioOutputsChanged();
}

void QMediaDevices_connect_audioOutputsChanged(QMediaDevices* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaDevices::connect(self, static_cast<void (QMediaDevices::*)()>(&QMediaDevices::audioOutputsChanged), self, local_caller{slot, callback, release});
}

void QMediaDevices_videoInputsChanged(QMediaDevices* self) {
	self->videoInputsChanged();
}

void QMediaDevices_connect_videoInputsChanged(QMediaDevices* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaDevices::connect(self, static_cast<void (QMediaDevices::*)()>(&QMediaDevices::videoInputsChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QMediaDevices_tr2(const char* s, const char* c) {
	QString _ret = QMediaDevices::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaDevices_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaDevices::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaDevices_staticMetaObject() { return &QMediaDevices::staticMetaObject; }
void* QMediaDevices_vdata(VirtualQMediaDevices* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQMediaDevices>()); }
VirtualQMediaDevices* vdata_QMediaDevices(void* vdata) { return reinterpret_cast<VirtualQMediaDevices*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQMediaDevices>()); }

QMetaObject* QMediaDevices_virtualbase_metaObject(const VirtualQMediaDevices* self) {

	return (QMetaObject*) self->QMediaDevices::metaObject();
}

void* QMediaDevices_virtualbase_metacast(VirtualQMediaDevices* self, const char* param1) {

	return self->QMediaDevices::qt_metacast(param1);
}

int QMediaDevices_virtualbase_metacall(VirtualQMediaDevices* self, int param1, int param2, void** param3) {

	return self->QMediaDevices::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QMediaDevices_virtualbase_event(VirtualQMediaDevices* self, QEvent* event) {

	return self->QMediaDevices::event(event);
}

bool QMediaDevices_virtualbase_eventFilter(VirtualQMediaDevices* self, QObject* watched, QEvent* event) {

	return self->QMediaDevices::eventFilter(watched, event);
}

void QMediaDevices_virtualbase_timerEvent(VirtualQMediaDevices* self, QTimerEvent* event) {

	self->QMediaDevices::timerEvent(event);
}

void QMediaDevices_virtualbase_childEvent(VirtualQMediaDevices* self, QChildEvent* event) {

	self->QMediaDevices::childEvent(event);
}

void QMediaDevices_virtualbase_customEvent(VirtualQMediaDevices* self, QEvent* event) {

	self->QMediaDevices::customEvent(event);
}

void QMediaDevices_virtualbase_connectNotify(VirtualQMediaDevices* self, QMetaMethod* signal) {

	self->QMediaDevices::connectNotify(*signal);
}

void QMediaDevices_virtualbase_disconnectNotify(VirtualQMediaDevices* self, QMetaMethod* signal) {

	self->QMediaDevices::disconnectNotify(*signal);
}

QObject* QMediaDevices_protectedbase_sender(const VirtualQMediaDevices* self) {
	return self->sender();
}

int QMediaDevices_protectedbase_senderSignalIndex(const VirtualQMediaDevices* self) {
	return self->senderSignalIndex();
}

int QMediaDevices_protectedbase_receivers(const VirtualQMediaDevices* self, const char* signal) {
	return self->receivers(signal);
}

bool QMediaDevices_protectedbase_isSignalConnected(const VirtualQMediaDevices* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMediaDevices_delete(QMediaDevices* self) {
	delete self;
}

