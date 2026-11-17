#include <QDir>
#include <QDirIterator>
#include <QFileInfo>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qdiriterator.h>
#include "gen_qdiriterator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDirIterator* QDirIterator_new_dir(QDir* dir) {
	return new (std::nothrow) QDirIterator(*dir);
}

QDirIterator* QDirIterator_new_path(struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new (std::nothrow) QDirIterator(path_QString);
}

QDirIterator* QDirIterator_new_path_filter(struct seaqt_string path, int filter) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new (std::nothrow) QDirIterator(path_QString, static_cast<QDir::Filters>(filter));
}

QDirIterator* QDirIterator_new_path_nameFilters(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct seaqt_string* nameFilters_arr = static_cast<struct seaqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new (std::nothrow) QDirIterator(path_QString, nameFilters_QList);
}

QDirIterator* QDirIterator_new_dir_flags(QDir* dir, int flags) {
	return new (std::nothrow) QDirIterator(*dir, static_cast<QDirIterator::IteratorFlags>(flags));
}

QDirIterator* QDirIterator_new_path_flags(struct seaqt_string path, int flags) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new (std::nothrow) QDirIterator(path_QString, static_cast<QDirIterator::IteratorFlags>(flags));
}

QDirIterator* QDirIterator_new_path_filter_flags(struct seaqt_string path, int filter, int flags) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new (std::nothrow) QDirIterator(path_QString, static_cast<QDir::Filters>(filter), static_cast<QDirIterator::IteratorFlags>(flags));
}

QDirIterator* QDirIterator_new_path_nameFilters_filters(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct seaqt_string* nameFilters_arr = static_cast<struct seaqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new (std::nothrow) QDirIterator(path_QString, nameFilters_QList, static_cast<QDir::Filters>(filters));
}

QDirIterator* QDirIterator_new_path_nameFilters_filters_flags(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters, int flags) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct seaqt_string* nameFilters_arr = static_cast<struct seaqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new (std::nothrow) QDirIterator(path_QString, nameFilters_QList, static_cast<QDir::Filters>(filters), static_cast<QDirIterator::IteratorFlags>(flags));
}

struct seaqt_string QDirIterator_next(QDirIterator* self) {
	QString _ret = self->next();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QFileInfo* QDirIterator_nextFileInfo(QDirIterator* self) {
	return new QFileInfo(self->nextFileInfo());
}

bool QDirIterator_hasNext(const QDirIterator* self) {
	return self->hasNext();
}

struct seaqt_string QDirIterator_fileName(const QDirIterator* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirIterator_filePath(const QDirIterator* self) {
	QString _ret = self->filePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QFileInfo* QDirIterator_fileInfo(const QDirIterator* self) {
	return new QFileInfo(self->fileInfo());
}

struct seaqt_string QDirIterator_path(const QDirIterator* self) {
	QString _ret = self->path();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDirIterator_delete(QDirIterator* self) {
	delete self;
}

