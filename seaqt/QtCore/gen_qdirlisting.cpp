#include <QDateTime>
#include <QDirListing>
#define WORKAROUND_INNER_CLASS_DEFINITION_QDirListing__DirEntry
#define WORKAROUND_INNER_CLASS_DEFINITION_QDirListing__const_iterator
#define WORKAROUND_INNER_CLASS_DEFINITION_QDirListing__sentinel
#include <QFileInfo>
#include <QList>
#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimeZone>
#include <qdirlisting.h>
#include "gen_qdirlisting.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDirListing* QDirListing_new_path(struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new (std::nothrow) QDirListing(path_QString);
}

QDirListing* QDirListing_new_path_nameFilters(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct seaqt_string* nameFilters_arr = static_cast<struct seaqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new (std::nothrow) QDirListing(path_QString, nameFilters_QList);
}

QDirListing* QDirListing_new_path_flags(struct seaqt_string path, int flags) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new (std::nothrow) QDirListing(path_QString, static_cast<QDirListing::IteratorFlags>(flags));
}

QDirListing* QDirListing_new_path_nameFilters_flags(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters, int flags) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct seaqt_string* nameFilters_arr = static_cast<struct seaqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new (std::nothrow) QDirListing(path_QString, nameFilters_QList, static_cast<QDirListing::IteratorFlags>(flags));
}

void QDirListing_swap(QDirListing* self, QDirListing* other) {
	self->swap(*other);
}

