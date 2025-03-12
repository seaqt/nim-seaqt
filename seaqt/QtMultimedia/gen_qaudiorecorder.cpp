#include <QAudioRecorder>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiorecorder.h>
#include "gen_qaudiorecorder.h"
class VirtualQAudioRecorder final : public QAudioRecorder {
	const QAudioRecorder_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioRecorder_VTable* QAudioRecorder_vtbl(const VirtualQAudioRecorder* self);
	friend void* QAudioRecorder_vdata(const VirtualQAudioRecorder* self);
	friend void QAudioRecorder_setVdata(VirtualQAudioRecorder* self, void* vdata);

	VirtualQAudioRecorder(const QAudioRecorder_VTable* vtbl, void* vdata): QAudioRecorder(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioRecorder(const QAudioRecorder_VTable* vtbl, void* vdata, QObject* parent): QAudioRecorder(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioRecorder() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioRecorder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioRecorder_virtualbase_metaObject(const VirtualQAudioRecorder* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioRecorder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioRecorder_virtualbase_metacast(VirtualQAudioRecorder* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioRecorder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioRecorder_virtualbase_metacall(VirtualQAudioRecorder* self, int param1, int param2, void** param3);

	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QAudioRecorder::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(this);

		return callback_return_value;
	}

	friend QMediaObject* QAudioRecorder_virtualbase_mediaObject(const VirtualQAudioRecorder* self);

	virtual bool setMediaObject(QMediaObject* object) override {
		if (vtbl->setMediaObject == 0) {
			return QAudioRecorder::setMediaObject(object);
		}

		QMediaObject* sigval1 = object;

		bool callback_return_value = vtbl->setMediaObject(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioRecorder_virtualbase_setMediaObject(VirtualQAudioRecorder* self, QMediaObject* object);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioRecorder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioRecorder_virtualbase_event(VirtualQAudioRecorder* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioRecorder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioRecorder_virtualbase_eventFilter(VirtualQAudioRecorder* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioRecorder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioRecorder_virtualbase_timerEvent(VirtualQAudioRecorder* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioRecorder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioRecorder_virtualbase_childEvent(VirtualQAudioRecorder* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioRecorder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioRecorder_virtualbase_customEvent(VirtualQAudioRecorder* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioRecorder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioRecorder_virtualbase_connectNotify(VirtualQAudioRecorder* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioRecorder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioRecorder_virtualbase_disconnectNotify(VirtualQAudioRecorder* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioRecorder_protectedbase_sender(const VirtualQAudioRecorder* self);
	friend int QAudioRecorder_protectedbase_senderSignalIndex(const VirtualQAudioRecorder* self);
	friend int QAudioRecorder_protectedbase_receivers(const VirtualQAudioRecorder* self, const char* signal);
	friend bool QAudioRecorder_protectedbase_isSignalConnected(const VirtualQAudioRecorder* self, QMetaMethod* signal);
};

VirtualQAudioRecorder* QAudioRecorder_new(const QAudioRecorder_VTable* vtbl, void* vdata) {
	return new VirtualQAudioRecorder(vtbl, vdata);
}

VirtualQAudioRecorder* QAudioRecorder_new2(const QAudioRecorder_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAudioRecorder(vtbl, vdata, parent);
}

void QAudioRecorder_virtbase(QAudioRecorder* src, QMediaRecorder** outptr_QMediaRecorder) {
	*outptr_QMediaRecorder = static_cast<QMediaRecorder*>(src);
}

QMetaObject* QAudioRecorder_metaObject(const QAudioRecorder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioRecorder_metacast(QAudioRecorder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioRecorder_metacall(QAudioRecorder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioRecorder_tr(const char* s) {
	QString _ret = QAudioRecorder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRecorder_trUtf8(const char* s) {
	QString _ret = QAudioRecorder::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QAudioRecorder_audioInputs(const QAudioRecorder* self) {
	QStringList _ret = self->audioInputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QAudioRecorder_defaultAudioInput(const QAudioRecorder* self) {
	QString _ret = self->defaultAudioInput();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRecorder_audioInputDescription(const QAudioRecorder* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->audioInputDescription(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRecorder_audioInput(const QAudioRecorder* self) {
	QString _ret = self->audioInput();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioRecorder_setAudioInput(QAudioRecorder* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setAudioInput(name_QString);
}

void QAudioRecorder_audioInputChanged(QAudioRecorder* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->audioInputChanged(name_QString);
}

void QAudioRecorder_connect_audioInputChanged(VirtualQAudioRecorder* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& name) {
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct miqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct miqt_string sigval1 = name_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioRecorder::connect(self, static_cast<void (QAudioRecorder::*)(const QString&)>(&QAudioRecorder::audioInputChanged), self, local_caller{slot, callback, release});
}

void QAudioRecorder_availableAudioInputsChanged(QAudioRecorder* self) {
	self->availableAudioInputsChanged();
}

void QAudioRecorder_connect_availableAudioInputsChanged(VirtualQAudioRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRecorder::connect(self, static_cast<void (QAudioRecorder::*)()>(&QAudioRecorder::availableAudioInputsChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioRecorder_tr2(const char* s, const char* c) {
	QString _ret = QAudioRecorder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRecorder_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioRecorder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRecorder_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioRecorder::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRecorder_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioRecorder::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioRecorder_virtualbase_metaObject(const VirtualQAudioRecorder* self) {

	return (QMetaObject*) self->QAudioRecorder::metaObject();
}

void* QAudioRecorder_virtualbase_metacast(VirtualQAudioRecorder* self, const char* param1) {

	return self->QAudioRecorder::qt_metacast(param1);
}

int QAudioRecorder_virtualbase_metacall(VirtualQAudioRecorder* self, int param1, int param2, void** param3) {

	return self->QAudioRecorder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QMediaObject* QAudioRecorder_virtualbase_mediaObject(const VirtualQAudioRecorder* self) {

	return self->QAudioRecorder::mediaObject();
}

bool QAudioRecorder_virtualbase_setMediaObject(VirtualQAudioRecorder* self, QMediaObject* object) {

	return self->QAudioRecorder::setMediaObject(object);
}

bool QAudioRecorder_virtualbase_event(VirtualQAudioRecorder* self, QEvent* event) {

	return self->QAudioRecorder::event(event);
}

bool QAudioRecorder_virtualbase_eventFilter(VirtualQAudioRecorder* self, QObject* watched, QEvent* event) {

	return self->QAudioRecorder::eventFilter(watched, event);
}

void QAudioRecorder_virtualbase_timerEvent(VirtualQAudioRecorder* self, QTimerEvent* event) {

	self->QAudioRecorder::timerEvent(event);
}

void QAudioRecorder_virtualbase_childEvent(VirtualQAudioRecorder* self, QChildEvent* event) {

	self->QAudioRecorder::childEvent(event);
}

void QAudioRecorder_virtualbase_customEvent(VirtualQAudioRecorder* self, QEvent* event) {

	self->QAudioRecorder::customEvent(event);
}

void QAudioRecorder_virtualbase_connectNotify(VirtualQAudioRecorder* self, QMetaMethod* signal) {

	self->QAudioRecorder::connectNotify(*signal);
}

void QAudioRecorder_virtualbase_disconnectNotify(VirtualQAudioRecorder* self, QMetaMethod* signal) {

	self->QAudioRecorder::disconnectNotify(*signal);
}

const QMetaObject* QAudioRecorder_staticMetaObject() { return &QAudioRecorder::staticMetaObject; }

const QAudioRecorder_VTable* QAudioRecorder_vtbl(const VirtualQAudioRecorder* self) { return self->vtbl; }
void* QAudioRecorder_vdata(const VirtualQAudioRecorder* self) { return self->vdata; }
void QAudioRecorder_setVdata(VirtualQAudioRecorder* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioRecorder_protectedbase_sender(const VirtualQAudioRecorder* self) {
	return self->sender();
}

int QAudioRecorder_protectedbase_senderSignalIndex(const VirtualQAudioRecorder* self) {
	return self->senderSignalIndex();
}

int QAudioRecorder_protectedbase_receivers(const VirtualQAudioRecorder* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioRecorder_protectedbase_isSignalConnected(const VirtualQAudioRecorder* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioRecorder_delete(QAudioRecorder* self) {
	delete self;
}

