#include <QQmlAbstractUrlInterceptor>
#include <QUrl>
#include <qqmlabstracturlinterceptor.h>
#include "gen_qqmlabstracturlinterceptor.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlAbstractUrlInterceptor final : public QQmlAbstractUrlInterceptor {
	const QQmlAbstractUrlInterceptor_VTable* vtbl;
public:
	friend void* QQmlAbstractUrlInterceptor_vdata(VirtualQQmlAbstractUrlInterceptor* self);
	friend VirtualQQmlAbstractUrlInterceptor* vdata_QQmlAbstractUrlInterceptor(void* vdata);

	VirtualQQmlAbstractUrlInterceptor(const QQmlAbstractUrlInterceptor_VTable* vtbl): QQmlAbstractUrlInterceptor(), vtbl(vtbl) {}

	virtual ~VirtualQQmlAbstractUrlInterceptor() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QUrl intercept(const QUrl& path, QQmlAbstractUrlInterceptor::DataType type) override {
		if (vtbl->intercept == 0) {
			return QUrl(); // Pure virtual, there is no base we can call
		}

		const QUrl& path_ret = path;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&path_ret);
		QQmlAbstractUrlInterceptor::DataType type_ret = type;
		int sigval2 = static_cast<int>(type_ret);
		QUrl* callback_return_value = vtbl->intercept(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

};

VirtualQQmlAbstractUrlInterceptor* QQmlAbstractUrlInterceptor_new(const QQmlAbstractUrlInterceptor_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlAbstractUrlInterceptor>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlAbstractUrlInterceptor(vtbl) : nullptr;
}

QUrl* QQmlAbstractUrlInterceptor_intercept(QQmlAbstractUrlInterceptor* self, QUrl* path, int type) {
	return new QUrl(self->intercept(*path, static_cast<QQmlAbstractUrlInterceptor::DataType>(type)));
}

void QQmlAbstractUrlInterceptor_operatorAssign(QQmlAbstractUrlInterceptor* self, QQmlAbstractUrlInterceptor* param1) {
	self->operator=(*param1);
}

void* QQmlAbstractUrlInterceptor_vdata(VirtualQQmlAbstractUrlInterceptor* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlAbstractUrlInterceptor>()); }
VirtualQQmlAbstractUrlInterceptor* vdata_QQmlAbstractUrlInterceptor(void* vdata) { return reinterpret_cast<VirtualQQmlAbstractUrlInterceptor*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlAbstractUrlInterceptor>()); }

void QQmlAbstractUrlInterceptor_delete(QQmlAbstractUrlInterceptor* self) {
	delete self;
}

