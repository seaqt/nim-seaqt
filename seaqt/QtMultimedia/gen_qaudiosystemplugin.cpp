#include <QAbstractAudioDeviceInfo>
#include <QAbstractAudioInput>
#include <QAbstractAudioOutput>
#include <QAudioSystemFactoryInterface>
#include <QAudioSystemPlugin>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiosystemplugin.h>
#include "gen_qaudiosystemplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

struct miqt_array /* of struct miqt_string */  QAudioSystemFactoryInterface_availableDevices(const QAudioSystemFactoryInterface* self, int param1) {
	QList<QByteArray> _ret = self->availableDevices(static_cast<QAudio::Mode>(param1));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAbstractAudioInput* QAudioSystemFactoryInterface_createInput(QAudioSystemFactoryInterface* self, struct miqt_string device) {
	QByteArray device_QByteArray(device.data, device.len);
	return self->createInput(device_QByteArray);
}

QAbstractAudioOutput* QAudioSystemFactoryInterface_createOutput(QAudioSystemFactoryInterface* self, struct miqt_string device) {
	QByteArray device_QByteArray(device.data, device.len);
	return self->createOutput(device_QByteArray);
}

QAbstractAudioDeviceInfo* QAudioSystemFactoryInterface_createDeviceInfo(QAudioSystemFactoryInterface* self, struct miqt_string device, int mode) {
	QByteArray device_QByteArray(device.data, device.len);
	return self->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
}

void QAudioSystemFactoryInterface_operatorAssign(QAudioSystemFactoryInterface* self, QAudioSystemFactoryInterface* param1) {
	self->operator=(*param1);
}

void QAudioSystemFactoryInterface_delete(QAudioSystemFactoryInterface* self) {
	delete self;
}

class VirtualQAudioSystemPlugin final : public QAudioSystemPlugin {
	struct QAudioSystemPlugin_VTable* vtbl;
public:

