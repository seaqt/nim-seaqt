#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlField>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QSqlResult>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qsqldriver.h>
#include "gen_qsqldriver.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSqlDriver final : public QSqlDriver {
	const QSqlDriver_VTable* vtbl;
public:
	friend void* QSqlDriver_vdata(VirtualQSqlDriver* self);
	friend VirtualQSqlDriver* vdata_QSqlDriver(void* vdata);

	VirtualQSqlDriver(const QSqlDriver_VTable* vtbl): QSqlDriver(), vtbl(vtbl) {}
	VirtualQSqlDriver(const QSqlDriver_VTable* vtbl, QObject* parent): QSqlDriver(parent), vtbl(vtbl) {}

	virtual ~VirtualQSqlDriver() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSqlDriver::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSqlDriver_virtualbase_metaObject(const VirtualQSqlDriver* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSqlDriver::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSqlDriver_virtualbase_metacast(VirtualQSqlDriver* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSqlDriver::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlDriver_virtualbase_metacall(VirtualQSqlDriver* self, int param1, int param2, void** param3);

	virtual bool isOpen() const override {
		if (vtbl->isOpen == 0) {
			return QSqlDriver::isOpen();
		}

		bool callback_return_value = vtbl->isOpen(this);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_isOpen(const VirtualQSqlDriver* self);

	virtual bool beginTransaction() override {
		if (vtbl->beginTransaction == 0) {
			return QSqlDriver::beginTransaction();
		}

		bool callback_return_value = vtbl->beginTransaction(this);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_beginTransaction(VirtualQSqlDriver* self);

	virtual bool commitTransaction() override {
		if (vtbl->commitTransaction == 0) {
			return QSqlDriver::commitTransaction();
		}

		bool callback_return_value = vtbl->commitTransaction(this);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_commitTransaction(VirtualQSqlDriver* self);

	virtual bool rollbackTransaction() override {
		if (vtbl->rollbackTransaction == 0) {
			return QSqlDriver::rollbackTransaction();
		}

		bool callback_return_value = vtbl->rollbackTransaction(this);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_rollbackTransaction(VirtualQSqlDriver* self);

	virtual QStringList tables(QSql::TableType tableType) const override {
		if (vtbl->tables == 0) {
			return QSqlDriver::tables(tableType);
		}

		QSql::TableType tableType_ret = tableType;
		int sigval1 = static_cast<int>(tableType_ret);
		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->tables(this, sigval1);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct seaqt_string* callback_return_value_arr = static_cast<struct seaqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of struct seaqt_string */  QSqlDriver_virtualbase_tables(const VirtualQSqlDriver* self, int tableType);

	virtual QSqlIndex primaryIndex(const QString& tableName) const override {
		if (vtbl->primaryIndex == 0) {
			return QSqlDriver::primaryIndex(tableName);
		}

		const QString tableName_ret = tableName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray tableName_b = tableName_ret.toUtf8();
		struct seaqt_string tableName_ms;
		tableName_ms.len = tableName_b.length();
		tableName_ms.data = static_cast<char*>(malloc(tableName_ms.len));
		memcpy(tableName_ms.data, tableName_b.data(), tableName_ms.len);
		struct seaqt_string sigval1 = tableName_ms;
		QSqlIndex* callback_return_value = vtbl->primaryIndex(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSqlIndex* QSqlDriver_virtualbase_primaryIndex(const VirtualQSqlDriver* self, struct seaqt_string tableName);

	virtual QSqlRecord record(const QString& tableName) const override {
		if (vtbl->record == 0) {
			return QSqlDriver::record(tableName);
		}

		const QString tableName_ret = tableName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray tableName_b = tableName_ret.toUtf8();
		struct seaqt_string tableName_ms;
		tableName_ms.len = tableName_b.length();
		tableName_ms.data = static_cast<char*>(malloc(tableName_ms.len));
		memcpy(tableName_ms.data, tableName_b.data(), tableName_ms.len);
		struct seaqt_string sigval1 = tableName_ms;
		QSqlRecord* callback_return_value = vtbl->record(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSqlRecord* QSqlDriver_virtualbase_record(const VirtualQSqlDriver* self, struct seaqt_string tableName);

	virtual QString formatValue(const QSqlField& field, bool trimStrings) const override {
		if (vtbl->formatValue == 0) {
			return QSqlDriver::formatValue(field, trimStrings);
		}

		const QSqlField& field_ret = field;
		// Cast returned reference into pointer
		QSqlField* sigval1 = const_cast<QSqlField*>(&field_ret);
		bool sigval2 = trimStrings;
		struct seaqt_string callback_return_value = vtbl->formatValue(this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlDriver_virtualbase_formatValue(const VirtualQSqlDriver* self, QSqlField* field, bool trimStrings);

	virtual QString escapeIdentifier(const QString& identifier, QSqlDriver::IdentifierType type) const override {
		if (vtbl->escapeIdentifier == 0) {
			return QSqlDriver::escapeIdentifier(identifier, type);
		}

		const QString identifier_ret = identifier;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray identifier_b = identifier_ret.toUtf8();
		struct seaqt_string identifier_ms;
		identifier_ms.len = identifier_b.length();
		identifier_ms.data = static_cast<char*>(malloc(identifier_ms.len));
		memcpy(identifier_ms.data, identifier_b.data(), identifier_ms.len);
		struct seaqt_string sigval1 = identifier_ms;
		QSqlDriver::IdentifierType type_ret = type;
		int sigval2 = static_cast<int>(type_ret);
		struct seaqt_string callback_return_value = vtbl->escapeIdentifier(this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlDriver_virtualbase_escapeIdentifier(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);

	virtual QString sqlStatement(QSqlDriver::StatementType type, const QString& tableName, const QSqlRecord& rec, bool preparedStatement) const override {
		if (vtbl->sqlStatement == 0) {
			return QSqlDriver::sqlStatement(type, tableName, rec, preparedStatement);
		}

		QSqlDriver::StatementType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);
		const QString tableName_ret = tableName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray tableName_b = tableName_ret.toUtf8();
		struct seaqt_string tableName_ms;
		tableName_ms.len = tableName_b.length();
		tableName_ms.data = static_cast<char*>(malloc(tableName_ms.len));
		memcpy(tableName_ms.data, tableName_b.data(), tableName_ms.len);
		struct seaqt_string sigval2 = tableName_ms;
		const QSqlRecord& rec_ret = rec;
		// Cast returned reference into pointer
		QSqlRecord* sigval3 = const_cast<QSqlRecord*>(&rec_ret);
		bool sigval4 = preparedStatement;
		struct seaqt_string callback_return_value = vtbl->sqlStatement(this, sigval1, sigval2, sigval3, sigval4);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlDriver_virtualbase_sqlStatement(const VirtualQSqlDriver* self, int type, struct seaqt_string tableName, QSqlRecord* rec, bool preparedStatement);

	virtual QVariant handle() const override {
		if (vtbl->handle == 0) {
			return QSqlDriver::handle();
		}

		QVariant* callback_return_value = vtbl->handle(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QSqlDriver_virtualbase_handle(const VirtualQSqlDriver* self);

	virtual bool hasFeature(QSqlDriver::DriverFeature f) const override {
		if (vtbl->hasFeature == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		QSqlDriver::DriverFeature f_ret = f;
		int sigval1 = static_cast<int>(f_ret);
		bool callback_return_value = vtbl->hasFeature(this, sigval1);
		return callback_return_value;
	}

	virtual void close() override {
		if (vtbl->close == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->close(this);
	}

	virtual QSqlResult* createResult() const override {
		if (vtbl->createResult == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QSqlResult* callback_return_value = vtbl->createResult(this);
		return callback_return_value;
	}

	virtual bool open(const QString& db, const QString& user, const QString& password, const QString& host, int port, const QString& connOpts) override {
		if (vtbl->open == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString db_ret = db;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray db_b = db_ret.toUtf8();
		struct seaqt_string db_ms;
		db_ms.len = db_b.length();
		db_ms.data = static_cast<char*>(malloc(db_ms.len));
		memcpy(db_ms.data, db_b.data(), db_ms.len);
		struct seaqt_string sigval1 = db_ms;
		const QString user_ret = user;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray user_b = user_ret.toUtf8();
		struct seaqt_string user_ms;
		user_ms.len = user_b.length();
		user_ms.data = static_cast<char*>(malloc(user_ms.len));
		memcpy(user_ms.data, user_b.data(), user_ms.len);
		struct seaqt_string sigval2 = user_ms;
		const QString password_ret = password;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray password_b = password_ret.toUtf8();
		struct seaqt_string password_ms;
		password_ms.len = password_b.length();
		password_ms.data = static_cast<char*>(malloc(password_ms.len));
		memcpy(password_ms.data, password_b.data(), password_ms.len);
		struct seaqt_string sigval3 = password_ms;
		const QString host_ret = host;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray host_b = host_ret.toUtf8();
		struct seaqt_string host_ms;
		host_ms.len = host_b.length();
		host_ms.data = static_cast<char*>(malloc(host_ms.len));
		memcpy(host_ms.data, host_b.data(), host_ms.len);
		struct seaqt_string sigval4 = host_ms;
		int sigval5 = port;
		const QString connOpts_ret = connOpts;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray connOpts_b = connOpts_ret.toUtf8();
		struct seaqt_string connOpts_ms;
		connOpts_ms.len = connOpts_b.length();
		connOpts_ms.data = static_cast<char*>(malloc(connOpts_ms.len));
		memcpy(connOpts_ms.data, connOpts_b.data(), connOpts_ms.len);
		struct seaqt_string sigval6 = connOpts_ms;
		bool callback_return_value = vtbl->open(this, sigval1, sigval2, sigval3, sigval4, sigval5, sigval6);
		return callback_return_value;
	}

	virtual bool subscribeToNotification(const QString& name) override {
		if (vtbl->subscribeToNotification == 0) {
			return QSqlDriver::subscribeToNotification(name);
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		bool callback_return_value = vtbl->subscribeToNotification(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_subscribeToNotification(VirtualQSqlDriver* self, struct seaqt_string name);

	virtual bool unsubscribeFromNotification(const QString& name) override {
		if (vtbl->unsubscribeFromNotification == 0) {
			return QSqlDriver::unsubscribeFromNotification(name);
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		bool callback_return_value = vtbl->unsubscribeFromNotification(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_unsubscribeFromNotification(VirtualQSqlDriver* self, struct seaqt_string name);

	virtual QStringList subscribedToNotifications() const override {
		if (vtbl->subscribedToNotifications == 0) {
			return QSqlDriver::subscribedToNotifications();
		}

		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->subscribedToNotifications(this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct seaqt_string* callback_return_value_arr = static_cast<struct seaqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of struct seaqt_string */  QSqlDriver_virtualbase_subscribedToNotifications(const VirtualQSqlDriver* self);

	virtual bool isIdentifierEscaped(const QString& identifier, QSqlDriver::IdentifierType type) const override {
		if (vtbl->isIdentifierEscaped == 0) {
			return QSqlDriver::isIdentifierEscaped(identifier, type);
		}

		const QString identifier_ret = identifier;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray identifier_b = identifier_ret.toUtf8();
		struct seaqt_string identifier_ms;
		identifier_ms.len = identifier_b.length();
		identifier_ms.data = static_cast<char*>(malloc(identifier_ms.len));
		memcpy(identifier_ms.data, identifier_b.data(), identifier_ms.len);
		struct seaqt_string sigval1 = identifier_ms;
		QSqlDriver::IdentifierType type_ret = type;
		int sigval2 = static_cast<int>(type_ret);
		bool callback_return_value = vtbl->isIdentifierEscaped(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_isIdentifierEscaped(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);

	virtual QString stripDelimiters(const QString& identifier, QSqlDriver::IdentifierType type) const override {
		if (vtbl->stripDelimiters == 0) {
			return QSqlDriver::stripDelimiters(identifier, type);
		}

		const QString identifier_ret = identifier;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray identifier_b = identifier_ret.toUtf8();
		struct seaqt_string identifier_ms;
		identifier_ms.len = identifier_b.length();
		identifier_ms.data = static_cast<char*>(malloc(identifier_ms.len));
		memcpy(identifier_ms.data, identifier_b.data(), identifier_ms.len);
		struct seaqt_string sigval1 = identifier_ms;
		QSqlDriver::IdentifierType type_ret = type;
		int sigval2 = static_cast<int>(type_ret);
		struct seaqt_string callback_return_value = vtbl->stripDelimiters(this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlDriver_virtualbase_stripDelimiters(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);

	virtual int maximumIdentifierLength(QSqlDriver::IdentifierType type) const override {
		if (vtbl->maximumIdentifierLength == 0) {
			return QSqlDriver::maximumIdentifierLength(type);
		}

		QSqlDriver::IdentifierType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);
		int callback_return_value = vtbl->maximumIdentifierLength(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlDriver_virtualbase_maximumIdentifierLength(const VirtualQSqlDriver* self, int type);

	virtual bool cancelQuery() override {
		if (vtbl->cancelQuery == 0) {
			return QSqlDriver::cancelQuery();
		}

		bool callback_return_value = vtbl->cancelQuery(this);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_cancelQuery(VirtualQSqlDriver* self);

	virtual void setOpen(bool o) override {
		if (vtbl->setOpen == 0) {
			QSqlDriver::setOpen(o);
			return;
		}

		bool sigval1 = o;
		vtbl->setOpen(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_setOpen(VirtualQSqlDriver* self, bool o);

	virtual void setOpenError(bool e) override {
		if (vtbl->setOpenError == 0) {
			QSqlDriver::setOpenError(e);
			return;
		}

		bool sigval1 = e;
		vtbl->setOpenError(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_setOpenError(VirtualQSqlDriver* self, bool e);

	virtual void setLastError(const QSqlError& e) override {
		if (vtbl->setLastError == 0) {
			QSqlDriver::setLastError(e);
			return;
		}

		const QSqlError& e_ret = e;
		// Cast returned reference into pointer
		QSqlError* sigval1 = const_cast<QSqlError*>(&e_ret);
		vtbl->setLastError(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_setLastError(VirtualQSqlDriver* self, QSqlError* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSqlDriver::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_event(VirtualQSqlDriver* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSqlDriver::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlDriver_virtualbase_eventFilter(VirtualQSqlDriver* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSqlDriver::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_timerEvent(VirtualQSqlDriver* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSqlDriver::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_childEvent(VirtualQSqlDriver* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSqlDriver::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_customEvent(VirtualQSqlDriver* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSqlDriver::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_connectNotify(VirtualQSqlDriver* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSqlDriver::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSqlDriver_virtualbase_disconnectNotify(VirtualQSqlDriver* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSqlDriver_protectedbase_sender(const VirtualQSqlDriver* self);
	friend int QSqlDriver_protectedbase_senderSignalIndex(const VirtualQSqlDriver* self);
	friend int QSqlDriver_protectedbase_receivers(const VirtualQSqlDriver* self, const char* signal);
	friend bool QSqlDriver_protectedbase_isSignalConnected(const VirtualQSqlDriver* self, QMetaMethod* signal);
};

VirtualQSqlDriver* QSqlDriver_new(const QSqlDriver_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlDriver>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlDriver(vtbl) : nullptr;
}

VirtualQSqlDriver* QSqlDriver_new_parent(const QSqlDriver_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlDriver>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlDriver(vtbl, parent) : nullptr;
}

void QSqlDriver_virtbase(QSqlDriver* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSqlDriver_metaObject(const QSqlDriver* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSqlDriver_metacast(QSqlDriver* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSqlDriver_metacall(QSqlDriver* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSqlDriver_tr_s(const char* s) {
	QString _ret = QSqlDriver::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSqlDriver_isOpen(const QSqlDriver* self) {
	return self->isOpen();
}

bool QSqlDriver_isOpenError(const QSqlDriver* self) {
	return self->isOpenError();
}

bool QSqlDriver_beginTransaction(QSqlDriver* self) {
	return self->beginTransaction();
}

bool QSqlDriver_commitTransaction(QSqlDriver* self) {
	return self->commitTransaction();
}

bool QSqlDriver_rollbackTransaction(QSqlDriver* self) {
	return self->rollbackTransaction();
}

struct seaqt_array /* of struct seaqt_string */  QSqlDriver_tables(const QSqlDriver* self, int tableType) {
	QStringList _ret = self->tables(static_cast<QSql::TableType>(tableType));
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

QSqlIndex* QSqlDriver_primaryIndex(const QSqlDriver* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);
	return new QSqlIndex(self->primaryIndex(tableName_QString));
}

QSqlRecord* QSqlDriver_record(const QSqlDriver* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);
	return new QSqlRecord(self->record(tableName_QString));
}

struct seaqt_string QSqlDriver_formatValue(const QSqlDriver* self, QSqlField* field, bool trimStrings) {
	QString _ret = self->formatValue(*field, trimStrings);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriver_escapeIdentifier(const QSqlDriver* self, struct seaqt_string identifier, int type) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);
	QString _ret = self->escapeIdentifier(identifier_QString, static_cast<QSqlDriver::IdentifierType>(type));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriver_sqlStatement(const QSqlDriver* self, int type, struct seaqt_string tableName, QSqlRecord* rec, bool preparedStatement) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);
	QString _ret = self->sqlStatement(static_cast<QSqlDriver::StatementType>(type), tableName_QString, *rec, preparedStatement);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSqlError* QSqlDriver_lastError(const QSqlDriver* self) {
	return new QSqlError(self->lastError());
}

QVariant* QSqlDriver_handle(const QSqlDriver* self) {
	return new QVariant(self->handle());
}

bool QSqlDriver_hasFeature(const QSqlDriver* self, int f) {
	return self->hasFeature(static_cast<QSqlDriver::DriverFeature>(f));
}

void QSqlDriver_close(QSqlDriver* self) {
	self->close();
}

QSqlResult* QSqlDriver_createResult(const QSqlDriver* self) {
	return self->createResult();
}

bool QSqlDriver_open(QSqlDriver* self, struct seaqt_string db, struct seaqt_string user, struct seaqt_string password, struct seaqt_string host, int port, struct seaqt_string connOpts) {
	QString db_QString = QString::fromUtf8(db.data, db.len);
	QString user_QString = QString::fromUtf8(user.data, user.len);
	QString password_QString = QString::fromUtf8(password.data, password.len);
	QString host_QString = QString::fromUtf8(host.data, host.len);
	QString connOpts_QString = QString::fromUtf8(connOpts.data, connOpts.len);
	return self->open(db_QString, user_QString, password_QString, host_QString, static_cast<int>(port), connOpts_QString);
}

bool QSqlDriver_subscribeToNotification(QSqlDriver* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->subscribeToNotification(name_QString);
}

bool QSqlDriver_unsubscribeFromNotification(QSqlDriver* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->unsubscribeFromNotification(name_QString);
}

struct seaqt_array /* of struct seaqt_string */  QSqlDriver_subscribedToNotifications(const QSqlDriver* self) {
	QStringList _ret = self->subscribedToNotifications();
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

bool QSqlDriver_isIdentifierEscaped(const QSqlDriver* self, struct seaqt_string identifier, int type) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);
	return self->isIdentifierEscaped(identifier_QString, static_cast<QSqlDriver::IdentifierType>(type));
}

struct seaqt_string QSqlDriver_stripDelimiters(const QSqlDriver* self, struct seaqt_string identifier, int type) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);
	QString _ret = self->stripDelimiters(identifier_QString, static_cast<QSqlDriver::IdentifierType>(type));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlDriver_setNumericalPrecisionPolicy(QSqlDriver* self, int precisionPolicy) {
	self->setNumericalPrecisionPolicy(static_cast<QSql::NumericalPrecisionPolicy>(precisionPolicy));
}

int QSqlDriver_numericalPrecisionPolicy(const QSqlDriver* self) {
	QSql::NumericalPrecisionPolicy _ret = self->numericalPrecisionPolicy();
	return static_cast<int>(_ret);
}

int QSqlDriver_dbmsType(const QSqlDriver* self) {
	QSqlDriver::DbmsType _ret = self->dbmsType();
	return static_cast<int>(_ret);
}

int QSqlDriver_maximumIdentifierLength(const QSqlDriver* self, int type) {
	return self->maximumIdentifierLength(static_cast<QSqlDriver::IdentifierType>(type));
}

bool QSqlDriver_cancelQuery(QSqlDriver* self) {
	return self->cancelQuery();
}

void QSqlDriver_notification(QSqlDriver* self, struct seaqt_string name, int source, QVariant* payload) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->notification(name_QString, static_cast<QSqlDriver::NotificationSource>(source), *payload);
}

void QSqlDriver_connect_notification(QSqlDriver* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, int, QVariant*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, int, QVariant*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct seaqt_string, int, QVariant*);
		void operator()(const QString& name, QSqlDriver::NotificationSource source, const QVariant& payload) {
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct seaqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct seaqt_string sigval1 = name_ms;
			QSqlDriver::NotificationSource source_ret = source;
			int sigval2 = static_cast<int>(source_ret);
			const QVariant& payload_ret = payload;
			// Cast returned reference into pointer
			QVariant* sigval3 = const_cast<QVariant*>(&payload_ret);
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	QSqlDriver::connect(self, static_cast<void (QSqlDriver::*)(const QString&, QSqlDriver::NotificationSource, const QVariant&)>(&QSqlDriver::notification), self, local_caller{slot, callback, release});
}

struct seaqt_string QSqlDriver_tr_s_c(const char* s, const char* c) {
	QString _ret = QSqlDriver::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriver_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSqlDriver::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QSqlDriver_staticMetaObject() { return &QSqlDriver::staticMetaObject; }
void* QSqlDriver_vdata(VirtualQSqlDriver* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSqlDriver>()); }
VirtualQSqlDriver* vdata_QSqlDriver(void* vdata) { return reinterpret_cast<VirtualQSqlDriver*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSqlDriver>()); }

QMetaObject* QSqlDriver_virtualbase_metaObject(const VirtualQSqlDriver* self) {

	return (QMetaObject*) self->QSqlDriver::metaObject();
}

void* QSqlDriver_virtualbase_metacast(VirtualQSqlDriver* self, const char* param1) {

	return self->QSqlDriver::qt_metacast(param1);
}

int QSqlDriver_virtualbase_metacall(VirtualQSqlDriver* self, int param1, int param2, void** param3) {

	return self->QSqlDriver::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSqlDriver_virtualbase_isOpen(const VirtualQSqlDriver* self) {

	return self->QSqlDriver::isOpen();
}

bool QSqlDriver_virtualbase_beginTransaction(VirtualQSqlDriver* self) {

	return self->QSqlDriver::beginTransaction();
}

bool QSqlDriver_virtualbase_commitTransaction(VirtualQSqlDriver* self) {

	return self->QSqlDriver::commitTransaction();
}

bool QSqlDriver_virtualbase_rollbackTransaction(VirtualQSqlDriver* self) {

	return self->QSqlDriver::rollbackTransaction();
}

struct seaqt_array /* of struct seaqt_string */  QSqlDriver_virtualbase_tables(const VirtualQSqlDriver* self, int tableType) {

	QStringList _ret = self->QSqlDriver::tables(static_cast<QSql::TableType>(tableType));
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

QSqlIndex* QSqlDriver_virtualbase_primaryIndex(const VirtualQSqlDriver* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);

	return new QSqlIndex(self->QSqlDriver::primaryIndex(tableName_QString));
}

QSqlRecord* QSqlDriver_virtualbase_record(const VirtualQSqlDriver* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);

	return new QSqlRecord(self->QSqlDriver::record(tableName_QString));
}

struct seaqt_string QSqlDriver_virtualbase_formatValue(const VirtualQSqlDriver* self, QSqlField* field, bool trimStrings) {

	QString _ret = self->QSqlDriver::formatValue(*field, trimStrings);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriver_virtualbase_escapeIdentifier(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);

	QString _ret = self->QSqlDriver::escapeIdentifier(identifier_QString, static_cast<VirtualQSqlDriver::IdentifierType>(type));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriver_virtualbase_sqlStatement(const VirtualQSqlDriver* self, int type, struct seaqt_string tableName, QSqlRecord* rec, bool preparedStatement) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);

	QString _ret = self->QSqlDriver::sqlStatement(static_cast<VirtualQSqlDriver::StatementType>(type), tableName_QString, *rec, preparedStatement);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QSqlDriver_virtualbase_handle(const VirtualQSqlDriver* self) {

	return new QVariant(self->QSqlDriver::handle());
}

bool QSqlDriver_virtualbase_subscribeToNotification(VirtualQSqlDriver* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QSqlDriver::subscribeToNotification(name_QString);
}

bool QSqlDriver_virtualbase_unsubscribeFromNotification(VirtualQSqlDriver* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QSqlDriver::unsubscribeFromNotification(name_QString);
}

struct seaqt_array /* of struct seaqt_string */  QSqlDriver_virtualbase_subscribedToNotifications(const VirtualQSqlDriver* self) {

	QStringList _ret = self->QSqlDriver::subscribedToNotifications();
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

bool QSqlDriver_virtualbase_isIdentifierEscaped(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);

	return self->QSqlDriver::isIdentifierEscaped(identifier_QString, static_cast<VirtualQSqlDriver::IdentifierType>(type));
}

struct seaqt_string QSqlDriver_virtualbase_stripDelimiters(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);

	QString _ret = self->QSqlDriver::stripDelimiters(identifier_QString, static_cast<VirtualQSqlDriver::IdentifierType>(type));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSqlDriver_virtualbase_maximumIdentifierLength(const VirtualQSqlDriver* self, int type) {

	return self->QSqlDriver::maximumIdentifierLength(static_cast<VirtualQSqlDriver::IdentifierType>(type));
}

bool QSqlDriver_virtualbase_cancelQuery(VirtualQSqlDriver* self) {

	return self->QSqlDriver::cancelQuery();
}

void QSqlDriver_virtualbase_setOpen(VirtualQSqlDriver* self, bool o) {

	self->QSqlDriver::setOpen(o);
}

void QSqlDriver_virtualbase_setOpenError(VirtualQSqlDriver* self, bool e) {

	self->QSqlDriver::setOpenError(e);
}

void QSqlDriver_virtualbase_setLastError(VirtualQSqlDriver* self, QSqlError* e) {

	self->QSqlDriver::setLastError(*e);
}

bool QSqlDriver_virtualbase_event(VirtualQSqlDriver* self, QEvent* event) {

	return self->QSqlDriver::event(event);
}

bool QSqlDriver_virtualbase_eventFilter(VirtualQSqlDriver* self, QObject* watched, QEvent* event) {

	return self->QSqlDriver::eventFilter(watched, event);
}

void QSqlDriver_virtualbase_timerEvent(VirtualQSqlDriver* self, QTimerEvent* event) {

	self->QSqlDriver::timerEvent(event);
}

void QSqlDriver_virtualbase_childEvent(VirtualQSqlDriver* self, QChildEvent* event) {

	self->QSqlDriver::childEvent(event);
}

void QSqlDriver_virtualbase_customEvent(VirtualQSqlDriver* self, QEvent* event) {

	self->QSqlDriver::customEvent(event);
}

void QSqlDriver_virtualbase_connectNotify(VirtualQSqlDriver* self, QMetaMethod* signal) {

	self->QSqlDriver::connectNotify(*signal);
}

void QSqlDriver_virtualbase_disconnectNotify(VirtualQSqlDriver* self, QMetaMethod* signal) {

	self->QSqlDriver::disconnectNotify(*signal);
}

QObject* QSqlDriver_protectedbase_sender(const VirtualQSqlDriver* self) {
	return self->sender();
}

int QSqlDriver_protectedbase_senderSignalIndex(const VirtualQSqlDriver* self) {
	return self->senderSignalIndex();
}

int QSqlDriver_protectedbase_receivers(const VirtualQSqlDriver* self, const char* signal) {
	return self->receivers(signal);
}

bool QSqlDriver_protectedbase_isSignalConnected(const VirtualQSqlDriver* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSqlDriver_delete(QSqlDriver* self) {
	delete self;
}

