#include <QAbstractNativeEventFilter>
#include <QByteArray>
#include <qabstractnativeeventfilter.h>
#include "gen_qabstractnativeeventfilter.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAbstractNativeEventFilter final : public QAbstractNativeEventFilter {
	const QAbstractNativeEventFilter_VTable* vtbl;
public:
	friend void* QAbstractNativeEventFilter_vdata(VirtualQAbstractNativeEventFilter* self);
	friend VirtualQAbstractNativeEventFilter* vdata_QAbstractNativeEventFilter(void* vdata);

	VirtualQAbstractNativeEventFilter(const QAbstractNativeEventFilter_VTable* vtbl): QAbstractNativeEventFilter(), vtbl(vtbl) {}

	virtual ~VirtualQAbstractNativeEventFilter() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual bool nativeEventFilter(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEventFilter == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QByteArray eventType_qb = eventType;
		struct seaqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct seaqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);
		bool callback_return_value = vtbl->nativeEventFilter(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

};

VirtualQAbstractNativeEventFilter* QAbstractNativeEventFilter_new(const QAbstractNativeEventFilter_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractNativeEventFilter>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractNativeEventFilter(vtbl) : nullptr;
}

bool QAbstractNativeEventFilter_nativeEventFilter(QAbstractNativeEventFilter* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);
	return self->nativeEventFilter(eventType_QByteArray, message, (qintptr*)(result));
}

void* QAbstractNativeEventFilter_vdata(VirtualQAbstractNativeEventFilter* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAbstractNativeEventFilter>()); }
VirtualQAbstractNativeEventFilter* vdata_QAbstractNativeEventFilter(void* vdata) { return reinterpret_cast<VirtualQAbstractNativeEventFilter*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAbstractNativeEventFilter>()); }

void QAbstractNativeEventFilter_delete(QAbstractNativeEventFilter* self) {
	delete self;
}

