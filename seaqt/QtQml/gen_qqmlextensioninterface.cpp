#include <QQmlEngine>
#include <QQmlEngineExtensionInterface>
#include <QQmlExtensionInterface>
#include <QQmlTypesExtensionInterface>
#include <qqmlextensioninterface.h>
#include "gen_qqmlextensioninterface.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlTypesExtensionInterface final : public QQmlTypesExtensionInterface {
	const QQmlTypesExtensionInterface_VTable* vtbl;
public:
	friend void* QQmlTypesExtensionInterface_vdata(VirtualQQmlTypesExtensionInterface* self);
	friend VirtualQQmlTypesExtensionInterface* vdata_QQmlTypesExtensionInterface(void* vdata);

	VirtualQQmlTypesExtensionInterface(const QQmlTypesExtensionInterface_VTable* vtbl, const QQmlTypesExtensionInterface& param1): QQmlTypesExtensionInterface(param1), vtbl(vtbl) {}

	virtual ~VirtualQQmlTypesExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void registerTypes(const char* uri) override {
		if (vtbl->registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) uri;
		vtbl->registerTypes(this, sigval1);
	}

};

VirtualQQmlTypesExtensionInterface* QQmlTypesExtensionInterface_new(const QQmlTypesExtensionInterface_VTable* vtbl, size_t vdata, QQmlTypesExtensionInterface* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlTypesExtensionInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlTypesExtensionInterface(vtbl, *param1) : nullptr;
}

void QQmlTypesExtensionInterface_registerTypes(QQmlTypesExtensionInterface* self, const char* uri) {
	self->registerTypes(uri);
}

void QQmlTypesExtensionInterface_operatorAssign(QQmlTypesExtensionInterface* self, QQmlTypesExtensionInterface* param1) {
	self->operator=(*param1);
}

void* QQmlTypesExtensionInterface_vdata(VirtualQQmlTypesExtensionInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlTypesExtensionInterface>()); }
VirtualQQmlTypesExtensionInterface* vdata_QQmlTypesExtensionInterface(void* vdata) { return reinterpret_cast<VirtualQQmlTypesExtensionInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlTypesExtensionInterface>()); }

void QQmlTypesExtensionInterface_delete(QQmlTypesExtensionInterface* self) {
	delete self;
}

class VirtualQQmlExtensionInterface final : public QQmlExtensionInterface {
	const QQmlExtensionInterface_VTable* vtbl;
public:
	friend void* QQmlExtensionInterface_vdata(VirtualQQmlExtensionInterface* self);
	friend VirtualQQmlExtensionInterface* vdata_QQmlExtensionInterface(void* vdata);

	VirtualQQmlExtensionInterface(const QQmlExtensionInterface_VTable* vtbl, const QQmlExtensionInterface& param1): QQmlExtensionInterface(param1), vtbl(vtbl) {}

	virtual ~VirtualQQmlExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQQmlExtensionInterface* QQmlExtensionInterface_new(const QQmlExtensionInterface_VTable* vtbl, size_t vdata, QQmlExtensionInterface* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExtensionInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExtensionInterface(vtbl, *param1) : nullptr;
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

void* QQmlExtensionInterface_vdata(VirtualQQmlExtensionInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlExtensionInterface>()); }
VirtualQQmlExtensionInterface* vdata_QQmlExtensionInterface(void* vdata) { return reinterpret_cast<VirtualQQmlExtensionInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlExtensionInterface>()); }

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

