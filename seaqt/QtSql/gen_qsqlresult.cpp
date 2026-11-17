#include <QSqlDriver>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlResult>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QVector>
#include <qsqlresult.h>
#include "gen_qsqlresult.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QVariant* QSqlResult_handle(const QSqlResult* self) {
	return new QVariant(self->handle());
}

void QSqlResult_delete(QSqlResult* self) {
	delete self;
}

