#include <QAbstractEventDispatcher>
#define WORKAROUND_INNER_CLASS_DEFINITION_QAbstractEventDispatcher__TimerInfo
#define WORKAROUND_INNER_CLASS_DEFINITION_QAbstractEventDispatcher__TimerInfoV2
#include <QAbstractEventDispatcherV2>
#include <QAbstractNativeEventFilter>
#include <QByteArray>
#include <QDeadlineTimer>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSocketNotifier>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <qabstracteventdispatcher.h>
#include "gen_qabstracteventdispatcher.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QAbstractEventDispatcher_virtbase(QAbstractEventDispatcher* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractEventDispatcher_metaObject(const QAbstractEventDispatcher* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractEventDispatcher_metacast(QAbstractEventDispatcher* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractEventDispatcher_metacall(QAbstractEventDispatcher* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAbstractEventDispatcher_tr_s(const char* s) {
	QString _ret = QAbstractEventDispatcher::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractEventDispatcher* QAbstractEventDispatcher_instance() {
	return QAbstractEventDispatcher::instance();
}

bool QAbstractEventDispatcher_processEvents(QAbstractEventDispatcher* self, int flags) {
	return self->processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

void QAbstractEventDispatcher_registerSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier) {
	self->registerSocketNotifier(notifier);
}

void QAbstractEventDispatcher_unregisterSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier) {
	self->unregisterSocketNotifier(notifier);
}

int QAbstractEventDispatcher_registerTimer_qint64_Qt_TimerType_QObject(QAbstractEventDispatcher* self, long long interval, int timerType, QObject* object) {
	return self->registerTimer(static_cast<qint64>(interval), static_cast<Qt::TimerType>(timerType), object);
}

void QAbstractEventDispatcher_registerTimer_int_qint64_Qt_TimerType_QObject(QAbstractEventDispatcher* self, int timerId, long long interval, int timerType, QObject* object) {
	self->registerTimer(static_cast<int>(timerId), static_cast<qint64>(interval), static_cast<Qt::TimerType>(timerType), object);
}

bool QAbstractEventDispatcher_unregisterTimer_int(QAbstractEventDispatcher* self, int timerId) {
	return self->unregisterTimer(static_cast<int>(timerId));
}

bool QAbstractEventDispatcher_unregisterTimers(QAbstractEventDispatcher* self, QObject* object) {
	return self->unregisterTimers(object);
}

