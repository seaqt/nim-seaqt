#include <QEvent>
#include <QFutureWatcherBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfuturewatcher.h>
#include "gen_qfuturewatcher.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QFutureWatcherBase_virtbase(QFutureWatcherBase* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QFutureWatcherBase_metaObject(const QFutureWatcherBase* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFutureWatcherBase_metacast(QFutureWatcherBase* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFutureWatcherBase_metacall(QFutureWatcherBase* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFutureWatcherBase_tr(const char* s) {
	QString _ret = QFutureWatcherBase::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFutureWatcherBase_trUtf8(const char* s) {
	QString _ret = QFutureWatcherBase::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QFutureWatcherBase_progressValue(const QFutureWatcherBase* self) {
	return self->progressValue();
}

int QFutureWatcherBase_progressMinimum(const QFutureWatcherBase* self) {
	return self->progressMinimum();
}

int QFutureWatcherBase_progressMaximum(const QFutureWatcherBase* self) {
	return self->progressMaximum();
}

struct miqt_string QFutureWatcherBase_progressText(const QFutureWatcherBase* self) {
	QString _ret = self->progressText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFutureWatcherBase_isStarted(const QFutureWatcherBase* self) {
	return self->isStarted();
}

bool QFutureWatcherBase_isFinished(const QFutureWatcherBase* self) {
	return self->isFinished();
}

bool QFutureWatcherBase_isRunning(const QFutureWatcherBase* self) {
	return self->isRunning();
}

bool QFutureWatcherBase_isCanceled(const QFutureWatcherBase* self) {
	return self->isCanceled();
}

bool QFutureWatcherBase_isPaused(const QFutureWatcherBase* self) {
	return self->isPaused();
}

void QFutureWatcherBase_waitForFinished(QFutureWatcherBase* self) {
	self->waitForFinished();
}

void QFutureWatcherBase_setPendingResultsLimit(QFutureWatcherBase* self, int limit) {
	self->setPendingResultsLimit(static_cast<int>(limit));
}

bool QFutureWatcherBase_event(QFutureWatcherBase* self, QEvent* event) {
	return self->event(event);
}

void QFutureWatcherBase_started(QFutureWatcherBase* self) {
	self->started();
}

void QFutureWatcherBase_connect_started(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)()>(&QFutureWatcherBase::started), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_finished(QFutureWatcherBase* self) {
	self->finished();
}

void QFutureWatcherBase_connect_finished(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)()>(&QFutureWatcherBase::finished), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_canceled(QFutureWatcherBase* self) {
	self->canceled();
}

void QFutureWatcherBase_connect_canceled(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)()>(&QFutureWatcherBase::canceled), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_paused(QFutureWatcherBase* self) {
	self->paused();
}

void QFutureWatcherBase_connect_paused(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)()>(&QFutureWatcherBase::paused), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_resumed(QFutureWatcherBase* self) {
	self->resumed();
}

void QFutureWatcherBase_connect_resumed(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)()>(&QFutureWatcherBase::resumed), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_resultReadyAt(QFutureWatcherBase* self, int resultIndex) {
	self->resultReadyAt(static_cast<int>(resultIndex));
}

void QFutureWatcherBase_connect_resultReadyAt(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int resultIndex) {
			int sigval1 = resultIndex;
			callback(slot, sigval1);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)(int)>(&QFutureWatcherBase::resultReadyAt), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_resultsReadyAt(QFutureWatcherBase* self, int beginIndex, int endIndex) {
	self->resultsReadyAt(static_cast<int>(beginIndex), static_cast<int>(endIndex));
}

void QFutureWatcherBase_connect_resultsReadyAt(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int beginIndex, int endIndex) {
			int sigval1 = beginIndex;
			int sigval2 = endIndex;
			callback(slot, sigval1, sigval2);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)(int, int)>(&QFutureWatcherBase::resultsReadyAt), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_progressRangeChanged(QFutureWatcherBase* self, int minimum, int maximum) {
	self->progressRangeChanged(static_cast<int>(minimum), static_cast<int>(maximum));
}

void QFutureWatcherBase_connect_progressRangeChanged(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int minimum, int maximum) {
			int sigval1 = minimum;
			int sigval2 = maximum;
			callback(slot, sigval1, sigval2);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)(int, int)>(&QFutureWatcherBase::progressRangeChanged), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_progressValueChanged(QFutureWatcherBase* self, int progressValue) {
	self->progressValueChanged(static_cast<int>(progressValue));
}

void QFutureWatcherBase_connect_progressValueChanged(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int progressValue) {
			int sigval1 = progressValue;
			callback(slot, sigval1);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)(int)>(&QFutureWatcherBase::progressValueChanged), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_progressTextChanged(QFutureWatcherBase* self, struct miqt_string progressText) {
	QString progressText_QString = QString::fromUtf8(progressText.data, progressText.len);
	self->progressTextChanged(progressText_QString);
}

void QFutureWatcherBase_connect_progressTextChanged(QFutureWatcherBase* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& progressText) {
			const QString progressText_ret = progressText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray progressText_b = progressText_ret.toUtf8();
			struct miqt_string progressText_ms;
			progressText_ms.len = progressText_b.length();
			progressText_ms.data = static_cast<char*>(malloc(progressText_ms.len));
			memcpy(progressText_ms.data, progressText_b.data(), progressText_ms.len);
			struct miqt_string sigval1 = progressText_ms;
			callback(slot, sigval1);
		}
	};
	QFutureWatcherBase::connect(self, static_cast<void (QFutureWatcherBase::*)(const QString&)>(&QFutureWatcherBase::progressTextChanged), self, local_caller{slot, callback, release});
}

void QFutureWatcherBase_cancel(QFutureWatcherBase* self) {
	self->cancel();
}

void QFutureWatcherBase_setPaused(QFutureWatcherBase* self, bool paused) {
	self->setPaused(paused);
}

void QFutureWatcherBase_pause(QFutureWatcherBase* self) {
	self->pause();
}

void QFutureWatcherBase_resume(QFutureWatcherBase* self) {
	self->resume();
}

void QFutureWatcherBase_togglePaused(QFutureWatcherBase* self) {
	self->togglePaused();
}

struct miqt_string QFutureWatcherBase_tr2(const char* s, const char* c) {
	QString _ret = QFutureWatcherBase::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFutureWatcherBase_tr3(const char* s, const char* c, int n) {
	QString _ret = QFutureWatcherBase::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFutureWatcherBase_trUtf82(const char* s, const char* c) {
	QString _ret = QFutureWatcherBase::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFutureWatcherBase_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFutureWatcherBase::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QFutureWatcherBase_staticMetaObject() { return &QFutureWatcherBase::staticMetaObject; }
void QFutureWatcherBase_delete(QFutureWatcherBase* self) {
	delete self;
}

