#include <QChildEvent>
#include <QEvent>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRadioData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qradiodata.h>
#include "gen_qradiodata.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQRadioData final : public QRadioData {
	struct QRadioData_VTable* vtbl;
public:

	VirtualQRadioData(struct QRadioData_VTable* vtbl, QMediaObject* mediaObject): QRadioData(mediaObject), vtbl(vtbl) {};
	VirtualQRadioData(struct QRadioData_VTable* vtbl, QMediaObject* mediaObject, QObject* parent): QRadioData(mediaObject, parent), vtbl(vtbl) {};

	virtual ~VirtualQRadioData() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRadioData::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QRadioData_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRadioData::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QRadioData_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRadioData::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioData_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QRadioData::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMediaObject* QRadioData_virtualbase_mediaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setMediaObject(QMediaObject* mediaObject) override {
		if (vtbl->setMediaObject == 0) {
			return QRadioData::setMediaObject(mediaObject);
		}

		QMediaObject* sigval1 = mediaObject;

		bool callback_return_value = vtbl->setMediaObject(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioData_virtualbase_setMediaObject(void* self, QMediaObject* mediaObject);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRadioData::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioData_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRadioData::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRadioData_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRadioData::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QRadioData_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRadioData::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QRadioData_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRadioData::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QRadioData_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRadioData::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QRadioData_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRadioData::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QRadioData_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRadioData_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QRadioData_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QRadioData_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QRadioData_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QRadioData* QRadioData_new(struct QRadioData_VTable* vtbl, QMediaObject* mediaObject) {
	return new VirtualQRadioData(vtbl, mediaObject);
}

QRadioData* QRadioData_new2(struct QRadioData_VTable* vtbl, QMediaObject* mediaObject, QObject* parent) {
	return new VirtualQRadioData(vtbl, mediaObject, parent);
}

void QRadioData_virtbase(QRadioData* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QMediaBindableInterface = static_cast<QMediaBindableInterface*>(src);
}

QMetaObject* QRadioData_metaObject(const QRadioData* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRadioData_metacast(QRadioData* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRadioData_metacall(QRadioData* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRadioData_tr(const char* s) {
	QString _ret = QRadioData::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioData_trUtf8(const char* s) {
	QString _ret = QRadioData::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRadioData_availability(const QRadioData* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

QMediaObject* QRadioData_mediaObject(const QRadioData* self) {
	return self->mediaObject();
}

struct miqt_string QRadioData_stationId(const QRadioData* self) {
	QString _ret = self->stationId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRadioData_programType(const QRadioData* self) {
	QRadioData::ProgramType _ret = self->programType();
	return static_cast<int>(_ret);
}

struct miqt_string QRadioData_programTypeName(const QRadioData* self) {
	QString _ret = self->programTypeName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioData_stationName(const QRadioData* self) {
	QString _ret = self->stationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioData_radioText(const QRadioData* self) {
	QString _ret = self->radioText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRadioData_isAlternativeFrequenciesEnabled(const QRadioData* self) {
	return self->isAlternativeFrequenciesEnabled();
}

int QRadioData_error(const QRadioData* self) {
	QRadioData::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QRadioData_errorString(const QRadioData* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRadioData_setAlternativeFrequenciesEnabled(QRadioData* self, bool enabled) {
	self->setAlternativeFrequenciesEnabled(enabled);
}

void QRadioData_stationIdChanged(QRadioData* self, struct miqt_string stationId) {
	QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
	self->stationIdChanged(stationId_QString);
}

void QRadioData_connect_stationIdChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(QString stationId) {
			QString stationId_ret = stationId;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray stationId_b = stationId_ret.toUtf8();
			struct miqt_string stationId_ms;
			stationId_ms.len = stationId_b.length();
			stationId_ms.data = static_cast<char*>(malloc(stationId_ms.len));
			memcpy(stationId_ms.data, stationId_b.data(), stationId_ms.len);
			struct miqt_string sigval1 = stationId_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(QString)>(&QRadioData::stationIdChanged), self, local_caller{slot, callback, release});
}

void QRadioData_programTypeChanged(QRadioData* self, int programType) {
	self->programTypeChanged(static_cast<QRadioData::ProgramType>(programType));
}

void QRadioData_connect_programTypeChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QRadioData::ProgramType programType) {
			QRadioData::ProgramType programType_ret = programType;
			int sigval1 = static_cast<int>(programType_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(QRadioData::ProgramType)>(&QRadioData::programTypeChanged), self, local_caller{slot, callback, release});
}

void QRadioData_programTypeNameChanged(QRadioData* self, struct miqt_string programTypeName) {
	QString programTypeName_QString = QString::fromUtf8(programTypeName.data, programTypeName.len);
	self->programTypeNameChanged(programTypeName_QString);
}

void QRadioData_connect_programTypeNameChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(QString programTypeName) {
			QString programTypeName_ret = programTypeName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray programTypeName_b = programTypeName_ret.toUtf8();
			struct miqt_string programTypeName_ms;
			programTypeName_ms.len = programTypeName_b.length();
			programTypeName_ms.data = static_cast<char*>(malloc(programTypeName_ms.len));
			memcpy(programTypeName_ms.data, programTypeName_b.data(), programTypeName_ms.len);
			struct miqt_string sigval1 = programTypeName_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(QString)>(&QRadioData::programTypeNameChanged), self, local_caller{slot, callback, release});
}

void QRadioData_stationNameChanged(QRadioData* self, struct miqt_string stationName) {
	QString stationName_QString = QString::fromUtf8(stationName.data, stationName.len);
	self->stationNameChanged(stationName_QString);
}

void QRadioData_connect_stationNameChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(QString stationName) {
			QString stationName_ret = stationName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray stationName_b = stationName_ret.toUtf8();
			struct miqt_string stationName_ms;
			stationName_ms.len = stationName_b.length();
			stationName_ms.data = static_cast<char*>(malloc(stationName_ms.len));
			memcpy(stationName_ms.data, stationName_b.data(), stationName_ms.len);
			struct miqt_string sigval1 = stationName_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(QString)>(&QRadioData::stationNameChanged), self, local_caller{slot, callback, release});
}

void QRadioData_radioTextChanged(QRadioData* self, struct miqt_string radioText) {
	QString radioText_QString = QString::fromUtf8(radioText.data, radioText.len);
	self->radioTextChanged(radioText_QString);
}

void QRadioData_connect_radioTextChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(QString radioText) {
			QString radioText_ret = radioText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray radioText_b = radioText_ret.toUtf8();
			struct miqt_string radioText_ms;
			radioText_ms.len = radioText_b.length();
			radioText_ms.data = static_cast<char*>(malloc(radioText_ms.len));
			memcpy(radioText_ms.data, radioText_b.data(), radioText_ms.len);
			struct miqt_string sigval1 = radioText_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(QString)>(&QRadioData::radioTextChanged), self, local_caller{slot, callback, release});
}

void QRadioData_alternativeFrequenciesEnabledChanged(QRadioData* self, bool enabled) {
	self->alternativeFrequenciesEnabledChanged(enabled);
}

void QRadioData_connect_alternativeFrequenciesEnabledChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool enabled) {
			bool sigval1 = enabled;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(bool)>(&QRadioData::alternativeFrequenciesEnabledChanged), self, local_caller{slot, callback, release});
}

void QRadioData_errorWithError(QRadioData* self, int error) {
	self->error(static_cast<QRadioData::Error>(error));
}

void QRadioData_connect_errorWithError(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QRadioData::Error error) {
			QRadioData::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRadioData::connect(self, static_cast<void (QRadioData::*)(QRadioData::Error)>(&QRadioData::error), self, local_caller{slot, callback, release});
}

struct miqt_string QRadioData_tr2(const char* s, const char* c) {
	QString _ret = QRadioData::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioData_tr3(const char* s, const char* c, int n) {
	QString _ret = QRadioData::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioData_trUtf82(const char* s, const char* c) {
	QString _ret = QRadioData::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioData_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRadioData::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRadioData_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRadioData*)(self) )->QRadioData::metaObject();

}

void* QRadioData_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRadioData*)(self) )->QRadioData::qt_metacast(param1);

}

int QRadioData_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRadioData*)(self) )->QRadioData::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QMediaObject* QRadioData_virtualbase_mediaObject(const void* self) {

	return ( (const VirtualQRadioData*)(self) )->QRadioData::mediaObject();

}

bool QRadioData_virtualbase_setMediaObject(void* self, QMediaObject* mediaObject) {

	return ( (VirtualQRadioData*)(self) )->QRadioData::setMediaObject(mediaObject);

}

bool QRadioData_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQRadioData*)(self) )->QRadioData::event(event);

}

bool QRadioData_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRadioData*)(self) )->QRadioData::eventFilter(watched, event);

}

void QRadioData_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQRadioData*)(self) )->QRadioData::timerEvent(event);

}

void QRadioData_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRadioData*)(self) )->QRadioData::childEvent(event);

}

void QRadioData_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRadioData*)(self) )->QRadioData::customEvent(event);

}

void QRadioData_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRadioData*)(self) )->QRadioData::connectNotify(*signal);

}

void QRadioData_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRadioData*)(self) )->QRadioData::disconnectNotify(*signal);

}

const QMetaObject* QRadioData_staticMetaObject() { return &QRadioData::staticMetaObject; }
QObject* QRadioData_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRadioData* self_cast = dynamic_cast<VirtualQRadioData*>( (QRadioData*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QRadioData_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRadioData* self_cast = dynamic_cast<VirtualQRadioData*>( (QRadioData*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QRadioData_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQRadioData* self_cast = dynamic_cast<VirtualQRadioData*>( (QRadioData*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QRadioData_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQRadioData* self_cast = dynamic_cast<VirtualQRadioData*>( (QRadioData*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QRadioData_delete(QRadioData* self) {
	delete self;
}

