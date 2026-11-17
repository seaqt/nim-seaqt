#include <QQmlNetworkAccessManagerFactory>
#include <qqmlnetworkaccessmanagerfactory.h>
#include "gen_qqmlnetworkaccessmanagerfactory.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QQmlNetworkAccessManagerFactory_operatorAssign(QQmlNetworkAccessManagerFactory* self, QQmlNetworkAccessManagerFactory* from) {
	self->operator=(*from);
}

void QQmlNetworkAccessManagerFactory_delete(QQmlNetworkAccessManagerFactory* self) {
	delete self;
}

