#include <QColor>
#include <QFont>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebHapticFeedbackPlayer>
#include <QWebKitPlatformPlugin>
#include <QWebNotificationData>
#include <QWebNotificationPresenter>
#include <QWebSelectData>
#include <QWebSelectMethod>
#include <QWebSpellChecker>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebSpellChecker__GrammarDetail
#include <QWebTouchModifier>
#include <qwebkitplatformplugin.h>
#include "gen_qwebkitplatformplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

int QWebSelectData_itemType(const QWebSelectData* self, int param1) {
	QWebSelectData::ItemType _ret = self->itemType(static_cast<int>(param1));
	return static_cast<int>(_ret);
}

struct seaqt_string QWebSelectData_itemText(const QWebSelectData* self, int index) {
	QString _ret = self->itemText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSelectData_itemToolTip(const QWebSelectData* self, int index) {
	QString _ret = self->itemToolTip(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebSelectData_itemIsEnabled(const QWebSelectData* self, int index) {
	return self->itemIsEnabled(static_cast<int>(index));
}

bool QWebSelectData_itemIsSelected(const QWebSelectData* self, int index) {
	return self->itemIsSelected(static_cast<int>(index));
}

int QWebSelectData_itemCount(const QWebSelectData* self) {
	return self->itemCount();
}

bool QWebSelectData_multiple(const QWebSelectData* self) {
	return self->multiple();
}

QColor* QWebSelectData_backgroundColor(const QWebSelectData* self) {
	return new QColor(self->backgroundColor());
}

QColor* QWebSelectData_foregroundColor(const QWebSelectData* self) {
	return new QColor(self->foregroundColor());
}

QColor* QWebSelectData_itemBackgroundColor(const QWebSelectData* self, int index) {
	return new QColor(self->itemBackgroundColor(static_cast<int>(index)));
}

QColor* QWebSelectData_itemForegroundColor(const QWebSelectData* self, int index) {
	return new QColor(self->itemForegroundColor(static_cast<int>(index)));
}

void QWebSelectData_operatorAssign(QWebSelectData* self, QWebSelectData* from) {
	self->operator=(*from);
}

void QWebSelectData_delete(QWebSelectData* self) {
	delete self;
}

void QWebSelectMethod_virtbase(QWebSelectMethod* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebSelectMethod_metaObject(const QWebSelectMethod* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebSelectMethod_metacast(QWebSelectMethod* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebSelectMethod_metacall(QWebSelectMethod* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebSelectMethod_tr_s(const char* s) {
	QString _ret = QWebSelectMethod::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSelectMethod_trUtf8_s(const char* s) {
	QString _ret = QWebSelectMethod::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebSelectMethod_show(QWebSelectMethod* self, QWebSelectData* param1) {
	self->show(*param1);
}

void QWebSelectMethod_hide(QWebSelectMethod* self) {
	self->hide();
}

void QWebSelectMethod_setGeometry(QWebSelectMethod* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

void QWebSelectMethod_setFont(QWebSelectMethod* self, QFont* font) {
	self->setFont(*font);
}

void QWebSelectMethod_selectItem(QWebSelectMethod* self, int index, bool allowMultiplySelections, bool shift) {
	self->selectItem(static_cast<int>(index), allowMultiplySelections, shift);
}

void QWebSelectMethod_connect_selectItem(QWebSelectMethod* self, intptr_t slot, void (*callback)(intptr_t, int, bool, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, bool, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, bool, bool);
		void operator()(int index, bool allowMultiplySelections, bool shift) {
			int sigval1 = index;
			bool sigval2 = allowMultiplySelections;
			bool sigval3 = shift;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	QWebSelectMethod::connect(self, static_cast<void (QWebSelectMethod::*)(int, bool, bool)>(&QWebSelectMethod::selectItem), self, local_caller{slot, callback, release});
}

void QWebSelectMethod_didHide(QWebSelectMethod* self) {
	self->didHide();
}

void QWebSelectMethod_connect_didHide(QWebSelectMethod* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebSelectMethod::connect(self, static_cast<void (QWebSelectMethod::*)()>(&QWebSelectMethod::didHide), self, local_caller{slot, callback, release});
}

struct seaqt_string QWebSelectMethod_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebSelectMethod::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSelectMethod_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebSelectMethod::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSelectMethod_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebSelectMethod::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSelectMethod_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebSelectMethod::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebSelectMethod_staticMetaObject() { return &QWebSelectMethod::staticMetaObject; }
void QWebSelectMethod_delete(QWebSelectMethod* self) {
	delete self;
}

struct seaqt_string QWebNotificationData_title(const QWebNotificationData* self) {
	const QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebNotificationData_message(const QWebNotificationData* self) {
	const QString _ret = self->message();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QWebNotificationData_iconUrl(const QWebNotificationData* self) {
	return new QUrl(self->iconUrl());
}

QUrl* QWebNotificationData_openerPageUrl(const QWebNotificationData* self) {
	return new QUrl(self->openerPageUrl());
}

void QWebNotificationData_operatorAssign(QWebNotificationData* self, QWebNotificationData* from) {
	self->operator=(*from);
}

void QWebNotificationData_delete(QWebNotificationData* self) {
	delete self;
}

void QWebNotificationPresenter_virtbase(QWebNotificationPresenter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebNotificationPresenter_metaObject(const QWebNotificationPresenter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebNotificationPresenter_metacast(QWebNotificationPresenter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebNotificationPresenter_metacall(QWebNotificationPresenter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebNotificationPresenter_tr_s(const char* s) {
	QString _ret = QWebNotificationPresenter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebNotificationPresenter_trUtf8_s(const char* s) {
	QString _ret = QWebNotificationPresenter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebNotificationPresenter_showNotification(QWebNotificationPresenter* self, QWebNotificationData* param1) {
	self->showNotification(param1);
}

void QWebNotificationPresenter_notificationClosed(QWebNotificationPresenter* self) {
	self->notificationClosed();
}

void QWebNotificationPresenter_connect_notificationClosed(QWebNotificationPresenter* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebNotificationPresenter::connect(self, static_cast<void (QWebNotificationPresenter::*)()>(&QWebNotificationPresenter::notificationClosed), self, local_caller{slot, callback, release});
}

void QWebNotificationPresenter_notificationClicked(QWebNotificationPresenter* self) {
	self->notificationClicked();
}

void QWebNotificationPresenter_connect_notificationClicked(QWebNotificationPresenter* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebNotificationPresenter::connect(self, static_cast<void (QWebNotificationPresenter::*)()>(&QWebNotificationPresenter::notificationClicked), self, local_caller{slot, callback, release});
}

struct seaqt_string QWebNotificationPresenter_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebNotificationPresenter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebNotificationPresenter_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebNotificationPresenter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebNotificationPresenter_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebNotificationPresenter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebNotificationPresenter_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebNotificationPresenter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebNotificationPresenter_staticMetaObject() { return &QWebNotificationPresenter::staticMetaObject; }
void QWebNotificationPresenter_delete(QWebNotificationPresenter* self) {
	delete self;
}

void QWebHapticFeedbackPlayer_virtbase(QWebHapticFeedbackPlayer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebHapticFeedbackPlayer_metaObject(const QWebHapticFeedbackPlayer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebHapticFeedbackPlayer_metacast(QWebHapticFeedbackPlayer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebHapticFeedbackPlayer_metacall(QWebHapticFeedbackPlayer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebHapticFeedbackPlayer_tr_s(const char* s) {
	QString _ret = QWebHapticFeedbackPlayer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHapticFeedbackPlayer_trUtf8_s(const char* s) {
	QString _ret = QWebHapticFeedbackPlayer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebHapticFeedbackPlayer_playHapticFeedback(QWebHapticFeedbackPlayer* self, int param1, struct seaqt_string hapticType, int param3) {
	QString hapticType_QString = QString::fromUtf8(hapticType.data, hapticType.len);
	self->playHapticFeedback(static_cast<const QWebHapticFeedbackPlayer::HapticEvent>(param1), hapticType_QString, static_cast<const QWebHapticFeedbackPlayer::HapticStrength>(param3));
}

struct seaqt_string QWebHapticFeedbackPlayer_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebHapticFeedbackPlayer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHapticFeedbackPlayer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebHapticFeedbackPlayer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHapticFeedbackPlayer_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebHapticFeedbackPlayer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHapticFeedbackPlayer_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebHapticFeedbackPlayer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebHapticFeedbackPlayer_staticMetaObject() { return &QWebHapticFeedbackPlayer::staticMetaObject; }
void QWebHapticFeedbackPlayer_delete(QWebHapticFeedbackPlayer* self) {
	delete self;
}

void QWebTouchModifier_virtbase(QWebTouchModifier* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebTouchModifier_metaObject(const QWebTouchModifier* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebTouchModifier_metacast(QWebTouchModifier* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebTouchModifier_metacall(QWebTouchModifier* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebTouchModifier_tr_s(const char* s) {
	QString _ret = QWebTouchModifier::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebTouchModifier_trUtf8_s(const char* s) {
	QString _ret = QWebTouchModifier::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QWebTouchModifier_hitTestPaddingForTouch(const QWebTouchModifier* self, int param1) {
	return self->hitTestPaddingForTouch(static_cast<const QWebTouchModifier::PaddingDirection>(param1));
}

struct seaqt_string QWebTouchModifier_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebTouchModifier::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebTouchModifier_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebTouchModifier::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebTouchModifier_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebTouchModifier::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebTouchModifier_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebTouchModifier::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebTouchModifier_staticMetaObject() { return &QWebTouchModifier::staticMetaObject; }
void QWebTouchModifier_delete(QWebTouchModifier* self) {
	delete self;
}

void QWebSpellChecker_virtbase(QWebSpellChecker* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebSpellChecker_metaObject(const QWebSpellChecker* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebSpellChecker_metacast(QWebSpellChecker* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebSpellChecker_metacall(QWebSpellChecker* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebSpellChecker_tr_s(const char* s) {
	QString _ret = QWebSpellChecker::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSpellChecker_trUtf8_s(const char* s) {
	QString _ret = QWebSpellChecker::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebSpellChecker_isContinousSpellCheckingEnabled(const QWebSpellChecker* self) {
	return self->isContinousSpellCheckingEnabled();
}

void QWebSpellChecker_toggleContinousSpellChecking(QWebSpellChecker* self) {
	self->toggleContinousSpellChecking();
}

void QWebSpellChecker_learnWord(QWebSpellChecker* self, struct seaqt_string word) {
	QString word_QString = QString::fromUtf8(word.data, word.len);
	self->learnWord(word_QString);
}

void QWebSpellChecker_ignoreWordInSpellDocument(QWebSpellChecker* self, struct seaqt_string word) {
	QString word_QString = QString::fromUtf8(word.data, word.len);
	self->ignoreWordInSpellDocument(word_QString);
}

void QWebSpellChecker_checkSpellingOfString(QWebSpellChecker* self, struct seaqt_string word, int* misspellingLocation, int* misspellingLength) {
	QString word_QString = QString::fromUtf8(word.data, word.len);
	self->checkSpellingOfString(word_QString, static_cast<int*>(misspellingLocation), static_cast<int*>(misspellingLength));
}

struct seaqt_string QWebSpellChecker_autoCorrectSuggestionForMisspelledWord(QWebSpellChecker* self, struct seaqt_string word) {
	QString word_QString = QString::fromUtf8(word.data, word.len);
	QString _ret = self->autoCorrectSuggestionForMisspelledWord(word_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebSpellChecker_guessesForWord(QWebSpellChecker* self, struct seaqt_string word, struct seaqt_string context, struct seaqt_array /* of struct seaqt_string */  guesses) {
	QString word_QString = QString::fromUtf8(word.data, word.len);
	QString context_QString = QString::fromUtf8(context.data, context.len);
	QStringList guesses_QList;
	guesses_QList.reserve(guesses.len);
	struct seaqt_string* guesses_arr = static_cast<struct seaqt_string*>(guesses.data);
	for(size_t i = 0; i < guesses.len; ++i) {
		QString guesses_arr_i_QString = QString::fromUtf8(guesses_arr[i].data, guesses_arr[i].len);
		guesses_QList.push_back(guesses_arr_i_QString);
	}
	self->guessesForWord(word_QString, context_QString, guesses_QList);
}

bool QWebSpellChecker_isGrammarCheckingEnabled(QWebSpellChecker* self) {
	return self->isGrammarCheckingEnabled();
}

void QWebSpellChecker_toggleGrammarChecking(QWebSpellChecker* self) {
	self->toggleGrammarChecking();
}

void QWebSpellChecker_checkGrammarOfString(QWebSpellChecker* self, struct seaqt_string param1, struct seaqt_array /* of QWebSpellChecker__GrammarDetail* */  param2, int* badGrammarLocation, int* badGrammarLength) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QList<QWebSpellChecker::GrammarDetail> param2_QList;
	param2_QList.reserve(param2.len);
	QWebSpellChecker__GrammarDetail** param2_arr = static_cast<QWebSpellChecker__GrammarDetail**>(param2.data);
	for(size_t i = 0; i < param2.len; ++i) {
		param2_QList.push_back(*(param2_arr[i]));
	}
	self->checkGrammarOfString(param1_QString, param2_QList, static_cast<int*>(badGrammarLocation), static_cast<int*>(badGrammarLength));
}

struct seaqt_string QWebSpellChecker_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebSpellChecker::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSpellChecker_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebSpellChecker::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSpellChecker_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebSpellChecker::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSpellChecker_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebSpellChecker::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebSpellChecker_staticMetaObject() { return &QWebSpellChecker::staticMetaObject; }
void QWebSpellChecker_delete(QWebSpellChecker* self) {
	delete self;
}

bool QWebKitPlatformPlugin_supportsExtension(const QWebKitPlatformPlugin* self, int param1) {
	return self->supportsExtension(static_cast<QWebKitPlatformPlugin::Extension>(param1));
}

QObject* QWebKitPlatformPlugin_createExtension(const QWebKitPlatformPlugin* self, int param1) {
	return self->createExtension(static_cast<QWebKitPlatformPlugin::Extension>(param1));
}

void QWebKitPlatformPlugin_operatorAssign(QWebKitPlatformPlugin* self, QWebKitPlatformPlugin* from) {
	self->operator=(*from);
}

void QWebKitPlatformPlugin_delete(QWebKitPlatformPlugin* self) {
	delete self;
}

QWebSpellChecker__GrammarDetail* QWebSpellChecker__GrammarDetail_new(QWebSpellChecker__GrammarDetail* from) {
	return new (std::nothrow) QWebSpellChecker__GrammarDetail(*from);
}

int QWebSpellChecker__GrammarDetail_location(const QWebSpellChecker__GrammarDetail* self) {
	return self->location;
}

void QWebSpellChecker__GrammarDetail_setLocation(QWebSpellChecker__GrammarDetail* self, int location) {
	self->location = static_cast<int>(location);
}

int QWebSpellChecker__GrammarDetail_length(const QWebSpellChecker__GrammarDetail* self) {
	return self->length;
}

void QWebSpellChecker__GrammarDetail_setLength(QWebSpellChecker__GrammarDetail* self, int length) {
	self->length = static_cast<int>(length);
}

struct seaqt_array /* of struct seaqt_string */  QWebSpellChecker__GrammarDetail_guesses(const QWebSpellChecker__GrammarDetail* self) {
	QStringList guesses_ret = self->guesses;
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* guesses_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * guesses_ret.length()));
	for (size_t i = 0, e = guesses_ret.length(); i < e; ++i) {
		QString guesses_lv_ret = guesses_ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray guesses_lv_b = guesses_lv_ret.toUtf8();
		struct seaqt_string guesses_lv_ms;
		guesses_lv_ms.len = guesses_lv_b.length();
		guesses_lv_ms.data = static_cast<char*>(malloc(guesses_lv_ms.len));
		memcpy(guesses_lv_ms.data, guesses_lv_b.data(), guesses_lv_ms.len);
		guesses_arr[i] = guesses_lv_ms;
	}
	struct seaqt_array guesses_out;
	guesses_out.len = guesses_ret.length();
	guesses_out.data = static_cast<void*>(guesses_arr);
	return guesses_out;
}

void QWebSpellChecker__GrammarDetail_setGuesses(QWebSpellChecker__GrammarDetail* self, struct seaqt_array /* of struct seaqt_string */  guesses) {
	QStringList guesses_QList;
	guesses_QList.reserve(guesses.len);
	struct seaqt_string* guesses_arr = static_cast<struct seaqt_string*>(guesses.data);
	for(size_t i = 0; i < guesses.len; ++i) {
		QString guesses_arr_i_QString = QString::fromUtf8(guesses_arr[i].data, guesses_arr[i].len);
		guesses_QList.push_back(guesses_arr_i_QString);
	}
	self->guesses = guesses_QList;
}

struct seaqt_string QWebSpellChecker__GrammarDetail_userDescription(const QWebSpellChecker__GrammarDetail* self) {
	QString userDescription_ret = self->userDescription;
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray userDescription_b = userDescription_ret.toUtf8();
	struct seaqt_string userDescription_ms;
	userDescription_ms.len = userDescription_b.length();
	userDescription_ms.data = static_cast<char*>(malloc(userDescription_ms.len));
	memcpy(userDescription_ms.data, userDescription_b.data(), userDescription_ms.len);
	return userDescription_ms;
}

void QWebSpellChecker__GrammarDetail_setUserDescription(QWebSpellChecker__GrammarDetail* self, struct seaqt_string userDescription) {
	QString userDescription_QString = QString::fromUtf8(userDescription.data, userDescription.len);
	self->userDescription = userDescription_QString;
}

void QWebSpellChecker__GrammarDetail_operatorAssign(QWebSpellChecker__GrammarDetail* self, QWebSpellChecker__GrammarDetail* from) {
	self->operator=(*from);
}

void QWebSpellChecker__GrammarDetail_delete(QWebSpellChecker__GrammarDetail* self) {
	delete self;
}

