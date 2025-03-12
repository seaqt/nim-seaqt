#include <QQmlEngine>
#include <QQmlEngineExtensionInterface>
#include <QQmlExtensionInterface>
#include <QQmlTypesExtensionInterface>
#include <qqmlextensioninterface.h>
#include "gen_qqmlextensioninterface.h"
class VirtualQQmlTypesExtensionInterface final : public QQmlTypesExtensionInterface {
	const QQmlTypesExtensionInterface_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlTypesExtensionInterface_VTable* QQmlTypesExtensionInterface_vtbl(const VirtualQQmlTypesExtensionInterface* self);
	friend void* QQmlTypesExtensionInterface_vdata(const VirtualQQmlTypesExtensionInterface* self);
	friend void QQmlTypesExtensionInterface_setVdata(VirtualQQmlTypesExtensionInterface* self, void* vdata);

	VirtualQQmlTypesExtensionInterface(const QQmlTypesExtensionInterface_VTable* vtbl, void* vdata, const QQmlTypesExtensionInterface& param1): QQmlTypesExtensionInterface(param1), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlTypesExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void registerTypes(const char* uri) override {
		if (vtbl->registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) uri;

		vtbl->registerTypes(this, sigval1);

	}

};

VirtualQQmlTypesExtensionInterface* QQmlTypesExtensionInterface_new(const QQmlTypesExtensionInterface_VTable* vtbl, void* vdata, QQmlTypesExtensionInterface* param1) {
	return new VirtualQQmlTypesExtensionInterface(vtbl, vdata, *param1);
}

void QQmlTypesExtensionInterface_registerTypes(QQmlTypesExtensionInterface* self, const char* uri) {
	self->registerTypes(uri);
}

void QQmlTypesExtensionInterface_operatorAssign(QQmlTypesExtensionInterface* self, QQmlTypesExtensionInterface* param1) {
	self->operator=(*param1);
}

const QQmlTypesExtensionInterface_VTable* QQmlTypesExtensionInterface_vtbl(const VirtualQQmlTypesExtensionInterface* self) { return self->vtbl; }
void* QQmlTypesExtensionInterface_vdata(const VirtualQQmlTypesExtensionInterface* self) { return self->vdata; }
void QQmlTypesExtensionInterface_setVdata(VirtualQQmlTypesExtensionInterface* self, void* vdata) { self->vdata = vdata; }

void QQmlTypesExtensionInterface_delete(QQmlTypesExtensionInterface* self) {
	delete self;
}

class VirtualQQmlExtensionInterface final : public QQmlExtensionInterface {
	const QQmlExtensionInterface_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlExtensionInterface_VTable* QQmlExtensionInterface_vtbl(const VirtualQQmlExtensionInterface* self);
	friend void* QQmlExtensionInterface_vdata(const VirtualQQmlExtensionInterface* self);
	friend void QQmlExtensionInterface_setVdata(VirtualQQmlExtensionInterface* self, void* vdata);

	VirtualQQmlExtensionInterface(const QQmlExtensionInterface_VTable* vtbl, void* vdata, const QQmlExtensionInterface& param1): QQmlExtensionInterface(param1), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void initializeEngine(QQmlEngine* engine, const char* uri) override {
		if (vtbl->initializeEngine == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QQmlEngine* sigval1 = engine;
		const char* sigval2 = (const char*) uri;

		vtbl->initializeEngine(this, sigval1, sigval2);

	}

	virtual void registerTypes(const char* uri) override {
		if (vtbl->registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) uri;

		vtbl->registerTypes(this, sigval1);

	}

};

VirtualQQmlExtensionInterface* QQmlExtensionInterface_new(const QQmlExtensionInterface_VTable* vtbl, void* vdata, QQmlExtensionInterface* param1) {
	return new VirtualQQmlExtensionInterface(vtbl, vdata, *param1);
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

const QQmlExtensionInterface_VTable* QQmlExtensionInterface_vtbl(const VirtualQQmlExtensionInterface* self) { return self->vtbl; }
void* QQmlExtensionInterface_vdata(const VirtualQQmlExtensionInterface* self) { return self->vdata; }
void QQmlExtensionInterface_setVdata(VirtualQQmlExtensionInterface* self, void* vdata) { self->vdata = vdata; }

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

