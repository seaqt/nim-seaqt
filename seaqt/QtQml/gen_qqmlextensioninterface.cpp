#include <QQmlEngine>
#include <QQmlEngineExtensionInterface>
#include <QQmlExtensionInterface>
#include <QQmlTypesExtensionInterface>
#include <qqmlextensioninterface.h>
#include "gen_qqmlextensioninterface.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlTypesExtensionInterface final : public QQmlTypesExtensionInterface {
	struct QQmlTypesExtensionInterface_VTable* vtbl;
public:

	VirtualQQmlTypesExtensionInterface(struct QQmlTypesExtensionInterface_VTable* vtbl, const QQmlTypesExtensionInterface& param1): QQmlTypesExtensionInterface(param1), vtbl(vtbl) {};

	virtual ~VirtualQQmlTypesExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void registerTypes(const char* uri) override {
		if (vtbl->registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) uri;

		vtbl->registerTypes(vtbl, this, sigval1);

	}

};

QQmlTypesExtensionInterface* QQmlTypesExtensionInterface_new(struct QQmlTypesExtensionInterface_VTable* vtbl, QQmlTypesExtensionInterface* param1) {
	return new VirtualQQmlTypesExtensionInterface(vtbl, *param1);
}

void QQmlTypesExtensionInterface_registerTypes(QQmlTypesExtensionInterface* self, const char* uri) {
	self->registerTypes(uri);
}

void QQmlTypesExtensionInterface_operatorAssign(QQmlTypesExtensionInterface* self, QQmlTypesExtensionInterface* param1) {
	self->operator=(*param1);
}

void QQmlTypesExtensionInterface_delete(QQmlTypesExtensionInterface* self) {
	delete self;
}

class VirtualQQmlExtensionInterface final : public QQmlExtensionInterface {
	struct QQmlExtensionInterface_VTable* vtbl;
public:

	VirtualQQmlExtensionInterface(struct QQmlExtensionInterface_VTable* vtbl, const QQmlExtensionInterface& param1): QQmlExtensionInterface(param1), vtbl(vtbl) {};

	virtual ~VirtualQQmlExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void initializeEngine(QQmlEngine* engine, const char* uri) override {
		if (vtbl->initializeEngine == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QQmlEngine* sigval1 = engine;
		const char* sigval2 = (const char*) uri;

		vtbl->initializeEngine(vtbl, this, sigval1, sigval2);

	}

	// Subclass to allow providing a Go implementation
	virtual void registerTypes(const char* uri) override {
		if (vtbl->registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) uri;

		vtbl->registerTypes(vtbl, this, sigval1);

	}

};

QQmlExtensionInterface* QQmlExtensionInterface_new(struct QQmlExtensionInterface_VTable* vtbl, QQmlExtensionInterface* param1) {
	return new VirtualQQmlExtensionInterface(vtbl, *param1);
}

void QQmlExtensionInterface_virtbase(QQmlExtensionInterface* src, QQmlTypesExtensionInterface** outptr_QQmlTypesExtensionInterface) {
	*outptr_QQmlTypesExtensionInterface = static_cast<QQmlTypesExtensionInterface*>(src);
}

void QQmlExtensionInterface_initializeEngine(QQmlExtensionInterface* self, QQmlEngine* engine, const char* uri) {
	self->initializeEngine(engine, uri);
}

void QQmlExtensionInterface_operatorAssign(QQmlExtensionInterface* self, QQmlExtensionInterface* param1) {
	self->operator=(*param1);
}

void QQmlExtensionInterface_delete(QQmlExtensionInterface* self) {
	delete self;
}

void QQmlEngineExtensionInterface_initializeEngine(QQmlEngineExtensionInterface* self, QQmlEngine* engine, const char* uri) {
	self->initializeEngine(engine, uri);
}

void QQmlEngineExtensionInterface_operatorAssign(QQmlEngineExtensionInterface* self, QQmlEngineExtensionInterface* param1) {
	self->operator=(*param1);
}

void QQmlEngineExtensionInterface_delete(QQmlEngineExtensionInterface* self) {
	delete self;
}

