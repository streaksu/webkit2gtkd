module soup.c.functions;

import std.stdio;
import soup.c.types;
version (Windows)
	static immutable LIBRARY_SOUP = ["libsoup-2.4-1.dll;soup-2.4-1.dll;soup-2.dll"];
else version (OSX)
	static immutable LIBRARY_SOUP = ["libsoup-2.4.1.dylib"];
else
	static immutable LIBRARY_SOUP = ["libsoup-2.4.so.1"];

__gshared extern(C)
{

	// soup.Address

	GType soup_address_get_type();
	SoupAddress* soup_address_new(const(char)* name, uint port);
	SoupAddress* soup_address_new_any(SoupAddressFamily family, uint port);
	SoupAddress* soup_address_new_from_sockaddr(sockaddr* sa, int len);
	int soup_address_equal_by_ip(void* addr1, void* addr2);
	int soup_address_equal_by_name(void* addr1, void* addr2);
	GSocketAddress* soup_address_get_gsockaddr(SoupAddress* addr);
	const(char)* soup_address_get_name(SoupAddress* addr);
	const(char)* soup_address_get_physical(SoupAddress* addr);
	uint soup_address_get_port(SoupAddress* addr);
	sockaddr* soup_address_get_sockaddr(SoupAddress* addr, int* len);
	uint soup_address_hash_by_ip(void* addr);
	uint soup_address_hash_by_name(void* addr);
	int soup_address_is_resolved(SoupAddress* addr);
	void soup_address_resolve_async(SoupAddress* addr, GMainContext* asyncContext, GCancellable* cancellable, SoupAddressCallback callback, void* userData);
	uint soup_address_resolve_sync(SoupAddress* addr, GCancellable* cancellable);

	// soup.Auth

	GType soup_auth_get_type();
	SoupAuth* soup_auth_new(GType type, SoupMessage* msg, const(char)* authHeader);
	void soup_auth_authenticate(SoupAuth* auth, const(char)* username, const(char)* password);
	int soup_auth_can_authenticate(SoupAuth* auth);
	void soup_auth_free_protection_space(SoupAuth* auth, GSList* space);
	char* soup_auth_get_authorization(SoupAuth* auth, SoupMessage* msg);
	const(char)* soup_auth_get_host(SoupAuth* auth);
	char* soup_auth_get_info(SoupAuth* auth);
	GSList* soup_auth_get_protection_space(SoupAuth* auth, SoupURI* sourceUri);
	const(char)* soup_auth_get_realm(SoupAuth* auth);
	const(char)* soup_auth_get_saved_password(SoupAuth* auth, const(char)* user);
	GSList* soup_auth_get_saved_users(SoupAuth* auth);
	const(char)* soup_auth_get_scheme_name(SoupAuth* auth);
	void soup_auth_has_saved_password(SoupAuth* auth, const(char)* username, const(char)* password);
	int soup_auth_is_authenticated(SoupAuth* auth);
	int soup_auth_is_for_proxy(SoupAuth* auth);
	int soup_auth_is_ready(SoupAuth* auth, SoupMessage* msg);
	void soup_auth_save_password(SoupAuth* auth, const(char)* username, const(char)* password);
	int soup_auth_update(SoupAuth* auth, SoupMessage* msg, const(char)* authHeader);

	// soup.AuthBasic

	GType soup_auth_basic_get_type();

	// soup.AuthDigest

	GType soup_auth_digest_get_type();

	// soup.AuthDomain

	GType soup_auth_domain_get_type();
	char* soup_auth_domain_accepts(SoupAuthDomain* domain, SoupMessage* msg);
	void soup_auth_domain_add_path(SoupAuthDomain* domain, const(char)* path);
	void soup_auth_domain_challenge(SoupAuthDomain* domain, SoupMessage* msg);
	int soup_auth_domain_check_password(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username, const(char)* password);
	int soup_auth_domain_covers(SoupAuthDomain* domain, SoupMessage* msg);
	const(char)* soup_auth_domain_get_realm(SoupAuthDomain* domain);
	void soup_auth_domain_remove_path(SoupAuthDomain* domain, const(char)* path);
	void soup_auth_domain_set_filter(SoupAuthDomain* domain, SoupAuthDomainFilter filter, void* filterData, GDestroyNotify dnotify);
	void soup_auth_domain_set_generic_auth_callback(SoupAuthDomain* domain, SoupAuthDomainGenericAuthCallback authCallback, void* authData, GDestroyNotify dnotify);
	int soup_auth_domain_try_generic_auth_callback(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username);

	// soup.AuthDomainBasic

	GType soup_auth_domain_basic_get_type();
	SoupAuthDomain* soup_auth_domain_basic_new(const(char)* optname1, ... );
	void soup_auth_domain_basic_set_auth_callback(SoupAuthDomain* domain, SoupAuthDomainBasicAuthCallback callback, void* userData, GDestroyNotify dnotify);

	// soup.AuthDomainDigest

	GType soup_auth_domain_digest_get_type();
	SoupAuthDomain* soup_auth_domain_digest_new(const(char)* optname1, ... );
	char* soup_auth_domain_digest_encode_password(const(char)* username, const(char)* realm, const(char)* password);
	void soup_auth_domain_digest_set_auth_callback(SoupAuthDomain* domain, SoupAuthDomainDigestAuthCallback callback, void* userData, GDestroyNotify dnotify);

	// soup.AuthManager

	GType soup_auth_manager_get_type();
	void soup_auth_manager_clear_cached_credentials(SoupAuthManager* manager);
	void soup_auth_manager_use_auth(SoupAuthManager* manager, SoupURI* uri, SoupAuth* auth);

	// soup.AuthNTLM

	GType soup_auth_ntlm_get_type();

	// soup.AuthNegotiate

	GType soup_auth_negotiate_get_type();
	int soup_auth_negotiate_supported();

	// soup.Buffer

	GType soup_buffer_get_type();
	SoupBuffer* soup_buffer_new(SoupMemoryUse use, void* data, size_t length);
	SoupBuffer* soup_buffer_new_take(char* data, size_t length);
	SoupBuffer* soup_buffer_new_with_owner(void* data, size_t length, void* owner, GDestroyNotify ownerDnotify);
	SoupBuffer* soup_buffer_copy(SoupBuffer* buffer);
	void soup_buffer_free(SoupBuffer* buffer);
	GBytes* soup_buffer_get_as_bytes(SoupBuffer* buffer);
	void soup_buffer_get_data(SoupBuffer* buffer, ubyte** data, size_t* length);
	void* soup_buffer_get_owner(SoupBuffer* buffer);
	SoupBuffer* soup_buffer_new_subbuffer(SoupBuffer* parent, size_t offset, size_t length);

	// soup.Cache

	GType soup_cache_get_type();
	SoupCache* soup_cache_new(const(char)* cacheDir, SoupCacheType cacheType);
	void soup_cache_clear(SoupCache* cache);
	void soup_cache_dump(SoupCache* cache);
	void soup_cache_flush(SoupCache* cache);
	uint soup_cache_get_max_size(SoupCache* cache);
	void soup_cache_load(SoupCache* cache);
	void soup_cache_set_max_size(SoupCache* cache, uint maxSize);

	// soup.ClientContext

	GType soup_client_context_get_type();
	SoupAddress* soup_client_context_get_address(SoupClientContext* client);
	SoupAuthDomain* soup_client_context_get_auth_domain(SoupClientContext* client);
	const(char)* soup_client_context_get_auth_user(SoupClientContext* client);
	GSocket* soup_client_context_get_gsocket(SoupClientContext* client);
	const(char)* soup_client_context_get_host(SoupClientContext* client);
	GSocketAddress* soup_client_context_get_local_address(SoupClientContext* client);
	GSocketAddress* soup_client_context_get_remote_address(SoupClientContext* client);
	SoupSocket* soup_client_context_get_socket(SoupClientContext* client);
	GIOStream* soup_client_context_steal_connection(SoupClientContext* client);

	// soup.ContentDecoder

	GType soup_content_decoder_get_type();

	// soup.ContentSniffer

	GType soup_content_sniffer_get_type();
	SoupContentSniffer* soup_content_sniffer_new();
	size_t soup_content_sniffer_get_buffer_size(SoupContentSniffer* sniffer);
	char* soup_content_sniffer_sniff(SoupContentSniffer* sniffer, SoupMessage* msg, SoupBuffer* buffer, GHashTable** params);

	// soup.Cookie

	GType soup_cookie_get_type();
	SoupCookie* soup_cookie_new(const(char)* name, const(char)* value, const(char)* domain, const(char)* path, int maxAge);
	int soup_cookie_applies_to_uri(SoupCookie* cookie, SoupURI* uri);
	SoupCookie* soup_cookie_copy(SoupCookie* cookie);
	int soup_cookie_domain_matches(SoupCookie* cookie, const(char)* host);
	int soup_cookie_equal(SoupCookie* cookie1, SoupCookie* cookie2);
	void soup_cookie_free(SoupCookie* cookie);
	const(char)* soup_cookie_get_domain(SoupCookie* cookie);
	SoupDate* soup_cookie_get_expires(SoupCookie* cookie);
	int soup_cookie_get_http_only(SoupCookie* cookie);
	const(char)* soup_cookie_get_name(SoupCookie* cookie);
	const(char)* soup_cookie_get_path(SoupCookie* cookie);
	SoupSameSitePolicy soup_cookie_get_same_site_policy(SoupCookie* cookie);
	int soup_cookie_get_secure(SoupCookie* cookie);
	const(char)* soup_cookie_get_value(SoupCookie* cookie);
	void soup_cookie_set_domain(SoupCookie* cookie, const(char)* domain);
	void soup_cookie_set_expires(SoupCookie* cookie, SoupDate* expires);
	void soup_cookie_set_http_only(SoupCookie* cookie, int httpOnly);
	void soup_cookie_set_max_age(SoupCookie* cookie, int maxAge);
	void soup_cookie_set_name(SoupCookie* cookie, const(char)* name);
	void soup_cookie_set_path(SoupCookie* cookie, const(char)* path);
	void soup_cookie_set_same_site_policy(SoupCookie* cookie, SoupSameSitePolicy policy);
	void soup_cookie_set_secure(SoupCookie* cookie, int secure);
	void soup_cookie_set_value(SoupCookie* cookie, const(char)* value);
	char* soup_cookie_to_cookie_header(SoupCookie* cookie);
	char* soup_cookie_to_set_cookie_header(SoupCookie* cookie);
	SoupCookie* soup_cookie_parse(const(char)* header, SoupURI* origin);

	// soup.CookieJar

	GType soup_cookie_jar_get_type();
	SoupCookieJar* soup_cookie_jar_new();
	void soup_cookie_jar_add_cookie(SoupCookieJar* jar, SoupCookie* cookie);
	void soup_cookie_jar_add_cookie_full(SoupCookieJar* jar, SoupCookie* cookie, SoupURI* uri, SoupURI* firstParty);
	void soup_cookie_jar_add_cookie_with_first_party(SoupCookieJar* jar, SoupURI* firstParty, SoupCookie* cookie);
	GSList* soup_cookie_jar_all_cookies(SoupCookieJar* jar);
	void soup_cookie_jar_delete_cookie(SoupCookieJar* jar, SoupCookie* cookie);
	SoupCookieJarAcceptPolicy soup_cookie_jar_get_accept_policy(SoupCookieJar* jar);
	GSList* soup_cookie_jar_get_cookie_list(SoupCookieJar* jar, SoupURI* uri, int forHttp);
	GSList* soup_cookie_jar_get_cookie_list_with_same_site_info(SoupCookieJar* jar, SoupURI* uri, SoupURI* topLevel, SoupURI* siteForCookies, int forHttp, int isSafeMethod, int isTopLevelNavigation);
	char* soup_cookie_jar_get_cookies(SoupCookieJar* jar, SoupURI* uri, int forHttp);
	int soup_cookie_jar_is_persistent(SoupCookieJar* jar);
	void soup_cookie_jar_save(SoupCookieJar* jar);
	void soup_cookie_jar_set_accept_policy(SoupCookieJar* jar, SoupCookieJarAcceptPolicy policy);
	void soup_cookie_jar_set_cookie(SoupCookieJar* jar, SoupURI* uri, const(char)* cookie);
	void soup_cookie_jar_set_cookie_with_first_party(SoupCookieJar* jar, SoupURI* uri, SoupURI* firstParty, const(char)* cookie);

	// soup.CookieJarDB

	GType soup_cookie_jar_db_get_type();
	SoupCookieJar* soup_cookie_jar_db_new(const(char)* filename, int readOnly);

	// soup.CookieJarText

	GType soup_cookie_jar_text_get_type();
	SoupCookieJar* soup_cookie_jar_text_new(const(char)* filename, int readOnly);

	// soup.Date

	GType soup_date_get_type();
	SoupDate* soup_date_new(int year, int month, int day, int hour, int minute, int second);
	SoupDate* soup_date_new_from_now(int offsetSeconds);
	SoupDate* soup_date_new_from_string(const(char)* dateString);
	SoupDate* soup_date_new_from_time_t(uint when);
	SoupDate* soup_date_copy(SoupDate* date);
	void soup_date_free(SoupDate* date);
	int soup_date_get_day(SoupDate* date);
	int soup_date_get_hour(SoupDate* date);
	int soup_date_get_minute(SoupDate* date);
	int soup_date_get_month(SoupDate* date);
	int soup_date_get_offset(SoupDate* date);
	int soup_date_get_second(SoupDate* date);
	int soup_date_get_utc(SoupDate* date);
	int soup_date_get_year(SoupDate* date);
	int soup_date_is_past(SoupDate* date);
	char* soup_date_to_string(SoupDate* date, SoupDateFormat format);
	uint soup_date_to_time_t(SoupDate* date);
	void soup_date_to_timeval(SoupDate* date, GTimeVal* time);

	// soup.HSTSEnforcer

	GType soup_hsts_enforcer_get_type();
	SoupHSTSEnforcer* soup_hsts_enforcer_new();
	GList* soup_hsts_enforcer_get_domains(SoupHSTSEnforcer* hstsEnforcer, int sessionPolicies);
	GList* soup_hsts_enforcer_get_policies(SoupHSTSEnforcer* hstsEnforcer, int sessionPolicies);
	int soup_hsts_enforcer_has_valid_policy(SoupHSTSEnforcer* hstsEnforcer, const(char)* domain);
	int soup_hsts_enforcer_is_persistent(SoupHSTSEnforcer* hstsEnforcer);
	void soup_hsts_enforcer_set_policy(SoupHSTSEnforcer* hstsEnforcer, SoupHSTSPolicy* policy);
	void soup_hsts_enforcer_set_session_policy(SoupHSTSEnforcer* hstsEnforcer, const(char)* domain, int includeSubdomains);

	// soup.HSTSEnforcerDB

	GType soup_hsts_enforcer_db_get_type();
	SoupHSTSEnforcer* soup_hsts_enforcer_db_new(const(char)* filename);

	// soup.HSTSPolicy

	GType soup_hsts_policy_get_type();
	SoupHSTSPolicy* soup_hsts_policy_new(const(char)* domain, ulong maxAge, int includeSubdomains);
	SoupHSTSPolicy* soup_hsts_policy_new_from_response(SoupMessage* msg);
	SoupHSTSPolicy* soup_hsts_policy_new_full(const(char)* domain, ulong maxAge, SoupDate* expires, int includeSubdomains);
	SoupHSTSPolicy* soup_hsts_policy_new_session_policy(const(char)* domain, int includeSubdomains);
	SoupHSTSPolicy* soup_hsts_policy_copy(SoupHSTSPolicy* policy);
	int soup_hsts_policy_equal(SoupHSTSPolicy* policy1, SoupHSTSPolicy* policy2);
	void soup_hsts_policy_free(SoupHSTSPolicy* policy);
	const(char)* soup_hsts_policy_get_domain(SoupHSTSPolicy* policy);
	int soup_hsts_policy_includes_subdomains(SoupHSTSPolicy* policy);
	int soup_hsts_policy_is_expired(SoupHSTSPolicy* policy);
	int soup_hsts_policy_is_session_policy(SoupHSTSPolicy* policy);

	// soup.Logger

	GType soup_logger_get_type();
	SoupLogger* soup_logger_new(SoupLoggerLogLevel level, int maxBodySize);
	void soup_logger_attach(SoupLogger* logger, SoupSession* session);
	void soup_logger_detach(SoupLogger* logger, SoupSession* session);
	void soup_logger_set_printer(SoupLogger* logger, SoupLoggerPrinter printer, void* printerData, GDestroyNotify destroy);
	void soup_logger_set_request_filter(SoupLogger* logger, SoupLoggerFilter requestFilter, void* filterData, GDestroyNotify destroy);
	void soup_logger_set_response_filter(SoupLogger* logger, SoupLoggerFilter responseFilter, void* filterData, GDestroyNotify destroy);

	// soup.Message

	GType soup_message_get_type();
	SoupMessage* soup_message_new(const(char)* method, const(char)* uriString);
	SoupMessage* soup_message_new_from_uri(const(char)* method, SoupURI* uri);
	uint soup_message_add_header_handler(SoupMessage* msg, const(char)* signal, const(char)* header, GCallback callback, void* userData);
	uint soup_message_add_status_code_handler(SoupMessage* msg, const(char)* signal, uint statusCode, GCallback callback, void* userData);
	void soup_message_content_sniffed(SoupMessage* msg, const(char)* contentType, GHashTable* params);
	void soup_message_disable_feature(SoupMessage* msg, GType featureType);
	void soup_message_finished(SoupMessage* msg);
	SoupAddress* soup_message_get_address(SoupMessage* msg);
	SoupURI* soup_message_get_first_party(SoupMessage* msg);
	SoupMessageFlags soup_message_get_flags(SoupMessage* msg);
	SoupHTTPVersion soup_message_get_http_version(SoupMessage* msg);
	int soup_message_get_https_status(SoupMessage* msg, GTlsCertificate** certificate, GTlsCertificateFlags* errors);
	int soup_message_get_is_top_level_navigation(SoupMessage* msg);
	SoupMessagePriority soup_message_get_priority(SoupMessage* msg);
	SoupURI* soup_message_get_site_for_cookies(SoupMessage* msg);
	SoupRequest* soup_message_get_soup_request(SoupMessage* msg);
	SoupURI* soup_message_get_uri(SoupMessage* msg);
	void soup_message_got_body(SoupMessage* msg);
	void soup_message_got_chunk(SoupMessage* msg, SoupBuffer* chunk);
	void soup_message_got_headers(SoupMessage* msg);
	void soup_message_got_informational(SoupMessage* msg);
	int soup_message_is_feature_disabled(SoupMessage* msg, GType featureType);
	int soup_message_is_keepalive(SoupMessage* msg);
	void soup_message_restarted(SoupMessage* msg);
	void soup_message_set_chunk_allocator(SoupMessage* msg, SoupChunkAllocator allocator, void* userData, GDestroyNotify destroyNotify);
	void soup_message_set_first_party(SoupMessage* msg, SoupURI* firstParty);
	void soup_message_set_flags(SoupMessage* msg, SoupMessageFlags flags);
	void soup_message_set_http_version(SoupMessage* msg, SoupHTTPVersion version_);
	void soup_message_set_is_top_level_navigation(SoupMessage* msg, int isTopLevelNavigation);
	void soup_message_set_priority(SoupMessage* msg, SoupMessagePriority priority);
	void soup_message_set_redirect(SoupMessage* msg, uint statusCode, const(char)* redirectUri);
	void soup_message_set_request(SoupMessage* msg, const(char)* contentType, SoupMemoryUse reqUse, char* reqBody, size_t reqLength);
	void soup_message_set_response(SoupMessage* msg, const(char)* contentType, SoupMemoryUse respUse, char* respBody, size_t respLength);
	void soup_message_set_site_for_cookies(SoupMessage* msg, SoupURI* siteForCookies);
	void soup_message_set_status(SoupMessage* msg, uint statusCode);
	void soup_message_set_status_full(SoupMessage* msg, uint statusCode, const(char)* reasonPhrase);
	void soup_message_set_uri(SoupMessage* msg, SoupURI* uri);
	void soup_message_starting(SoupMessage* msg);
	void soup_message_wrote_body(SoupMessage* msg);
	void soup_message_wrote_body_data(SoupMessage* msg, SoupBuffer* chunk);
	void soup_message_wrote_chunk(SoupMessage* msg);
	void soup_message_wrote_headers(SoupMessage* msg);
	void soup_message_wrote_informational(SoupMessage* msg);

	// soup.MessageBody

	GType soup_message_body_get_type();
	SoupMessageBody* soup_message_body_new();
	void soup_message_body_append(SoupMessageBody* body_, SoupMemoryUse use, void* data, size_t length);
	void soup_message_body_append_buffer(SoupMessageBody* body_, SoupBuffer* buffer);
	void soup_message_body_append_take(SoupMessageBody* body_, char* data, size_t length);
	void soup_message_body_complete(SoupMessageBody* body_);
	SoupBuffer* soup_message_body_flatten(SoupMessageBody* body_);
	void soup_message_body_free(SoupMessageBody* body_);
	int soup_message_body_get_accumulate(SoupMessageBody* body_);
	SoupBuffer* soup_message_body_get_chunk(SoupMessageBody* body_, long offset);
	void soup_message_body_got_chunk(SoupMessageBody* body_, SoupBuffer* chunk);
	void soup_message_body_set_accumulate(SoupMessageBody* body_, int accumulate);
	void soup_message_body_truncate(SoupMessageBody* body_);
	void soup_message_body_wrote_chunk(SoupMessageBody* body_, SoupBuffer* chunk);

	// soup.MessageHeaders

	GType soup_message_headers_get_type();
	SoupMessageHeaders* soup_message_headers_new(SoupMessageHeadersType type);
	void soup_message_headers_append(SoupMessageHeaders* hdrs, const(char)* name, const(char)* value);
	void soup_message_headers_clean_connection_headers(SoupMessageHeaders* hdrs);
	void soup_message_headers_clear(SoupMessageHeaders* hdrs);
	void soup_message_headers_foreach(SoupMessageHeaders* hdrs, SoupMessageHeadersForeachFunc func, void* userData);
	void soup_message_headers_free(SoupMessageHeaders* hdrs);
	void soup_message_headers_free_ranges(SoupMessageHeaders* hdrs, SoupRange* ranges);
	const(char)* soup_message_headers_get(SoupMessageHeaders* hdrs, const(char)* name);
	int soup_message_headers_get_content_disposition(SoupMessageHeaders* hdrs, char** disposition, GHashTable** params);
	long soup_message_headers_get_content_length(SoupMessageHeaders* hdrs);
	int soup_message_headers_get_content_range(SoupMessageHeaders* hdrs, long* start, long* end, long* totalLength);
	const(char)* soup_message_headers_get_content_type(SoupMessageHeaders* hdrs, GHashTable** params);
	SoupEncoding soup_message_headers_get_encoding(SoupMessageHeaders* hdrs);
	SoupExpectation soup_message_headers_get_expectations(SoupMessageHeaders* hdrs);
	SoupMessageHeadersType soup_message_headers_get_headers_type(SoupMessageHeaders* hdrs);
	const(char)* soup_message_headers_get_list(SoupMessageHeaders* hdrs, const(char)* name);
	const(char)* soup_message_headers_get_one(SoupMessageHeaders* hdrs, const(char)* name);
	int soup_message_headers_get_ranges(SoupMessageHeaders* hdrs, long totalLength, SoupRange** ranges, int* length);
	int soup_message_headers_header_contains(SoupMessageHeaders* hdrs, const(char)* name, const(char)* token);
	int soup_message_headers_header_equals(SoupMessageHeaders* hdrs, const(char)* name, const(char)* value);
	void soup_message_headers_remove(SoupMessageHeaders* hdrs, const(char)* name);
	void soup_message_headers_replace(SoupMessageHeaders* hdrs, const(char)* name, const(char)* value);
	void soup_message_headers_set_content_disposition(SoupMessageHeaders* hdrs, const(char)* disposition, GHashTable* params);
	void soup_message_headers_set_content_length(SoupMessageHeaders* hdrs, long contentLength);
	void soup_message_headers_set_content_range(SoupMessageHeaders* hdrs, long start, long end, long totalLength);
	void soup_message_headers_set_content_type(SoupMessageHeaders* hdrs, const(char)* contentType, GHashTable* params);
	void soup_message_headers_set_encoding(SoupMessageHeaders* hdrs, SoupEncoding encoding);
	void soup_message_headers_set_expectations(SoupMessageHeaders* hdrs, SoupExpectation expectations);
	void soup_message_headers_set_range(SoupMessageHeaders* hdrs, long start, long end);
	void soup_message_headers_set_ranges(SoupMessageHeaders* hdrs, SoupRange* ranges, int length);

	// soup.MessageHeadersIter

	int soup_message_headers_iter_next(SoupMessageHeadersIter* iter, char** name, char** value);
	void soup_message_headers_iter_init(SoupMessageHeadersIter* iter, SoupMessageHeaders* hdrs);

	// soup.Multipart

	GType soup_multipart_get_type();
	SoupMultipart* soup_multipart_new(const(char)* mimeType);
	SoupMultipart* soup_multipart_new_from_message(SoupMessageHeaders* headers, SoupMessageBody* body_);
	void soup_multipart_append_form_file(SoupMultipart* multipart, const(char)* controlName, const(char)* filename, const(char)* contentType, SoupBuffer* body_);
	void soup_multipart_append_form_string(SoupMultipart* multipart, const(char)* controlName, const(char)* data);
	void soup_multipart_append_part(SoupMultipart* multipart, SoupMessageHeaders* headers, SoupBuffer* body_);
	void soup_multipart_free(SoupMultipart* multipart);
	int soup_multipart_get_length(SoupMultipart* multipart);
	int soup_multipart_get_part(SoupMultipart* multipart, int part, SoupMessageHeaders** headers, SoupBuffer** body_);
	void soup_multipart_to_message(SoupMultipart* multipart, SoupMessageHeaders* destHeaders, SoupMessageBody* destBody);

	// soup.MultipartInputStream

	GType soup_multipart_input_stream_get_type();
	SoupMultipartInputStream* soup_multipart_input_stream_new(SoupMessage* msg, GInputStream* baseStream);
	SoupMessageHeaders* soup_multipart_input_stream_get_headers(SoupMultipartInputStream* multipart);
	GInputStream* soup_multipart_input_stream_next_part(SoupMultipartInputStream* multipart, GCancellable* cancellable, GError** err);
	void soup_multipart_input_stream_next_part_async(SoupMultipartInputStream* multipart, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* data);
	GInputStream* soup_multipart_input_stream_next_part_finish(SoupMultipartInputStream* multipart, GAsyncResult* result, GError** err);

	// soup.PasswordManager

	GType soup_password_manager_get_type();
	void soup_password_manager_get_passwords_async(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, int retrying, GMainContext* asyncContext, GCancellable* cancellable, SoupPasswordManagerCallback callback, void* userData);
	void soup_password_manager_get_passwords_sync(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, GCancellable* cancellable);

	// soup.ProxyResolver

	GType soup_proxy_resolver_get_type();
	void soup_proxy_resolver_get_proxy_async(SoupProxyResolver* proxyResolver, SoupMessage* msg, GMainContext* asyncContext, GCancellable* cancellable, SoupProxyResolverCallback callback, void* userData);
	uint soup_proxy_resolver_get_proxy_sync(SoupProxyResolver* proxyResolver, SoupMessage* msg, GCancellable* cancellable, SoupAddress** addr);

	// soup.ProxyResolverDefault

	GType soup_proxy_resolver_default_get_type();

	// soup.ProxyURIResolver

	GType soup_proxy_uri_resolver_get_type();
	void soup_proxy_uri_resolver_get_proxy_uri_async(SoupProxyURIResolver* proxyUriResolver, SoupURI* uri, GMainContext* asyncContext, GCancellable* cancellable, SoupProxyURIResolverCallback callback, void* userData);
	uint soup_proxy_uri_resolver_get_proxy_uri_sync(SoupProxyURIResolver* proxyUriResolver, SoupURI* uri, GCancellable* cancellable, SoupURI** proxyUri);

	// soup.Request

	GType soup_request_get_type();
	long soup_request_get_content_length(SoupRequest* request);
	const(char)* soup_request_get_content_type(SoupRequest* request);
	SoupSession* soup_request_get_session(SoupRequest* request);
	SoupURI* soup_request_get_uri(SoupRequest* request);
	GInputStream* soup_request_send(SoupRequest* request, GCancellable* cancellable, GError** err);
	void soup_request_send_async(SoupRequest* request, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GInputStream* soup_request_send_finish(SoupRequest* request, GAsyncResult* result, GError** err);

	// soup.RequestData

	GType soup_request_data_get_type();

	// soup.RequestFile

	GType soup_request_file_get_type();
	GFile* soup_request_file_get_file(SoupRequestFile* file);

	// soup.RequestHTTP

	GType soup_request_http_get_type();
	SoupMessage* soup_request_http_get_message(SoupRequestHTTP* http);

	// soup.Requester

	GType soup_requester_get_type();
	SoupRequester* soup_requester_new();
	SoupRequest* soup_requester_request(SoupRequester* requester, const(char)* uriString, GError** err);
	SoupRequest* soup_requester_request_uri(SoupRequester* requester, SoupURI* uri, GError** err);

	// soup.Server

	GType soup_server_get_type();
	SoupServer* soup_server_new(const(char)* optname1, ... );
	int soup_server_accept_iostream(SoupServer* server, GIOStream* stream, GSocketAddress* localAddr, GSocketAddress* remoteAddr, GError** err);
	void soup_server_add_auth_domain(SoupServer* server, SoupAuthDomain* authDomain);
	void soup_server_add_early_handler(SoupServer* server, const(char)* path, SoupServerCallback callback, void* userData, GDestroyNotify destroy);
	void soup_server_add_handler(SoupServer* server, const(char)* path, SoupServerCallback callback, void* userData, GDestroyNotify destroy);
	void soup_server_add_websocket_extension(SoupServer* server, GType extensionType);
	void soup_server_add_websocket_handler(SoupServer* server, const(char)* path, const(char)* origin, char** protocols, SoupServerWebsocketCallback callback, void* userData, GDestroyNotify destroy);
	void soup_server_disconnect(SoupServer* server);
	GMainContext* soup_server_get_async_context(SoupServer* server);
	SoupSocket* soup_server_get_listener(SoupServer* server);
	GSList* soup_server_get_listeners(SoupServer* server);
	uint soup_server_get_port(SoupServer* server);
	GSList* soup_server_get_uris(SoupServer* server);
	int soup_server_is_https(SoupServer* server);
	int soup_server_listen(SoupServer* server, GSocketAddress* address, SoupServerListenOptions options, GError** err);
	int soup_server_listen_all(SoupServer* server, uint port, SoupServerListenOptions options, GError** err);
	int soup_server_listen_fd(SoupServer* server, int fd, SoupServerListenOptions options, GError** err);
	int soup_server_listen_local(SoupServer* server, uint port, SoupServerListenOptions options, GError** err);
	int soup_server_listen_socket(SoupServer* server, GSocket* socket, SoupServerListenOptions options, GError** err);
	void soup_server_pause_message(SoupServer* server, SoupMessage* msg);
	void soup_server_quit(SoupServer* server);
	void soup_server_remove_auth_domain(SoupServer* server, SoupAuthDomain* authDomain);
	void soup_server_remove_handler(SoupServer* server, const(char)* path);
	void soup_server_remove_websocket_extension(SoupServer* server, GType extensionType);
	void soup_server_run(SoupServer* server);
	void soup_server_run_async(SoupServer* server);
	int soup_server_set_ssl_cert_file(SoupServer* server, const(char)* sslCertFile, const(char)* sslKeyFile, GError** err);
	void soup_server_unpause_message(SoupServer* server, SoupMessage* msg);

	// soup.Session

	GType soup_session_get_type();
	SoupSession* soup_session_new();
	SoupSession* soup_session_new_with_options(const(char)* optname1, ... );
	void soup_session_abort(SoupSession* session);
	void soup_session_add_feature(SoupSession* session, SoupSessionFeature* feature);
	void soup_session_add_feature_by_type(SoupSession* session, GType featureType);
	void soup_session_cancel_message(SoupSession* session, SoupMessage* msg, uint statusCode);
	void soup_session_connect_async(SoupSession* session, SoupURI* uri, GCancellable* cancellable, SoupSessionConnectProgressCallback progressCallback, GAsyncReadyCallback callback, void* userData);
	GIOStream* soup_session_connect_finish(SoupSession* session, GAsyncResult* result, GError** err);
	GMainContext* soup_session_get_async_context(SoupSession* session);
	SoupSessionFeature* soup_session_get_feature(SoupSession* session, GType featureType);
	SoupSessionFeature* soup_session_get_feature_for_message(SoupSession* session, GType featureType, SoupMessage* msg);
	GSList* soup_session_get_features(SoupSession* session, GType featureType);
	int soup_session_has_feature(SoupSession* session, GType featureType);
	void soup_session_pause_message(SoupSession* session, SoupMessage* msg);
	void soup_session_prefetch_dns(SoupSession* session, const(char)* hostname, GCancellable* cancellable, SoupAddressCallback callback, void* userData);
	void soup_session_prepare_for_uri(SoupSession* session, SoupURI* uri);
	void soup_session_queue_message(SoupSession* session, SoupMessage* msg, SoupSessionCallback callback, void* userData);
	int soup_session_redirect_message(SoupSession* session, SoupMessage* msg);
	void soup_session_remove_feature(SoupSession* session, SoupSessionFeature* feature);
	void soup_session_remove_feature_by_type(SoupSession* session, GType featureType);
	SoupRequest* soup_session_request(SoupSession* session, const(char)* uriString, GError** err);
	SoupRequestHTTP* soup_session_request_http(SoupSession* session, const(char)* method, const(char)* uriString, GError** err);
	SoupRequestHTTP* soup_session_request_http_uri(SoupSession* session, const(char)* method, SoupURI* uri, GError** err);
	SoupRequest* soup_session_request_uri(SoupSession* session, SoupURI* uri, GError** err);
	void soup_session_requeue_message(SoupSession* session, SoupMessage* msg);
	GInputStream* soup_session_send(SoupSession* session, SoupMessage* msg, GCancellable* cancellable, GError** err);
	void soup_session_send_async(SoupSession* session, SoupMessage* msg, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GInputStream* soup_session_send_finish(SoupSession* session, GAsyncResult* result, GError** err);
	uint soup_session_send_message(SoupSession* session, SoupMessage* msg);
	GIOStream* soup_session_steal_connection(SoupSession* session, SoupMessage* msg);
	void soup_session_unpause_message(SoupSession* session, SoupMessage* msg);
	void soup_session_websocket_connect_async(SoupSession* session, SoupMessage* msg, const(char)* origin, char** protocols, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SoupWebsocketConnection* soup_session_websocket_connect_finish(SoupSession* session, GAsyncResult* result, GError** err);
	int soup_session_would_redirect(SoupSession* session, SoupMessage* msg);

	// soup.SessionAsync

	GType soup_session_async_get_type();
	SoupSession* soup_session_async_new();
	SoupSession* soup_session_async_new_with_options(const(char)* optname1, ... );

	// soup.SessionFeature

	GType soup_session_feature_get_type();
	int soup_session_feature_add_feature(SoupSessionFeature* feature, GType type);
	void soup_session_feature_attach(SoupSessionFeature* feature, SoupSession* session);
	void soup_session_feature_detach(SoupSessionFeature* feature, SoupSession* session);
	int soup_session_feature_has_feature(SoupSessionFeature* feature, GType type);
	int soup_session_feature_remove_feature(SoupSessionFeature* feature, GType type);

	// soup.SessionSync

	GType soup_session_sync_get_type();
	SoupSession* soup_session_sync_new();
	SoupSession* soup_session_sync_new_with_options(const(char)* optname1, ... );

	// soup.Socket

	GType soup_socket_get_type();
	SoupSocket* soup_socket_new(const(char)* optname1, ... );
	void soup_socket_connect_async(SoupSocket* sock, GCancellable* cancellable, SoupSocketCallback callback, void* userData);
	uint soup_socket_connect_sync(SoupSocket* sock, GCancellable* cancellable);
	void soup_socket_disconnect(SoupSocket* sock);
	int soup_socket_get_fd(SoupSocket* sock);
	SoupAddress* soup_socket_get_local_address(SoupSocket* sock);
	SoupAddress* soup_socket_get_remote_address(SoupSocket* sock);
	int soup_socket_is_connected(SoupSocket* sock);
	int soup_socket_is_ssl(SoupSocket* sock);
	int soup_socket_listen(SoupSocket* sock);
	SoupSocketIOStatus soup_socket_read(SoupSocket* sock, void* buffer, size_t len, size_t* nread, GCancellable* cancellable, GError** err);
	SoupSocketIOStatus soup_socket_read_until(SoupSocket* sock, void* buffer, size_t len, void* boundary, size_t boundaryLen, size_t* nread, int* gotBoundary, GCancellable* cancellable, GError** err);
	int soup_socket_start_proxy_ssl(SoupSocket* sock, const(char)* sslHost, GCancellable* cancellable);
	int soup_socket_start_ssl(SoupSocket* sock, GCancellable* cancellable);
	SoupSocketIOStatus soup_socket_write(SoupSocket* sock, void* buffer, size_t len, size_t* nwrote, GCancellable* cancellable, GError** err);

	// soup.URI

	GType soup_uri_get_type();
	SoupURI* soup_uri_new(const(char)* uriString);
	SoupURI* soup_uri_new_with_base(SoupURI* base, const(char)* uriString);
	SoupURI* soup_uri_copy(SoupURI* uri);
	SoupURI* soup_uri_copy_host(SoupURI* uri);
	int soup_uri_equal(SoupURI* uri1, SoupURI* uri2);
	void soup_uri_free(SoupURI* uri);
	const(char)* soup_uri_get_fragment(SoupURI* uri);
	const(char)* soup_uri_get_host(SoupURI* uri);
	const(char)* soup_uri_get_password(SoupURI* uri);
	const(char)* soup_uri_get_path(SoupURI* uri);
	uint soup_uri_get_port(SoupURI* uri);
	const(char)* soup_uri_get_query(SoupURI* uri);
	const(char)* soup_uri_get_scheme(SoupURI* uri);
	const(char)* soup_uri_get_user(SoupURI* uri);
	int soup_uri_host_equal(void* v1, void* v2);
	uint soup_uri_host_hash(void* key);
	void soup_uri_set_fragment(SoupURI* uri, const(char)* fragment);
	void soup_uri_set_host(SoupURI* uri, const(char)* host);
	void soup_uri_set_password(SoupURI* uri, const(char)* password);
	void soup_uri_set_path(SoupURI* uri, const(char)* path);
	void soup_uri_set_port(SoupURI* uri, uint port);
	void soup_uri_set_query(SoupURI* uri, const(char)* query);
	void soup_uri_set_query_from_fields(SoupURI* uri, const(char)* firstField, ... );
	void soup_uri_set_query_from_form(SoupURI* uri, GHashTable* form);
	void soup_uri_set_scheme(SoupURI* uri, const(char)* scheme);
	void soup_uri_set_user(SoupURI* uri, const(char)* user);
	char* soup_uri_to_string(SoupURI* uri, int justPathAndQuery);
	int soup_uri_uses_default_port(SoupURI* uri);
	char* soup_uri_decode(const(char)* part);
	char* soup_uri_encode(const(char)* part, const(char)* escapeExtra);
	char* soup_uri_normalize(const(char)* part, const(char)* unescapeExtra);

	// soup.WebsocketConnection

	GType soup_websocket_connection_get_type();
	SoupWebsocketConnection* soup_websocket_connection_new(GIOStream* stream, SoupURI* uri, SoupWebsocketConnectionType type, const(char)* origin, const(char)* protocol);
	SoupWebsocketConnection* soup_websocket_connection_new_with_extensions(GIOStream* stream, SoupURI* uri, SoupWebsocketConnectionType type, const(char)* origin, const(char)* protocol, GList* extensions);
	void soup_websocket_connection_close(SoupWebsocketConnection* self, ushort code, const(char)* data);
	ushort soup_websocket_connection_get_close_code(SoupWebsocketConnection* self);
	const(char)* soup_websocket_connection_get_close_data(SoupWebsocketConnection* self);
	SoupWebsocketConnectionType soup_websocket_connection_get_connection_type(SoupWebsocketConnection* self);
	GList* soup_websocket_connection_get_extensions(SoupWebsocketConnection* self);
	GIOStream* soup_websocket_connection_get_io_stream(SoupWebsocketConnection* self);
	uint soup_websocket_connection_get_keepalive_interval(SoupWebsocketConnection* self);
	ulong soup_websocket_connection_get_max_incoming_payload_size(SoupWebsocketConnection* self);
	const(char)* soup_websocket_connection_get_origin(SoupWebsocketConnection* self);
	const(char)* soup_websocket_connection_get_protocol(SoupWebsocketConnection* self);
	SoupWebsocketState soup_websocket_connection_get_state(SoupWebsocketConnection* self);
	SoupURI* soup_websocket_connection_get_uri(SoupWebsocketConnection* self);
	void soup_websocket_connection_send_binary(SoupWebsocketConnection* self, void* data, size_t length);
	void soup_websocket_connection_send_message(SoupWebsocketConnection* self, SoupWebsocketDataType type, GBytes* message);
	void soup_websocket_connection_send_text(SoupWebsocketConnection* self, const(char)* text);
	void soup_websocket_connection_set_keepalive_interval(SoupWebsocketConnection* self, uint interval);
	void soup_websocket_connection_set_max_incoming_payload_size(SoupWebsocketConnection* self, ulong maxIncomingPayloadSize);

	// soup.WebsocketExtension

	GType soup_websocket_extension_get_type();
	int soup_websocket_extension_configure(SoupWebsocketExtension* extension, SoupWebsocketConnectionType connectionType, GHashTable* params, GError** err);
	char* soup_websocket_extension_get_request_params(SoupWebsocketExtension* extension);
	char* soup_websocket_extension_get_response_params(SoupWebsocketExtension* extension);
	GBytes* soup_websocket_extension_process_incoming_message(SoupWebsocketExtension* extension, ubyte* header, GBytes* payload, GError** err);
	GBytes* soup_websocket_extension_process_outgoing_message(SoupWebsocketExtension* extension, ubyte* header, GBytes* payload, GError** err);

	// soup.WebsocketExtensionDeflate

	GType soup_websocket_extension_deflate_get_type();

	// soup.WebsocketExtensionManager

	GType soup_websocket_extension_manager_get_type();

	// soup.XMLRPCParams

	void soup_xmlrpc_params_free(SoupXMLRPCParams* self);
	GVariant* soup_xmlrpc_params_parse(SoupXMLRPCParams* self, const(char)* signature, GError** err);
}