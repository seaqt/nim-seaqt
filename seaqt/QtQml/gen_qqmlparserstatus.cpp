#include <QQmlParserStatus>
#include <qqmlparserstatus.h>
#include "gen_qqmlparserstatus.h"
class VirtualQQmlParserStatus final : public QQmlParserStatus {
	const QQmlParserStatus_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlParserStatus_VTable* QQmlParserStatus_vtbl(const VirtualQQmlParserStatus* self);
	friend void* QQmlParserStatus_vdata(const VirtualQQmlParserStatus* self);
	friend void QQmlParserStatus_setVdata(VirtualQQmlParserStatus* self, void* vdata);

	VirtualQQmlParserStatus(const QQmlParserStatus_VTable* vtbl, void* vdata): QQmlParserStatus(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlParserStatus() override { if(vtbl->destructor) vtbl->destructor(this); }

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

VirtualQQmlParserStatus* QQmlParserStatus_new(const QQmlParserStatus_VTable* vtbl, void* vdata) {
	return new VirtualQQmlParserStatus(vtbl, vdata);
}

void QQmlParserStatus_classBegin(QQmlParserStatus* self) {
	self->classBegin();
}

void QQmlParserStatus_componentComplete(QQmlParserStatus* self) {
	self->componentComplete();
}

const QQmlParserStatus_VTable* QQmlParserStatus_vtbl(const VirtualQQmlParserStatus* self) { return self->vtbl; }
void* QQmlParserStatus_vdata(const VirtualQQmlParserStatus* self) { return self->vdata; }
void QQmlParserStatus_setVdata(VirtualQQmlParserStatus* self, void* vdata) { self->vdata = vdata; }

void QQmlParserStatus_delete(QQmlParserStatus* self) {
	delete self;
}

