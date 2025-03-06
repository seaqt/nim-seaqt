#include <QQmlAbstractUrlInterceptor>
#include <QUrl>
#include <qqmlabstracturlinterceptor.h>
#include "gen_qqmlabstracturlinterceptor.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlAbstractUrlInterceptor final : public QQmlAbstractUrlInterceptor {
	struct QQmlAbstractUrlInterceptor_VTable* vtbl;
public:

	VirtualQQmlAbstractUrlInterceptor(struct QQmlAbstractUrlInterceptor_VTable* vtbl): QQmlAbstractUrlInterceptor(), vtbl(vtbl) {};

	virtual ~VirtualQQmlAbstractUrlInterceptor() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QUrl intercept(const QUrl& path, QQmlAbstractUrlInterceptor::DataType type) override {
		if (vtbl->intercept == 0) {
			return QUrl(); // Pure virtual, there is no base we can call
		}

		const QUrl& path_ret = path;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&path_ret);
		QQmlAbstractUrlInterceptor::DataType type_ret = type;
		int sigval2 = static_cast<int>(type_ret);

		QUrl* callback_return_value = vtbl->intercept(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

};

QQmlAbstractUrlInterceptor* QQmlAbstractUrlInterceptor_new(struct QQmlAbstractUrlInterceptor_VTable* vtbl) {
	return new VirtualQQmlAbstractUrlInterceptor(vtbl);
}

QUrl* QQmlAbstractUrlInterceptor_intercept(QQmlAbstractUrlInterceptor* self, QUrl* path, int type) {
	return new QUrl(self->intercept(*path, static_cast<QQmlAbstractUrlInterceptor::DataType>(type)));
}

void QQmlAbstractUrlInterceptor_operatorAssign(QQmlAbstractUrlInterceptor* self, QQmlAbstractUrlInterceptor* param1) {
	self->operator=(*param1);
}

void QQmlAbstractUrlInterceptor_delete(QQmlAbstractUrlInterceptor* self) {
	delete self;
}