struct seaqt_string QDirListing_iteratorPath(const QDirListing* self) {
	QString _ret = self->iteratorPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDirListing_iteratorFlags(const QDirListing* self) {
	QDirListing::IteratorFlags _ret = self->iteratorFlags();
	return static_cast<int>(_ret);
}

struct seaqt_array /* of struct seaqt_string */  QDirListing_nameFilters(const QDirListing* self) {
	QStringList _ret = self->nameFilters();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QDirListing__const_iterator* QDirListing_begin(const QDirListing* self) {
	return new QDirListing::const_iterator(self->begin());
}

QDirListing__const_iterator* QDirListing_cbegin(const QDirListing* self) {
	return new QDirListing::const_iterator(self->cbegin());
}

QDirListing__sentinel* QDirListing_end(const QDirListing* self) {
	return new QDirListing::sentinel(self->end());
}

QDirListing__sentinel* QDirListing_cend(const QDirListing* self) {
	return new QDirListing::sentinel(self->cend());
}

QDirListing__const_iterator* QDirListing_constBegin(const QDirListing* self) {
	return new QDirListing::const_iterator(self->constBegin());
}

QDirListing__sentinel* QDirListing_constEnd(const QDirListing* self) {
	return new QDirListing::sentinel(self->constEnd());
}

const QMetaObject* QDirListing_staticMetaObject() { return &QDirListing::staticMetaObject; }
void QDirListing_delete(QDirListing* self) {
	delete self;
}

QDirListing__DirEntry* QDirListing__DirEntry_new_from(QDirListing__DirEntry* from) {
	return new (std::nothrow) QDirListing__DirEntry(*from);
}

QDirListing__DirEntry* QDirListing__DirEntry_new() {
	return new (std::nothrow) QDirListing__DirEntry();
}

struct seaqt_string QDirListing__DirEntry_fileName(const QDirListing__DirEntry* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_baseName(const QDirListing__DirEntry* self) {
	QString _ret = self->baseName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_completeBaseName(const QDirListing__DirEntry* self) {
	QString _ret = self->completeBaseName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_suffix(const QDirListing__DirEntry* self) {
	QString _ret = self->suffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_bundleName(const QDirListing__DirEntry* self) {
	QString _ret = self->bundleName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_completeSuffix(const QDirListing__DirEntry* self) {
	QString _ret = self->completeSuffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_filePath(const QDirListing__DirEntry* self) {
	QString _ret = self->filePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDirListing__DirEntry_isDir(const QDirListing__DirEntry* self) {
	return self->isDir();
}

bool QDirListing__DirEntry_isFile(const QDirListing__DirEntry* self) {
	return self->isFile();
}

bool QDirListing__DirEntry_isSymLink(const QDirListing__DirEntry* self) {
	return self->isSymLink();
}

bool QDirListing__DirEntry_exists(const QDirListing__DirEntry* self) {
	return self->exists();
}

bool QDirListing__DirEntry_isHidden(const QDirListing__DirEntry* self) {
	return self->isHidden();
}

bool QDirListing__DirEntry_isReadable(const QDirListing__DirEntry* self) {
	return self->isReadable();
}

bool QDirListing__DirEntry_isWritable(const QDirListing__DirEntry* self) {
	return self->isWritable();
}

bool QDirListing__DirEntry_isExecutable(const QDirListing__DirEntry* self) {
	return self->isExecutable();
}

QFileInfo* QDirListing__DirEntry_fileInfo(const QDirListing__DirEntry* self) {
	return new QFileInfo(self->fileInfo());
}

struct seaqt_string QDirListing__DirEntry_canonicalFilePath(const QDirListing__DirEntry* self) {
	QString _ret = self->canonicalFilePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_absoluteFilePath(const QDirListing__DirEntry* self) {
	QString _ret = self->absoluteFilePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDirListing__DirEntry_absolutePath(const QDirListing__DirEntry* self) {
	QString _ret = self->absolutePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QDirListing__DirEntry_size(const QDirListing__DirEntry* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

QDateTime* QDirListing__DirEntry_birthTime(const QDirListing__DirEntry* self, QTimeZone* tz) {
	return new QDateTime(self->birthTime(*tz));
}

QDateTime* QDirListing__DirEntry_metadataChangeTime(const QDirListing__DirEntry* self, QTimeZone* tz) {
	return new QDateTime(self->metadataChangeTime(*tz));
}

QDateTime* QDirListing__DirEntry_lastModified(const QDirListing__DirEntry* self, QTimeZone* tz) {
	return new QDateTime(self->lastModified(*tz));
}

QDateTime* QDirListing__DirEntry_lastRead(const QDirListing__DirEntry* self, QTimeZone* tz) {
	return new QDateTime(self->lastRead(*tz));
}

QDateTime* QDirListing__DirEntry_fileTime(const QDirListing__DirEntry* self, int type, QTimeZone* tz) {
	return new QDateTime(self->fileTime(static_cast<QFileDevice::FileTime>(type), *tz));
}

void QDirListing__DirEntry_operatorAssign(QDirListing__DirEntry* self, QDirListing__DirEntry* from) {
	self->operator=(*from);
}

void QDirListing__DirEntry_delete(QDirListing__DirEntry* self) {
	delete self;
}

QDirListing__sentinel* QDirListing__sentinel_new() {
	return new (std::nothrow) QDirListing__sentinel();
}

QDirListing__sentinel* QDirListing__sentinel_new_from(QDirListing__sentinel* from) {
	return new (std::nothrow) QDirListing__sentinel(*from);
}

void QDirListing__sentinel_delete(QDirListing__sentinel* self) {
	delete self;
}

QDirListing__const_iterator* QDirListing__const_iterator_new() {
	return new (std::nothrow) QDirListing__const_iterator();
}

QDirListing__DirEntry* QDirListing__const_iterator_operatorMinusGreater(const QDirListing__const_iterator* self) {
	QDirListing::const_iterator::pointer _ret = self->operator->();
	return const_cast<QDirListing__DirEntry*>(static_cast<const QDirListing::DirEntry*>(_ret));
}

QDirListing__const_iterator* QDirListing__const_iterator_operatorPlusPlus(QDirListing__const_iterator* self) {
	QDirListing::const_iterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

void QDirListing__const_iterator_operatorPlusPlus_int(QDirListing__const_iterator* self, int param1) {
	self->operator++(static_cast<int>(param1));
}

void QDirListing__const_iterator_delete(QDirListing__const_iterator* self) {
	delete self;
}

