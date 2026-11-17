#include <QScriptEngine>
#include <QScriptEngineAgent>
#include <QScriptValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qscriptengineagent.h>
#include "gen_qscriptengineagent.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQScriptEngineAgent final : public QScriptEngineAgent {
	const QScriptEngineAgent_VTable* vtbl;
public:
	friend void* QScriptEngineAgent_vdata(VirtualQScriptEngineAgent* self);
	friend VirtualQScriptEngineAgent* vdata_QScriptEngineAgent(void* vdata);

	VirtualQScriptEngineAgent(const QScriptEngineAgent_VTable* vtbl, QScriptEngine* engine): QScriptEngineAgent(engine), vtbl(vtbl) {}

	virtual ~VirtualQScriptEngineAgent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void scriptLoad(qint64 id, const QString& program, const QString& fileName, int baseLineNumber) override {
		if (vtbl->scriptLoad == 0) {
			QScriptEngineAgent::scriptLoad(id, program, fileName, baseLineNumber);
			return;
		}

		qint64 id_ret = id;
		long long sigval1 = static_cast<long long>(id_ret);
		const QString program_ret = program;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray program_b = program_ret.toUtf8();
		struct seaqt_string program_ms;
		program_ms.len = program_b.length();
		program_ms.data = static_cast<char*>(malloc(program_ms.len));
		memcpy(program_ms.data, program_b.data(), program_ms.len);
		struct seaqt_string sigval2 = program_ms;
		const QString fileName_ret = fileName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray fileName_b = fileName_ret.toUtf8();
		struct seaqt_string fileName_ms;
		fileName_ms.len = fileName_b.length();
		fileName_ms.data = static_cast<char*>(malloc(fileName_ms.len));
		memcpy(fileName_ms.data, fileName_b.data(), fileName_ms.len);
		struct seaqt_string sigval3 = fileName_ms;
		int sigval4 = baseLineNumber;
		vtbl->scriptLoad(this, sigval1, sigval2, sigval3, sigval4);
	}

	friend void QScriptEngineAgent_virtualbase_scriptLoad(VirtualQScriptEngineAgent* self, long long id, struct seaqt_string program, struct seaqt_string fileName, int baseLineNumber);

	virtual void scriptUnload(qint64 id) override {
		if (vtbl->scriptUnload == 0) {
			QScriptEngineAgent::scriptUnload(id);
			return;
		}

		qint64 id_ret = id;
		long long sigval1 = static_cast<long long>(id_ret);
		vtbl->scriptUnload(this, sigval1);
	}

	friend void QScriptEngineAgent_virtualbase_scriptUnload(VirtualQScriptEngineAgent* self, long long id);

	virtual void contextPush() override {
		if (vtbl->contextPush == 0) {
			QScriptEngineAgent::contextPush();
			return;
		}

		vtbl->contextPush(this);
	}

	friend void QScriptEngineAgent_virtualbase_contextPush(VirtualQScriptEngineAgent* self);

	virtual void contextPop() override {
		if (vtbl->contextPop == 0) {
			QScriptEngineAgent::contextPop();
			return;
		}

		vtbl->contextPop(this);
	}

	friend void QScriptEngineAgent_virtualbase_contextPop(VirtualQScriptEngineAgent* self);

	virtual void functionEntry(qint64 scriptId) override {
		if (vtbl->functionEntry == 0) {
			QScriptEngineAgent::functionEntry(scriptId);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		vtbl->functionEntry(this, sigval1);
	}

	friend void QScriptEngineAgent_virtualbase_functionEntry(VirtualQScriptEngineAgent* self, long long scriptId);

	virtual void functionExit(qint64 scriptId, const QScriptValue& returnValue) override {
		if (vtbl->functionExit == 0) {
			QScriptEngineAgent::functionExit(scriptId, returnValue);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		const QScriptValue& returnValue_ret = returnValue;
		// Cast returned reference into pointer
		QScriptValue* sigval2 = const_cast<QScriptValue*>(&returnValue_ret);
		vtbl->functionExit(this, sigval1, sigval2);
	}

	friend void QScriptEngineAgent_virtualbase_functionExit(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue);

	virtual void positionChange(qint64 scriptId, int lineNumber, int columnNumber) override {
		if (vtbl->positionChange == 0) {
			QScriptEngineAgent::positionChange(scriptId, lineNumber, columnNumber);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		int sigval2 = lineNumber;
		int sigval3 = columnNumber;
		vtbl->positionChange(this, sigval1, sigval2, sigval3);
	}

	friend void QScriptEngineAgent_virtualbase_positionChange(VirtualQScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber);

	virtual void exceptionThrow(qint64 scriptId, const QScriptValue& exception, bool hasHandler) override {
		if (vtbl->exceptionThrow == 0) {
			QScriptEngineAgent::exceptionThrow(scriptId, exception, hasHandler);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		const QScriptValue& exception_ret = exception;
		// Cast returned reference into pointer
		QScriptValue* sigval2 = const_cast<QScriptValue*>(&exception_ret);
		bool sigval3 = hasHandler;
		vtbl->exceptionThrow(this, sigval1, sigval2, sigval3);
	}

	friend void QScriptEngineAgent_virtualbase_exceptionThrow(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler);

	virtual void exceptionCatch(qint64 scriptId, const QScriptValue& exception) override {
		if (vtbl->exceptionCatch == 0) {
			QScriptEngineAgent::exceptionCatch(scriptId, exception);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		const QScriptValue& exception_ret = exception;
		// Cast returned reference into pointer
		QScriptValue* sigval2 = const_cast<QScriptValue*>(&exception_ret);
		vtbl->exceptionCatch(this, sigval1, sigval2);
	}

	friend void QScriptEngineAgent_virtualbase_exceptionCatch(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception);

	virtual bool supportsExtension(QScriptEngineAgent::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QScriptEngineAgent::supportsExtension(extension);
		}

		QScriptEngineAgent::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		bool callback_return_value = vtbl->supportsExtension(this, sigval1);
		return callback_return_value;
	}

	friend bool QScriptEngineAgent_virtualbase_supportsExtension(const VirtualQScriptEngineAgent* self, int extension);

	virtual QVariant extension(QScriptEngineAgent::Extension extension, const QVariant& argument) override {
		if (vtbl->extension == 0) {
			return QScriptEngineAgent::extension(extension, argument);
		}

		QScriptEngineAgent::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& argument_ret = argument;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&argument_ret);
		QVariant* callback_return_value = vtbl->extension(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QScriptEngineAgent_virtualbase_extension(VirtualQScriptEngineAgent* self, int extension, QVariant* argument);

};

VirtualQScriptEngineAgent* QScriptEngineAgent_new(const QScriptEngineAgent_VTable* vtbl, size_t vdata, QScriptEngine* engine) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScriptEngineAgent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScriptEngineAgent(vtbl, engine) : nullptr;
}

void QScriptEngineAgent_scriptLoad(QScriptEngineAgent* self, long long id, struct seaqt_string program, struct seaqt_string fileName, int baseLineNumber) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->scriptLoad(static_cast<qint64>(id), program_QString, fileName_QString, static_cast<int>(baseLineNumber));
}

void QScriptEngineAgent_scriptUnload(QScriptEngineAgent* self, long long id) {
	self->scriptUnload(static_cast<qint64>(id));
}

void QScriptEngineAgent_contextPush(QScriptEngineAgent* self) {
	self->contextPush();
}

void QScriptEngineAgent_contextPop(QScriptEngineAgent* self) {
	self->contextPop();
}

void QScriptEngineAgent_functionEntry(QScriptEngineAgent* self, long long scriptId) {
	self->functionEntry(static_cast<qint64>(scriptId));
}

void QScriptEngineAgent_functionExit(QScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue) {
	self->functionExit(static_cast<qint64>(scriptId), *returnValue);
}

void QScriptEngineAgent_positionChange(QScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber) {
	self->positionChange(static_cast<qint64>(scriptId), static_cast<int>(lineNumber), static_cast<int>(columnNumber));
}

void QScriptEngineAgent_exceptionThrow(QScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler) {
	self->exceptionThrow(static_cast<qint64>(scriptId), *exception, hasHandler);
}

void QScriptEngineAgent_exceptionCatch(QScriptEngineAgent* self, long long scriptId, QScriptValue* exception) {
	self->exceptionCatch(static_cast<qint64>(scriptId), *exception);
}

bool QScriptEngineAgent_supportsExtension(const QScriptEngineAgent* self, int extension) {
	return self->supportsExtension(static_cast<QScriptEngineAgent::Extension>(extension));
}

QVariant* QScriptEngineAgent_extension(QScriptEngineAgent* self, int extension, QVariant* argument) {
	return new QVariant(self->extension(static_cast<QScriptEngineAgent::Extension>(extension), *argument));
}

QScriptEngine* QScriptEngineAgent_engine(const QScriptEngineAgent* self) {
	return self->engine();
}

void* QScriptEngineAgent_vdata(VirtualQScriptEngineAgent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQScriptEngineAgent>()); }
VirtualQScriptEngineAgent* vdata_QScriptEngineAgent(void* vdata) { return reinterpret_cast<VirtualQScriptEngineAgent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQScriptEngineAgent>()); }

