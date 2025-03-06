#include <QQmlParserStatus>
#include <qqmlparserstatus.h>
#include "gen_qqmlparserstatus.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQmlParserStatus_classBegin(QQmlParserStatus*, intptr_t);
void miqt_exec_callback_QQmlParserStatus_componentComplete(QQmlParserStatus*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlParserStatus final : public QQmlParserStatus {
public:

	VirtualQQmlParserStatus(): QQmlParserStatus() {};

	virtual ~VirtualQQmlParserStatus() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__classBegin = 0;

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (handle__classBegin == 0) {
			return; // Pure virtual, there is no base we can call
		}
		

		miqt_exec_callback_QQmlParserStatus_classBegin(this, handle__classBegin);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__componentComplete = 0;

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (handle__componentComplete == 0) {
			return; // Pure virtual, there is no base we can call
		}
		

		miqt_exec_callback_QQmlParserStatus_componentComplete(this, handle__componentComplete);

		
	}

};

QQmlParserStatus* QQmlParserStatus_new() {
	return new VirtualQQmlParserStatus();
}

void QQmlParserStatus_classBegin(QQmlParserStatus* self) {
	self->classBegin();
}

void QQmlParserStatus_componentComplete(QQmlParserStatus* self) {
	self->componentComplete();
}

bool QQmlParserStatus_override_virtual_classBegin(void* self, intptr_t slot) {
	VirtualQQmlParserStatus* self_cast = dynamic_cast<VirtualQQmlParserStatus*>( (QQmlParserStatus*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__classBegin = slot;
	return true;
}

bool QQmlParserStatus_override_virtual_componentComplete(void* self, intptr_t slot) {
	VirtualQQmlParserStatus* self_cast = dynamic_cast<VirtualQQmlParserStatus*>( (QQmlParserStatus*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__componentComplete = slot;
	return true;
}

void QQmlParserStatus_delete(QQmlParserStatus* self) {
	delete self;
}

