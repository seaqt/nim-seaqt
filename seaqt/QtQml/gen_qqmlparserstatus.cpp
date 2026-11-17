#include <QQmlParserStatus>
#include <qqmlparserstatus.h>
#include "gen_qqmlparserstatus.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlParserStatus final : public QQmlParserStatus {
	const QQmlParserStatus_VTable* vtbl;
public:
	friend void* QQmlParserStatus_vdata(VirtualQQmlParserStatus* self);
	friend VirtualQQmlParserStatus* vdata_QQmlParserStatus(void* vdata);

	VirtualQQmlParserStatus(const QQmlParserStatus_VTable* vtbl): QQmlParserStatus(), vtbl(vtbl) {}

	virtual ~VirtualQQmlParserStatus() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->classBegin(this);
	}

	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->componentComplete(this);
	}

};

VirtualQQmlParserStatus* QQmlParserStatus_new(const QQmlParserStatus_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlParserStatus>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlParserStatus(vtbl) : nullptr;
}

void QQmlParserStatus_classBegin(QQmlParserStatus* self) {
	self->classBegin();
}

void QQmlParserStatus_componentComplete(QQmlParserStatus* self) {
	self->componentComplete();
}

void QQmlParserStatus_operatorAssign(QQmlParserStatus* self, QQmlParserStatus* from) {
	self->operator=(*from);
}

void* QQmlParserStatus_vdata(VirtualQQmlParserStatus* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlParserStatus>()); }
VirtualQQmlParserStatus* vdata_QQmlParserStatus(void* vdata) { return reinterpret_cast<VirtualQQmlParserStatus*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlParserStatus>()); }

void QQmlParserStatus_delete(QQmlParserStatus* self) {
	delete self;
}