void QScriptEngineAgent_virtualbase_scriptLoad(VirtualQScriptEngineAgent* self, long long id, struct seaqt_string program, struct seaqt_string fileName, int baseLineNumber) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);

	self->QScriptEngineAgent::scriptLoad(static_cast<qint64>(id), program_QString, fileName_QString, static_cast<int>(baseLineNumber));
}

void QScriptEngineAgent_virtualbase_scriptUnload(VirtualQScriptEngineAgent* self, long long id) {

	self->QScriptEngineAgent::scriptUnload(static_cast<qint64>(id));
}

void QScriptEngineAgent_virtualbase_contextPush(VirtualQScriptEngineAgent* self) {

	self->QScriptEngineAgent::contextPush();
}

void QScriptEngineAgent_virtualbase_contextPop(VirtualQScriptEngineAgent* self) {

	self->QScriptEngineAgent::contextPop();
}

void QScriptEngineAgent_virtualbase_functionEntry(VirtualQScriptEngineAgent* self, long long scriptId) {

	self->QScriptEngineAgent::functionEntry(static_cast<qint64>(scriptId));
}

void QScriptEngineAgent_virtualbase_functionExit(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue) {

	self->QScriptEngineAgent::functionExit(static_cast<qint64>(scriptId), *returnValue);
}

