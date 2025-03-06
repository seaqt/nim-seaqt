#include <QQmlParserStatus>
#include <qqmlparserstatus.h>
#include "gen_qqmlparserstatus.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlParserStatus final : public QQmlParserStatus {
	struct QQmlParserStatus_VTable* vtbl;
public:

	VirtualQQmlParserStatus(struct QQmlParserStatus_VTable* vtbl): QQmlParserStatus(), vtbl(vtbl) {};

	virtual ~VirtualQQmlParserStatus() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->classBegin(vtbl, this);

	}

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->componentComplete(vtbl, this);

	}

};

QQmlParserStatus* QQmlParserStatus_new(struct QQmlParserStatus_VTable* vtbl) {
	return new VirtualQQmlParserStatus(vtbl);
}

void QQmlParserStatus_classBegin(QQmlParserStatus* self) {
	self->classBegin();
}

void QQmlParserStatus_componentComplete(QQmlParserStatus* self) {
	self->componentComplete();
}

void QQmlParserStatus_delete(QQmlParserStatus* self) {
	delete self;
}

