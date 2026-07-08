#include <QOcspResponse>
#include <QSslCertificate>
#include <qocspresponse.h>
#include "gen_qocspresponse.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QOcspResponse* QOcspResponse_new() {
	return new (std::nothrow) QOcspResponse();
}

QOcspResponse* QOcspResponse_new_from(QOcspResponse* from) {
	return new (std::nothrow) QOcspResponse(*from);
}

void QOcspResponse_operatorAssign(QOcspResponse* self, QOcspResponse* from) {
	self->operator=(*from);
}

int QOcspResponse_certificateStatus(const QOcspResponse* self) {
	QOcspCertificateStatus _ret = self->certificateStatus();
	return static_cast<int>(_ret);
}

int QOcspResponse_revocationReason(const QOcspResponse* self) {
	QOcspRevocationReason _ret = self->revocationReason();
	return static_cast<int>(_ret);
}

QSslCertificate* QOcspResponse_responder(const QOcspResponse* self) {
	return new QSslCertificate(self->responder());
}

QSslCertificate* QOcspResponse_subject(const QOcspResponse* self) {
	return new QSslCertificate(self->subject());
}

void QOcspResponse_swap(QOcspResponse* self, QOcspResponse* other) {
	self->swap(*other);
}

void QOcspResponse_delete(QOcspResponse* self) {
	delete self;
}

