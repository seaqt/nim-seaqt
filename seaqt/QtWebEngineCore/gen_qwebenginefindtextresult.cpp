#include <QMetaObject>
#include <QWebEngineFindTextResult>
#include <qwebenginefindtextresult.h>
#include "gen_qwebenginefindtextresult.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineFindTextResult* QWebEngineFindTextResult_new() {
	return new (std::nothrow) QWebEngineFindTextResult();
}

QWebEngineFindTextResult* QWebEngineFindTextResult_new_from(QWebEngineFindTextResult* from) {
	return new (std::nothrow) QWebEngineFindTextResult(*from);
}

int QWebEngineFindTextResult_numberOfMatches(const QWebEngineFindTextResult* self) {
	return self->numberOfMatches();
}

int QWebEngineFindTextResult_activeMatch(const QWebEngineFindTextResult* self) {
	return self->activeMatch();
}

void QWebEngineFindTextResult_operatorAssign(QWebEngineFindTextResult* self, QWebEngineFindTextResult* from) {
	self->operator=(*from);
}

const QMetaObject* QWebEngineFindTextResult_staticMetaObject() { return &QWebEngineFindTextResult::staticMetaObject; }
void QWebEngineFindTextResult_delete(QWebEngineFindTextResult* self) {
	delete self;
}

