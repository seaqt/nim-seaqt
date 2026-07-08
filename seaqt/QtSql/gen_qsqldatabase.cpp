#include <QList>
#include <QMetaObject>
#include <QSqlDatabase>
#include <QSqlDatabaseDefaultConnectionName>
#include <QSqlDriver>
#include <QSqlDriverCreatorBase>
#include <QSqlError>
#include <QSqlIndex>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <qsqldatabase.h>
#include "gen_qsqldatabase.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSqlDriver* QSqlDriverCreatorBase_createObject(const QSqlDriverCreatorBase* self) {
	return self->createObject();
}

void QSqlDriverCreatorBase_operatorAssign(QSqlDriverCreatorBase* self, QSqlDriverCreatorBase* from) {
	self->operator=(*from);
}

void QSqlDriverCreatorBase_delete(QSqlDriverCreatorBase* self) {
	delete self;
}

struct seaqt_string QSqlDatabaseDefaultConnectionName_defaultConnectionName() {
	QString _ret = QSqlDatabaseDefaultConnectionName::defaultConnectionName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlDatabaseDefaultConnectionName_delete(QSqlDatabaseDefaultConnectionName* self) {
	delete self;
}

QSqlDatabase* QSqlDatabase_new() {
	return new (std::nothrow) QSqlDatabase();
}

QSqlDatabase* QSqlDatabase_new_from(QSqlDatabase* from) {
	return new (std::nothrow) QSqlDatabase(*from);
}

void QSqlDatabase_virtbase(QSqlDatabase* src, QSqlDatabaseDefaultConnectionName** outptr_QSqlDatabaseDefaultConnectionName) {
	*outptr_QSqlDatabaseDefaultConnectionName = static_cast<QSqlDatabaseDefaultConnectionName*>(src);
}

void QSqlDatabase_operatorAssign(QSqlDatabase* self, QSqlDatabase* from) {
	self->operator=(*from);
}

bool QSqlDatabase_open(QSqlDatabase* self) {
	return self->open();
}

bool QSqlDatabase_open_user_password(QSqlDatabase* self, struct seaqt_string user, struct seaqt_string password) {
	QString user_QString = QString::fromUtf8(user.data, user.len);
	QString password_QString = QString::fromUtf8(password.data, password.len);
	return self->open(user_QString, password_QString);
}

void QSqlDatabase_close(QSqlDatabase* self) {
	self->close();
}

bool QSqlDatabase_isOpen(const QSqlDatabase* self) {
	return self->isOpen();
}

bool QSqlDatabase_isOpenError(const QSqlDatabase* self) {
	return self->isOpenError();
}

struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_tables(const QSqlDatabase* self) {
	QStringList _ret = self->tables();
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

QSqlIndex* QSqlDatabase_primaryIndex(const QSqlDatabase* self, struct seaqt_string tablename) {
	QString tablename_QString = QString::fromUtf8(tablename.data, tablename.len);
	return new QSqlIndex(self->primaryIndex(tablename_QString));
}

QSqlRecord* QSqlDatabase_record(const QSqlDatabase* self, struct seaqt_string tablename) {
	QString tablename_QString = QString::fromUtf8(tablename.data, tablename.len);
	return new QSqlRecord(self->record(tablename_QString));
}

QSqlQuery* QSqlDatabase_exec(const QSqlDatabase* self) {
	return new QSqlQuery(self->exec());
}

QSqlError* QSqlDatabase_lastError(const QSqlDatabase* self) {
	return new QSqlError(self->lastError());
}

bool QSqlDatabase_isValid(const QSqlDatabase* self) {
	return self->isValid();
}

bool QSqlDatabase_transaction(QSqlDatabase* self) {
	return self->transaction();
}

bool QSqlDatabase_commit(QSqlDatabase* self) {
	return self->commit();
}

bool QSqlDatabase_rollback(QSqlDatabase* self) {
	return self->rollback();
}

void QSqlDatabase_setDatabaseName(QSqlDatabase* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setDatabaseName(name_QString);
}

void QSqlDatabase_setUserName(QSqlDatabase* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setUserName(name_QString);
}

void QSqlDatabase_setPassword(QSqlDatabase* self, struct seaqt_string password) {
	QString password_QString = QString::fromUtf8(password.data, password.len);
	self->setPassword(password_QString);
}

void QSqlDatabase_setHostName(QSqlDatabase* self, struct seaqt_string host) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	self->setHostName(host_QString);
}

void QSqlDatabase_setPort(QSqlDatabase* self, int p) {
	self->setPort(static_cast<int>(p));
}

void QSqlDatabase_setConnectOptions(QSqlDatabase* self) {
	self->setConnectOptions();
}

struct seaqt_string QSqlDatabase_databaseName(const QSqlDatabase* self) {
	QString _ret = self->databaseName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDatabase_userName(const QSqlDatabase* self) {
	QString _ret = self->userName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDatabase_password(const QSqlDatabase* self) {
	QString _ret = self->password();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDatabase_hostName(const QSqlDatabase* self) {
	QString _ret = self->hostName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDatabase_driverName(const QSqlDatabase* self) {
	QString _ret = self->driverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSqlDatabase_port(const QSqlDatabase* self) {
	return self->port();
}

struct seaqt_string QSqlDatabase_connectOptions(const QSqlDatabase* self) {
	QString _ret = self->connectOptions();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDatabase_connectionName(const QSqlDatabase* self) {
	QString _ret = self->connectionName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlDatabase_setNumericalPrecisionPolicy(QSqlDatabase* self, int precisionPolicy) {
	self->setNumericalPrecisionPolicy(static_cast<QSql::NumericalPrecisionPolicy>(precisionPolicy));
}

int QSqlDatabase_numericalPrecisionPolicy(const QSqlDatabase* self) {
	QSql::NumericalPrecisionPolicy _ret = self->numericalPrecisionPolicy();
	return static_cast<int>(_ret);
}

bool QSqlDatabase_moveToThread(QSqlDatabase* self, QThread* targetThread) {
	return self->moveToThread(targetThread);
}

QThread* QSqlDatabase_thread(const QSqlDatabase* self) {
	return self->thread();
}

QSqlDriver* QSqlDatabase_driver(const QSqlDatabase* self) {
	return self->driver();
}

QSqlDatabase* QSqlDatabase_addDatabase_type(struct seaqt_string type) {
	QString type_QString = QString::fromUtf8(type.data, type.len);
	return new QSqlDatabase(QSqlDatabase::addDatabase(type_QString));
}

QSqlDatabase* QSqlDatabase_addDatabase_driver(QSqlDriver* driver) {
	return new QSqlDatabase(QSqlDatabase::addDatabase(driver));
}

QSqlDatabase* QSqlDatabase_cloneDatabase_QSqlDatabase_QString(QSqlDatabase* other, struct seaqt_string connectionName) {
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return new QSqlDatabase(QSqlDatabase::cloneDatabase(*other, connectionName_QString));
}

QSqlDatabase* QSqlDatabase_cloneDatabase_QString_QString(struct seaqt_string other, struct seaqt_string connectionName) {
	QString other_QString = QString::fromUtf8(other.data, other.len);
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return new QSqlDatabase(QSqlDatabase::cloneDatabase(other_QString, connectionName_QString));
}

QSqlDatabase* QSqlDatabase_database() {
	return new QSqlDatabase(QSqlDatabase::database());
}

void QSqlDatabase_removeDatabase(struct seaqt_string connectionName) {
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	QSqlDatabase::removeDatabase(connectionName_QString);
}

bool QSqlDatabase_contains() {
	return QSqlDatabase::contains();
}

struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_drivers() {
	QStringList _ret = QSqlDatabase::drivers();
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

struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_connectionNames() {
	QStringList _ret = QSqlDatabase::connectionNames();
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

void QSqlDatabase_registerSqlDriver(struct seaqt_string name, QSqlDriverCreatorBase* creator) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QSqlDatabase::registerSqlDriver(name_QString, creator);
}

bool QSqlDatabase_isDriverAvailable(struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return QSqlDatabase::isDriverAvailable(name_QString);
}

struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_tables_type(const QSqlDatabase* self, int type) {
	QStringList _ret = self->tables(static_cast<QSql::TableType>(type));
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

QSqlQuery* QSqlDatabase_exec_query(const QSqlDatabase* self, struct seaqt_string query) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	return new QSqlQuery(self->exec(query_QString));
}

void QSqlDatabase_setConnectOptions_options(QSqlDatabase* self, struct seaqt_string options) {
	QString options_QString = QString::fromUtf8(options.data, options.len);
	self->setConnectOptions(options_QString);
}

QSqlDatabase* QSqlDatabase_addDatabase_type_connectionName(struct seaqt_string type, struct seaqt_string connectionName) {
	QString type_QString = QString::fromUtf8(type.data, type.len);
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return new QSqlDatabase(QSqlDatabase::addDatabase(type_QString, connectionName_QString));
}

QSqlDatabase* QSqlDatabase_addDatabase_driver_connectionName(QSqlDriver* driver, struct seaqt_string connectionName) {
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return new QSqlDatabase(QSqlDatabase::addDatabase(driver, connectionName_QString));
}

QSqlDatabase* QSqlDatabase_database_connectionName(struct seaqt_string connectionName) {
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return new QSqlDatabase(QSqlDatabase::database(connectionName_QString));
}

QSqlDatabase* QSqlDatabase_database_connectionName_open(struct seaqt_string connectionName, bool open) {
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return new QSqlDatabase(QSqlDatabase::database(connectionName_QString, open));
}

bool QSqlDatabase_contains_connectionName(struct seaqt_string connectionName) {
	QString connectionName_QString = QString::fromUtf8(connectionName.data, connectionName.len);
	return QSqlDatabase::contains(connectionName_QString);
}

const QMetaObject* QSqlDatabase_staticMetaObject() { return &QSqlDatabase::staticMetaObject; }
void QSqlDatabase_delete(QSqlDatabase* self) {
	delete self;
}

