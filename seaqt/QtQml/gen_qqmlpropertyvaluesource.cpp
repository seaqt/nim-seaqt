#include <QQmlProperty>
#include <QQmlPropertyValueSource>
#include <qqmlpropertyvaluesource.h>
#include "gen_qqmlpropertyvaluesource.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlPropertyValueSource final : public QQmlPropertyValueSource {
	struct QQmlPropertyValueSource_VTable* vtbl;
public:

	VirtualQQmlPropertyValueSource(struct QQmlPropertyValueSource_VTable* vtbl): QQmlPropertyValueSource(), vtbl(vtbl) {};

	virtual ~VirtualQQmlPropertyValueSource() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setTarget(const QQmlProperty& target) override {
		if (vtbl->setTarget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QQmlProperty& target_ret = target;
		// Cast returned reference into pointer
		QQmlProperty* sigval1 = const_cast<QQmlProperty*>(&target_ret);

		vtbl->setTarget(vtbl, this, sigval1);

	}

};

QQmlPropertyValueSource* QQmlPropertyValueSource_new(struct QQmlPropertyValueSource_VTable* vtbl) {
	return new VirtualQQmlPropertyValueSource(vtbl);
}

void QQmlPropertyValueSource_setTarget(QQmlPropertyValueSource* self, QQmlProperty* target) {
	self->setTarget(*target);
}

void QQmlPropertyValueSource_operatorAssign(QQmlPropertyValueSource* self, QQmlPropertyValueSource* param1) {
	self->operator=(*param1);
}

void QQmlPropertyValueSource_delete(QQmlPropertyValueSource* self) {
	delete self;
}

