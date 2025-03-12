#include <QAbstractNativeEventFilter>
#include <QByteArray>
#include <qabstractnativeeventfilter.h>
#include "gen_qabstractnativeeventfilter.h"
class VirtualQAbstractNativeEventFilter final : public QAbstractNativeEventFilter {
	const QAbstractNativeEventFilter_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractNativeEventFilter_VTable* QAbstractNativeEventFilter_vtbl(const VirtualQAbstractNativeEventFilter* self);
	friend void* QAbstractNativeEventFilter_vdata(const VirtualQAbstractNativeEventFilter* self);
	friend void QAbstractNativeEventFilter_setVdata(VirtualQAbstractNativeEventFilter* self, void* vdata);

	VirtualQAbstractNativeEventFilter(const QAbstractNativeEventFilter_VTable* vtbl, void* vdata): QAbstractNativeEventFilter(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractNativeEventFilter() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool nativeEventFilter(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEventFilter == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEventFilter(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

};

VirtualQAbstractNativeEventFilter* QAbstractNativeEventFilter_new(const QAbstractNativeEventFilter_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractNativeEventFilter(vtbl, vdata);
}

bool QAbstractNativeEventFilter_nativeEventFilter(QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);
	return self->nativeEventFilter(eventType_QByteArray, message, (qintptr*)(result));
}

const QAbstractNativeEventFilter_VTable* QAbstractNativeEventFilter_vtbl(const VirtualQAbstractNativeEventFilter* self) { return self->vtbl; }
void* QAbstractNativeEventFilter_vdata(const VirtualQAbstractNativeEventFilter* self) { return self->vdata; }
void QAbstractNativeEventFilter_setVdata(VirtualQAbstractNativeEventFilter* self, void* vdata) { self->vdata = vdata; }

void QAbstractNativeEventFilter_delete(QAbstractNativeEventFilter* self) {
	delete self;
}

