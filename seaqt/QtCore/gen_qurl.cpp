#include <QByteArray>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QUrlQuery>
#include <qurl.h>
#include "gen_qurl.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QUrl* QUrl_new() {
	return new (std::nothrow) QUrl();
}

QUrl* QUrl_new_from(QUrl* from) {
	return new (std::nothrow) QUrl(*from);
}

QUrl* QUrl_new_url(struct seaqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	return new (std::nothrow) QUrl(url_QString);
}

QUrl* QUrl_new_url_mode(struct seaqt_string url, int mode) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	return new (std::nothrow) QUrl(url_QString, static_cast<QUrl::ParsingMode>(mode));
}

void QUrl_operatorAssign_from(QUrl* self, QUrl* from) {
	self->operator=(*from);
}

void QUrl_operatorAssign_url(QUrl* self, struct seaqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	self->operator=(url_QString);
}

void QUrl_swap(QUrl* self, QUrl* other) {
	self->swap(*other);
}

void QUrl_setUrl_url(QUrl* self, struct seaqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	self->setUrl(url_QString);
}

struct seaqt_string QUrl_url(const QUrl* self) {
	QString _ret = self->url();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toString(const QUrl* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toDisplayString(const QUrl* self) {
	QString _ret = self->toDisplayString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toEncoded(const QUrl* self) {
	QByteArray _qb = self->toEncoded();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QUrl* QUrl_fromEncoded_url(struct seaqt_string url) {
	QByteArray url_QByteArray(url.data, url.len);
	return new QUrl(QUrl::fromEncoded(url_QByteArray));
}

QUrl* QUrl_fromUserInput_userInput(struct seaqt_string userInput) {
	QString userInput_QString = QString::fromUtf8(userInput.data, userInput.len);
	return new QUrl(QUrl::fromUserInput(userInput_QString));
}

bool QUrl_isValid(const QUrl* self) {
	return self->isValid();
}

struct seaqt_string QUrl_errorString(const QUrl* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QUrl_isEmpty(const QUrl* self) {
	return self->isEmpty();
}

void QUrl_clear(QUrl* self) {
	self->clear();
}

void QUrl_setScheme(QUrl* self, struct seaqt_string scheme) {
	QString scheme_QString = QString::fromUtf8(scheme.data, scheme.len);
	self->setScheme(scheme_QString);
}

struct seaqt_string QUrl_scheme(const QUrl* self) {
	QString _ret = self->scheme();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setAuthority_authority(QUrl* self, struct seaqt_string authority) {
	QString authority_QString = QString::fromUtf8(authority.data, authority.len);
	self->setAuthority(authority_QString);
}

struct seaqt_string QUrl_authority(const QUrl* self) {
	QString _ret = self->authority();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setUserInfo_userInfo(QUrl* self, struct seaqt_string userInfo) {
	QString userInfo_QString = QString::fromUtf8(userInfo.data, userInfo.len);
	self->setUserInfo(userInfo_QString);
}

struct seaqt_string QUrl_userInfo(const QUrl* self) {
	QString _ret = self->userInfo();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setUserName_userName(QUrl* self, struct seaqt_string userName) {
	QString userName_QString = QString::fromUtf8(userName.data, userName.len);
	self->setUserName(userName_QString);
}

struct seaqt_string QUrl_userName(const QUrl* self) {
	QString _ret = self->userName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setPassword_password(QUrl* self, struct seaqt_string password) {
	QString password_QString = QString::fromUtf8(password.data, password.len);
	self->setPassword(password_QString);
}

struct seaqt_string QUrl_password(const QUrl* self) {
	QString _ret = self->password();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setHost_host(QUrl* self, struct seaqt_string host) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	self->setHost(host_QString);
}

struct seaqt_string QUrl_host(const QUrl* self) {
	QString _ret = self->host();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setPort(QUrl* self, int port) {
	self->setPort(static_cast<int>(port));
}

int QUrl_port(const QUrl* self) {
	return self->port();
}

void QUrl_setPath_path(QUrl* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPath(path_QString);
}

struct seaqt_string QUrl_path(const QUrl* self) {
	QString _ret = self->path();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_fileName(const QUrl* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QUrl_hasQuery(const QUrl* self) {
	return self->hasQuery();
}

void QUrl_setQuery_QString(QUrl* self, struct seaqt_string query) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	self->setQuery(query_QString);
}

void QUrl_setQuery_QUrlQuery(QUrl* self, QUrlQuery* query) {
	self->setQuery(*query);
}

struct seaqt_string QUrl_query(const QUrl* self) {
	QString _ret = self->query();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QUrl_hasFragment(const QUrl* self) {
	return self->hasFragment();
}

struct seaqt_string QUrl_fragment(const QUrl* self) {
	QString _ret = self->fragment();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setFragment_fragment(QUrl* self, struct seaqt_string fragment) {
	QString fragment_QString = QString::fromUtf8(fragment.data, fragment.len);
	self->setFragment(fragment_QString);
}

QUrl* QUrl_resolved(const QUrl* self, QUrl* relative) {
	return new QUrl(self->resolved(*relative));
}

bool QUrl_isRelative(const QUrl* self) {
	return self->isRelative();
}

bool QUrl_isParentOf(const QUrl* self, QUrl* url) {
	return self->isParentOf(*url);
}

bool QUrl_isLocalFile(const QUrl* self) {
	return self->isLocalFile();
}

QUrl* QUrl_fromLocalFile(struct seaqt_string localfile) {
	QString localfile_QString = QString::fromUtf8(localfile.data, localfile.len);
	return new QUrl(QUrl::fromLocalFile(localfile_QString));
}

struct seaqt_string QUrl_toLocalFile(const QUrl* self) {
	QString _ret = self->toLocalFile();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_detach(QUrl* self) {
	self->detach();
}

bool QUrl_isDetached(const QUrl* self) {
	return self->isDetached();
}

bool QUrl_operatorLesser(const QUrl* self, QUrl* url) {
	return (*self < *url);
}

bool QUrl_operatorEqual(const QUrl* self, QUrl* url) {
	return (*self == *url);
}

bool QUrl_operatorNotEqual(const QUrl* self, QUrl* url) {
	return (*self != *url);
}

struct seaqt_string QUrl_fromPercentEncoding(struct seaqt_string param1) {
	QByteArray param1_QByteArray(param1.data, param1.len);
	QString _ret = QUrl::fromPercentEncoding(param1_QByteArray);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toPercentEncoding_QString(struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QByteArray _qb = QUrl::toPercentEncoding(param1_QString);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_fromAce_domain(struct seaqt_string domain) {
	QByteArray domain_QByteArray(domain.data, domain.len);
	QString _ret = QUrl::fromAce(domain_QByteArray);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toAce_domain(struct seaqt_string domain) {
	QString domain_QString = QString::fromUtf8(domain.data, domain.len);
	QByteArray _qb = QUrl::toAce(domain_QString);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QUrl_idnWhitelist() {
	QStringList _ret = QUrl::idnWhitelist();
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

struct seaqt_array /* of struct seaqt_string */  QUrl_toStringList_uris(struct seaqt_array /* of QUrl* */  uris) {
	QList<QUrl> uris_QList;
	uris_QList.reserve(uris.len);
	QUrl** uris_arr = static_cast<QUrl**>(uris.data);
	for(size_t i = 0; i < uris.len; ++i) {
		uris_QList.push_back(*(uris_arr[i]));
	}
	QStringList _ret = QUrl::toStringList(uris_QList);
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

struct seaqt_array /* of QUrl* */  QUrl_fromStringList_uris(struct seaqt_array /* of struct seaqt_string */  uris) {
	QStringList uris_QList;
	uris_QList.reserve(uris.len);
	struct seaqt_string* uris_arr = static_cast<struct seaqt_string*>(uris.data);
	for(size_t i = 0; i < uris.len; ++i) {
		QString uris_arr_i_QString = QString::fromUtf8(uris_arr[i].data, uris_arr[i].len);
		uris_QList.push_back(uris_arr_i_QString);
	}
	QList<QUrl> _ret = QUrl::fromStringList(uris_QList);
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QUrl_setIdnWhitelist(struct seaqt_array /* of struct seaqt_string */  idnWhitelist) {
	QStringList idnWhitelist_QList;
	idnWhitelist_QList.reserve(idnWhitelist.len);
	struct seaqt_string* idnWhitelist_arr = static_cast<struct seaqt_string*>(idnWhitelist.data);
	for(size_t i = 0; i < idnWhitelist.len; ++i) {
		QString idnWhitelist_arr_i_QString = QString::fromUtf8(idnWhitelist_arr[i].data, idnWhitelist_arr[i].len);
		idnWhitelist_QList.push_back(idnWhitelist_arr_i_QString);
	}
	QUrl::setIdnWhitelist(idnWhitelist_QList);
}

void QUrl_setUrl_url_mode(QUrl* self, struct seaqt_string url, int mode) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	self->setUrl(url_QString, static_cast<QUrl::ParsingMode>(mode));
}

QUrl* QUrl_fromEncoded_url_mode(struct seaqt_string url, int mode) {
	QByteArray url_QByteArray(url.data, url.len);
	return new QUrl(QUrl::fromEncoded(url_QByteArray, static_cast<QUrl::ParsingMode>(mode)));
}

QUrl* QUrl_fromUserInput_userInput_workingDirectory(struct seaqt_string userInput, struct seaqt_string workingDirectory) {
	QString userInput_QString = QString::fromUtf8(userInput.data, userInput.len);
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	return new QUrl(QUrl::fromUserInput(userInput_QString, workingDirectory_QString));
}

QUrl* QUrl_fromUserInput_userInput_workingDirectory_options(struct seaqt_string userInput, struct seaqt_string workingDirectory, int options) {
	QString userInput_QString = QString::fromUtf8(userInput.data, userInput.len);
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	return new QUrl(QUrl::fromUserInput(userInput_QString, workingDirectory_QString, static_cast<QUrl::UserInputResolutionOptions>(options)));
}

void QUrl_setAuthority_authority_mode(QUrl* self, struct seaqt_string authority, int mode) {
	QString authority_QString = QString::fromUtf8(authority.data, authority.len);
	self->setAuthority(authority_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_authority_options(const QUrl* self, unsigned int options) {
	QString _ret = self->authority(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setUserInfo_userInfo_mode(QUrl* self, struct seaqt_string userInfo, int mode) {
	QString userInfo_QString = QString::fromUtf8(userInfo.data, userInfo.len);
	self->setUserInfo(userInfo_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_userInfo_options(const QUrl* self, unsigned int options) {
	QString _ret = self->userInfo(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setUserName_userName_mode(QUrl* self, struct seaqt_string userName, int mode) {
	QString userName_QString = QString::fromUtf8(userName.data, userName.len);
	self->setUserName(userName_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_userName_options(const QUrl* self, unsigned int options) {
	QString _ret = self->userName(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setPassword_password_mode(QUrl* self, struct seaqt_string password, int mode) {
	QString password_QString = QString::fromUtf8(password.data, password.len);
	self->setPassword(password_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_password_QUrl_ComponentFormattingOptions(const QUrl* self, unsigned int param1) {
	QString _ret = self->password(static_cast<QUrl::ComponentFormattingOptions>(param1));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setHost_host_mode(QUrl* self, struct seaqt_string host, int mode) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	self->setHost(host_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_host_QUrl_ComponentFormattingOptions(const QUrl* self, unsigned int param1) {
	QString _ret = self->host(static_cast<QUrl::ComponentFormattingOptions>(param1));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QUrl_port_defaultPort(const QUrl* self, int defaultPort) {
	return self->port(static_cast<int>(defaultPort));
}

void QUrl_setPath_path_mode(QUrl* self, struct seaqt_string path, int mode) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPath(path_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_path_options(const QUrl* self, unsigned int options) {
	QString _ret = self->path(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_fileName_options(const QUrl* self, unsigned int options) {
	QString _ret = self->fileName(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setQuery_QString_QUrl_ParsingMode(QUrl* self, struct seaqt_string query, int mode) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	self->setQuery(query_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_query_QUrl_ComponentFormattingOptions(const QUrl* self, unsigned int param1) {
	QString _ret = self->query(static_cast<QUrl::ComponentFormattingOptions>(param1));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_fragment_options(const QUrl* self, unsigned int options) {
	QString _ret = self->fragment(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrl_setFragment_fragment_mode(QUrl* self, struct seaqt_string fragment, int mode) {
	QString fragment_QString = QString::fromUtf8(fragment.data, fragment.len);
	self->setFragment(fragment_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QUrl_toPercentEncoding_QString_QByteArray(struct seaqt_string param1, struct seaqt_string exclude) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QByteArray exclude_QByteArray(exclude.data, exclude.len);
	QByteArray _qb = QUrl::toPercentEncoding(param1_QString, exclude_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toPercentEncoding_QString_QByteArray_QByteArray(struct seaqt_string param1, struct seaqt_string exclude, struct seaqt_string include) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QByteArray exclude_QByteArray(exclude.data, exclude.len);
	QByteArray include_QByteArray(include.data, include.len);
	QByteArray _qb = QUrl::toPercentEncoding(param1_QString, exclude_QByteArray, include_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_fromAce_domain_options(struct seaqt_string domain, unsigned int options) {
	QByteArray domain_QByteArray(domain.data, domain.len);
	QString _ret = QUrl::fromAce(domain_QByteArray, static_cast<QUrl::AceProcessingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrl_toAce_domain_options(struct seaqt_string domain, unsigned int options) {
	QString domain_QString = QString::fromUtf8(domain.data, domain.len);
	QByteArray _qb = QUrl::toAce(domain_QString, static_cast<QUrl::AceProcessingOptions>(options));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QUrl* */  QUrl_fromStringList_uris_mode(struct seaqt_array /* of struct seaqt_string */  uris, int mode) {
	QStringList uris_QList;
	uris_QList.reserve(uris.len);
	struct seaqt_string* uris_arr = static_cast<struct seaqt_string*>(uris.data);
	for(size_t i = 0; i < uris.len; ++i) {
		QString uris_arr_i_QString = QString::fromUtf8(uris_arr[i].data, uris_arr[i].len);
		uris_QList.push_back(uris_arr_i_QString);
	}
	QList<QUrl> _ret = QUrl::fromStringList(uris_QList, static_cast<QUrl::ParsingMode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QUrl_delete(QUrl* self) {
	delete self;
}

