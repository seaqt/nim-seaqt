#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPoint>
#include <QQmlComponent>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQuickItem>
#include <QString>
#include <QByteArray>
#include <cstring>
#define WORKAROUND_INNER_CLASS_DEFINITION_QtWebEngineCore__AutofillPopupEventFilter
#define WORKAROUND_INNER_CLASS_DEFINITION_QtWebEngineCore__UIDelegatesManager
#include <ui_delegates_manager.h>
#include "gen_ui_delegates_manager.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

struct seaqt_string QtWebEngineCore__UIDelegatesManager_tr_sourceText(const char* sourceText) {
	QString _ret = QtWebEngineCore::UIDelegatesManager::tr(sourceText);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QtWebEngineCore__UIDelegatesManager_initializeImportDirs(QtWebEngineCore__UIDelegatesManager* self, struct seaqt_array /* of struct seaqt_string */  dirs, QQmlEngine* engine) {
	QStringList dirs_QList;
	dirs_QList.reserve(dirs.len);
	struct seaqt_string* dirs_arr = static_cast<struct seaqt_string*>(dirs.data);
	for(size_t i = 0; i < dirs.len; ++i) {
		QString dirs_arr_i_QString = QString::fromUtf8(dirs_arr[i].data, dirs_arr[i].len);
		dirs_QList.push_back(dirs_arr_i_QString);
	}
	return self->initializeImportDirs(dirs_QList, engine);
}

void QtWebEngineCore__UIDelegatesManager_addMenuSeparator(QtWebEngineCore__UIDelegatesManager* self, QObject* menu) {
	self->addMenuSeparator(menu);
}

QObject* QtWebEngineCore__UIDelegatesManager_addMenu(QtWebEngineCore__UIDelegatesManager* self, QObject* parentMenu, struct seaqt_string title, QPoint* pos) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(parentMenu, title_QString, *pos);
}

QQmlContext* QtWebEngineCore__UIDelegatesManager_creationContextForComponent(QtWebEngineCore__UIDelegatesManager* self, QQmlComponent* param1) {
	return self->creationContextForComponent(param1);
}

void QtWebEngineCore__UIDelegatesManager_showMenu(QtWebEngineCore__UIDelegatesManager* self, QObject* menu) {
	self->showMenu(menu);
}

void QtWebEngineCore__UIDelegatesManager_showToolTip(QtWebEngineCore__UIDelegatesManager* self, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->showToolTip(text_QString);
}

QQuickItem* QtWebEngineCore__UIDelegatesManager_createTouchHandle(QtWebEngineCore__UIDelegatesManager* self) {
	return self->createTouchHandle();
}

void QtWebEngineCore__UIDelegatesManager_hideTouchSelectionMenu(QtWebEngineCore__UIDelegatesManager* self) {
	self->hideTouchSelectionMenu();
}

void QtWebEngineCore__UIDelegatesManager_hideAutofillPopup(QtWebEngineCore__UIDelegatesManager* self) {
	self->hideAutofillPopup();
}

struct seaqt_string QtWebEngineCore__UIDelegatesManager_tr_sourceText_disambiguation(const char* sourceText, const char* disambiguation) {
	QString _ret = QtWebEngineCore::UIDelegatesManager::tr(sourceText, disambiguation);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtWebEngineCore__UIDelegatesManager_tr_sourceText_disambiguation_n(const char* sourceText, const char* disambiguation, int n) {
	QString _ret = QtWebEngineCore::UIDelegatesManager::tr(sourceText, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QtWebEngineCore__UIDelegatesManager_delete(QtWebEngineCore__UIDelegatesManager* self) {
	delete self;
}

void QtWebEngineCore__AutofillPopupEventFilter_virtbase(QtWebEngineCore__AutofillPopupEventFilter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QtWebEngineCore__AutofillPopupEventFilter_metaObject(const QtWebEngineCore__AutofillPopupEventFilter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QtWebEngineCore__AutofillPopupEventFilter_metacast(QtWebEngineCore__AutofillPopupEventFilter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QtWebEngineCore__AutofillPopupEventFilter_metacall(QtWebEngineCore__AutofillPopupEventFilter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QtWebEngineCore__AutofillPopupEventFilter_tr_s(const char* s) {
	QString _ret = QtWebEngineCore::AutofillPopupEventFilter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtWebEngineCore__AutofillPopupEventFilter_tr_s_c(const char* s, const char* c) {
	QString _ret = QtWebEngineCore::AutofillPopupEventFilter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtWebEngineCore__AutofillPopupEventFilter_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QtWebEngineCore::AutofillPopupEventFilter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QtWebEngineCore__AutofillPopupEventFilter_staticMetaObject() { return &QtWebEngineCore::AutofillPopupEventFilter::staticMetaObject; }
void QtWebEngineCore__AutofillPopupEventFilter_delete(QtWebEngineCore__AutofillPopupEventFilter* self) {
	delete self;
}

