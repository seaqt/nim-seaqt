#include <QScriptClass>
#include <QScriptClassPropertyIterator>
#include <QScriptEngine>
#include <QScriptString>
#include <QScriptValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qscriptclass.h>
#include "gen_qscriptclass.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQScriptClass final : public QScriptClass {
	struct QScriptClass_VTable* vtbl;
public:

	VirtualQScriptClass(struct QScriptClass_VTable* vtbl, QScriptEngine* engine): QScriptClass(engine), vtbl(vtbl) {};

	virtual ~VirtualQScriptClass() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QScriptClass::QueryFlags queryProperty(const QScriptValue& object, const QScriptString& name, QScriptClass::QueryFlags flags, uint* id) override {
		if (vtbl->queryProperty == 0) {
			return QScriptClass::queryProperty(object, name, flags, id);
		}

		const QScriptValue& object_ret = object;
		// Cast returned reference into pointer
		QScriptValue* sigval1 = const_cast<QScriptValue*>(&object_ret);
		const QScriptString& name_ret = name;
		// Cast returned reference into pointer
		QScriptString* sigval2 = const_cast<QScriptString*>(&name_ret);
		QScriptClass::QueryFlags flags_ret = flags;
		int sigval3 = static_cast<int>(flags_ret);
		uint* id_ret = id;
		unsigned int* sigval4 = static_cast<unsigned int*>(id_ret);

		int callback_return_value = vtbl->queryProperty(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<QScriptClass::QueryFlags>(callback_return_value);
	}

	friend int QScriptClass_virtualbase_queryProperty(void* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);

	// Subclass to allow providing a Go implementation
	virtual QScriptValue property(const QScriptValue& object, const QScriptString& name, uint id) override {
		if (vtbl->property == 0) {
			return QScriptClass::property(object, name, id);
		}

		const QScriptValue& object_ret = object;
		// Cast returned reference into pointer
		QScriptValue* sigval1 = const_cast<QScriptValue*>(&object_ret);
		const QScriptString& name_ret = name;
		// Cast returned reference into pointer
		QScriptString* sigval2 = const_cast<QScriptString*>(&name_ret);
		uint id_ret = id;
		unsigned int sigval3 = static_cast<unsigned int>(id_ret);

		QScriptValue* callback_return_value = vtbl->property(vtbl, this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QScriptValue* QScriptClass_virtualbase_property(void* self, QScriptValue* object, QScriptString* name, unsigned int id);

	// Subclass to allow providing a Go implementation
	virtual void setProperty(QScriptValue& object, const QScriptString& name, uint id, const QScriptValue& value) override {
		if (vtbl->setProperty == 0) {
			QScriptClass::setProperty(object, name, id, value);
			return;
		}

		QScriptValue& object_ret = object;
		// Cast returned reference into pointer
		QScriptValue* sigval1 = &object_ret;
		const QScriptString& name_ret = name;
		// Cast returned reference into pointer
		QScriptString* sigval2 = const_cast<QScriptString*>(&name_ret);
		uint id_ret = id;
		unsigned int sigval3 = static_cast<unsigned int>(id_ret);
		const QScriptValue& value_ret = value;
		// Cast returned reference into pointer
		QScriptValue* sigval4 = const_cast<QScriptValue*>(&value_ret);

		vtbl->setProperty(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QScriptClass_virtualbase_setProperty(void* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);

	// Subclass to allow providing a Go implementation
	virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue& object, const QScriptString& name, uint id) override {
		if (vtbl->propertyFlags == 0) {
			return QScriptClass::propertyFlags(object, name, id);
		}

		const QScriptValue& object_ret = object;
		// Cast returned reference into pointer
		QScriptValue* sigval1 = const_cast<QScriptValue*>(&object_ret);
		const QScriptString& name_ret = name;
		// Cast returned reference into pointer
		QScriptString* sigval2 = const_cast<QScriptString*>(&name_ret);
		uint id_ret = id;
		unsigned int sigval3 = static_cast<unsigned int>(id_ret);

		int callback_return_value = vtbl->propertyFlags(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<QScriptValue::PropertyFlags>(callback_return_value);
	}

	friend int QScriptClass_virtualbase_propertyFlags(void* self, QScriptValue* object, QScriptString* name, unsigned int id);

	// Subclass to allow providing a Go implementation
	virtual QScriptClassPropertyIterator* newIterator(const QScriptValue& object) override {
		if (vtbl->newIterator == 0) {
			return QScriptClass::newIterator(object);
		}

		const QScriptValue& object_ret = object;
		// Cast returned reference into pointer
		QScriptValue* sigval1 = const_cast<QScriptValue*>(&object_ret);

		QScriptClassPropertyIterator* callback_return_value = vtbl->newIterator(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QScriptClassPropertyIterator* QScriptClass_virtualbase_newIterator(void* self, QScriptValue* object);

	// Subclass to allow providing a Go implementation
	virtual QScriptValue prototype() const override {
		if (vtbl->prototype == 0) {
			return QScriptClass::prototype();
		}


		QScriptValue* callback_return_value = vtbl->prototype(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QScriptValue* QScriptClass_virtualbase_prototype(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QString name() const override {
		if (vtbl->name == 0) {
			return QScriptClass::name();
		}


		struct miqt_string callback_return_value = vtbl->name(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QScriptClass_virtualbase_name(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QScriptClass::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QScriptClass::supportsExtension(extension);
		}

		QScriptClass::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QScriptClass_virtualbase_supportsExtension(const void* self, int extension);

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(QScriptClass::Extension extension, const QVariant& argument) override {
		if (vtbl->extension == 0) {
			return QScriptClass::extension(extension, argument);
		}

		QScriptClass::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& argument_ret = argument;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&argument_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QScriptClass_virtualbase_extension(void* self, int extension, QVariant* argument);

};

QScriptClass* QScriptClass_new(struct QScriptClass_VTable* vtbl, QScriptEngine* engine) {
	return new VirtualQScriptClass(vtbl, engine);
}

QScriptEngine* QScriptClass_engine(const QScriptClass* self) {
	return self->engine();
}

int QScriptClass_queryProperty(QScriptClass* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id) {
	QScriptClass::QueryFlags _ret = self->queryProperty(*object, *name, static_cast<QScriptClass::QueryFlags>(flags), static_cast<uint*>(id));
	return static_cast<int>(_ret);
}

QScriptValue* QScriptClass_property(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id) {
	return new QScriptValue(self->property(*object, *name, static_cast<uint>(id)));
}

void QScriptClass_setProperty(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value) {
	self->setProperty(*object, *name, static_cast<uint>(id), *value);
}

int QScriptClass_propertyFlags(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id) {
	QScriptValue::PropertyFlags _ret = self->propertyFlags(*object, *name, static_cast<uint>(id));
	return static_cast<int>(_ret);
}

QScriptClassPropertyIterator* QScriptClass_newIterator(QScriptClass* self, QScriptValue* object) {
	return self->newIterator(*object);
}

QScriptValue* QScriptClass_prototype(const QScriptClass* self) {
	return new QScriptValue(self->prototype());
}

struct miqt_string QScriptClass_name(const QScriptClass* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QScriptClass_supportsExtension(const QScriptClass* self, int extension) {
	return self->supportsExtension(static_cast<QScriptClass::Extension>(extension));
}

QVariant* QScriptClass_extension(QScriptClass* self, int extension, QVariant* argument) {
	return new QVariant(self->extension(static_cast<QScriptClass::Extension>(extension), *argument));
}

int QScriptClass_virtualbase_queryProperty(void* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id) {

	VirtualQScriptClass::QueryFlags _ret = ( (VirtualQScriptClass*)(self) )->QScriptClass::queryProperty(*object, *name, static_cast<VirtualQScriptClass::QueryFlags>(flags), static_cast<uint*>(id));
	return static_cast<int>(_ret);

}

QScriptValue* QScriptClass_virtualbase_property(void* self, QScriptValue* object, QScriptString* name, unsigned int id) {

	return new QScriptValue(( (VirtualQScriptClass*)(self) )->QScriptClass::property(*object, *name, static_cast<uint>(id)));

}

void QScriptClass_virtualbase_setProperty(void* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value) {

	( (VirtualQScriptClass*)(self) )->QScriptClass::setProperty(*object, *name, static_cast<uint>(id), *value);

}

int QScriptClass_virtualbase_propertyFlags(void* self, QScriptValue* object, QScriptString* name, unsigned int id) {

	QScriptValue::PropertyFlags _ret = ( (VirtualQScriptClass*)(self) )->QScriptClass::propertyFlags(*object, *name, static_cast<uint>(id));
	return static_cast<int>(_ret);

}

QScriptClassPropertyIterator* QScriptClass_virtualbase_newIterator(void* self, QScriptValue* object) {

	return ( (VirtualQScriptClass*)(self) )->QScriptClass::newIterator(*object);

}

QScriptValue* QScriptClass_virtualbase_prototype(const void* self) {

	return new QScriptValue(( (const VirtualQScriptClass*)(self) )->QScriptClass::prototype());

}

struct miqt_string QScriptClass_virtualbase_name(const void* self) {

	QString _ret = ( (const VirtualQScriptClass*)(self) )->QScriptClass::name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

bool QScriptClass_virtualbase_supportsExtension(const void* self, int extension) {

	return ( (const VirtualQScriptClass*)(self) )->QScriptClass::supportsExtension(static_cast<VirtualQScriptClass::Extension>(extension));

}

QVariant* QScriptClass_virtualbase_extension(void* self, int extension, QVariant* argument) {

	return new QVariant(( (VirtualQScriptClass*)(self) )->QScriptClass::extension(static_cast<VirtualQScriptClass::Extension>(extension), *argument));

}

void QScriptClass_delete(QScriptClass* self) {
	delete self;
}