void QScriptEngineAgent_virtualbase_positionChange(VirtualQScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber) {

	self->QScriptEngineAgent::positionChange(static_cast<qint64>(scriptId), static_cast<int>(lineNumber), static_cast<int>(columnNumber));
}

void QScriptEngineAgent_virtualbase_exceptionThrow(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler) {

	self->QScriptEngineAgent::exceptionThrow(static_cast<qint64>(scriptId), *exception, hasHandler);
}

void QScriptEngineAgent_virtualbase_exceptionCatch(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception) {

	self->QScriptEngineAgent::exceptionCatch(static_cast<qint64>(scriptId), *exception);
}

bool QScriptEngineAgent_virtualbase_supportsExtension(const VirtualQScriptEngineAgent* self, int extension) {

	return self->QScriptEngineAgent::supportsExtension(static_cast<VirtualQScriptEngineAgent::Extension>(extension));
}

QVariant* QScriptEngineAgent_virtualbase_extension(VirtualQScriptEngineAgent* self, int extension, QVariant* argument) {

	return new QVariant(self->QScriptEngineAgent::extension(static_cast<VirtualQScriptEngineAgent::Extension>(extension), *argument));
}

void QScriptEngineAgent_delete(QScriptEngineAgent* self) {
	delete self;
}