	VirtualQAudioSystemPlugin(struct QAudioSystemPlugin_VTable* vtbl): QAudioSystemPlugin(), vtbl(vtbl) {};
	VirtualQAudioSystemPlugin(struct QAudioSystemPlugin_VTable* vtbl, QObject* parent): QAudioSystemPlugin(parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioSystemPlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioSystemPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioSystemPlugin_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSystemPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioSystemPlugin_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioSystemPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioSystemPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QList<QByteArray> availableDevices(QAudio::Mode param1) const override {
		if (vtbl->availableDevices == 0) {
			return QList<QByteArray>(); // Pure virtual, there is no base we can call
		}

		QAudio::Mode param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->availableDevices(vtbl, this, sigval1);
		QList<QByteArray> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_arr_i_QByteArray(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QByteArray);
		}

		return callback_return_value_QList;
	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractAudioInput* createInput(const QByteArray& device) override {
		if (vtbl->createInput == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QByteArray device_qb = device;
		struct miqt_string device_ms;
		device_ms.len = device_qb.length();
		device_ms.data = static_cast<char*>(malloc(device_ms.len));
		memcpy(device_ms.data, device_qb.data(), device_ms.len);
		struct miqt_string sigval1 = device_ms;

		QAbstractAudioInput* callback_return_value = vtbl->createInput(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractAudioOutput* createOutput(const QByteArray& device) override {
		if (vtbl->createOutput == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QByteArray device_qb = device;
		struct miqt_string device_ms;
		device_ms.len = device_qb.length();
		device_ms.data = static_cast<char*>(malloc(device_ms.len));
		memcpy(device_ms.data, device_qb.data(), device_ms.len);
		struct miqt_string sigval1 = device_ms;

		QAbstractAudioOutput* callback_return_value = vtbl->createOutput(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) override {
		if (vtbl->createDeviceInfo == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QByteArray device_qb = device;
		struct miqt_string device_ms;
		device_ms.len = device_qb.length();
		device_ms.data = static_cast<char*>(malloc(device_ms.len));
		memcpy(device_ms.data, device_qb.data(), device_ms.len);
		struct miqt_string sigval1 = device_ms;
		QAudio::Mode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		QAbstractAudioDeviceInfo* callback_return_value = vtbl->createDeviceInfo(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSystemPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioSystemPlugin_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioSystemPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioSystemPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSystemPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioSystemPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSystemPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioSystemPlugin_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSystemPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioSystemPlugin_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioSystemPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioSystemPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioSystemPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioSystemPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioSystemPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioSystemPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioSystemPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAudioSystemPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAudioSystemPlugin* QAudioSystemPlugin_new(struct QAudioSystemPlugin_VTable* vtbl) {
	return new VirtualQAudioSystemPlugin(vtbl);
}

QAudioSystemPlugin* QAudioSystemPlugin_new2(struct QAudioSystemPlugin_VTable* vtbl, QObject* parent) {
	return new VirtualQAudioSystemPlugin(vtbl, parent);
}

void QAudioSystemPlugin_virtbase(QAudioSystemPlugin* src, QObject** outptr_QObject, QAudioSystemFactoryInterface** outptr_QAudioSystemFactoryInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QAudioSystemFactoryInterface = static_cast<QAudioSystemFactoryInterface*>(src);
}

QMetaObject* QAudioSystemPlugin_metaObject(const QAudioSystemPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioSystemPlugin_metacast(QAudioSystemPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioSystemPlugin_metacall(QAudioSystemPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioSystemPlugin_tr(const char* s) {
	QString _ret = QAudioSystemPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSystemPlugin_trUtf8(const char* s) {
	QString _ret = QAudioSystemPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QAudioSystemPlugin_availableDevices(const QAudioSystemPlugin* self, int param1) {
	QList<QByteArray> _ret = self->availableDevices(static_cast<QAudio::Mode>(param1));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAbstractAudioInput* QAudioSystemPlugin_createInput(QAudioSystemPlugin* self, struct miqt_string device) {
	QByteArray device_QByteArray(device.data, device.len);
	return self->createInput(device_QByteArray);
}

QAbstractAudioOutput* QAudioSystemPlugin_createOutput(QAudioSystemPlugin* self, struct miqt_string device) {
	QByteArray device_QByteArray(device.data, device.len);
	return self->createOutput(device_QByteArray);
}

QAbstractAudioDeviceInfo* QAudioSystemPlugin_createDeviceInfo(QAudioSystemPlugin* self, struct miqt_string device, int mode) {
	QByteArray device_QByteArray(device.data, device.len);
	return self->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
}

struct miqt_string QAudioSystemPlugin_tr2(const char* s, const char* c) {
	QString _ret = QAudioSystemPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSystemPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioSystemPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSystemPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioSystemPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSystemPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioSystemPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioSystemPlugin_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::metaObject();

}

void* QAudioSystemPlugin_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::qt_metacast(param1);

}

int QAudioSystemPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioSystemPlugin_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::event(event);

}

bool QAudioSystemPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::eventFilter(watched, event);

}

void QAudioSystemPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::timerEvent(event);

}

void QAudioSystemPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::childEvent(event);

}

void QAudioSystemPlugin_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::customEvent(event);

}

void QAudioSystemPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::connectNotify(*signal);

}

void QAudioSystemPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioSystemPlugin*)(self) )->QAudioSystemPlugin::disconnectNotify(*signal);

}

const QMetaObject* QAudioSystemPlugin_staticMetaObject() { return &QAudioSystemPlugin::staticMetaObject; }
QObject* QAudioSystemPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioSystemPlugin* self_cast = dynamic_cast<VirtualQAudioSystemPlugin*>( (QAudioSystemPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAudioSystemPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioSystemPlugin* self_cast = dynamic_cast<VirtualQAudioSystemPlugin*>( (QAudioSystemPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAudioSystemPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAudioSystemPlugin* self_cast = dynamic_cast<VirtualQAudioSystemPlugin*>( (QAudioSystemPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAudioSystemPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAudioSystemPlugin* self_cast = dynamic_cast<VirtualQAudioSystemPlugin*>( (QAudioSystemPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioSystemPlugin_delete(QAudioSystemPlugin* self) {
	delete self;
}

