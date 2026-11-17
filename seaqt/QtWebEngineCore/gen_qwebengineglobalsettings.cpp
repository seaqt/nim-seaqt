#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebEngineGlobalSettings__DnsMode
#include <qwebengineglobalsettings.h>
#include "gen_qwebengineglobalsettings.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

uint8_t QWebEngineGlobalSettings__DnsMode_secureMode(const QWebEngineGlobalSettings__DnsMode* self) {
	QWebEngineGlobalSettings::SecureDnsMode secureMode_ret = self->secureMode;
	return static_cast<uint8_t>(secureMode_ret);
}

void QWebEngineGlobalSettings__DnsMode_setSecureMode(QWebEngineGlobalSettings__DnsMode* self, uint8_t secureMode) {
	self->secureMode = static_cast<QWebEngineGlobalSettings::SecureDnsMode>(secureMode);
}

struct seaqt_array /* of struct seaqt_string */  QWebEngineGlobalSettings__DnsMode_serverTemplates(const QWebEngineGlobalSettings__DnsMode* self) {
	QStringList serverTemplates_ret = self->serverTemplates;
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* serverTemplates_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * serverTemplates_ret.length()));
	for (size_t i = 0, e = serverTemplates_ret.length(); i < e; ++i) {
		QString serverTemplates_lv_ret = serverTemplates_ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray serverTemplates_lv_b = serverTemplates_lv_ret.toUtf8();
		struct seaqt_string serverTemplates_lv_ms;
		serverTemplates_lv_ms.len = serverTemplates_lv_b.length();
		serverTemplates_lv_ms.data = static_cast<char*>(malloc(serverTemplates_lv_ms.len));
		memcpy(serverTemplates_lv_ms.data, serverTemplates_lv_b.data(), serverTemplates_lv_ms.len);
		serverTemplates_arr[i] = serverTemplates_lv_ms;
	}
	struct seaqt_array serverTemplates_out;
	serverTemplates_out.len = serverTemplates_ret.length();
	serverTemplates_out.data = static_cast<void*>(serverTemplates_arr);
	return serverTemplates_out;
}

void QWebEngineGlobalSettings__DnsMode_setServerTemplates(QWebEngineGlobalSettings__DnsMode* self, struct seaqt_array /* of struct seaqt_string */  serverTemplates) {
	QStringList serverTemplates_QList;
	serverTemplates_QList.reserve(serverTemplates.len);
	struct seaqt_string* serverTemplates_arr = static_cast<struct seaqt_string*>(serverTemplates.data);
	for(size_t i = 0; i < serverTemplates.len; ++i) {
		QString serverTemplates_arr_i_QString = QString::fromUtf8(serverTemplates_arr[i].data, serverTemplates_arr[i].len);
		serverTemplates_QList.push_back(serverTemplates_arr_i_QString);
	}
	self->serverTemplates = serverTemplates_QList;
}

void QWebEngineGlobalSettings__DnsMode_delete(QWebEngineGlobalSettings__DnsMode* self) {
	delete self;
}

