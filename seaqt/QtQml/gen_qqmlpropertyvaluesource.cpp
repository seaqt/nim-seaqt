#include <QQmlProperty>
#include <QQmlPropertyValueSource>
#include <qqmlpropertyvaluesource.h>
#include "gen_qqmlpropertyvaluesource.h"
class VirtualQQmlPropertyValueSource final : public QQmlPropertyValueSource {
	const QQmlPropertyValueSource_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlPropertyValueSource_VTable* QQmlPropertyValueSource_vtbl(const VirtualQQmlPropertyValueSource* self);
	friend void* QQmlPropertyValueSource_vdata(const VirtualQQmlPropertyValueSource* self);
	friend void QQmlPropertyValueSource_setVdata(VirtualQQmlPropertyValueSource* self, void* vdata);

	VirtualQQmlPropertyValueSource(const QQmlPropertyValueSource_VTable* vtbl, void* vdata): QQmlPropertyValueSource(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlPropertyValueSource() override { if(vtbl->destructor) vtbl->destructor(this); }

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

VirtualQQmlPropertyValueSource* QQmlPropertyValueSource_new(const QQmlPropertyValueSource_VTable* vtbl, void* vdata) {
	return new VirtualQQmlPropertyValueSource(vtbl, vdata);
}

void QQmlPropertyValueSource_setTarget(QQmlPropertyValueSource* self, QQmlProperty* target) {
	self->setTarget(*target);
}

void QQmlPropertyValueSource_operatorAssign(QQmlPropertyValueSource* self, QQmlPropertyValueSource* param1) {
	self->operator=(*param1);
}

const QQmlPropertyValueSource_VTable* QQmlPropertyValueSource_vtbl(const VirtualQQmlPropertyValueSource* self) { return self->vtbl; }
void* QQmlPropertyValueSource_vdata(const VirtualQQmlPropertyValueSource* self) { return self->vdata; }
void QQmlPropertyValueSource_setVdata(VirtualQQmlPropertyValueSource* self, void* vdata) { self->vdata = vdata; }

void QQmlPropertyValueSource_delete(QQmlPropertyValueSource* self) {
	delete self;
}

