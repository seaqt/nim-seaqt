#include <QChildEvent>
#include <QDateTime>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRegExp>
#include <QScriptClass>
#include <QScriptContext>
#include <QScriptEngine>
#include <QScriptEngineAgent>
#include <QScriptProgram>
#include <QScriptString>
#include <QScriptSyntaxCheckResult>
#include <QScriptValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qscriptengine.h>
#include "gen_qscriptengine.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QScriptSyntaxCheckResult* QScriptSyntaxCheckResult_new(QScriptSyntaxCheckResult* other) {
	return new (std::nothrow) QScriptSyntaxCheckResult(*other);
}

int QScriptSyntaxCheckResult_state(const QScriptSyntaxCheckResult* self) {
	QScriptSyntaxCheckResult::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QScriptSyntaxCheckResult_errorLineNumber(const QScriptSyntaxCheckResult* self) {
	return self->errorLineNumber();
}

int QScriptSyntaxCheckResult_errorColumnNumber(const QScriptSyntaxCheckResult* self) {
	return self->errorColumnNumber();
}

struct seaqt_string QScriptSyntaxCheckResult_errorMessage(const QScriptSyntaxCheckResult* self) {
	QString _ret = self->errorMessage();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QScriptSyntaxCheckResult_operatorAssign(QScriptSyntaxCheckResult* self, QScriptSyntaxCheckResult* other) {
	self->operator=(*other);
}

void QScriptSyntaxCheckResult_delete(QScriptSyntaxCheckResult* self) {
	delete self;
}

class VirtualQScriptEngine final : public QScriptEngine {
	const QScriptEngine_VTable* vtbl;
public:
	friend void* QScriptEngine_vdata(VirtualQScriptEngine* self);
	friend VirtualQScriptEngine* vdata_QScriptEngine(void* vdata);

	VirtualQScriptEngine(const QScriptEngine_VTable* vtbl): QScriptEngine(), vtbl(vtbl) {}
	VirtualQScriptEngine(const QScriptEngine_VTable* vtbl, QObject* parent): QScriptEngine(parent), vtbl(vtbl) {}

	virtual ~VirtualQScriptEngine() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScriptEngine::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QScriptEngine_virtualbase_metaObject(const VirtualQScriptEngine* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScriptEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QScriptEngine_virtualbase_metacast(VirtualQScriptEngine* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScriptEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QScriptEngine_virtualbase_metacall(VirtualQScriptEngine* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScriptEngine::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QScriptEngine_virtualbase_event(VirtualQScriptEngine* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScriptEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QScriptEngine_virtualbase_eventFilter(VirtualQScriptEngine* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QScriptEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QScriptEngine_virtualbase_timerEvent(VirtualQScriptEngine* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScriptEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QScriptEngine_virtualbase_childEvent(VirtualQScriptEngine* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScriptEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QScriptEngine_virtualbase_customEvent(VirtualQScriptEngine* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScriptEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QScriptEngine_virtualbase_connectNotify(VirtualQScriptEngine* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScriptEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QScriptEngine_virtualbase_disconnectNotify(VirtualQScriptEngine* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QScriptEngine_protectedbase_sender(const VirtualQScriptEngine* self);
	friend int QScriptEngine_protectedbase_senderSignalIndex(const VirtualQScriptEngine* self);
	friend int QScriptEngine_protectedbase_receivers(const VirtualQScriptEngine* self, const char* signal);
	friend bool QScriptEngine_protectedbase_isSignalConnected(const VirtualQScriptEngine* self, QMetaMethod* signal);
};

VirtualQScriptEngine* QScriptEngine_new(const QScriptEngine_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScriptEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScriptEngine(vtbl) : nullptr;
}

VirtualQScriptEngine* QScriptEngine_new2(const QScriptEngine_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScriptEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScriptEngine(vtbl, parent) : nullptr;
}

void QScriptEngine_virtbase(QScriptEngine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QScriptEngine_metaObject(const QScriptEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScriptEngine_metacast(QScriptEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScriptEngine_metacall(QScriptEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QScriptEngine_tr(const char* s) {
	QString _ret = QScriptEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptEngine_trUtf8(const char* s) {
	QString _ret = QScriptEngine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QScriptValue* QScriptEngine_globalObject(const QScriptEngine* self) {
	return new QScriptValue(self->globalObject());
}

void QScriptEngine_setGlobalObject(QScriptEngine* self, QScriptValue* object) {
	self->setGlobalObject(*object);
}

QScriptContext* QScriptEngine_currentContext(const QScriptEngine* self) {
	return self->currentContext();
}

QScriptContext* QScriptEngine_pushContext(QScriptEngine* self) {
	return self->pushContext();
}

void QScriptEngine_popContext(QScriptEngine* self) {
	self->popContext();
}

bool QScriptEngine_canEvaluate(const QScriptEngine* self, struct seaqt_string program) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	return self->canEvaluate(program_QString);
}

QScriptSyntaxCheckResult* QScriptEngine_checkSyntax(struct seaqt_string program) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	return new QScriptSyntaxCheckResult(QScriptEngine::checkSyntax(program_QString));
}

QScriptValue* QScriptEngine_evaluate(QScriptEngine* self, struct seaqt_string program) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	return new QScriptValue(self->evaluate(program_QString));
}

QScriptValue* QScriptEngine_evaluateWithProgram(QScriptEngine* self, QScriptProgram* program) {
	return new QScriptValue(self->evaluate(*program));
}

bool QScriptEngine_isEvaluating(const QScriptEngine* self) {
	return self->isEvaluating();
}

void QScriptEngine_abortEvaluation(QScriptEngine* self) {
	self->abortEvaluation();
}

bool QScriptEngine_hasUncaughtException(const QScriptEngine* self) {
	return self->hasUncaughtException();
}

QScriptValue* QScriptEngine_uncaughtException(const QScriptEngine* self) {
	return new QScriptValue(self->uncaughtException());
}

int QScriptEngine_uncaughtExceptionLineNumber(const QScriptEngine* self) {
	return self->uncaughtExceptionLineNumber();
}

struct seaqt_array /* of struct seaqt_string */  QScriptEngine_uncaughtExceptionBacktrace(const QScriptEngine* self) {
	QStringList _ret = self->uncaughtExceptionBacktrace();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QScriptEngine_clearExceptions(QScriptEngine* self) {
	self->clearExceptions();
}

QScriptValue* QScriptEngine_nullValue(QScriptEngine* self) {
	return new QScriptValue(self->nullValue());
}

QScriptValue* QScriptEngine_undefinedValue(QScriptEngine* self) {
	return new QScriptValue(self->undefinedValue());
}

QScriptValue* QScriptEngine_newVariant(QScriptEngine* self, QVariant* value) {
	return new QScriptValue(self->newVariant(*value));
}

QScriptValue* QScriptEngine_newVariant2(QScriptEngine* self, QScriptValue* object, QVariant* value) {
	return new QScriptValue(self->newVariant(*object, *value));
}

QScriptValue* QScriptEngine_newRegExp(QScriptEngine* self, QRegExp* regexp) {
	return new QScriptValue(self->newRegExp(*regexp));
}

QScriptValue* QScriptEngine_newObject(QScriptEngine* self) {
	return new QScriptValue(self->newObject());
}

QScriptValue* QScriptEngine_newObjectWithScriptClass(QScriptEngine* self, QScriptClass* scriptClass) {
	return new QScriptValue(self->newObject(scriptClass));
}

QScriptValue* QScriptEngine_newArray(QScriptEngine* self) {
	return new QScriptValue(self->newArray());
}

QScriptValue* QScriptEngine_newRegExp2(QScriptEngine* self, struct seaqt_string pattern, struct seaqt_string flags) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	QString flags_QString = QString::fromUtf8(flags.data, flags.len);
	return new QScriptValue(self->newRegExp(pattern_QString, flags_QString));
}

QScriptValue* QScriptEngine_newDate(QScriptEngine* self, double value) {
	return new QScriptValue(self->newDate(static_cast<qsreal>(value)));
}

QScriptValue* QScriptEngine_newDateWithValue(QScriptEngine* self, QDateTime* value) {
	return new QScriptValue(self->newDate(*value));
}

QScriptValue* QScriptEngine_newActivationObject(QScriptEngine* self) {
	return new QScriptValue(self->newActivationObject());
}

QScriptValue* QScriptEngine_newQObject(QScriptEngine* self, QObject* object) {
	return new QScriptValue(self->newQObject(object));
}

QScriptValue* QScriptEngine_newQObject2(QScriptEngine* self, QScriptValue* scriptObject, QObject* qtObject) {
	return new QScriptValue(self->newQObject(*scriptObject, qtObject));
}

QScriptValue* QScriptEngine_newQMetaObject(QScriptEngine* self, QMetaObject* metaObject) {
	return new QScriptValue(self->newQMetaObject(metaObject));
}

QScriptValue* QScriptEngine_defaultPrototype(const QScriptEngine* self, int metaTypeId) {
	return new QScriptValue(self->defaultPrototype(static_cast<int>(metaTypeId)));
}

void QScriptEngine_setDefaultPrototype(QScriptEngine* self, int metaTypeId, QScriptValue* prototype) {
	self->setDefaultPrototype(static_cast<int>(metaTypeId), *prototype);
}

void QScriptEngine_installTranslatorFunctions(QScriptEngine* self) {
	self->installTranslatorFunctions();
}

QScriptValue* QScriptEngine_importExtension(QScriptEngine* self, struct seaqt_string extension) {
	QString extension_QString = QString::fromUtf8(extension.data, extension.len);
	return new QScriptValue(self->importExtension(extension_QString));
}

struct seaqt_array /* of struct seaqt_string */  QScriptEngine_availableExtensions(const QScriptEngine* self) {
	QStringList _ret = self->availableExtensions();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of struct seaqt_string */  QScriptEngine_importedExtensions(const QScriptEngine* self) {
	QStringList _ret = self->importedExtensions();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QScriptEngine_collectGarbage(QScriptEngine* self) {
	self->collectGarbage();
}

void QScriptEngine_reportAdditionalMemoryCost(QScriptEngine* self, int size) {
	self->reportAdditionalMemoryCost(static_cast<int>(size));
}

void QScriptEngine_setProcessEventsInterval(QScriptEngine* self, int interval) {
	self->setProcessEventsInterval(static_cast<int>(interval));
}

int QScriptEngine_processEventsInterval(const QScriptEngine* self) {
	return self->processEventsInterval();
}

void QScriptEngine_setAgent(QScriptEngine* self, QScriptEngineAgent* agent) {
	self->setAgent(agent);
}

QScriptEngineAgent* QScriptEngine_agent(const QScriptEngine* self) {
	return self->agent();
}

QScriptString* QScriptEngine_toStringHandle(QScriptEngine* self, struct seaqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	return new QScriptString(self->toStringHandle(str_QString));
}

QScriptValue* QScriptEngine_toObject(QScriptEngine* self, QScriptValue* value) {
	return new QScriptValue(self->toObject(*value));
}

QScriptValue* QScriptEngine_objectById(const QScriptEngine* self, long long id) {
	return new QScriptValue(self->objectById(static_cast<qint64>(id)));
}

void QScriptEngine_signalHandlerException(QScriptEngine* self, QScriptValue* exception) {
	self->signalHandlerException(*exception);
}

void QScriptEngine_connect_signalHandlerException(QScriptEngine* self, intptr_t slot, void (*callback)(intptr_t, QScriptValue*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QScriptValue*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QScriptValue*);
		void operator()(const QScriptValue& exception) {
			const QScriptValue& exception_ret = exception;
			// Cast returned reference into pointer
			QScriptValue* sigval1 = const_cast<QScriptValue*>(&exception_ret);
			callback(slot, sigval1);
		}
	};
	QScriptEngine::connect(self, static_cast<void (QScriptEngine::*)(const QScriptValue&)>(&QScriptEngine::signalHandlerException), self, local_caller{slot, callback, release});
}

struct seaqt_string QScriptEngine_tr2(const char* s, const char* c) {
	QString _ret = QScriptEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QScriptEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptEngine_trUtf82(const char* s, const char* c) {
	QString _ret = QScriptEngine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptEngine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QScriptEngine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QScriptValue* QScriptEngine_evaluate2(QScriptEngine* self, struct seaqt_string program, struct seaqt_string fileName) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new QScriptValue(self->evaluate(program_QString, fileName_QString));
}

QScriptValue* QScriptEngine_evaluate3(QScriptEngine* self, struct seaqt_string program, struct seaqt_string fileName, int lineNumber) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new QScriptValue(self->evaluate(program_QString, fileName_QString, static_cast<int>(lineNumber)));
}

void QScriptEngine_abortEvaluationWithResult(QScriptEngine* self, QScriptValue* result) {
	self->abortEvaluation(*result);
}

QScriptValue* QScriptEngine_newObject2(QScriptEngine* self, QScriptClass* scriptClass, QScriptValue* data) {
	return new QScriptValue(self->newObject(scriptClass, *data));
}

QScriptValue* QScriptEngine_newArrayWithLength(QScriptEngine* self, unsigned int length) {
	return new QScriptValue(self->newArray(static_cast<uint>(length)));
}

QScriptValue* QScriptEngine_newQObject3(QScriptEngine* self, QObject* object, int ownership) {
	return new QScriptValue(self->newQObject(object, static_cast<QScriptEngine::ValueOwnership>(ownership)));
}

QScriptValue* QScriptEngine_newQObject4(QScriptEngine* self, QObject* object, int ownership, int* options) {
	return new QScriptValue(self->newQObject(object, static_cast<QScriptEngine::ValueOwnership>(ownership), (const QScriptEngine::QObjectWrapOptions&)(*options)));
}

QScriptValue* QScriptEngine_newQObject5(QScriptEngine* self, QScriptValue* scriptObject, QObject* qtObject, int ownership) {
	return new QScriptValue(self->newQObject(*scriptObject, qtObject, static_cast<QScriptEngine::ValueOwnership>(ownership)));
}

QScriptValue* QScriptEngine_newQObject6(QScriptEngine* self, QScriptValue* scriptObject, QObject* qtObject, int ownership, int* options) {
	return new QScriptValue(self->newQObject(*scriptObject, qtObject, static_cast<QScriptEngine::ValueOwnership>(ownership), (const QScriptEngine::QObjectWrapOptions&)(*options)));
}

QScriptValue* QScriptEngine_newQMetaObject2(QScriptEngine* self, QMetaObject* metaObject, QScriptValue* ctor) {
	return new QScriptValue(self->newQMetaObject(metaObject, *ctor));
}

void QScriptEngine_installTranslatorFunctionsWithObject(QScriptEngine* self, QScriptValue* object) {
	self->installTranslatorFunctions(*object);
}

const QMetaObject* QScriptEngine_staticMetaObject() { return &QScriptEngine::staticMetaObject; }
void* QScriptEngine_vdata(VirtualQScriptEngine* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQScriptEngine>()); }
VirtualQScriptEngine* vdata_QScriptEngine(void* vdata) { return reinterpret_cast<VirtualQScriptEngine*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQScriptEngine>()); }

QMetaObject* QScriptEngine_virtualbase_metaObject(const VirtualQScriptEngine* self) {

	return (QMetaObject*) self->QScriptEngine::metaObject();
}

void* QScriptEngine_virtualbase_metacast(VirtualQScriptEngine* self, const char* param1) {

	return self->QScriptEngine::qt_metacast(param1);
}

int QScriptEngine_virtualbase_metacall(VirtualQScriptEngine* self, int param1, int param2, void** param3) {

	return self->QScriptEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QScriptEngine_virtualbase_event(VirtualQScriptEngine* self, QEvent* event) {

	return self->QScriptEngine::event(event);
}

bool QScriptEngine_virtualbase_eventFilter(VirtualQScriptEngine* self, QObject* watched, QEvent* event) {

	return self->QScriptEngine::eventFilter(watched, event);
}

void QScriptEngine_virtualbase_timerEvent(VirtualQScriptEngine* self, QTimerEvent* event) {

	self->QScriptEngine::timerEvent(event);
}

void QScriptEngine_virtualbase_childEvent(VirtualQScriptEngine* self, QChildEvent* event) {

	self->QScriptEngine::childEvent(event);
}

void QScriptEngine_virtualbase_customEvent(VirtualQScriptEngine* self, QEvent* event) {

	self->QScriptEngine::customEvent(event);
}

void QScriptEngine_virtualbase_connectNotify(VirtualQScriptEngine* self, QMetaMethod* signal) {

	self->QScriptEngine::connectNotify(*signal);
}

void QScriptEngine_virtualbase_disconnectNotify(VirtualQScriptEngine* self, QMetaMethod* signal) {

	self->QScriptEngine::disconnectNotify(*signal);
}

QObject* QScriptEngine_protectedbase_sender(const VirtualQScriptEngine* self) {
	return self->sender();
}

int QScriptEngine_protectedbase_senderSignalIndex(const VirtualQScriptEngine* self) {
	return self->senderSignalIndex();
}

int QScriptEngine_protectedbase_receivers(const VirtualQScriptEngine* self, const char* signal) {
	return self->receivers(signal);
}

bool QScriptEngine_protectedbase_isSignalConnected(const VirtualQScriptEngine* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QScriptEngine_delete(QScriptEngine* self) {
	delete self;
}

