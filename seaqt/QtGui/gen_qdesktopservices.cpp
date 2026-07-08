#include <QDesktopServices>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <qdesktopservices.h>
#include "gen_qdesktopservices.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

bool QDesktopServices_openUrl(QUrl* url) {
	return QDesktopServices::openUrl(*url);
}

void QDesktopServices_setUrlHandler(struct seaqt_string scheme, QObject* receiver, const char* method) {
	QString scheme_QString = QString::fromUtf8(scheme.data, scheme.len);
	QDesktopServices::setUrlHandler(scheme_QString, receiver, method);
}

void QDesktopServices_unsetUrlHandler(struct seaqt_string scheme) {
	QString scheme_QString = QString::fromUtf8(scheme.data, scheme.len);
	QDesktopServices::unsetUrlHandler(scheme_QString);
}

void QDesktopServices_delete(QDesktopServices* self) {
	delete self;
}

