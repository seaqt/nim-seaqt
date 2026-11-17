#include <QList>
#include <QMetaObject>
#include <QStandardPaths>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qstandardpaths.h>
#include "gen_qstandardpaths.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

struct seaqt_string QStandardPaths_writableLocation(int type) {
	QString _ret = QStandardPaths::writableLocation(static_cast<QStandardPaths::StandardLocation>(type));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QStandardPaths_standardLocations(int type) {
	QStringList _ret = QStandardPaths::standardLocations(static_cast<QStandardPaths::StandardLocation>(type));
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

struct seaqt_string QStandardPaths_locate(int type, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString _ret = QStandardPaths::locate(static_cast<QStandardPaths::StandardLocation>(type), fileName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QStandardPaths_locateAll(int type, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QStringList _ret = QStandardPaths::locateAll(static_cast<QStandardPaths::StandardLocation>(type), fileName_QString);
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

struct seaqt_string QStandardPaths_displayName(int type) {
	QString _ret = QStandardPaths::displayName(static_cast<QStandardPaths::StandardLocation>(type));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QStandardPaths_findExecutable(struct seaqt_string executableName) {
	QString executableName_QString = QString::fromUtf8(executableName.data, executableName.len);
	QString _ret = QStandardPaths::findExecutable(executableName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardPaths_setTestModeEnabled(bool testMode) {
	QStandardPaths::setTestModeEnabled(testMode);
}

bool QStandardPaths_isTestModeEnabled() {
	return QStandardPaths::isTestModeEnabled();
}

struct seaqt_string QStandardPaths_locate2(int type, struct seaqt_string fileName, int options) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString _ret = QStandardPaths::locate(static_cast<QStandardPaths::StandardLocation>(type), fileName_QString, static_cast<QStandardPaths::LocateOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QStandardPaths_locateAll2(int type, struct seaqt_string fileName, int options) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QStringList _ret = QStandardPaths::locateAll(static_cast<QStandardPaths::StandardLocation>(type), fileName_QString, static_cast<QStandardPaths::LocateOptions>(options));
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

struct seaqt_string QStandardPaths_findExecutable2(struct seaqt_string executableName, struct seaqt_array /* of struct seaqt_string */  paths) {
	QString executableName_QString = QString::fromUtf8(executableName.data, executableName.len);
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct seaqt_string* paths_arr = static_cast<struct seaqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	QString _ret = QStandardPaths::findExecutable(executableName_QString, paths_QList);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QStandardPaths_staticMetaObject() { return &QStandardPaths::staticMetaObject; }
