#include <QList>
#include <QMetaObject>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineFrame>
#include <qwebengineframe.h>
#include "gen_qwebengineframe.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineFrame* QWebEngineFrame_new() {
	return new (std::nothrow) QWebEngineFrame();
}

QWebEngineFrame* QWebEngineFrame_new_from(QWebEngineFrame* from) {
	return new (std::nothrow) QWebEngineFrame(*from);
}

void QWebEngineFrame_operatorAssign(QWebEngineFrame* self, QWebEngineFrame* from) {
	self->operator=(*from);
}

bool QWebEngineFrame_isValid(const QWebEngineFrame* self) {
	return self->isValid();
}

struct seaqt_string QWebEngineFrame_name(const QWebEngineFrame* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineFrame_htmlName(const QWebEngineFrame* self) {
	QString _ret = self->htmlName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QWebEngineFrame* */  QWebEngineFrame_children(const QWebEngineFrame* self) {
	QList<QWebEngineFrame> _ret = self->children();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebEngineFrame** _arr = static_cast<QWebEngineFrame**>(malloc(sizeof(QWebEngineFrame*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebEngineFrame(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QUrl* QWebEngineFrame_url(const QWebEngineFrame* self) {
	return new QUrl(self->url());
}

QSizeF* QWebEngineFrame_size(const QWebEngineFrame* self) {
	return new QSizeF(self->size());
}

bool QWebEngineFrame_isMainFrame(const QWebEngineFrame* self) {
	return self->isMainFrame();
}

void QWebEngineFrame_runJavaScript_script(QWebEngineFrame* self, struct seaqt_string script) {
	QString script_QString = QString::fromUtf8(script.data, script.len);
	self->runJavaScript(script_QString);
}

void QWebEngineFrame_printToPdf_filePath(QWebEngineFrame* self, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString);
}

void QWebEngineFrame_runJavaScript_script_worldId(QWebEngineFrame* self, struct seaqt_string script, unsigned int worldId) {
	QString script_QString = QString::fromUtf8(script.data, script.len);
	self->runJavaScript(script_QString, static_cast<quint32>(worldId));
}

const QMetaObject* QWebEngineFrame_staticMetaObject() { return &QWebEngineFrame::staticMetaObject; }
void QWebEngineFrame_delete(QWebEngineFrame* self) {
	delete self;
}

