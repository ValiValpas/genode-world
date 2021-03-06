MBEDTLS_PORT_DIR := $(call select_from_ports,mbedtls)
MBEDTLS_DIR      := $(MBEDTLS_PORT_DIR)/src/lib/mbedtls/

LIBS += libc 

INC_DIR += $(MBEDTLS_PORT_DIR)/include/mbedtls

CC_OLEVEL = -O2

SRC_C = aes.c\
	aesni.c\
	arc4.c\
	asn1parse.c\
	asn1write.c\
	base64.c\
	bignum.c\
	blowfish.c\
	camellia.c\
	ccm.c\
	certs.c\
	cipher.c\
	cipher_wrap.c\
	ctr_drbg.c\
	debug.c\
	des.c\
	dhm.c\
	ecdh.c\
	ecdsa.c\
	ecjpake.c\
	ecp.c\
	ecp_curves.c\
	entropy.c\
	entropy_poll.c\
	error.c\
	gcm.c\
	havege.c\
	hmac_drbg.c\
	md2.c\
	md4.c\
	md5.c\
	md.c\
	md_wrap.c\
	memory_buffer_alloc.c\
	net.c\
	oid.c\
	padlock.c\
	pem.c\
	pk.c\
	pkcs11.c\
	pkcs12.c\
	pkcs5.c\
	pkparse.c\
	pk_wrap.c\
	pkwrite.c\
	platform.c\
	ripemd160.c\
	rsa.c\
	sha1.c\
	sha256.c\
	sha512.c\
	ssl_cache.c\
	ssl_ciphersuites.c\
	ssl_cli.c\
	ssl_cookie.c\
	ssl_srv.c\
	ssl_ticket.c\
	ssl_tls.c\
	threading.c\
	timing.c\
	version.c\
	version_features.c\
	x509.c\
	x509_create.c\
	x509_crl.c\
	x509_crt.c\
	x509_csr.c\
	x509write_crt.c\
	x509write_csr.c\
	xtea.c

vpath %.c $(MBEDTLS_DIR)/library

SHARED_LIB = yes

CC_CXX_WARN_STRICT =
