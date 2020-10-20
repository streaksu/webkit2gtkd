module webkit2.c.functions;

import std.stdio;
import webkit2.c.types;
version (Windows)
	static immutable LIBRARY_WEBKIT2 = ["libjavascriptcoregtk-4.0-18.dll;javascriptcoregtk-4.0-18.dll;javascriptcoregtk-4.dll", "libwebkit2gtk-4.0-37.dll;webkit2gtk-4.0-37.dll;webkit2gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_WEBKIT2 = ["libjavascriptcoregtk-4.0.18.dylib", "libwebkit2gtk-4.0.37.dylib"];
else
	static immutable LIBRARY_WEBKIT2 = ["libjavascriptcoregtk-4.0.so.18", "libwebkit2gtk-4.0.so.37"];

__gshared extern(C)
{

	// webkit2.ApplicationInfo

	GType webkit_application_info_get_type();
	WebKitApplicationInfo* webkit_application_info_new();
	const(char)* webkit_application_info_get_name(WebKitApplicationInfo* info);
	void webkit_application_info_get_version(WebKitApplicationInfo* info, ulong* major, ulong* minor, ulong* micro);
	WebKitApplicationInfo* webkit_application_info_ref(WebKitApplicationInfo* info);
	void webkit_application_info_set_name(WebKitApplicationInfo* info, const(char)* name);
	void webkit_application_info_set_version(WebKitApplicationInfo* info, ulong major, ulong minor, ulong micro);
	void webkit_application_info_unref(WebKitApplicationInfo* info);

	// webkit2.AuthenticationRequest

	GType webkit_authentication_request_get_type();
	void webkit_authentication_request_authenticate(WebKitAuthenticationRequest* request, WebKitCredential* credential);
	int webkit_authentication_request_can_save_credentials(WebKitAuthenticationRequest* request);
	void webkit_authentication_request_cancel(WebKitAuthenticationRequest* request);
	const(char)* webkit_authentication_request_get_host(WebKitAuthenticationRequest* request);
	uint webkit_authentication_request_get_port(WebKitAuthenticationRequest* request);
	WebKitCredential* webkit_authentication_request_get_proposed_credential(WebKitAuthenticationRequest* request);
	const(char)* webkit_authentication_request_get_realm(WebKitAuthenticationRequest* request);
	WebKitAuthenticationScheme webkit_authentication_request_get_scheme(WebKitAuthenticationRequest* request);
	WebKitSecurityOrigin* webkit_authentication_request_get_security_origin(WebKitAuthenticationRequest* request);
	int webkit_authentication_request_is_for_proxy(WebKitAuthenticationRequest* request);
	int webkit_authentication_request_is_retry(WebKitAuthenticationRequest* request);
	void webkit_authentication_request_set_can_save_credentials(WebKitAuthenticationRequest* request, int enabled);
	void webkit_authentication_request_set_proposed_credential(WebKitAuthenticationRequest* request, WebKitCredential* credential);

	// webkit2.AutomationSession

	GType webkit_automation_session_get_type();
	WebKitApplicationInfo* webkit_automation_session_get_application_info(WebKitAutomationSession* session);
	const(char)* webkit_automation_session_get_id(WebKitAutomationSession* session);
	void webkit_automation_session_set_application_info(WebKitAutomationSession* session, WebKitApplicationInfo* info);

	// webkit2.BackForwardList

	GType webkit_back_forward_list_get_type();
	WebKitBackForwardListItem* webkit_back_forward_list_get_back_item(WebKitBackForwardList* backForwardList);
	GList* webkit_back_forward_list_get_back_list(WebKitBackForwardList* backForwardList);
	GList* webkit_back_forward_list_get_back_list_with_limit(WebKitBackForwardList* backForwardList, uint limit);
	WebKitBackForwardListItem* webkit_back_forward_list_get_current_item(WebKitBackForwardList* backForwardList);
	WebKitBackForwardListItem* webkit_back_forward_list_get_forward_item(WebKitBackForwardList* backForwardList);
	GList* webkit_back_forward_list_get_forward_list(WebKitBackForwardList* backForwardList);
	GList* webkit_back_forward_list_get_forward_list_with_limit(WebKitBackForwardList* backForwardList, uint limit);
	uint webkit_back_forward_list_get_length(WebKitBackForwardList* backForwardList);
	WebKitBackForwardListItem* webkit_back_forward_list_get_nth_item(WebKitBackForwardList* backForwardList, int index);

	// webkit2.BackForwardListItem

	GType webkit_back_forward_list_item_get_type();
	const(char)* webkit_back_forward_list_item_get_original_uri(WebKitBackForwardListItem* listItem);
	const(char)* webkit_back_forward_list_item_get_title(WebKitBackForwardListItem* listItem);
	const(char)* webkit_back_forward_list_item_get_uri(WebKitBackForwardListItem* listItem);

	// webkit2.ColorChooserRequest

	GType webkit_color_chooser_request_get_type();
	void webkit_color_chooser_request_cancel(WebKitColorChooserRequest* request);
	void webkit_color_chooser_request_finish(WebKitColorChooserRequest* request);
	void webkit_color_chooser_request_get_element_rectangle(WebKitColorChooserRequest* request, GdkRectangle* rect);
	void webkit_color_chooser_request_get_rgba(WebKitColorChooserRequest* request, GdkRGBA* rgba);
	void webkit_color_chooser_request_set_rgba(WebKitColorChooserRequest* request, GdkRGBA* rgba);

	// webkit2.ContextMenu

	GType webkit_context_menu_get_type();
	WebKitContextMenu* webkit_context_menu_new();
	WebKitContextMenu* webkit_context_menu_new_with_items(GList* items);
	void webkit_context_menu_append(WebKitContextMenu* menu, WebKitContextMenuItem* item);
	WebKitContextMenuItem* webkit_context_menu_first(WebKitContextMenu* menu);
	WebKitContextMenuItem* webkit_context_menu_get_item_at_position(WebKitContextMenu* menu, uint position);
	GList* webkit_context_menu_get_items(WebKitContextMenu* menu);
	uint webkit_context_menu_get_n_items(WebKitContextMenu* menu);
	GVariant* webkit_context_menu_get_user_data(WebKitContextMenu* menu);
	void webkit_context_menu_insert(WebKitContextMenu* menu, WebKitContextMenuItem* item, int position);
	WebKitContextMenuItem* webkit_context_menu_last(WebKitContextMenu* menu);
	void webkit_context_menu_move_item(WebKitContextMenu* menu, WebKitContextMenuItem* item, int position);
	void webkit_context_menu_prepend(WebKitContextMenu* menu, WebKitContextMenuItem* item);
	void webkit_context_menu_remove(WebKitContextMenu* menu, WebKitContextMenuItem* item);
	void webkit_context_menu_remove_all(WebKitContextMenu* menu);
	void webkit_context_menu_set_user_data(WebKitContextMenu* menu, GVariant* userData);

	// webkit2.ContextMenuItem

	GType webkit_context_menu_item_get_type();
	WebKitContextMenuItem* webkit_context_menu_item_new(GtkAction* action);
	WebKitContextMenuItem* webkit_context_menu_item_new_from_gaction(GAction* action, const(char)* label, GVariant* target);
	WebKitContextMenuItem* webkit_context_menu_item_new_from_stock_action(WebKitContextMenuAction action);
	WebKitContextMenuItem* webkit_context_menu_item_new_from_stock_action_with_label(WebKitContextMenuAction action, const(char)* label);
	WebKitContextMenuItem* webkit_context_menu_item_new_separator();
	WebKitContextMenuItem* webkit_context_menu_item_new_with_submenu(const(char)* label, WebKitContextMenu* submenu);
	GtkAction* webkit_context_menu_item_get_action(WebKitContextMenuItem* item);
	GAction* webkit_context_menu_item_get_gaction(WebKitContextMenuItem* item);
	WebKitContextMenuAction webkit_context_menu_item_get_stock_action(WebKitContextMenuItem* item);
	WebKitContextMenu* webkit_context_menu_item_get_submenu(WebKitContextMenuItem* item);
	int webkit_context_menu_item_is_separator(WebKitContextMenuItem* item);
	void webkit_context_menu_item_set_submenu(WebKitContextMenuItem* item, WebKitContextMenu* submenu);

	// webkit2.CookieManager

	GType webkit_cookie_manager_get_type();
	void webkit_cookie_manager_add_cookie(WebKitCookieManager* cookieManager, SoupCookie* cookie, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_cookie_manager_add_cookie_finish(WebKitCookieManager* cookieManager, GAsyncResult* result, GError** err);
	void webkit_cookie_manager_delete_all_cookies(WebKitCookieManager* cookieManager);
	void webkit_cookie_manager_delete_cookie(WebKitCookieManager* cookieManager, SoupCookie* cookie, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_cookie_manager_delete_cookie_finish(WebKitCookieManager* cookieManager, GAsyncResult* result, GError** err);
	void webkit_cookie_manager_delete_cookies_for_domain(WebKitCookieManager* cookieManager, const(char)* domain);
	void webkit_cookie_manager_get_accept_policy(WebKitCookieManager* cookieManager, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitCookieAcceptPolicy webkit_cookie_manager_get_accept_policy_finish(WebKitCookieManager* cookieManager, GAsyncResult* result, GError** err);
	void webkit_cookie_manager_get_cookies(WebKitCookieManager* cookieManager, const(char)* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* webkit_cookie_manager_get_cookies_finish(WebKitCookieManager* cookieManager, GAsyncResult* result, GError** err);
	void webkit_cookie_manager_get_domains_with_cookies(WebKitCookieManager* cookieManager, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char** webkit_cookie_manager_get_domains_with_cookies_finish(WebKitCookieManager* cookieManager, GAsyncResult* result, GError** err);
	void webkit_cookie_manager_set_accept_policy(WebKitCookieManager* cookieManager, WebKitCookieAcceptPolicy policy);
	void webkit_cookie_manager_set_persistent_storage(WebKitCookieManager* cookieManager, const(char)* filename, WebKitCookiePersistentStorage storage);

	// webkit2.Credential

	GType webkit_credential_get_type();
	WebKitCredential* webkit_credential_new(const(char)* username, const(char)* password, WebKitCredentialPersistence persistence);
	WebKitCredential* webkit_credential_copy(WebKitCredential* credential);
	void webkit_credential_free(WebKitCredential* credential);
	const(char)* webkit_credential_get_password(WebKitCredential* credential);
	WebKitCredentialPersistence webkit_credential_get_persistence(WebKitCredential* credential);
	const(char)* webkit_credential_get_username(WebKitCredential* credential);
	int webkit_credential_has_password(WebKitCredential* credential);

	// webkit2.DeviceInfoPermissionRequest

	GType webkit_device_info_permission_request_get_type();

	// webkit2.Download

	GType webkit_download_get_type();
	void webkit_download_cancel(WebKitDownload* download);
	int webkit_download_get_allow_overwrite(WebKitDownload* download);
	const(char)* webkit_download_get_destination(WebKitDownload* download);
	double webkit_download_get_elapsed_time(WebKitDownload* download);
	double webkit_download_get_estimated_progress(WebKitDownload* download);
	ulong webkit_download_get_received_data_length(WebKitDownload* download);
	WebKitURIRequest* webkit_download_get_request(WebKitDownload* download);
	WebKitURIResponse* webkit_download_get_response(WebKitDownload* download);
	WebKitWebView* webkit_download_get_web_view(WebKitDownload* download);
	void webkit_download_set_allow_overwrite(WebKitDownload* download, int allowed);
	void webkit_download_set_destination(WebKitDownload* download, const(char)* uri);

	// webkit2.EditorState

	GType webkit_editor_state_get_type();
	uint webkit_editor_state_get_typing_attributes(WebKitEditorState* editorState);
	int webkit_editor_state_is_copy_available(WebKitEditorState* editorState);
	int webkit_editor_state_is_cut_available(WebKitEditorState* editorState);
	int webkit_editor_state_is_paste_available(WebKitEditorState* editorState);
	int webkit_editor_state_is_redo_available(WebKitEditorState* editorState);
	int webkit_editor_state_is_undo_available(WebKitEditorState* editorState);

	// webkit2.FaviconDatabase

	GType webkit_favicon_database_get_type();
	void webkit_favicon_database_clear(WebKitFaviconDatabase* database);
	void webkit_favicon_database_get_favicon(WebKitFaviconDatabase* database, const(char)* pageUri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	cairo_surface_t* webkit_favicon_database_get_favicon_finish(WebKitFaviconDatabase* database, GAsyncResult* result, GError** err);
	char* webkit_favicon_database_get_favicon_uri(WebKitFaviconDatabase* database, const(char)* pageUri);

	// webkit2.FileChooserRequest

	GType webkit_file_chooser_request_get_type();
	void webkit_file_chooser_request_cancel(WebKitFileChooserRequest* request);
	char** webkit_file_chooser_request_get_mime_types(WebKitFileChooserRequest* request);
	GtkFileFilter* webkit_file_chooser_request_get_mime_types_filter(WebKitFileChooserRequest* request);
	int webkit_file_chooser_request_get_select_multiple(WebKitFileChooserRequest* request);
	char** webkit_file_chooser_request_get_selected_files(WebKitFileChooserRequest* request);
	void webkit_file_chooser_request_select_files(WebKitFileChooserRequest* request, char** files);

	// webkit2.FindController

	GType webkit_find_controller_get_type();
	void webkit_find_controller_count_matches(WebKitFindController* findController, const(char)* searchText, uint findOptions, uint maxMatchCount);
	uint webkit_find_controller_get_max_match_count(WebKitFindController* findController);
	uint webkit_find_controller_get_options(WebKitFindController* findController);
	const(char)* webkit_find_controller_get_search_text(WebKitFindController* findController);
	WebKitWebView* webkit_find_controller_get_web_view(WebKitFindController* findController);
	void webkit_find_controller_search(WebKitFindController* findController, const(char)* searchText, uint findOptions, uint maxMatchCount);
	void webkit_find_controller_search_finish(WebKitFindController* findController);
	void webkit_find_controller_search_next(WebKitFindController* findController);
	void webkit_find_controller_search_previous(WebKitFindController* findController);

	// webkit2.FormSubmissionRequest

	GType webkit_form_submission_request_get_type();
	GHashTable* webkit_form_submission_request_get_text_fields(WebKitFormSubmissionRequest* request);
	int webkit_form_submission_request_list_text_fields(WebKitFormSubmissionRequest* request, GPtrArray** fieldNames, GPtrArray** fieldValues);
	void webkit_form_submission_request_submit(WebKitFormSubmissionRequest* request);

	// webkit2.GeolocationManager

	GType webkit_geolocation_manager_get_type();
	void webkit_geolocation_manager_failed(WebKitGeolocationManager* manager, const(char)* errorMessage);
	int webkit_geolocation_manager_get_enable_high_accuracy(WebKitGeolocationManager* manager);
	void webkit_geolocation_manager_update_position(WebKitGeolocationManager* manager, WebKitGeolocationPosition* position);

	// webkit2.GeolocationPermissionRequest

	GType webkit_geolocation_permission_request_get_type();

	// webkit2.GeolocationPosition

	GType webkit_geolocation_position_get_type();
	WebKitGeolocationPosition* webkit_geolocation_position_new(double latitude, double longitude, double accuracy);
	WebKitGeolocationPosition* webkit_geolocation_position_copy(WebKitGeolocationPosition* position);
	void webkit_geolocation_position_free(WebKitGeolocationPosition* position);
	void webkit_geolocation_position_set_altitude(WebKitGeolocationPosition* position, double altitude);
	void webkit_geolocation_position_set_altitude_accuracy(WebKitGeolocationPosition* position, double altitudeAccuracy);
	void webkit_geolocation_position_set_heading(WebKitGeolocationPosition* position, double heading);
	void webkit_geolocation_position_set_speed(WebKitGeolocationPosition* position, double speed);
	void webkit_geolocation_position_set_timestamp(WebKitGeolocationPosition* position, ulong timestamp);

	// webkit2.HitTestResult

	GType webkit_hit_test_result_get_type();
	int webkit_hit_test_result_context_is_editable(WebKitHitTestResult* hitTestResult);
	int webkit_hit_test_result_context_is_image(WebKitHitTestResult* hitTestResult);
	int webkit_hit_test_result_context_is_link(WebKitHitTestResult* hitTestResult);
	int webkit_hit_test_result_context_is_media(WebKitHitTestResult* hitTestResult);
	int webkit_hit_test_result_context_is_scrollbar(WebKitHitTestResult* hitTestResult);
	int webkit_hit_test_result_context_is_selection(WebKitHitTestResult* hitTestResult);
	uint webkit_hit_test_result_get_context(WebKitHitTestResult* hitTestResult);
	const(char)* webkit_hit_test_result_get_image_uri(WebKitHitTestResult* hitTestResult);
	const(char)* webkit_hit_test_result_get_link_label(WebKitHitTestResult* hitTestResult);
	const(char)* webkit_hit_test_result_get_link_title(WebKitHitTestResult* hitTestResult);
	const(char)* webkit_hit_test_result_get_link_uri(WebKitHitTestResult* hitTestResult);
	const(char)* webkit_hit_test_result_get_media_uri(WebKitHitTestResult* hitTestResult);

	// webkit2.ITPFirstParty

	GType webkit_itp_first_party_get_type();
	const(char)* webkit_itp_first_party_get_domain(WebKitITPFirstParty* itpFirstParty);
	GDateTime* webkit_itp_first_party_get_last_update_time(WebKitITPFirstParty* itpFirstParty);
	int webkit_itp_first_party_get_website_data_access_allowed(WebKitITPFirstParty* itpFirstParty);
	WebKitITPFirstParty* webkit_itp_first_party_ref(WebKitITPFirstParty* itpFirstParty);
	void webkit_itp_first_party_unref(WebKitITPFirstParty* itpFirstParty);

	// webkit2.ITPThirdParty

	GType webkit_itp_third_party_get_type();
	const(char)* webkit_itp_third_party_get_domain(WebKitITPThirdParty* itpThirdParty);
	GList* webkit_itp_third_party_get_first_parties(WebKitITPThirdParty* itpThirdParty);
	WebKitITPThirdParty* webkit_itp_third_party_ref(WebKitITPThirdParty* itpThirdParty);
	void webkit_itp_third_party_unref(WebKitITPThirdParty* itpThirdParty);

	// webkit2.InputMethodContext

	GType webkit_input_method_context_get_type();
	int webkit_input_method_context_filter_key_event(WebKitInputMethodContext* context, GdkEventKey* keyEvent);
	WebKitInputHints webkit_input_method_context_get_input_hints(WebKitInputMethodContext* context);
	WebKitInputPurpose webkit_input_method_context_get_input_purpose(WebKitInputMethodContext* context);
	void webkit_input_method_context_get_preedit(WebKitInputMethodContext* context, char** text, GList** underlines, uint* cursorOffset);
	void webkit_input_method_context_notify_cursor_area(WebKitInputMethodContext* context, int x, int y, int width, int height);
	void webkit_input_method_context_notify_focus_in(WebKitInputMethodContext* context);
	void webkit_input_method_context_notify_focus_out(WebKitInputMethodContext* context);
	void webkit_input_method_context_notify_surrounding(WebKitInputMethodContext* context, const(char)* text, int length, uint cursorIndex, uint selectionIndex);
	void webkit_input_method_context_reset(WebKitInputMethodContext* context);
	void webkit_input_method_context_set_enable_preedit(WebKitInputMethodContext* context, int enabled);
	void webkit_input_method_context_set_input_hints(WebKitInputMethodContext* context, WebKitInputHints hints);
	void webkit_input_method_context_set_input_purpose(WebKitInputMethodContext* context, WebKitInputPurpose purpose);

	// webkit2.InputMethodUnderline

	GType webkit_input_method_underline_get_type();
	WebKitInputMethodUnderline* webkit_input_method_underline_new(uint startOffset, uint endOffset);
	WebKitInputMethodUnderline* webkit_input_method_underline_copy(WebKitInputMethodUnderline* underline);
	void webkit_input_method_underline_free(WebKitInputMethodUnderline* underline);
	void webkit_input_method_underline_set_color(WebKitInputMethodUnderline* underline, GdkRGBA* rgba);

	// webkit2.InstallMissingMediaPluginsPermissionRequest

	GType webkit_install_missing_media_plugins_permission_request_get_type();
	const(char)* webkit_install_missing_media_plugins_permission_request_get_description(WebKitInstallMissingMediaPluginsPermissionRequest* request);

	// webkit2.JavascriptResult

	GType webkit_javascript_result_get_type();
	JSGlobalContextRef webkit_javascript_result_get_global_context(WebKitJavascriptResult* jsResult);
	JSCValue* webkit_javascript_result_get_js_value(WebKitJavascriptResult* jsResult);
	JSValueRef webkit_javascript_result_get_value(WebKitJavascriptResult* jsResult);
	WebKitJavascriptResult* webkit_javascript_result_ref(WebKitJavascriptResult* jsResult);
	void webkit_javascript_result_unref(WebKitJavascriptResult* jsResult);

	// webkit2.MimeInfo

	GType webkit_mime_info_get_type();
	const(char)* webkit_mime_info_get_description(WebKitMimeInfo* info);
	char** webkit_mime_info_get_extensions(WebKitMimeInfo* info);
	const(char)* webkit_mime_info_get_mime_type(WebKitMimeInfo* info);
	WebKitMimeInfo* webkit_mime_info_ref(WebKitMimeInfo* info);
	void webkit_mime_info_unref(WebKitMimeInfo* info);

	// webkit2.NavigationAction

	GType webkit_navigation_action_get_type();
	WebKitNavigationAction* webkit_navigation_action_copy(WebKitNavigationAction* navigation);
	void webkit_navigation_action_free(WebKitNavigationAction* navigation);
	uint webkit_navigation_action_get_modifiers(WebKitNavigationAction* navigation);
	uint webkit_navigation_action_get_mouse_button(WebKitNavigationAction* navigation);
	WebKitNavigationType webkit_navigation_action_get_navigation_type(WebKitNavigationAction* navigation);
	WebKitURIRequest* webkit_navigation_action_get_request(WebKitNavigationAction* navigation);
	int webkit_navigation_action_is_redirect(WebKitNavigationAction* navigation);
	int webkit_navigation_action_is_user_gesture(WebKitNavigationAction* navigation);

	// webkit2.NavigationPolicyDecision

	GType webkit_navigation_policy_decision_get_type();
	const(char)* webkit_navigation_policy_decision_get_frame_name(WebKitNavigationPolicyDecision* decision);
	uint webkit_navigation_policy_decision_get_modifiers(WebKitNavigationPolicyDecision* decision);
	uint webkit_navigation_policy_decision_get_mouse_button(WebKitNavigationPolicyDecision* decision);
	WebKitNavigationAction* webkit_navigation_policy_decision_get_navigation_action(WebKitNavigationPolicyDecision* decision);
	WebKitNavigationType webkit_navigation_policy_decision_get_navigation_type(WebKitNavigationPolicyDecision* decision);
	WebKitURIRequest* webkit_navigation_policy_decision_get_request(WebKitNavigationPolicyDecision* decision);

	// webkit2.NetworkProxySettings

	GType webkit_network_proxy_settings_get_type();
	WebKitNetworkProxySettings* webkit_network_proxy_settings_new(const(char)* defaultProxyUri, char** ignoreHosts);
	void webkit_network_proxy_settings_add_proxy_for_scheme(WebKitNetworkProxySettings* proxySettings, const(char)* scheme, const(char)* proxyUri);
	WebKitNetworkProxySettings* webkit_network_proxy_settings_copy(WebKitNetworkProxySettings* proxySettings);
	void webkit_network_proxy_settings_free(WebKitNetworkProxySettings* proxySettings);

	// webkit2.Notification

	GType webkit_notification_get_type();
	void webkit_notification_clicked(WebKitNotification* notification);
	void webkit_notification_close(WebKitNotification* notification);
	const(char)* webkit_notification_get_body(WebKitNotification* notification);
	ulong webkit_notification_get_id(WebKitNotification* notification);
	const(char)* webkit_notification_get_tag(WebKitNotification* notification);
	const(char)* webkit_notification_get_title(WebKitNotification* notification);

	// webkit2.NotificationPermissionRequest

	GType webkit_notification_permission_request_get_type();

	// webkit2.OptionMenu

	GType webkit_option_menu_get_type();
	void webkit_option_menu_activate_item(WebKitOptionMenu* menu, uint index);
	void webkit_option_menu_close(WebKitOptionMenu* menu);
	WebKitOptionMenuItem* webkit_option_menu_get_item(WebKitOptionMenu* menu, uint index);
	uint webkit_option_menu_get_n_items(WebKitOptionMenu* menu);
	void webkit_option_menu_select_item(WebKitOptionMenu* menu, uint index);

	// webkit2.OptionMenuItem

	GType webkit_option_menu_item_get_type();
	WebKitOptionMenuItem* webkit_option_menu_item_copy(WebKitOptionMenuItem* item);
	void webkit_option_menu_item_free(WebKitOptionMenuItem* item);
	const(char)* webkit_option_menu_item_get_label(WebKitOptionMenuItem* item);
	const(char)* webkit_option_menu_item_get_tooltip(WebKitOptionMenuItem* item);
	int webkit_option_menu_item_is_enabled(WebKitOptionMenuItem* item);
	int webkit_option_menu_item_is_group_child(WebKitOptionMenuItem* item);
	int webkit_option_menu_item_is_group_label(WebKitOptionMenuItem* item);
	int webkit_option_menu_item_is_selected(WebKitOptionMenuItem* item);

	// webkit2.PermissionRequest

	GType webkit_permission_request_get_type();
	void webkit_permission_request_allow(WebKitPermissionRequest* request);
	void webkit_permission_request_deny(WebKitPermissionRequest* request);

	// webkit2.Plugin

	GType webkit_plugin_get_type();
	const(char)* webkit_plugin_get_description(WebKitPlugin* plugin);
	GList* webkit_plugin_get_mime_info_list(WebKitPlugin* plugin);
	const(char)* webkit_plugin_get_name(WebKitPlugin* plugin);
	const(char)* webkit_plugin_get_path(WebKitPlugin* plugin);

	// webkit2.PointerLockPermissionRequest

	GType webkit_pointer_lock_permission_request_get_type();

	// webkit2.PolicyDecision

	GType webkit_policy_decision_get_type();
	void webkit_policy_decision_download(WebKitPolicyDecision* decision);
	void webkit_policy_decision_ignore(WebKitPolicyDecision* decision);
	void webkit_policy_decision_use(WebKitPolicyDecision* decision);
	void webkit_policy_decision_use_with_policies(WebKitPolicyDecision* decision, WebKitWebsitePolicies* policies);

	// webkit2.PrintCustomWidget

	GType webkit_print_custom_widget_get_type();
	WebKitPrintCustomWidget* webkit_print_custom_widget_new(GtkWidget* widget, const(char)* title);
	const(char)* webkit_print_custom_widget_get_title(WebKitPrintCustomWidget* printCustomWidget);
	GtkWidget* webkit_print_custom_widget_get_widget(WebKitPrintCustomWidget* printCustomWidget);

	// webkit2.PrintOperation

	GType webkit_print_operation_get_type();
	WebKitPrintOperation* webkit_print_operation_new(WebKitWebView* webView);
	GtkPageSetup* webkit_print_operation_get_page_setup(WebKitPrintOperation* printOperation);
	GtkPrintSettings* webkit_print_operation_get_print_settings(WebKitPrintOperation* printOperation);
	void webkit_print_operation_print(WebKitPrintOperation* printOperation);
	WebKitPrintOperationResponse webkit_print_operation_run_dialog(WebKitPrintOperation* printOperation, GtkWindow* parent);
	void webkit_print_operation_set_page_setup(WebKitPrintOperation* printOperation, GtkPageSetup* pageSetup);
	void webkit_print_operation_set_print_settings(WebKitPrintOperation* printOperation, GtkPrintSettings* printSettings);

	// webkit2.ResponsePolicyDecision

	GType webkit_response_policy_decision_get_type();
	WebKitURIRequest* webkit_response_policy_decision_get_request(WebKitResponsePolicyDecision* decision);
	WebKitURIResponse* webkit_response_policy_decision_get_response(WebKitResponsePolicyDecision* decision);
	int webkit_response_policy_decision_is_mime_type_supported(WebKitResponsePolicyDecision* decision);

	// webkit2.ScriptDialog

	GType webkit_script_dialog_get_type();
	void webkit_script_dialog_close(WebKitScriptDialog* dialog);
	void webkit_script_dialog_confirm_set_confirmed(WebKitScriptDialog* dialog, int confirmed);
	WebKitScriptDialogType webkit_script_dialog_get_dialog_type(WebKitScriptDialog* dialog);
	const(char)* webkit_script_dialog_get_message(WebKitScriptDialog* dialog);
	const(char)* webkit_script_dialog_prompt_get_default_text(WebKitScriptDialog* dialog);
	void webkit_script_dialog_prompt_set_text(WebKitScriptDialog* dialog, const(char)* text);
	WebKitScriptDialog* webkit_script_dialog_ref(WebKitScriptDialog* dialog);
	void webkit_script_dialog_unref(WebKitScriptDialog* dialog);

	// webkit2.SecurityManager

	GType webkit_security_manager_get_type();
	void webkit_security_manager_register_uri_scheme_as_cors_enabled(WebKitSecurityManager* securityManager, const(char)* scheme);
	void webkit_security_manager_register_uri_scheme_as_display_isolated(WebKitSecurityManager* securityManager, const(char)* scheme);
	void webkit_security_manager_register_uri_scheme_as_empty_document(WebKitSecurityManager* securityManager, const(char)* scheme);
	void webkit_security_manager_register_uri_scheme_as_local(WebKitSecurityManager* securityManager, const(char)* scheme);
	void webkit_security_manager_register_uri_scheme_as_no_access(WebKitSecurityManager* securityManager, const(char)* scheme);
	void webkit_security_manager_register_uri_scheme_as_secure(WebKitSecurityManager* securityManager, const(char)* scheme);
	int webkit_security_manager_uri_scheme_is_cors_enabled(WebKitSecurityManager* securityManager, const(char)* scheme);
	int webkit_security_manager_uri_scheme_is_display_isolated(WebKitSecurityManager* securityManager, const(char)* scheme);
	int webkit_security_manager_uri_scheme_is_empty_document(WebKitSecurityManager* securityManager, const(char)* scheme);
	int webkit_security_manager_uri_scheme_is_local(WebKitSecurityManager* securityManager, const(char)* scheme);
	int webkit_security_manager_uri_scheme_is_no_access(WebKitSecurityManager* securityManager, const(char)* scheme);
	int webkit_security_manager_uri_scheme_is_secure(WebKitSecurityManager* securityManager, const(char)* scheme);

	// webkit2.SecurityOrigin

	GType webkit_security_origin_get_type();
	WebKitSecurityOrigin* webkit_security_origin_new(const(char)* protocol, const(char)* host, ushort port);
	WebKitSecurityOrigin* webkit_security_origin_new_for_uri(const(char)* uri);
	const(char)* webkit_security_origin_get_host(WebKitSecurityOrigin* origin);
	ushort webkit_security_origin_get_port(WebKitSecurityOrigin* origin);
	const(char)* webkit_security_origin_get_protocol(WebKitSecurityOrigin* origin);
	int webkit_security_origin_is_opaque(WebKitSecurityOrigin* origin);
	WebKitSecurityOrigin* webkit_security_origin_ref(WebKitSecurityOrigin* origin);
	char* webkit_security_origin_to_string(WebKitSecurityOrigin* origin);
	void webkit_security_origin_unref(WebKitSecurityOrigin* origin);

	// webkit2.Settings

	GType webkit_settings_get_type();
	WebKitSettings* webkit_settings_new();
	WebKitSettings* webkit_settings_new_with_settings(const(char)* firstSettingName, ... );
	uint webkit_settings_font_size_to_pixels(uint points);
	uint webkit_settings_font_size_to_points(uint pixels);
	int webkit_settings_get_allow_file_access_from_file_urls(WebKitSettings* settings);
	int webkit_settings_get_allow_modal_dialogs(WebKitSettings* settings);
	int webkit_settings_get_allow_top_navigation_to_data_urls(WebKitSettings* settings);
	int webkit_settings_get_allow_universal_access_from_file_urls(WebKitSettings* settings);
	int webkit_settings_get_auto_load_images(WebKitSettings* settings);
	const(char)* webkit_settings_get_cursive_font_family(WebKitSettings* settings);
	const(char)* webkit_settings_get_default_charset(WebKitSettings* settings);
	const(char)* webkit_settings_get_default_font_family(WebKitSettings* settings);
	uint webkit_settings_get_default_font_size(WebKitSettings* settings);
	uint webkit_settings_get_default_monospace_font_size(WebKitSettings* settings);
	int webkit_settings_get_draw_compositing_indicators(WebKitSettings* settings);
	int webkit_settings_get_enable_accelerated_2d_canvas(WebKitSettings* settings);
	int webkit_settings_get_enable_back_forward_navigation_gestures(WebKitSettings* settings);
	int webkit_settings_get_enable_caret_browsing(WebKitSettings* settings);
	int webkit_settings_get_enable_developer_extras(WebKitSettings* settings);
	int webkit_settings_get_enable_dns_prefetching(WebKitSettings* settings);
	int webkit_settings_get_enable_encrypted_media(WebKitSettings* settings);
	int webkit_settings_get_enable_frame_flattening(WebKitSettings* settings);
	int webkit_settings_get_enable_fullscreen(WebKitSettings* settings);
	int webkit_settings_get_enable_html5_database(WebKitSettings* settings);
	int webkit_settings_get_enable_html5_local_storage(WebKitSettings* settings);
	int webkit_settings_get_enable_hyperlink_auditing(WebKitSettings* settings);
	int webkit_settings_get_enable_java(WebKitSettings* settings);
	int webkit_settings_get_enable_javascript(WebKitSettings* settings);
	int webkit_settings_get_enable_javascript_markup(WebKitSettings* settings);
	int webkit_settings_get_enable_media(WebKitSettings* settings);
	int webkit_settings_get_enable_media_capabilities(WebKitSettings* settings);
	int webkit_settings_get_enable_media_stream(WebKitSettings* settings);
	int webkit_settings_get_enable_mediasource(WebKitSettings* settings);
	int webkit_settings_get_enable_mock_capture_devices(WebKitSettings* settings);
	int webkit_settings_get_enable_offline_web_application_cache(WebKitSettings* settings);
	int webkit_settings_get_enable_page_cache(WebKitSettings* settings);
	int webkit_settings_get_enable_plugins(WebKitSettings* settings);
	int webkit_settings_get_enable_private_browsing(WebKitSettings* settings);
	int webkit_settings_get_enable_resizable_text_areas(WebKitSettings* settings);
	int webkit_settings_get_enable_site_specific_quirks(WebKitSettings* settings);
	int webkit_settings_get_enable_smooth_scrolling(WebKitSettings* settings);
	int webkit_settings_get_enable_spatial_navigation(WebKitSettings* settings);
	int webkit_settings_get_enable_tabs_to_links(WebKitSettings* settings);
	int webkit_settings_get_enable_webaudio(WebKitSettings* settings);
	int webkit_settings_get_enable_webgl(WebKitSettings* settings);
	int webkit_settings_get_enable_write_console_messages_to_stdout(WebKitSettings* settings);
	int webkit_settings_get_enable_xss_auditor(WebKitSettings* settings);
	const(char)* webkit_settings_get_fantasy_font_family(WebKitSettings* settings);
	WebKitHardwareAccelerationPolicy webkit_settings_get_hardware_acceleration_policy(WebKitSettings* settings);
	int webkit_settings_get_javascript_can_access_clipboard(WebKitSettings* settings);
	int webkit_settings_get_javascript_can_open_windows_automatically(WebKitSettings* settings);
	int webkit_settings_get_load_icons_ignoring_image_load_setting(WebKitSettings* settings);
	const(char)* webkit_settings_get_media_content_types_requiring_hardware_support(WebKitSettings* settings);
	int webkit_settings_get_media_playback_allows_inline(WebKitSettings* settings);
	int webkit_settings_get_media_playback_requires_user_gesture(WebKitSettings* settings);
	uint webkit_settings_get_minimum_font_size(WebKitSettings* settings);
	const(char)* webkit_settings_get_monospace_font_family(WebKitSettings* settings);
	const(char)* webkit_settings_get_pictograph_font_family(WebKitSettings* settings);
	int webkit_settings_get_print_backgrounds(WebKitSettings* settings);
	const(char)* webkit_settings_get_sans_serif_font_family(WebKitSettings* settings);
	const(char)* webkit_settings_get_serif_font_family(WebKitSettings* settings);
	const(char)* webkit_settings_get_user_agent(WebKitSettings* settings);
	int webkit_settings_get_zoom_text_only(WebKitSettings* settings);
	void webkit_settings_set_allow_file_access_from_file_urls(WebKitSettings* settings, int allowed);
	void webkit_settings_set_allow_modal_dialogs(WebKitSettings* settings, int allowed);
	void webkit_settings_set_allow_top_navigation_to_data_urls(WebKitSettings* settings, int allowed);
	void webkit_settings_set_allow_universal_access_from_file_urls(WebKitSettings* settings, int allowed);
	void webkit_settings_set_auto_load_images(WebKitSettings* settings, int enabled);
	void webkit_settings_set_cursive_font_family(WebKitSettings* settings, const(char)* cursiveFontFamily);
	void webkit_settings_set_default_charset(WebKitSettings* settings, const(char)* defaultCharset);
	void webkit_settings_set_default_font_family(WebKitSettings* settings, const(char)* defaultFontFamily);
	void webkit_settings_set_default_font_size(WebKitSettings* settings, uint fontSize);
	void webkit_settings_set_default_monospace_font_size(WebKitSettings* settings, uint fontSize);
	void webkit_settings_set_draw_compositing_indicators(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_accelerated_2d_canvas(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_back_forward_navigation_gestures(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_caret_browsing(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_developer_extras(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_dns_prefetching(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_encrypted_media(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_frame_flattening(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_fullscreen(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_html5_database(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_html5_local_storage(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_hyperlink_auditing(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_java(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_javascript(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_javascript_markup(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_media(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_media_capabilities(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_media_stream(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_mediasource(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_mock_capture_devices(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_offline_web_application_cache(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_page_cache(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_plugins(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_private_browsing(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_resizable_text_areas(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_site_specific_quirks(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_smooth_scrolling(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_spatial_navigation(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_tabs_to_links(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_webaudio(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_webgl(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_write_console_messages_to_stdout(WebKitSettings* settings, int enabled);
	void webkit_settings_set_enable_xss_auditor(WebKitSettings* settings, int enabled);
	void webkit_settings_set_fantasy_font_family(WebKitSettings* settings, const(char)* fantasyFontFamily);
	void webkit_settings_set_hardware_acceleration_policy(WebKitSettings* settings, WebKitHardwareAccelerationPolicy policy);
	void webkit_settings_set_javascript_can_access_clipboard(WebKitSettings* settings, int enabled);
	void webkit_settings_set_javascript_can_open_windows_automatically(WebKitSettings* settings, int enabled);
	void webkit_settings_set_load_icons_ignoring_image_load_setting(WebKitSettings* settings, int enabled);
	void webkit_settings_set_media_content_types_requiring_hardware_support(WebKitSettings* settings, const(char)* contentTypes);
	void webkit_settings_set_media_playback_allows_inline(WebKitSettings* settings, int enabled);
	void webkit_settings_set_media_playback_requires_user_gesture(WebKitSettings* settings, int enabled);
	void webkit_settings_set_minimum_font_size(WebKitSettings* settings, uint fontSize);
	void webkit_settings_set_monospace_font_family(WebKitSettings* settings, const(char)* monospaceFontFamily);
	void webkit_settings_set_pictograph_font_family(WebKitSettings* settings, const(char)* pictographFontFamily);
	void webkit_settings_set_print_backgrounds(WebKitSettings* settings, int printBackgrounds);
	void webkit_settings_set_sans_serif_font_family(WebKitSettings* settings, const(char)* sansSerifFontFamily);
	void webkit_settings_set_serif_font_family(WebKitSettings* settings, const(char)* serifFontFamily);
	void webkit_settings_set_user_agent(WebKitSettings* settings, const(char)* userAgent);
	void webkit_settings_set_user_agent_with_application_details(WebKitSettings* settings, const(char)* applicationName, const(char)* applicationVersion);
	void webkit_settings_set_zoom_text_only(WebKitSettings* settings, int zoomTextOnly);

	// webkit2.URIRequest

	GType webkit_uri_request_get_type();
	WebKitURIRequest* webkit_uri_request_new(const(char)* uri);
	SoupMessageHeaders* webkit_uri_request_get_http_headers(WebKitURIRequest* request);
	const(char)* webkit_uri_request_get_http_method(WebKitURIRequest* request);
	const(char)* webkit_uri_request_get_uri(WebKitURIRequest* request);
	void webkit_uri_request_set_uri(WebKitURIRequest* request, const(char)* uri);

	// webkit2.URIResponse

	GType webkit_uri_response_get_type();
	ulong webkit_uri_response_get_content_length(WebKitURIResponse* response);
	SoupMessageHeaders* webkit_uri_response_get_http_headers(WebKitURIResponse* response);
	const(char)* webkit_uri_response_get_mime_type(WebKitURIResponse* response);
	uint webkit_uri_response_get_status_code(WebKitURIResponse* response);
	const(char)* webkit_uri_response_get_suggested_filename(WebKitURIResponse* response);
	const(char)* webkit_uri_response_get_uri(WebKitURIResponse* response);

	// webkit2.URISchemeRequest

	GType webkit_uri_scheme_request_get_type();
	void webkit_uri_scheme_request_finish(WebKitURISchemeRequest* request, GInputStream* stream, long streamLength, const(char)* contentType);
	void webkit_uri_scheme_request_finish_error(WebKitURISchemeRequest* request, GError* error);
	const(char)* webkit_uri_scheme_request_get_path(WebKitURISchemeRequest* request);
	const(char)* webkit_uri_scheme_request_get_scheme(WebKitURISchemeRequest* request);
	const(char)* webkit_uri_scheme_request_get_uri(WebKitURISchemeRequest* request);
	WebKitWebView* webkit_uri_scheme_request_get_web_view(WebKitURISchemeRequest* request);

	// webkit2.UserContentFilter

	GType webkit_user_content_filter_get_type();
	const(char)* webkit_user_content_filter_get_identifier(WebKitUserContentFilter* userContentFilter);
	WebKitUserContentFilter* webkit_user_content_filter_ref(WebKitUserContentFilter* userContentFilter);
	void webkit_user_content_filter_unref(WebKitUserContentFilter* userContentFilter);

	// webkit2.UserContentFilterStore

	GType webkit_user_content_filter_store_get_type();
	WebKitUserContentFilterStore* webkit_user_content_filter_store_new(const(char)* storagePath);
	void webkit_user_content_filter_store_fetch_identifiers(WebKitUserContentFilterStore* store, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char** webkit_user_content_filter_store_fetch_identifiers_finish(WebKitUserContentFilterStore* store, GAsyncResult* result);
	const(char)* webkit_user_content_filter_store_get_path(WebKitUserContentFilterStore* store);
	void webkit_user_content_filter_store_load(WebKitUserContentFilterStore* store, const(char)* identifier, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitUserContentFilter* webkit_user_content_filter_store_load_finish(WebKitUserContentFilterStore* store, GAsyncResult* result, GError** err);
	void webkit_user_content_filter_store_remove(WebKitUserContentFilterStore* store, const(char)* identifier, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_user_content_filter_store_remove_finish(WebKitUserContentFilterStore* store, GAsyncResult* result, GError** err);
	void webkit_user_content_filter_store_save(WebKitUserContentFilterStore* store, const(char)* identifier, GBytes* source, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitUserContentFilter* webkit_user_content_filter_store_save_finish(WebKitUserContentFilterStore* store, GAsyncResult* result, GError** err);
	void webkit_user_content_filter_store_save_from_file(WebKitUserContentFilterStore* store, const(char)* identifier, GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitUserContentFilter* webkit_user_content_filter_store_save_from_file_finish(WebKitUserContentFilterStore* store, GAsyncResult* result, GError** err);

	// webkit2.UserContentManager

	GType webkit_user_content_manager_get_type();
	WebKitUserContentManager* webkit_user_content_manager_new();
	void webkit_user_content_manager_add_filter(WebKitUserContentManager* manager, WebKitUserContentFilter* filter);
	void webkit_user_content_manager_add_script(WebKitUserContentManager* manager, WebKitUserScript* script);
	void webkit_user_content_manager_add_style_sheet(WebKitUserContentManager* manager, WebKitUserStyleSheet* stylesheet);
	int webkit_user_content_manager_register_script_message_handler(WebKitUserContentManager* manager, const(char)* name);
	int webkit_user_content_manager_register_script_message_handler_in_world(WebKitUserContentManager* manager, const(char)* name, const(char)* worldName);
	void webkit_user_content_manager_remove_all_filters(WebKitUserContentManager* manager);
	void webkit_user_content_manager_remove_all_scripts(WebKitUserContentManager* manager);
	void webkit_user_content_manager_remove_all_style_sheets(WebKitUserContentManager* manager);
	void webkit_user_content_manager_remove_filter(WebKitUserContentManager* manager, WebKitUserContentFilter* filter);
	void webkit_user_content_manager_remove_filter_by_id(WebKitUserContentManager* manager, const(char)* filterId);
	void webkit_user_content_manager_unregister_script_message_handler(WebKitUserContentManager* manager, const(char)* name);
	void webkit_user_content_manager_unregister_script_message_handler_in_world(WebKitUserContentManager* manager, const(char)* name, const(char)* worldName);

	// webkit2.UserMediaPermissionRequest

	GType webkit_user_media_permission_request_get_type();

	// webkit2.UserMessage

	GType webkit_user_message_get_type();
	WebKitUserMessage* webkit_user_message_new(const(char)* name, GVariant* parameters);
	WebKitUserMessage* webkit_user_message_new_with_fd_list(const(char)* name, GVariant* parameters, GUnixFDList* fdList);
	GUnixFDList* webkit_user_message_get_fd_list(WebKitUserMessage* message);
	const(char)* webkit_user_message_get_name(WebKitUserMessage* message);
	GVariant* webkit_user_message_get_parameters(WebKitUserMessage* message);
	void webkit_user_message_send_reply(WebKitUserMessage* message, WebKitUserMessage* reply);

	// webkit2.UserScript

	GType webkit_user_script_get_type();
	WebKitUserScript* webkit_user_script_new(const(char)* source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserScriptInjectionTime injectionTime, char** allowList, char** blockList);
	WebKitUserScript* webkit_user_script_new_for_world(const(char)* source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserScriptInjectionTime injectionTime, const(char)* worldName, char** allowList, char** blockList);
	WebKitUserScript* webkit_user_script_ref(WebKitUserScript* userScript);
	void webkit_user_script_unref(WebKitUserScript* userScript);

	// webkit2.UserStyleSheet

	GType webkit_user_style_sheet_get_type();
	WebKitUserStyleSheet* webkit_user_style_sheet_new(const(char)* source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserStyleLevel level, char** allowList, char** blockList);
	WebKitUserStyleSheet* webkit_user_style_sheet_new_for_world(const(char)* source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserStyleLevel level, const(char)* worldName, char** allowList, char** blockList);
	WebKitUserStyleSheet* webkit_user_style_sheet_ref(WebKitUserStyleSheet* userStyleSheet);
	void webkit_user_style_sheet_unref(WebKitUserStyleSheet* userStyleSheet);

	// webkit2.WebContext

	GType webkit_web_context_get_type();
	WebKitWebContext* webkit_web_context_new();
	WebKitWebContext* webkit_web_context_new_ephemeral();
	WebKitWebContext* webkit_web_context_new_with_website_data_manager(WebKitWebsiteDataManager* manager);
	WebKitWebContext* webkit_web_context_get_default();
	void webkit_web_context_add_path_to_sandbox(WebKitWebContext* context, char* path, int readOnly);
	void webkit_web_context_allow_tls_certificate_for_host(WebKitWebContext* context, GTlsCertificate* certificate, const(char)* host);
	void webkit_web_context_clear_cache(WebKitWebContext* context);
	WebKitDownload* webkit_web_context_download_uri(WebKitWebContext* context, const(char)* uri);
	WebKitCacheModel webkit_web_context_get_cache_model(WebKitWebContext* context);
	WebKitCookieManager* webkit_web_context_get_cookie_manager(WebKitWebContext* context);
	WebKitFaviconDatabase* webkit_web_context_get_favicon_database(WebKitWebContext* context);
	const(char)* webkit_web_context_get_favicon_database_directory(WebKitWebContext* context);
	WebKitGeolocationManager* webkit_web_context_get_geolocation_manager(WebKitWebContext* context);
	void webkit_web_context_get_plugins(WebKitWebContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* webkit_web_context_get_plugins_finish(WebKitWebContext* context, GAsyncResult* result, GError** err);
	WebKitProcessModel webkit_web_context_get_process_model(WebKitWebContext* context);
	int webkit_web_context_get_sandbox_enabled(WebKitWebContext* context);
	WebKitSecurityManager* webkit_web_context_get_security_manager(WebKitWebContext* context);
	int webkit_web_context_get_spell_checking_enabled(WebKitWebContext* context);
	char** webkit_web_context_get_spell_checking_languages(WebKitWebContext* context);
	WebKitTLSErrorsPolicy webkit_web_context_get_tls_errors_policy(WebKitWebContext* context);
	int webkit_web_context_get_use_system_appearance_for_scrollbars(WebKitWebContext* context);
	uint webkit_web_context_get_web_process_count_limit(WebKitWebContext* context);
	WebKitWebsiteDataManager* webkit_web_context_get_website_data_manager(WebKitWebContext* context);
	void webkit_web_context_initialize_notification_permissions(WebKitWebContext* context, GList* allowedOrigins, GList* disallowedOrigins);
	int webkit_web_context_is_automation_allowed(WebKitWebContext* context);
	int webkit_web_context_is_ephemeral(WebKitWebContext* context);
	void webkit_web_context_prefetch_dns(WebKitWebContext* context, const(char)* hostname);
	void webkit_web_context_register_uri_scheme(WebKitWebContext* context, const(char)* scheme, WebKitURISchemeRequestCallback callback, void* userData, GDestroyNotify userDataDestroyFunc);
	void webkit_web_context_send_message_to_all_extensions(WebKitWebContext* context, WebKitUserMessage* message);
	void webkit_web_context_set_additional_plugins_directory(WebKitWebContext* context, const(char)* directory);
	void webkit_web_context_set_automation_allowed(WebKitWebContext* context, int allowed);
	void webkit_web_context_set_cache_model(WebKitWebContext* context, WebKitCacheModel cacheModel);
	void webkit_web_context_set_disk_cache_directory(WebKitWebContext* context, const(char)* directory);
	void webkit_web_context_set_favicon_database_directory(WebKitWebContext* context, const(char)* path);
	void webkit_web_context_set_network_proxy_settings(WebKitWebContext* context, WebKitNetworkProxyMode proxyMode, WebKitNetworkProxySettings* proxySettings);
	void webkit_web_context_set_preferred_languages(WebKitWebContext* context, char** languages);
	void webkit_web_context_set_process_model(WebKitWebContext* context, WebKitProcessModel processModel);
	void webkit_web_context_set_sandbox_enabled(WebKitWebContext* context, int enabled);
	void webkit_web_context_set_spell_checking_enabled(WebKitWebContext* context, int enabled);
	void webkit_web_context_set_spell_checking_languages(WebKitWebContext* context, char** languages);
	void webkit_web_context_set_tls_errors_policy(WebKitWebContext* context, WebKitTLSErrorsPolicy policy);
	void webkit_web_context_set_use_system_appearance_for_scrollbars(WebKitWebContext* context, int enabled);
	void webkit_web_context_set_web_extensions_directory(WebKitWebContext* context, const(char)* directory);
	void webkit_web_context_set_web_extensions_initialization_user_data(WebKitWebContext* context, GVariant* userData);
	void webkit_web_context_set_web_process_count_limit(WebKitWebContext* context, uint limit);

	// webkit2.WebInspector

	GType webkit_web_inspector_get_type();
	void webkit_web_inspector_attach(WebKitWebInspector* inspector);
	void webkit_web_inspector_close(WebKitWebInspector* inspector);
	void webkit_web_inspector_detach(WebKitWebInspector* inspector);
	uint webkit_web_inspector_get_attached_height(WebKitWebInspector* inspector);
	int webkit_web_inspector_get_can_attach(WebKitWebInspector* inspector);
	const(char)* webkit_web_inspector_get_inspected_uri(WebKitWebInspector* inspector);
	WebKitWebViewBase* webkit_web_inspector_get_web_view(WebKitWebInspector* inspector);
	int webkit_web_inspector_is_attached(WebKitWebInspector* inspector);
	void webkit_web_inspector_show(WebKitWebInspector* inspector);

	// webkit2.WebResource

	GType webkit_web_resource_get_type();
	void webkit_web_resource_get_data(WebKitWebResource* resource, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* webkit_web_resource_get_data_finish(WebKitWebResource* resource, GAsyncResult* result, size_t* length, GError** err);
	WebKitURIResponse* webkit_web_resource_get_response(WebKitWebResource* resource);
	const(char)* webkit_web_resource_get_uri(WebKitWebResource* resource);

	// webkit2.WebView

	GType webkit_web_view_get_type();
	GtkWidget* webkit_web_view_new();
	GtkWidget* webkit_web_view_new_with_context(WebKitWebContext* context);
	GtkWidget* webkit_web_view_new_with_related_view(WebKitWebView* webView);
	GtkWidget* webkit_web_view_new_with_settings(WebKitSettings* settings);
	GtkWidget* webkit_web_view_new_with_user_content_manager(WebKitUserContentManager* userContentManager);
	void webkit_web_view_can_execute_editing_command(WebKitWebView* webView, const(char)* command, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_web_view_can_execute_editing_command_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	int webkit_web_view_can_go_back(WebKitWebView* webView);
	int webkit_web_view_can_go_forward(WebKitWebView* webView);
	int webkit_web_view_can_show_mime_type(WebKitWebView* webView, const(char)* mimeType);
	WebKitDownload* webkit_web_view_download_uri(WebKitWebView* webView, const(char)* uri);
	void webkit_web_view_execute_editing_command(WebKitWebView* webView, const(char)* command);
	void webkit_web_view_execute_editing_command_with_argument(WebKitWebView* webView, const(char)* command, const(char)* argument);
	WebKitAutomationBrowsingContextPresentation webkit_web_view_get_automation_presentation_type(WebKitWebView* webView);
	WebKitBackForwardList* webkit_web_view_get_back_forward_list(WebKitWebView* webView);
	void webkit_web_view_get_background_color(WebKitWebView* webView, GdkRGBA* rgba);
	WebKitWebContext* webkit_web_view_get_context(WebKitWebView* webView);
	const(char)* webkit_web_view_get_custom_charset(WebKitWebView* webView);
	WebKitEditorState* webkit_web_view_get_editor_state(WebKitWebView* webView);
	double webkit_web_view_get_estimated_load_progress(WebKitWebView* webView);
	cairo_surface_t* webkit_web_view_get_favicon(WebKitWebView* webView);
	WebKitFindController* webkit_web_view_get_find_controller(WebKitWebView* webView);
	WebKitInputMethodContext* webkit_web_view_get_input_method_context(WebKitWebView* webView);
	WebKitWebInspector* webkit_web_view_get_inspector(WebKitWebView* webView);
	int webkit_web_view_get_is_muted(WebKitWebView* webView);
	JSGlobalContextRef webkit_web_view_get_javascript_global_context(WebKitWebView* webView);
	WebKitWebResource* webkit_web_view_get_main_resource(WebKitWebView* webView);
	ulong webkit_web_view_get_page_id(WebKitWebView* webView);
	WebKitWebViewSessionState* webkit_web_view_get_session_state(WebKitWebView* webView);
	WebKitSettings* webkit_web_view_get_settings(WebKitWebView* webView);
	void webkit_web_view_get_snapshot(WebKitWebView* webView, WebKitSnapshotRegion region, WebKitSnapshotOptions options, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	cairo_surface_t* webkit_web_view_get_snapshot_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	const(char)* webkit_web_view_get_title(WebKitWebView* webView);
	int webkit_web_view_get_tls_info(WebKitWebView* webView, GTlsCertificate** certificate, GTlsCertificateFlags* errors);
	const(char)* webkit_web_view_get_uri(WebKitWebView* webView);
	WebKitUserContentManager* webkit_web_view_get_user_content_manager(WebKitWebView* webView);
	WebKitWebsiteDataManager* webkit_web_view_get_website_data_manager(WebKitWebView* webView);
	WebKitWebsitePolicies* webkit_web_view_get_website_policies(WebKitWebView* webView);
	WebKitWindowProperties* webkit_web_view_get_window_properties(WebKitWebView* webView);
	double webkit_web_view_get_zoom_level(WebKitWebView* webView);
	void webkit_web_view_go_back(WebKitWebView* webView);
	void webkit_web_view_go_forward(WebKitWebView* webView);
	void webkit_web_view_go_to_back_forward_list_item(WebKitWebView* webView, WebKitBackForwardListItem* listItem);
	int webkit_web_view_is_controlled_by_automation(WebKitWebView* webView);
	int webkit_web_view_is_editable(WebKitWebView* webView);
	int webkit_web_view_is_ephemeral(WebKitWebView* webView);
	int webkit_web_view_is_loading(WebKitWebView* webView);
	int webkit_web_view_is_playing_audio(WebKitWebView* webView);
	void webkit_web_view_load_alternate_html(WebKitWebView* webView, const(char)* content, const(char)* contentUri, const(char)* baseUri);
	void webkit_web_view_load_bytes(WebKitWebView* webView, GBytes* bytes, const(char)* mimeType, const(char)* encoding, const(char)* baseUri);
	void webkit_web_view_load_html(WebKitWebView* webView, const(char)* content, const(char)* baseUri);
	void webkit_web_view_load_plain_text(WebKitWebView* webView, const(char)* plainText);
	void webkit_web_view_load_request(WebKitWebView* webView, WebKitURIRequest* request);
	void webkit_web_view_load_uri(WebKitWebView* webView, const(char)* uri);
	void webkit_web_view_reload(WebKitWebView* webView);
	void webkit_web_view_reload_bypass_cache(WebKitWebView* webView);
	void webkit_web_view_restore_session_state(WebKitWebView* webView, WebKitWebViewSessionState* state);
	void webkit_web_view_run_javascript(WebKitWebView* webView, const(char)* script, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitJavascriptResult* webkit_web_view_run_javascript_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	void webkit_web_view_run_javascript_from_gresource(WebKitWebView* webView, const(char)* resource, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitJavascriptResult* webkit_web_view_run_javascript_from_gresource_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	void webkit_web_view_run_javascript_in_world(WebKitWebView* webView, const(char)* script, const(char)* worldName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitJavascriptResult* webkit_web_view_run_javascript_in_world_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	void webkit_web_view_save(WebKitWebView* webView, WebKitSaveMode saveMode, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GInputStream* webkit_web_view_save_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	void webkit_web_view_save_to_file(WebKitWebView* webView, GFile* file, WebKitSaveMode saveMode, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_web_view_save_to_file_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	void webkit_web_view_send_message_to_page(WebKitWebView* webView, WebKitUserMessage* message, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitUserMessage* webkit_web_view_send_message_to_page_finish(WebKitWebView* webView, GAsyncResult* result, GError** err);
	void webkit_web_view_set_background_color(WebKitWebView* webView, GdkRGBA* rgba);
	void webkit_web_view_set_custom_charset(WebKitWebView* webView, const(char)* charset);
	void webkit_web_view_set_editable(WebKitWebView* webView, int editable);
	void webkit_web_view_set_input_method_context(WebKitWebView* webView, WebKitInputMethodContext* context);
	void webkit_web_view_set_is_muted(WebKitWebView* webView, int muted);
	void webkit_web_view_set_settings(WebKitWebView* webView, WebKitSettings* settings);
	void webkit_web_view_set_zoom_level(WebKitWebView* webView, double zoomLevel);
	void webkit_web_view_stop_loading(WebKitWebView* webView);
	void webkit_web_view_try_close(WebKitWebView* webView);

	// webkit2.WebViewBase

	GType webkit_web_view_base_get_type();

	// webkit2.WebViewSessionState

	GType webkit_web_view_session_state_get_type();
	WebKitWebViewSessionState* webkit_web_view_session_state_new(GBytes* data);
	WebKitWebViewSessionState* webkit_web_view_session_state_ref(WebKitWebViewSessionState* state);
	GBytes* webkit_web_view_session_state_serialize(WebKitWebViewSessionState* state);
	void webkit_web_view_session_state_unref(WebKitWebViewSessionState* state);

	// webkit2.WebsiteData

	GType webkit_website_data_get_type();
	const(char)* webkit_website_data_get_name(WebKitWebsiteData* websiteData);
	ulong webkit_website_data_get_size(WebKitWebsiteData* websiteData, WebKitWebsiteDataTypes types);
	WebKitWebsiteDataTypes webkit_website_data_get_types(WebKitWebsiteData* websiteData);
	WebKitWebsiteData* webkit_website_data_ref(WebKitWebsiteData* websiteData);
	void webkit_website_data_unref(WebKitWebsiteData* websiteData);

	// webkit2.WebsiteDataAccessPermissionRequest

	GType webkit_website_data_access_permission_request_get_type();
	const(char)* webkit_website_data_access_permission_request_get_current_domain(WebKitWebsiteDataAccessPermissionRequest* request);
	const(char)* webkit_website_data_access_permission_request_get_requesting_domain(WebKitWebsiteDataAccessPermissionRequest* request);

	// webkit2.WebsiteDataManager

	GType webkit_website_data_manager_get_type();
	WebKitWebsiteDataManager* webkit_website_data_manager_new(const(char)* firstOptionName, ... );
	WebKitWebsiteDataManager* webkit_website_data_manager_new_ephemeral();
	void webkit_website_data_manager_clear(WebKitWebsiteDataManager* manager, WebKitWebsiteDataTypes types, GTimeSpan timespan, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_website_data_manager_clear_finish(WebKitWebsiteDataManager* manager, GAsyncResult* result, GError** err);
	void webkit_website_data_manager_fetch(WebKitWebsiteDataManager* manager, WebKitWebsiteDataTypes types, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* webkit_website_data_manager_fetch_finish(WebKitWebsiteDataManager* manager, GAsyncResult* result, GError** err);
	const(char)* webkit_website_data_manager_get_base_cache_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_base_data_directory(WebKitWebsiteDataManager* manager);
	WebKitCookieManager* webkit_website_data_manager_get_cookie_manager(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_disk_cache_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_dom_cache_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_hsts_cache_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_indexeddb_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_itp_directory(WebKitWebsiteDataManager* manager);
	int webkit_website_data_manager_get_itp_enabled(WebKitWebsiteDataManager* manager);
	void webkit_website_data_manager_get_itp_summary(WebKitWebsiteDataManager* manager, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* webkit_website_data_manager_get_itp_summary_finish(WebKitWebsiteDataManager* manager, GAsyncResult* result, GError** err);
	const(char)* webkit_website_data_manager_get_local_storage_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_offline_application_cache_directory(WebKitWebsiteDataManager* manager);
	int webkit_website_data_manager_get_persistent_credential_storage_enabled(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_service_worker_registrations_directory(WebKitWebsiteDataManager* manager);
	const(char)* webkit_website_data_manager_get_websql_directory(WebKitWebsiteDataManager* manager);
	int webkit_website_data_manager_is_ephemeral(WebKitWebsiteDataManager* manager);
	void webkit_website_data_manager_remove(WebKitWebsiteDataManager* manager, WebKitWebsiteDataTypes types, GList* websiteData, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int webkit_website_data_manager_remove_finish(WebKitWebsiteDataManager* manager, GAsyncResult* result, GError** err);
	void webkit_website_data_manager_set_itp_enabled(WebKitWebsiteDataManager* manager, int enabled);
	void webkit_website_data_manager_set_persistent_credential_storage_enabled(WebKitWebsiteDataManager* manager, int enabled);

	// webkit2.WebsitePolicies

	GType webkit_website_policies_get_type();
	WebKitWebsitePolicies* webkit_website_policies_new();
	WebKitWebsitePolicies* webkit_website_policies_new_with_policies(const(char)* firstPolicyName, ... );
	WebKitAutoplayPolicy webkit_website_policies_get_autoplay_policy(WebKitWebsitePolicies* policies);

	// webkit2.WindowProperties

	GType webkit_window_properties_get_type();
	int webkit_window_properties_get_fullscreen(WebKitWindowProperties* windowProperties);
	void webkit_window_properties_get_geometry(WebKitWindowProperties* windowProperties, GdkRectangle* geometry);
	int webkit_window_properties_get_locationbar_visible(WebKitWindowProperties* windowProperties);
	int webkit_window_properties_get_menubar_visible(WebKitWindowProperties* windowProperties);
	int webkit_window_properties_get_resizable(WebKitWindowProperties* windowProperties);
	int webkit_window_properties_get_scrollbars_visible(WebKitWindowProperties* windowProperties);
	int webkit_window_properties_get_statusbar_visible(WebKitWindowProperties* windowProperties);
	int webkit_window_properties_get_toolbar_visible(WebKitWindowProperties* windowProperties);
}