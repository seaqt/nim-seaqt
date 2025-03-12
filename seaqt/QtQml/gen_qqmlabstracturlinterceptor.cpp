#include <QQmlAbstractUrlInterceptor>
#include <QUrl>
#include <qqmlabstracturlinterceptor.h>
#include "gen_qqmlabstracturlinterceptor.h"
class VirtualQQmlAbstractUrlInterceptor final : public QQmlAbstractUrlInterceptor {
	const QQmlAbstractUrlInterceptor_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlAbstractUrlInterceptor_VTable* QQmlAbstractUrlInterceptor_vtbl(const VirtualQQmlAbstractUrlInterceptor* self);
	friend void* QQmlAbstractUrlInterceptor_vdata(const VirtualQQmlAbstractUrlInterceptor* self);
	friend void QQmlAbstractUrlInterceptor_setVdata(VirtualQQmlAbstractUrlInterceptor* self, void* vdata);

	VirtualQQmlAbstractUrlInterceptor(const QQmlAbstractUrlInterceptor_VTable* vtbl, void* vdata): QQmlAbstractUrlInterceptor(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlAbstractUrlInterceptor() override { if(vtbl->destructor) vtbl->destructor(this); }

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

VirtualQQmlAbstractUrlInterceptor* QQmlAbstractUrlInterceptor_new(const QQmlAbstractUrlInterceptor_VTable* vtbl, void* vdata) {
	return new VirtualQQmlAbstractUrlInterceptor(vtbl, vdata);
}

QUrl* QQmlAbstractUrlInterceptor_intercept(QQmlAbstractUrlInterceptor* self, QUrl* path, int type) {
	return new QUrl(self->intercept(*path, static_cast<QQmlAbstractUrlInterceptor::DataType>(type)));
}

void QQmlAbstractUrlInterceptor_operatorAssign(QQmlAbstractUrlInterceptor* self, QQmlAbstractUrlInterceptor* param1) {
	self->operator=(*param1);
}

const QQmlAbstractUrlInterceptor_VTable* QQmlAbstractUrlInterceptor_vtbl(const VirtualQQmlAbstractUrlInterceptor* self) { return self->vtbl; }
void* QQmlAbstractUrlInterceptor_vdata(const VirtualQQmlAbstractUrlInterceptor* self) { return self->vdata; }
void QQmlAbstractUrlInterceptor_setVdata(VirtualQQmlAbstractUrlInterceptor* self, void* vdata) { self->vdata = vdata; }

void QQmlAbstractUrlInterceptor_delete(QQmlAbstractUrlInterceptor* self) {
	delete self;
}

