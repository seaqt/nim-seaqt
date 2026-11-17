#include <QQmlProperty>
#include <QQmlPropertyValueSource>
#include <qqmlpropertyvaluesource.h>
#include "gen_qqmlpropertyvaluesource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlPropertyValueSource final : public QQmlPropertyValueSource {
	const QQmlPropertyValueSource_VTable* vtbl;
public:
	friend void* QQmlPropertyValueSource_vdata(VirtualQQmlPropertyValueSource* self);
	friend VirtualQQmlPropertyValueSource* vdata_QQmlPropertyValueSource(void* vdata);

	VirtualQQmlPropertyValueSource(const QQmlPropertyValueSource_VTable* vtbl): QQmlPropertyValueSource(), vtbl(vtbl) {}

	virtual ~VirtualQQmlPropertyValueSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void setTarget(const QQmlProperty& target) override {
		if (vtbl->setTarget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QQmlProperty& target_ret = target;
		// Cast returned reference into pointer
		QQmlProperty* sigval1 = const_cast<QQmlProperty*>(&target_ret);
		vtbl->setTarget(this, sigval1);
	}

};

VirtualQQmlPropertyValueSource* QQmlPropertyValueSource_new(const QQmlPropertyValueSource_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlPropertyValueSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlPropertyValueSource(vtbl) : nullptr;
}

void QQmlPropertyValueSource_setTarget(QQmlPropertyValueSource* self, QQmlProperty* target) {
	self->setTarget(*target);
}

void QQmlPropertyValueSource_operatorAssign(QQmlPropertyValueSource* self, QQmlPropertyValueSource* param1) {
	self->operator=(*param1);
}

void* QQmlPropertyValueSource_vdata(VirtualQQmlPropertyValueSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlPropertyValueSource>()); }
VirtualQQmlPropertyValueSource* vdata_QQmlPropertyValueSource(void* vdata) { return reinterpret_cast<VirtualQQmlPropertyValueSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlPropertyValueSource>()); }

void QQmlPropertyValueSource_delete(QQmlPropertyValueSource* self) {
	delete self;
}

