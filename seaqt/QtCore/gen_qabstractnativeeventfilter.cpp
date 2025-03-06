#include <QAbstractNativeEventFilter>
#include <QByteArray>
#include <qabstractnativeeventfilter.h>
#include "gen_qabstractnativeeventfilter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractNativeEventFilter final : public QAbstractNativeEventFilter {
	struct QAbstractNativeEventFilter_VTable* vtbl;
public:

	VirtualQAbstractNativeEventFilter(struct QAbstractNativeEventFilter_VTable* vtbl): QAbstractNativeEventFilter(), vtbl(vtbl) {};

	virtual ~VirtualQAbstractNativeEventFilter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
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

		bool callback_return_value = vtbl->nativeEventFilter(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

};

QAbstractNativeEventFilter* QAbstractNativeEventFilter_new(struct QAbstractNativeEventFilter_VTable* vtbl) {
	return new VirtualQAbstractNativeEventFilter(vtbl);
}

bool QAbstractNativeEventFilter_nativeEventFilter(QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);
	return self->nativeEventFilter(eventType_QByteArray, message, (qintptr*)(result));
}

void QAbstractNativeEventFilter_delete(QAbstractNativeEventFilter* self) {
	delete self;
}