struct seaqt_array /* of QAbstractEventDispatcher__TimerInfo* */  QAbstractEventDispatcher_registeredTimers(const QAbstractEventDispatcher* self, QObject* object) {
	QList<QAbstractEventDispatcher::TimerInfo> _ret = self->registeredTimers(object);
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractEventDispatcher__TimerInfo** _arr = static_cast<QAbstractEventDispatcher__TimerInfo**>(malloc(sizeof(QAbstractEventDispatcher__TimerInfo*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAbstractEventDispatcher::TimerInfo(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QAbstractEventDispatcher_remainingTime_int(QAbstractEventDispatcher* self, int timerId) {
	return self->remainingTime(static_cast<int>(timerId));
}

bool QAbstractEventDispatcher_unregisterTimer_Qt_TimerId(QAbstractEventDispatcher* self, int timerId) {
	return self->unregisterTimer(static_cast<Qt::TimerId>(timerId));
}

struct seaqt_array /* of QAbstractEventDispatcher__TimerInfoV2* */  QAbstractEventDispatcher_timersForObject(const QAbstractEventDispatcher* self, QObject* object) {
	QList<QAbstractEventDispatcher::TimerInfoV2> _ret = self->timersForObject(object);
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractEventDispatcher__TimerInfoV2** _arr = static_cast<QAbstractEventDispatcher__TimerInfoV2**>(malloc(sizeof(QAbstractEventDispatcher__TimerInfoV2*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAbstractEventDispatcher::TimerInfoV2(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QAbstractEventDispatcher_wakeUp(QAbstractEventDispatcher* self) {
	self->wakeUp();
}

void QAbstractEventDispatcher_interrupt(QAbstractEventDispatcher* self) {
	self->interrupt();
}

void QAbstractEventDispatcher_startingUp(QAbstractEventDispatcher* self) {
	self->startingUp();
}

void QAbstractEventDispatcher_closingDown(QAbstractEventDispatcher* self) {
	self->closingDown();
}

void QAbstractEventDispatcher_installNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj) {
	self->installNativeEventFilter(filterObj);
}

void QAbstractEventDispatcher_removeNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj) {
	self->removeNativeEventFilter(filterObj);
}

bool QAbstractEventDispatcher_filterNativeEvent(QAbstractEventDispatcher* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);
	return self->filterNativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QAbstractEventDispatcher_aboutToBlock(QAbstractEventDispatcher* self) {
	self->aboutToBlock();
}

void QAbstractEventDispatcher_connect_aboutToBlock(QAbstractEventDispatcher* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractEventDispatcher::connect(self, static_cast<void (QAbstractEventDispatcher::*)()>(&QAbstractEventDispatcher::aboutToBlock), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAbstractEventDispatcher_awake(QAbstractEventDispatcher* self) {
	self->awake();
}

void QAbstractEventDispatcher_connect_awake(QAbstractEventDispatcher* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractEventDispatcher::connect(self, static_cast<void (QAbstractEventDispatcher::*)()>(&QAbstractEventDispatcher::awake), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QAbstractEventDispatcher_tr_s_c(const char* s, const char* c) {
	QString _ret = QAbstractEventDispatcher::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractEventDispatcher_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractEventDispatcher::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractEventDispatcher* QAbstractEventDispatcher_instance_thread(QThread* thread) {
	return QAbstractEventDispatcher::instance(thread);
}

const QMetaObject* QAbstractEventDispatcher_staticMetaObject() { return &QAbstractEventDispatcher::staticMetaObject; }
void QAbstractEventDispatcher_delete(QAbstractEventDispatcher* self) {
	delete self;
}

void QAbstractEventDispatcherV2_virtbase(QAbstractEventDispatcherV2* src, QAbstractEventDispatcher** outptr_QAbstractEventDispatcher) {
	*outptr_QAbstractEventDispatcher = static_cast<QAbstractEventDispatcher*>(src);
}

QMetaObject* QAbstractEventDispatcherV2_metaObject(const QAbstractEventDispatcherV2* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractEventDispatcherV2_metacast(QAbstractEventDispatcherV2* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractEventDispatcherV2_metacall(QAbstractEventDispatcherV2* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAbstractEventDispatcherV2_tr_s(const char* s) {
	QString _ret = QAbstractEventDispatcherV2::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractEventDispatcherV2_unregisterTimer(QAbstractEventDispatcherV2* self, int timerId) {
	return self->unregisterTimer(static_cast<Qt::TimerId>(timerId));
}

struct seaqt_array /* of QAbstractEventDispatcher__TimerInfoV2* */  QAbstractEventDispatcherV2_timersForObject(const QAbstractEventDispatcherV2* self, QObject* object) {
	QList<QAbstractEventDispatcher::TimerInfoV2> _ret = self->timersForObject(object);
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractEventDispatcher__TimerInfoV2** _arr = static_cast<QAbstractEventDispatcher__TimerInfoV2**>(malloc(sizeof(QAbstractEventDispatcher__TimerInfoV2*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAbstractEventDispatcher::TimerInfoV2(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QAbstractEventDispatcherV2_processEventsWithDeadline(QAbstractEventDispatcherV2* self, int flags, QDeadlineTimer* deadline) {
	return self->processEventsWithDeadline(static_cast<QEventLoop::ProcessEventsFlags>(flags), *deadline);
}

struct seaqt_string QAbstractEventDispatcherV2_tr_s_c(const char* s, const char* c) {
	QString _ret = QAbstractEventDispatcherV2::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractEventDispatcherV2_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractEventDispatcherV2::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAbstractEventDispatcherV2_staticMetaObject() { return &QAbstractEventDispatcherV2::staticMetaObject; }
void QAbstractEventDispatcherV2_delete(QAbstractEventDispatcherV2* self) {
	delete self;
}

QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new_id_i_t(int id, int i, int t) {
	return new (std::nothrow) QAbstractEventDispatcher__TimerInfo(static_cast<int>(id), static_cast<int>(i), static_cast<Qt::TimerType>(t));
}

QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new_from(QAbstractEventDispatcher__TimerInfo* from) {
	return new (std::nothrow) QAbstractEventDispatcher__TimerInfo(*from);
}

int QAbstractEventDispatcher__TimerInfo_timerId(const QAbstractEventDispatcher__TimerInfo* self) {
	return self->timerId;
}

void QAbstractEventDispatcher__TimerInfo_setTimerId(QAbstractEventDispatcher__TimerInfo* self, int timerId) {
	self->timerId = static_cast<int>(timerId);
}

int QAbstractEventDispatcher__TimerInfo_interval(const QAbstractEventDispatcher__TimerInfo* self) {
	return self->interval;
}

void QAbstractEventDispatcher__TimerInfo_setInterval(QAbstractEventDispatcher__TimerInfo* self, int interval) {
	self->interval = static_cast<int>(interval);
}

int QAbstractEventDispatcher__TimerInfo_timerType(const QAbstractEventDispatcher__TimerInfo* self) {
	Qt::TimerType timerType_ret = self->timerType;
	return static_cast<int>(timerType_ret);
}

void QAbstractEventDispatcher__TimerInfo_setTimerType(QAbstractEventDispatcher__TimerInfo* self, int timerType) {
	self->timerType = static_cast<Qt::TimerType>(timerType);
}

void QAbstractEventDispatcher__TimerInfo_delete(QAbstractEventDispatcher__TimerInfo* self) {
	delete self;
}

QAbstractEventDispatcher__TimerInfoV2* QAbstractEventDispatcher__TimerInfoV2_new_from(QAbstractEventDispatcher__TimerInfoV2* from) {
	return new (std::nothrow) QAbstractEventDispatcher__TimerInfoV2(*from);
}

QAbstractEventDispatcher__TimerInfoV2* QAbstractEventDispatcher__TimerInfoV2_new() {
	return new (std::nothrow) QAbstractEventDispatcher__TimerInfoV2();
}

int QAbstractEventDispatcher__TimerInfoV2_timerId(const QAbstractEventDispatcher__TimerInfoV2* self) {
	Qt::TimerId timerId_ret = self->timerId;
	return static_cast<int>(timerId_ret);
}

void QAbstractEventDispatcher__TimerInfoV2_setTimerId(QAbstractEventDispatcher__TimerInfoV2* self, int timerId) {
	self->timerId = static_cast<Qt::TimerId>(timerId);
}

int QAbstractEventDispatcher__TimerInfoV2_timerType(const QAbstractEventDispatcher__TimerInfoV2* self) {
	Qt::TimerType timerType_ret = self->timerType;
	return static_cast<int>(timerType_ret);
}

void QAbstractEventDispatcher__TimerInfoV2_setTimerType(QAbstractEventDispatcher__TimerInfoV2* self, int timerType) {
	self->timerType = static_cast<Qt::TimerType>(timerType);
}

void QAbstractEventDispatcher__TimerInfoV2_operatorAssign(QAbstractEventDispatcher__TimerInfoV2* self, QAbstractEventDispatcher__TimerInfoV2* from) {
	self->operator=(*from);
}

void QAbstractEventDispatcher__TimerInfoV2_delete(QAbstractEventDispatcher__TimerInfoV2* self) {
	delete self;
}

