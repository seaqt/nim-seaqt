#pragma once
#ifndef SEAQT_QTCORE_GEN_QURL_H
#define SEAQT_QTCORE_GEN_QURL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QUrl;
class QUrlQuery;
#else
typedef struct QUrl QUrl;
typedef struct QUrlQuery QUrlQuery;
#endif

QUrl* QUrl_new();
QUrl* QUrl_new_from(QUrl* from);
QUrl* QUrl_new_url(struct seaqt_string url);
QUrl* QUrl_new_url_mode(struct seaqt_string url, int mode);

void QUrl_operatorAssign_from(QUrl* self, QUrl* from);
void QUrl_operatorAssign_url(QUrl* self, struct seaqt_string url);
void QUrl_swap(QUrl* self, QUrl* other);
void QUrl_setUrl_url(QUrl* self, struct seaqt_string url);
struct seaqt_string QUrl_url(const QUrl* self);
struct seaqt_string QUrl_toString(const QUrl* self);
struct seaqt_string QUrl_toDisplayString(const QUrl* self);
struct seaqt_string QUrl_toEncoded(const QUrl* self);
QUrl* QUrl_fromEncoded_url(struct seaqt_string url);
QUrl* QUrl_fromUserInput_userInput(struct seaqt_string userInput);
QUrl* QUrl_fromUserInput_userInput_workingDirectory(struct seaqt_string userInput, struct seaqt_string workingDirectory);
bool QUrl_isValid(const QUrl* self);
struct seaqt_string QUrl_errorString(const QUrl* self);
bool QUrl_isEmpty(const QUrl* self);
void QUrl_clear(QUrl* self);
void QUrl_setScheme(QUrl* self, struct seaqt_string scheme);
struct seaqt_string QUrl_scheme(const QUrl* self);
void QUrl_setAuthority_authority(QUrl* self, struct seaqt_string authority);
struct seaqt_string QUrl_authority(const QUrl* self);
void QUrl_setUserInfo_userInfo(QUrl* self, struct seaqt_string userInfo);
struct seaqt_string QUrl_userInfo(const QUrl* self);
void QUrl_setUserName_userName(QUrl* self, struct seaqt_string userName);
struct seaqt_string QUrl_userName(const QUrl* self);
void QUrl_setPassword_password(QUrl* self, struct seaqt_string password);
struct seaqt_string QUrl_password(const QUrl* self);
void QUrl_setHost_host(QUrl* self, struct seaqt_string host);
struct seaqt_string QUrl_host(const QUrl* self);
struct seaqt_string QUrl_topLevelDomain(const QUrl* self);
void QUrl_setPort(QUrl* self, int port);
int QUrl_port(const QUrl* self);
void QUrl_setPath_path(QUrl* self, struct seaqt_string path);
struct seaqt_string QUrl_path(const QUrl* self);
struct seaqt_string QUrl_fileName(const QUrl* self);
bool QUrl_hasQuery(const QUrl* self);
void QUrl_setQuery_QString(QUrl* self, struct seaqt_string query);
void QUrl_setQuery_QUrlQuery(QUrl* self, QUrlQuery* query);
struct seaqt_string QUrl_query(const QUrl* self);
bool QUrl_hasFragment(const QUrl* self);
struct seaqt_string QUrl_fragment(const QUrl* self);
void QUrl_setFragment_fragment(QUrl* self, struct seaqt_string fragment);
QUrl* QUrl_resolved(const QUrl* self, QUrl* relative);
bool QUrl_isRelative(const QUrl* self);
bool QUrl_isParentOf(const QUrl* self, QUrl* url);
bool QUrl_isLocalFile(const QUrl* self);
QUrl* QUrl_fromLocalFile(struct seaqt_string localfile);
struct seaqt_string QUrl_toLocalFile(const QUrl* self);
void QUrl_detach(QUrl* self);
bool QUrl_isDetached(const QUrl* self);
bool QUrl_operatorLesser(const QUrl* self, QUrl* url);
bool QUrl_operatorEqual(const QUrl* self, QUrl* url);
bool QUrl_operatorNotEqual(const QUrl* self, QUrl* url);
struct seaqt_string QUrl_fromPercentEncoding(struct seaqt_string param1);
struct seaqt_string QUrl_toPercentEncoding_QString(struct seaqt_string param1);
struct seaqt_string QUrl_fromAce(struct seaqt_string param1);
struct seaqt_string QUrl_toAce(struct seaqt_string param1);
struct seaqt_array /* of struct seaqt_string */  QUrl_idnWhitelist();
struct seaqt_array /* of struct seaqt_string */  QUrl_toStringList_uris(struct seaqt_array /* of QUrl* */  uris);
struct seaqt_array /* of QUrl* */  QUrl_fromStringList_uris(struct seaqt_array /* of struct seaqt_string */  uris);
void QUrl_setIdnWhitelist(struct seaqt_array /* of struct seaqt_string */  idnWhitelist);
void QUrl_setUrl_url_mode(QUrl* self, struct seaqt_string url, int mode);
QUrl* QUrl_fromEncoded_url_mode(struct seaqt_string url, int mode);
QUrl* QUrl_fromUserInput_userInput_workingDirectory_options(struct seaqt_string userInput, struct seaqt_string workingDirectory, int options);
void QUrl_setAuthority_authority_mode(QUrl* self, struct seaqt_string authority, int mode);
struct seaqt_string QUrl_authority_options(const QUrl* self, int options);
void QUrl_setUserInfo_userInfo_mode(QUrl* self, struct seaqt_string userInfo, int mode);
struct seaqt_string QUrl_userInfo_options(const QUrl* self, int options);
void QUrl_setUserName_userName_mode(QUrl* self, struct seaqt_string userName, int mode);
struct seaqt_string QUrl_userName_options(const QUrl* self, int options);
void QUrl_setPassword_password_mode(QUrl* self, struct seaqt_string password, int mode);
struct seaqt_string QUrl_password_QUrl_ComponentFormattingOptions(const QUrl* self, int param1);
void QUrl_setHost_host_mode(QUrl* self, struct seaqt_string host, int mode);
struct seaqt_string QUrl_host_QUrl_ComponentFormattingOptions(const QUrl* self, int param1);
struct seaqt_string QUrl_topLevelDomain_options(const QUrl* self, int options);
int QUrl_port_defaultPort(const QUrl* self, int defaultPort);
void QUrl_setPath_path_mode(QUrl* self, struct seaqt_string path, int mode);
struct seaqt_string QUrl_path_options(const QUrl* self, int options);
struct seaqt_string QUrl_fileName_options(const QUrl* self, int options);
void QUrl_setQuery_QString_QUrl_ParsingMode(QUrl* self, struct seaqt_string query, int mode);
struct seaqt_string QUrl_query_QUrl_ComponentFormattingOptions(const QUrl* self, int param1);
struct seaqt_string QUrl_fragment_options(const QUrl* self, int options);
void QUrl_setFragment_fragment_mode(QUrl* self, struct seaqt_string fragment, int mode);
struct seaqt_string QUrl_toPercentEncoding_QString_QByteArray(struct seaqt_string param1, struct seaqt_string exclude);
struct seaqt_string QUrl_toPercentEncoding_QString_QByteArray_QByteArray(struct seaqt_string param1, struct seaqt_string exclude, struct seaqt_string include);
struct seaqt_array /* of QUrl* */  QUrl_fromStringList_uris_mode(struct seaqt_array /* of struct seaqt_string */  uris, int mode);

void QUrl_delete(QUrl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
