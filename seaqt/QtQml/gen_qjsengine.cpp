#include <QChildEvent>
#include <QEvent>
#include <QJSEngine>
#include <QJSValue>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qjsengine.h>
#include "gen_qjsengine.h"
class VirtualQJSEngine final : public QJSEngine {
	const QJSEngine_VTable* vtbl;
	void* vdata;
public:
	friend const QJSEngine_VTable* QJSEngine_vtbl(const VirtualQJSEngine* self);
	friend void* QJSEngine_vdata(const VirtualQJSEngine* self);
	friend void QJSEngine_setVdata(VirtualQJSEngine* self, void* vdata);

	VirtualQJSEngine(const QJSEngine_VTable* vtbl, void* vdata): QJSEngine(), vtbl(vtbl), vdata(vdata) {}
	VirtualQJSEngine(const QJSEngine_VTable* vtbl, void* vdata, QObject* parent): QJSEngine(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQJSEngine() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QJSEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QJSEngine_virtualbase_metaObject(const VirtualQJSEngine* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QJSEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QJSEngine_virtualbase_metacast(VirtualQJSEngine* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QJSEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QJSEngine_virtualbase_metacall(VirtualQJSEngine* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QJSEngine::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QJSEngine_virtualbase_event(VirtualQJSEngine* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QJSEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QJSEngine_virtualbase_eventFilter(VirtualQJSEngine* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QJSEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QJSEngine_virtualbase_timerEvent(VirtualQJSEngine* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QJSEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QJSEngine_virtualbase_childEvent(VirtualQJSEngine* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QJSEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QJSEngine_virtualbase_customEvent(VirtualQJSEngine* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QJSEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QJSEngine_virtualbase_connectNotify(VirtualQJSEngine* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QJSEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QJSEngine_virtualbase_disconnectNotify(VirtualQJSEngine* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QJSEngine_protectedbase_sender(const VirtualQJSEngine* self);
	friend int QJSEngine_protectedbase_senderSignalIndex(const VirtualQJSEngine* self);
	friend int QJSEngine_protectedbase_receivers(const VirtualQJSEngine* self, const char* signal);
	friend bool QJSEngine_protectedbase_isSignalConnected(const VirtualQJSEngine* self, QMetaMethod* signal);
};

VirtualQJSEngine* QJSEngine_new(const QJSEngine_VTable* vtbl, void* vdata) {
	return new VirtualQJSEngine(vtbl, vdata);
}

VirtualQJSEngine* QJSEngine_new2(const QJSEngine_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQJSEngine(vtbl, vdata, parent);
}

void QJSEngine_virtbase(QJSEngine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QJSEngine_metaObject(const QJSEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QJSEngine_metacast(QJSEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QJSEngine_metacall(QJSEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QJSEngine_tr(const char* s) {
	QString _ret = QJSEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QJSEngine_trUtf8(const char* s) {
	QString _ret = QJSEngine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QJSValue* QJSEngine_globalObject(const QJSEngine* self) {
	return new QJSValue(self->globalObject());
}

QJSValue* QJSEngine_evaluate(QJSEngine* self, struct miqt_string program) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	return new QJSValue(self->evaluate(program_QString));
}

QJSValue* QJSEngine_importModule(QJSEngine* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new QJSValue(self->importModule(fileName_QString));
}

QJSValue* QJSEngine_newObject(QJSEngine* self) {
	return new QJSValue(self->newObject());
}

QJSValue* QJSEngine_newArray(QJSEngine* self) {
	return new QJSValue(self->newArray());
}

QJSValue* QJSEngine_newQObject(QJSEngine* self, QObject* object) {
	return new QJSValue(self->newQObject(object));
}

QJSValue* QJSEngine_newQMetaObject(QJSEngine* self, QMetaObject* metaObject) {
	return new QJSValue(self->newQMetaObject(metaObject));
}

QJSValue* QJSEngine_newErrorObject(QJSEngine* self, int errorType) {
	return new QJSValue(self->newErrorObject(static_cast<QJSValue::ErrorType>(errorType)));
}

void QJSEngine_collectGarbage(QJSEngine* self) {
	self->collectGarbage();
}

void QJSEngine_installTranslatorFunctions(QJSEngine* self) {
	self->installTranslatorFunctions();
}

void QJSEngine_installExtensions(QJSEngine* self, int extensions) {
	self->installExtensions(static_cast<QJSEngine::Extensions>(extensions));
}

void QJSEngine_setInterrupted(QJSEngine* self, bool interrupted) {
	self->setInterrupted(interrupted);
}

bool QJSEngine_isInterrupted(const QJSEngine* self) {
	return self->isInterrupted();
}

void QJSEngine_throwError(QJSEngine* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->throwError(message_QString);
}

void QJSEngine_throwErrorWithErrorType(QJSEngine* self, int errorType) {
	self->throwError(static_cast<QJSValue::ErrorType>(errorType));
}

struct miqt_string QJSEngine_uiLanguage(const QJSEngine* self) {
	QString _ret = self->uiLanguage();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QJSEngine_setUiLanguage(QJSEngine* self, struct miqt_string language) {
	QString language_QString = QString::fromUtf8(language.data, language.len);
	self->setUiLanguage(language_QString);
}

void QJSEngine_uiLanguageChanged(QJSEngine* self) {
	self->uiLanguageChanged();
}

void QJSEngine_connect_uiLanguageChanged(VirtualQJSEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQJSEngine::connect(self, static_cast<void (QJSEngine::*)()>(&QJSEngine::uiLanguageChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QJSEngine_tr2(const char* s, const char* c) {
	QString _ret = QJSEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QJSEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QJSEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QJSEngine_trUtf82(const char* s, const char* c) {
	QString _ret = QJSEngine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QJSEngine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QJSEngine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QJSValue* QJSEngine_evaluate2(QJSEngine* self, struct miqt_string program, struct miqt_string fileName) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new QJSValue(self->evaluate(program_QString, fileName_QString));
}

QJSValue* QJSEngine_evaluate3(QJSEngine* self, struct miqt_string program, struct miqt_string fileName, int lineNumber) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new QJSValue(self->evaluate(program_QString, fileName_QString, static_cast<int>(lineNumber)));
}

QJSValue* QJSEngine_newArray1(QJSEngine* self, unsigned int length) {
	return new QJSValue(self->newArray(static_cast<uint>(length)));
}

QJSValue* QJSEngine_newErrorObject2(QJSEngine* self, int errorType, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	return new QJSValue(self->newErrorObject(static_cast<QJSValue::ErrorType>(errorType), message_QString));
}

void QJSEngine_installTranslatorFunctions1(QJSEngine* self, QJSValue* object) {
	self->installTranslatorFunctions(*object);
}

void QJSEngine_installExtensions2(QJSEngine* self, int extensions, QJSValue* object) {
	self->installExtensions(static_cast<QJSEngine::Extensions>(extensions), *object);
}

void QJSEngine_throwError2(QJSEngine* self, int errorType, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->throwError(static_cast<QJSValue::ErrorType>(errorType), message_QString);
}

QMetaObject* QJSEngine_virtualbase_metaObject(const VirtualQJSEngine* self) {

	return (QMetaObject*) self->QJSEngine::metaObject();
}

void* QJSEngine_virtualbase_metacast(VirtualQJSEngine* self, const char* param1) {

	return self->QJSEngine::qt_metacast(param1);
}

int QJSEngine_virtualbase_metacall(VirtualQJSEngine* self, int param1, int param2, void** param3) {

	return self->QJSEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QJSEngine_virtualbase_event(VirtualQJSEngine* self, QEvent* event) {

	return self->QJSEngine::event(event);
}

bool QJSEngine_virtualbase_eventFilter(VirtualQJSEngine* self, QObject* watched, QEvent* event) {

	return self->QJSEngine::eventFilter(watched, event);
}

void QJSEngine_virtualbase_timerEvent(VirtualQJSEngine* self, QTimerEvent* event) {

	self->QJSEngine::timerEvent(event);
}

void QJSEngine_virtualbase_childEvent(VirtualQJSEngine* self, QChildEvent* event) {

	self->QJSEngine::childEvent(event);
}

void QJSEngine_virtualbase_customEvent(VirtualQJSEngine* self, QEvent* event) {

	self->QJSEngine::customEvent(event);
}

void QJSEngine_virtualbase_connectNotify(VirtualQJSEngine* self, QMetaMethod* signal) {

	self->QJSEngine::connectNotify(*signal);
}

void QJSEngine_virtualbase_disconnectNotify(VirtualQJSEngine* self, QMetaMethod* signal) {

	self->QJSEngine::disconnectNotify(*signal);
}

const QMetaObject* QJSEngine_staticMetaObject() { return &QJSEngine::staticMetaObject; }

const QJSEngine_VTable* QJSEngine_vtbl(const VirtualQJSEngine* self) { return self->vtbl; }
void* QJSEngine_vdata(const VirtualQJSEngine* self) { return self->vdata; }
void QJSEngine_setVdata(VirtualQJSEngine* self, void* vdata) { self->vdata = vdata; }

QObject* QJSEngine_protectedbase_sender(const VirtualQJSEngine* self) {
	return self->sender();
}

int QJSEngine_protectedbase_senderSignalIndex(const VirtualQJSEngine* self) {
	return self->senderSignalIndex();
}

int QJSEngine_protectedbase_receivers(const VirtualQJSEngine* self, const char* signal) {
	return self->receivers(signal);
}

bool QJSEngine_protectedbase_isSignalConnected(const VirtualQJSEngine* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QJSEngine_delete(QJSEngine* self) {
	delete self;
}

