module webkit2webextension.c.functions;

import std.stdio;
import webkit2webextension.c.types;
version (Windows)
	static immutable LIBRARY_WEBKIT2WEBEXTENSION = ["libjavascriptcoregtk-4.0-18.dll;javascriptcoregtk-4.0-18.dll;javascriptcoregtk-4.dll", "libwebkit2gtk-4.0-37.dll;webkit2gtk-4.0-37.dll;webkit2gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_WEBKIT2WEBEXTENSION = ["libjavascriptcoregtk-4.0.18.dylib", "libwebkit2gtk-4.0.37.dylib"];
else
	static immutable LIBRARY_WEBKIT2WEBEXTENSION = ["libjavascriptcoregtk-4.0.so.18", "libwebkit2gtk-4.0.so.37"];

__gshared extern(C)
{

	// webkit2webextension.ConsoleMessage

	GType webkit_console_message_get_type();
	WebKitConsoleMessage* webkit_console_message_copy(WebKitConsoleMessage* consoleMessage);
	void webkit_console_message_free(WebKitConsoleMessage* consoleMessage);
	WebKitConsoleMessageLevel webkit_console_message_get_level(WebKitConsoleMessage* consoleMessage);
	uint webkit_console_message_get_line(WebKitConsoleMessage* consoleMessage);
	WebKitConsoleMessageSource webkit_console_message_get_source(WebKitConsoleMessage* consoleMessage);
	const(char)* webkit_console_message_get_source_id(WebKitConsoleMessage* consoleMessage);
	const(char)* webkit_console_message_get_text(WebKitConsoleMessage* consoleMessage);

	// webkit2webextension.ContextMenu

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

	// webkit2webextension.ContextMenuItem

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

	// webkit2webextension.DOMAttr

	GType webkit_dom_attr_get_type();
	char* webkit_dom_attr_get_local_name(WebKitDOMAttr* self);
	char* webkit_dom_attr_get_name(WebKitDOMAttr* self);
	char* webkit_dom_attr_get_namespace_uri(WebKitDOMAttr* self);
	WebKitDOMElement* webkit_dom_attr_get_owner_element(WebKitDOMAttr* self);
	char* webkit_dom_attr_get_prefix(WebKitDOMAttr* self);
	int webkit_dom_attr_get_specified(WebKitDOMAttr* self);
	char* webkit_dom_attr_get_value(WebKitDOMAttr* self);
	void webkit_dom_attr_set_value(WebKitDOMAttr* self, const(char)* value, GError** err);

	// webkit2webextension.DOMBlob

	GType webkit_dom_blob_get_type();
	ulong webkit_dom_blob_get_size(WebKitDOMBlob* self);

	// webkit2webextension.DOMCDATASection

	GType webkit_dom_cdata_section_get_type();

	// webkit2webextension.DOMCSSRule

	GType webkit_dom_css_rule_get_type();
	char* webkit_dom_css_rule_get_css_text(WebKitDOMCSSRule* self);
	WebKitDOMCSSRule* webkit_dom_css_rule_get_parent_rule(WebKitDOMCSSRule* self);
	WebKitDOMCSSStyleSheet* webkit_dom_css_rule_get_parent_style_sheet(WebKitDOMCSSRule* self);
	ushort webkit_dom_css_rule_get_rule_type(WebKitDOMCSSRule* self);
	void webkit_dom_css_rule_set_css_text(WebKitDOMCSSRule* self, const(char)* value, GError** err);

	// webkit2webextension.DOMCSSRuleList

	GType webkit_dom_css_rule_list_get_type();
	gulong webkit_dom_css_rule_list_get_length(WebKitDOMCSSRuleList* self);
	WebKitDOMCSSRule* webkit_dom_css_rule_list_item(WebKitDOMCSSRuleList* self, gulong index);

	// webkit2webextension.DOMCSSStyleDeclaration

	GType webkit_dom_css_style_declaration_get_type();
	char* webkit_dom_css_style_declaration_get_css_text(WebKitDOMCSSStyleDeclaration* self);
	gulong webkit_dom_css_style_declaration_get_length(WebKitDOMCSSStyleDeclaration* self);
	WebKitDOMCSSRule* webkit_dom_css_style_declaration_get_parent_rule(WebKitDOMCSSStyleDeclaration* self);
	char* webkit_dom_css_style_declaration_get_property_priority(WebKitDOMCSSStyleDeclaration* self, const(char)* propertyName);
	char* webkit_dom_css_style_declaration_get_property_shorthand(WebKitDOMCSSStyleDeclaration* self, const(char)* propertyName);
	char* webkit_dom_css_style_declaration_get_property_value(WebKitDOMCSSStyleDeclaration* self, const(char)* propertyName);
	int webkit_dom_css_style_declaration_is_property_implicit(WebKitDOMCSSStyleDeclaration* self, const(char)* propertyName);
	char* webkit_dom_css_style_declaration_item(WebKitDOMCSSStyleDeclaration* self, gulong index);
	char* webkit_dom_css_style_declaration_remove_property(WebKitDOMCSSStyleDeclaration* self, const(char)* propertyName, GError** err);
	void webkit_dom_css_style_declaration_set_css_text(WebKitDOMCSSStyleDeclaration* self, const(char)* value, GError** err);
	void webkit_dom_css_style_declaration_set_property(WebKitDOMCSSStyleDeclaration* self, const(char)* propertyName, const(char)* value, const(char)* priority, GError** err);

	// webkit2webextension.DOMCSSStyleSheet

	GType webkit_dom_css_style_sheet_get_type();
	glong webkit_dom_css_style_sheet_add_rule(WebKitDOMCSSStyleSheet* self, const(char)* selector, const(char)* style, gulong index, GError** err);
	void webkit_dom_css_style_sheet_delete_rule(WebKitDOMCSSStyleSheet* self, gulong index, GError** err);
	WebKitDOMCSSRuleList* webkit_dom_css_style_sheet_get_css_rules(WebKitDOMCSSStyleSheet* self);
	WebKitDOMCSSRule* webkit_dom_css_style_sheet_get_owner_rule(WebKitDOMCSSStyleSheet* self);
	WebKitDOMCSSRuleList* webkit_dom_css_style_sheet_get_rules(WebKitDOMCSSStyleSheet* self);
	gulong webkit_dom_css_style_sheet_insert_rule(WebKitDOMCSSStyleSheet* self, const(char)* rule, gulong index, GError** err);
	void webkit_dom_css_style_sheet_remove_rule(WebKitDOMCSSStyleSheet* self, gulong index, GError** err);

	// webkit2webextension.DOMCSSValue

	GType webkit_dom_css_value_get_type();
	char* webkit_dom_css_value_get_css_text(WebKitDOMCSSValue* self);
	ushort webkit_dom_css_value_get_css_value_type(WebKitDOMCSSValue* self);
	void webkit_dom_css_value_set_css_text(WebKitDOMCSSValue* self, const(char)* value, GError** err);

	// webkit2webextension.DOMCharacterData

	GType webkit_dom_character_data_get_type();
	void webkit_dom_character_data_append_data(WebKitDOMCharacterData* self, const(char)* data, GError** err);
	void webkit_dom_character_data_delete_data(WebKitDOMCharacterData* self, gulong offset, gulong length, GError** err);
	char* webkit_dom_character_data_get_data(WebKitDOMCharacterData* self);
	gulong webkit_dom_character_data_get_length(WebKitDOMCharacterData* self);
	void webkit_dom_character_data_insert_data(WebKitDOMCharacterData* self, gulong offset, const(char)* data, GError** err);
	void webkit_dom_character_data_replace_data(WebKitDOMCharacterData* self, gulong offset, gulong length, const(char)* data, GError** err);
	void webkit_dom_character_data_set_data(WebKitDOMCharacterData* self, const(char)* value, GError** err);
	char* webkit_dom_character_data_substring_data(WebKitDOMCharacterData* self, gulong offset, gulong length, GError** err);

	// webkit2webextension.DOMClientRect

	GType webkit_dom_client_rect_get_type();
	float webkit_dom_client_rect_get_bottom(WebKitDOMClientRect* self);
	float webkit_dom_client_rect_get_height(WebKitDOMClientRect* self);
	float webkit_dom_client_rect_get_left(WebKitDOMClientRect* self);
	float webkit_dom_client_rect_get_right(WebKitDOMClientRect* self);
	float webkit_dom_client_rect_get_top(WebKitDOMClientRect* self);
	float webkit_dom_client_rect_get_width(WebKitDOMClientRect* self);

	// webkit2webextension.DOMClientRectList

	GType webkit_dom_client_rect_list_get_type();
	gulong webkit_dom_client_rect_list_get_length(WebKitDOMClientRectList* self);
	WebKitDOMClientRect* webkit_dom_client_rect_list_item(WebKitDOMClientRectList* self, gulong index);

	// webkit2webextension.DOMComment

	GType webkit_dom_comment_get_type();

	// webkit2webextension.DOMDOMImplementation

	GType webkit_dom_dom_implementation_get_type();
	WebKitDOMCSSStyleSheet* webkit_dom_dom_implementation_create_css_style_sheet(WebKitDOMDOMImplementation* self, const(char)* title, const(char)* media, GError** err);
	WebKitDOMDocument* webkit_dom_dom_implementation_create_document(WebKitDOMDOMImplementation* self, const(char)* namespaceURI, const(char)* qualifiedName, WebKitDOMDocumentType* doctype, GError** err);
	WebKitDOMDocumentType* webkit_dom_dom_implementation_create_document_type(WebKitDOMDOMImplementation* self, const(char)* qualifiedName, const(char)* publicId, const(char)* systemId, GError** err);
	WebKitDOMHTMLDocument* webkit_dom_dom_implementation_create_html_document(WebKitDOMDOMImplementation* self, const(char)* title);
	int webkit_dom_dom_implementation_has_feature(WebKitDOMDOMImplementation* self, const(char)* feature, const(char)* version_);

	// webkit2webextension.DOMDOMSelection

	GType webkit_dom_dom_selection_get_type();
	void webkit_dom_dom_selection_add_range(WebKitDOMDOMSelection* self, WebKitDOMRange* range);
	void webkit_dom_dom_selection_collapse(WebKitDOMDOMSelection* self, WebKitDOMNode* node, gulong offset);
	void webkit_dom_dom_selection_collapse_to_end(WebKitDOMDOMSelection* self, GError** err);
	void webkit_dom_dom_selection_collapse_to_start(WebKitDOMDOMSelection* self, GError** err);
	int webkit_dom_dom_selection_contains_node(WebKitDOMDOMSelection* self, WebKitDOMNode* node, int allowPartial);
	void webkit_dom_dom_selection_delete_from_document(WebKitDOMDOMSelection* self);
	void webkit_dom_dom_selection_empty(WebKitDOMDOMSelection* self);
	void webkit_dom_dom_selection_extend(WebKitDOMDOMSelection* self, WebKitDOMNode* node, gulong offset, GError** err);
	WebKitDOMNode* webkit_dom_dom_selection_get_anchor_node(WebKitDOMDOMSelection* self);
	gulong webkit_dom_dom_selection_get_anchor_offset(WebKitDOMDOMSelection* self);
	WebKitDOMNode* webkit_dom_dom_selection_get_base_node(WebKitDOMDOMSelection* self);
	gulong webkit_dom_dom_selection_get_base_offset(WebKitDOMDOMSelection* self);
	WebKitDOMNode* webkit_dom_dom_selection_get_extent_node(WebKitDOMDOMSelection* self);
	gulong webkit_dom_dom_selection_get_extent_offset(WebKitDOMDOMSelection* self);
	WebKitDOMNode* webkit_dom_dom_selection_get_focus_node(WebKitDOMDOMSelection* self);
	gulong webkit_dom_dom_selection_get_focus_offset(WebKitDOMDOMSelection* self);
	int webkit_dom_dom_selection_get_is_collapsed(WebKitDOMDOMSelection* self);
	WebKitDOMRange* webkit_dom_dom_selection_get_range_at(WebKitDOMDOMSelection* self, gulong index, GError** err);
	gulong webkit_dom_dom_selection_get_range_count(WebKitDOMDOMSelection* self);
	char* webkit_dom_dom_selection_get_selection_type(WebKitDOMDOMSelection* self);
	void webkit_dom_dom_selection_modify(WebKitDOMDOMSelection* self, const(char)* alter, const(char)* direction, const(char)* granularity);
	void webkit_dom_dom_selection_remove_all_ranges(WebKitDOMDOMSelection* self);
	void webkit_dom_dom_selection_select_all_children(WebKitDOMDOMSelection* self, WebKitDOMNode* node);
	void webkit_dom_dom_selection_set_base_and_extent(WebKitDOMDOMSelection* self, WebKitDOMNode* baseNode, gulong baseOffset, WebKitDOMNode* extentNode, gulong extentOffset);
	void webkit_dom_dom_selection_set_position(WebKitDOMDOMSelection* self, WebKitDOMNode* node, gulong offset);

	// webkit2webextension.DOMDOMTokenList

	GType webkit_dom_dom_token_list_get_type();
	void webkit_dom_dom_token_list_add(WebKitDOMDOMTokenList* self, GError** error, ... );
	int webkit_dom_dom_token_list_contains(WebKitDOMDOMTokenList* self, const(char)* token);
	gulong webkit_dom_dom_token_list_get_length(WebKitDOMDOMTokenList* self);
	char* webkit_dom_dom_token_list_get_value(WebKitDOMDOMTokenList* self);
	char* webkit_dom_dom_token_list_item(WebKitDOMDOMTokenList* self, gulong index);
	void webkit_dom_dom_token_list_remove(WebKitDOMDOMTokenList* self, GError** error, ... );
	void webkit_dom_dom_token_list_replace(WebKitDOMDOMTokenList* self, const(char)* token, const(char)* newToken, GError** err);
	void webkit_dom_dom_token_list_set_value(WebKitDOMDOMTokenList* self, const(char)* value);
	int webkit_dom_dom_token_list_toggle(WebKitDOMDOMTokenList* self, const(char)* token, int force, GError** err);

	// webkit2webextension.DOMDOMWindow

	GType webkit_dom_dom_window_get_type();
	void webkit_dom_dom_window_alert(WebKitDOMDOMWindow* self, const(char)* message);
	void webkit_dom_dom_window_blur(WebKitDOMDOMWindow* self);
	void webkit_dom_dom_window_capture_events(WebKitDOMDOMWindow* self);
	void webkit_dom_dom_window_close(WebKitDOMDOMWindow* self);
	int webkit_dom_dom_window_confirm(WebKitDOMDOMWindow* self, const(char)* message);
	int webkit_dom_dom_window_find(WebKitDOMDOMWindow* self, const(char)* string_, int caseSensitive, int backwards, int wrap, int wholeWord, int searchInFrames, int showDialog);
	void webkit_dom_dom_window_focus(WebKitDOMDOMWindow* self);
	int webkit_dom_dom_window_get_closed(WebKitDOMDOMWindow* self);
	WebKitDOMCSSStyleDeclaration* webkit_dom_dom_window_get_computed_style(WebKitDOMDOMWindow* self, WebKitDOMElement* element, const(char)* pseudoElement);
	char* webkit_dom_dom_window_get_default_status(WebKitDOMDOMWindow* self);
	double webkit_dom_dom_window_get_device_pixel_ratio(WebKitDOMDOMWindow* self);
	WebKitDOMDocument* webkit_dom_dom_window_get_document(WebKitDOMDOMWindow* self);
	WebKitDOMElement* webkit_dom_dom_window_get_frame_element(WebKitDOMDOMWindow* self);
	WebKitDOMDOMWindow* webkit_dom_dom_window_get_frames(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_inner_height(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_inner_width(WebKitDOMDOMWindow* self);
	gulong webkit_dom_dom_window_get_length(WebKitDOMDOMWindow* self);
	char* webkit_dom_dom_window_get_name(WebKitDOMDOMWindow* self);
	int webkit_dom_dom_window_get_offscreen_buffering(WebKitDOMDOMWindow* self);
	WebKitDOMDOMWindow* webkit_dom_dom_window_get_opener(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_orientation(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_outer_height(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_outer_width(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_page_x_offset(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_page_y_offset(WebKitDOMDOMWindow* self);
	WebKitDOMDOMWindow* webkit_dom_dom_window_get_parent(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_screen_left(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_screen_top(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_screen_x(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_screen_y(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_scroll_x(WebKitDOMDOMWindow* self);
	glong webkit_dom_dom_window_get_scroll_y(WebKitDOMDOMWindow* self);
	WebKitDOMDOMSelection* webkit_dom_dom_window_get_selection(WebKitDOMDOMWindow* self);
	WebKitDOMDOMWindow* webkit_dom_dom_window_get_self(WebKitDOMDOMWindow* self);
	char* webkit_dom_dom_window_get_status(WebKitDOMDOMWindow* self);
	WebKitDOMDOMWindow* webkit_dom_dom_window_get_top(WebKitDOMDOMWindow* self);
	WebKitDOMDOMWindow* webkit_dom_dom_window_get_window(WebKitDOMDOMWindow* self);
	void webkit_dom_dom_window_move_by(WebKitDOMDOMWindow* self, float x, float y);
	void webkit_dom_dom_window_move_to(WebKitDOMDOMWindow* self, float x, float y);
	void webkit_dom_dom_window_print(WebKitDOMDOMWindow* self);
	char* webkit_dom_dom_window_prompt(WebKitDOMDOMWindow* self, const(char)* message, const(char)* defaultValue);
	void webkit_dom_dom_window_release_events(WebKitDOMDOMWindow* self);
	void webkit_dom_dom_window_resize_by(WebKitDOMDOMWindow* self, float x, float y);
	void webkit_dom_dom_window_resize_to(WebKitDOMDOMWindow* self, float width, float height);
	void webkit_dom_dom_window_scroll_by(WebKitDOMDOMWindow* self, double x, double y);
	void webkit_dom_dom_window_scroll_to(WebKitDOMDOMWindow* self, double x, double y);
	void webkit_dom_dom_window_set_default_status(WebKitDOMDOMWindow* self, const(char)* value);
	void webkit_dom_dom_window_set_name(WebKitDOMDOMWindow* self, const(char)* value);
	void webkit_dom_dom_window_set_status(WebKitDOMDOMWindow* self, const(char)* value);
	void webkit_dom_dom_window_stop(WebKitDOMDOMWindow* self);
	int webkit_dom_dom_window_webkit_message_handlers_post_message(WebKitDOMDOMWindow* window, const(char)* handler, const(char)* message);

	// webkit2webextension.DOMDocument

	GType webkit_dom_document_get_type();
	WebKitDOMNode* webkit_dom_document_adopt_node(WebKitDOMDocument* self, WebKitDOMNode* source, GError** err);
	WebKitDOMRange* webkit_dom_document_caret_range_from_point(WebKitDOMDocument* self, glong x, glong y);
	WebKitDOMAttr* webkit_dom_document_create_attribute(WebKitDOMDocument* self, const(char)* name, GError** err);
	WebKitDOMAttr* webkit_dom_document_create_attribute_ns(WebKitDOMDocument* self, const(char)* namespaceURI, const(char)* qualifiedName, GError** err);
	WebKitDOMCDATASection* webkit_dom_document_create_cdata_section(WebKitDOMDocument* self, const(char)* data, GError** err);
	WebKitDOMComment* webkit_dom_document_create_comment(WebKitDOMDocument* self, const(char)* data);
	WebKitDOMCSSStyleDeclaration* webkit_dom_document_create_css_style_declaration(WebKitDOMDocument* self);
	WebKitDOMDocumentFragment* webkit_dom_document_create_document_fragment(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_create_element(WebKitDOMDocument* self, const(char)* tagName, GError** err);
	WebKitDOMElement* webkit_dom_document_create_element_ns(WebKitDOMDocument* self, const(char)* namespaceURI, const(char)* qualifiedName, GError** err);
	WebKitDOMEntityReference* webkit_dom_document_create_entity_reference(WebKitDOMDocument* self, const(char)* name, GError** err);
	WebKitDOMEvent* webkit_dom_document_create_event(WebKitDOMDocument* self, const(char)* eventType, GError** err);
	WebKitDOMXPathExpression* webkit_dom_document_create_expression(WebKitDOMDocument* self, const(char)* expression, WebKitDOMXPathNSResolver* resolver, GError** err);
	WebKitDOMNodeIterator* webkit_dom_document_create_node_iterator(WebKitDOMDocument* self, WebKitDOMNode* root, gulong whatToShow, WebKitDOMNodeFilter* filter, int expandEntityReferences, GError** err);
	WebKitDOMXPathNSResolver* webkit_dom_document_create_ns_resolver(WebKitDOMDocument* self, WebKitDOMNode* nodeResolver);
	WebKitDOMProcessingInstruction* webkit_dom_document_create_processing_instruction(WebKitDOMDocument* self, const(char)* target, const(char)* data, GError** err);
	WebKitDOMRange* webkit_dom_document_create_range(WebKitDOMDocument* self);
	WebKitDOMText* webkit_dom_document_create_text_node(WebKitDOMDocument* self, const(char)* data);
	WebKitDOMTreeWalker* webkit_dom_document_create_tree_walker(WebKitDOMDocument* self, WebKitDOMNode* root, gulong whatToShow, WebKitDOMNodeFilter* filter, int expandEntityReferences, GError** err);
	WebKitDOMElement* webkit_dom_document_element_from_point(WebKitDOMDocument* self, glong x, glong y);
	WebKitDOMXPathResult* webkit_dom_document_evaluate(WebKitDOMDocument* self, const(char)* expression, WebKitDOMNode* contextNode, WebKitDOMXPathNSResolver* resolver, ushort type, WebKitDOMXPathResult* inResult, GError** err);
	int webkit_dom_document_exec_command(WebKitDOMDocument* self, const(char)* command, int userInterface, const(char)* value);
	void webkit_dom_document_exit_pointer_lock(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_active_element(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_anchors(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_applets(WebKitDOMDocument* self);
	WebKitDOMHTMLElement* webkit_dom_document_get_body(WebKitDOMDocument* self);
	char* webkit_dom_document_get_character_set(WebKitDOMDocument* self);
	char* webkit_dom_document_get_charset(WebKitDOMDocument* self);
	gulong webkit_dom_document_get_child_element_count(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_children(WebKitDOMDocument* self);
	char* webkit_dom_document_get_compat_mode(WebKitDOMDocument* self);
	char* webkit_dom_document_get_content_type(WebKitDOMDocument* self);
	char* webkit_dom_document_get_cookie(WebKitDOMDocument* self, GError** err);
	WebKitDOMHTMLScriptElement* webkit_dom_document_get_current_script(WebKitDOMDocument* self);
	char* webkit_dom_document_get_default_charset(WebKitDOMDocument* self);
	WebKitDOMDOMWindow* webkit_dom_document_get_default_view(WebKitDOMDocument* self);
	char* webkit_dom_document_get_design_mode(WebKitDOMDocument* self);
	char* webkit_dom_document_get_dir(WebKitDOMDocument* self);
	WebKitDOMDocumentType* webkit_dom_document_get_doctype(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_document_element(WebKitDOMDocument* self);
	char* webkit_dom_document_get_document_uri(WebKitDOMDocument* self);
	char* webkit_dom_document_get_domain(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_element_by_id(WebKitDOMDocument* self, const(char)* elementId);
	WebKitDOMNodeList* webkit_dom_document_get_elements_by_class_name(WebKitDOMDocument* self, const(char)* className);
	WebKitDOMHTMLCollection* webkit_dom_document_get_elements_by_class_name_as_html_collection(WebKitDOMDocument* self, const(char)* classNames);
	WebKitDOMNodeList* webkit_dom_document_get_elements_by_name(WebKitDOMDocument* self, const(char)* elementName);
	WebKitDOMNodeList* webkit_dom_document_get_elements_by_tag_name(WebKitDOMDocument* self, const(char)* tagName);
	WebKitDOMHTMLCollection* webkit_dom_document_get_elements_by_tag_name_as_html_collection(WebKitDOMDocument* self, const(char)* tagname);
	WebKitDOMNodeList* webkit_dom_document_get_elements_by_tag_name_ns(WebKitDOMDocument* self, const(char)* namespaceUri, const(char)* tagName);
	WebKitDOMHTMLCollection* webkit_dom_document_get_elements_by_tag_name_ns_as_html_collection(WebKitDOMDocument* self, const(char)* namespaceURI, const(char)* localName);
	WebKitDOMHTMLCollection* webkit_dom_document_get_embeds(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_first_element_child(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_forms(WebKitDOMDocument* self);
	WebKitDOMHTMLHeadElement* webkit_dom_document_get_head(WebKitDOMDocument* self);
	int webkit_dom_document_get_hidden(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_images(WebKitDOMDocument* self);
	WebKitDOMDOMImplementation* webkit_dom_document_get_implementation(WebKitDOMDocument* self);
	char* webkit_dom_document_get_input_encoding(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_last_element_child(WebKitDOMDocument* self);
	char* webkit_dom_document_get_last_modified(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_links(WebKitDOMDocument* self);
	char* webkit_dom_document_get_origin(WebKitDOMDocument* self);
	WebKitDOMCSSStyleDeclaration* webkit_dom_document_get_override_style(WebKitDOMDocument* self, WebKitDOMElement* element, const(char)* pseudoElement);
	WebKitDOMHTMLCollection* webkit_dom_document_get_plugins(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_pointer_lock_element(WebKitDOMDocument* self);
	char* webkit_dom_document_get_preferred_stylesheet_set(WebKitDOMDocument* self);
	char* webkit_dom_document_get_ready_state(WebKitDOMDocument* self);
	char* webkit_dom_document_get_referrer(WebKitDOMDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_document_get_scripts(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_scrolling_element(WebKitDOMDocument* self);
	char* webkit_dom_document_get_selected_stylesheet_set(WebKitDOMDocument* self);
	WebKitDOMStyleSheetList* webkit_dom_document_get_style_sheets(WebKitDOMDocument* self);
	char* webkit_dom_document_get_title(WebKitDOMDocument* self);
	char* webkit_dom_document_get_url(WebKitDOMDocument* self);
	char* webkit_dom_document_get_visibility_state(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_webkit_current_fullscreen_element(WebKitDOMDocument* self);
	WebKitDOMElement* webkit_dom_document_get_webkit_fullscreen_element(WebKitDOMDocument* self);
	int webkit_dom_document_get_webkit_fullscreen_enabled(WebKitDOMDocument* self);
	int webkit_dom_document_get_webkit_fullscreen_keyboard_input_allowed(WebKitDOMDocument* self);
	int webkit_dom_document_get_webkit_is_fullscreen(WebKitDOMDocument* self);
	char* webkit_dom_document_get_xml_encoding(WebKitDOMDocument* self);
	int webkit_dom_document_get_xml_standalone(WebKitDOMDocument* self);
	char* webkit_dom_document_get_xml_version(WebKitDOMDocument* self);
	int webkit_dom_document_has_focus(WebKitDOMDocument* self);
	WebKitDOMNode* webkit_dom_document_import_node(WebKitDOMDocument* self, WebKitDOMNode* importedNode, int deep, GError** err);
	int webkit_dom_document_query_command_enabled(WebKitDOMDocument* self, const(char)* command);
	int webkit_dom_document_query_command_indeterm(WebKitDOMDocument* self, const(char)* command);
	int webkit_dom_document_query_command_state(WebKitDOMDocument* self, const(char)* command);
	int webkit_dom_document_query_command_supported(WebKitDOMDocument* self, const(char)* command);
	char* webkit_dom_document_query_command_value(WebKitDOMDocument* self, const(char)* command);
	WebKitDOMElement* webkit_dom_document_query_selector(WebKitDOMDocument* self, const(char)* selectors, GError** err);
	WebKitDOMNodeList* webkit_dom_document_query_selector_all(WebKitDOMDocument* self, const(char)* selectors, GError** err);
	void webkit_dom_document_set_body(WebKitDOMDocument* self, WebKitDOMHTMLElement* value, GError** err);
	void webkit_dom_document_set_charset(WebKitDOMDocument* self, const(char)* value);
	void webkit_dom_document_set_cookie(WebKitDOMDocument* self, const(char)* value, GError** err);
	void webkit_dom_document_set_design_mode(WebKitDOMDocument* self, const(char)* value);
	void webkit_dom_document_set_dir(WebKitDOMDocument* self, const(char)* value);
	void webkit_dom_document_set_document_uri(WebKitDOMDocument* self, const(char)* value);
	void webkit_dom_document_set_selected_stylesheet_set(WebKitDOMDocument* self, const(char)* value);
	void webkit_dom_document_set_title(WebKitDOMDocument* self, const(char)* value);
	void webkit_dom_document_set_xml_standalone(WebKitDOMDocument* self, int value, GError** err);
	void webkit_dom_document_set_xml_version(WebKitDOMDocument* self, const(char)* value, GError** err);
	void webkit_dom_document_webkit_cancel_fullscreen(WebKitDOMDocument* self);
	void webkit_dom_document_webkit_exit_fullscreen(WebKitDOMDocument* self);

	// webkit2webextension.DOMDocumentFragment

	GType webkit_dom_document_fragment_get_type();
	gulong webkit_dom_document_fragment_get_child_element_count(WebKitDOMDocumentFragment* self);
	WebKitDOMHTMLCollection* webkit_dom_document_fragment_get_children(WebKitDOMDocumentFragment* self);
	WebKitDOMElement* webkit_dom_document_fragment_get_element_by_id(WebKitDOMDocumentFragment* self, const(char)* elementId);
	WebKitDOMElement* webkit_dom_document_fragment_get_first_element_child(WebKitDOMDocumentFragment* self);
	WebKitDOMElement* webkit_dom_document_fragment_get_last_element_child(WebKitDOMDocumentFragment* self);
	WebKitDOMElement* webkit_dom_document_fragment_query_selector(WebKitDOMDocumentFragment* self, const(char)* selectors, GError** err);
	WebKitDOMNodeList* webkit_dom_document_fragment_query_selector_all(WebKitDOMDocumentFragment* self, const(char)* selectors, GError** err);

	// webkit2webextension.DOMDocumentType

	GType webkit_dom_document_type_get_type();
	WebKitDOMNamedNodeMap* webkit_dom_document_type_get_entities(WebKitDOMDocumentType* self);
	char* webkit_dom_document_type_get_internal_subset(WebKitDOMDocumentType* self);
	char* webkit_dom_document_type_get_name(WebKitDOMDocumentType* self);
	WebKitDOMNamedNodeMap* webkit_dom_document_type_get_notations(WebKitDOMDocumentType* self);
	char* webkit_dom_document_type_get_public_id(WebKitDOMDocumentType* self);
	char* webkit_dom_document_type_get_system_id(WebKitDOMDocumentType* self);

	// webkit2webextension.DOMElement

	GType webkit_dom_element_get_type();
	void webkit_dom_element_blur(WebKitDOMElement* self);
	WebKitDOMElement* webkit_dom_element_closest(WebKitDOMElement* self, const(char)* selectors, GError** err);
	void webkit_dom_element_focus(WebKitDOMElement* self);
	char* webkit_dom_element_get_attribute(WebKitDOMElement* self, const(char)* name);
	WebKitDOMAttr* webkit_dom_element_get_attribute_node(WebKitDOMElement* self, const(char)* name);
	WebKitDOMAttr* webkit_dom_element_get_attribute_node_ns(WebKitDOMElement* self, const(char)* namespaceURI, const(char)* localName);
	char* webkit_dom_element_get_attribute_ns(WebKitDOMElement* self, const(char)* namespaceURI, const(char)* localName);
	WebKitDOMNamedNodeMap* webkit_dom_element_get_attributes(WebKitDOMElement* self);
	WebKitDOMClientRect* webkit_dom_element_get_bounding_client_rect(WebKitDOMElement* self);
	gulong webkit_dom_element_get_child_element_count(WebKitDOMElement* self);
	WebKitDOMHTMLCollection* webkit_dom_element_get_children(WebKitDOMElement* self);
	WebKitDOMDOMTokenList* webkit_dom_element_get_class_list(WebKitDOMElement* self);
	char* webkit_dom_element_get_class_name(WebKitDOMElement* self);
	double webkit_dom_element_get_client_height(WebKitDOMElement* self);
	double webkit_dom_element_get_client_left(WebKitDOMElement* self);
	WebKitDOMClientRectList* webkit_dom_element_get_client_rects(WebKitDOMElement* self);
	double webkit_dom_element_get_client_top(WebKitDOMElement* self);
	double webkit_dom_element_get_client_width(WebKitDOMElement* self);
	WebKitDOMNodeList* webkit_dom_element_get_elements_by_class_name(WebKitDOMElement* self, const(char)* className);
	WebKitDOMHTMLCollection* webkit_dom_element_get_elements_by_class_name_as_html_collection(WebKitDOMElement* self, const(char)* name);
	WebKitDOMNodeList* webkit_dom_element_get_elements_by_tag_name(WebKitDOMElement* self, const(char)* tagName);
	WebKitDOMHTMLCollection* webkit_dom_element_get_elements_by_tag_name_as_html_collection(WebKitDOMElement* self, const(char)* name);
	WebKitDOMNodeList* webkit_dom_element_get_elements_by_tag_name_ns(WebKitDOMElement* self, const(char)* namespaceUri, const(char)* tagName);
	WebKitDOMHTMLCollection* webkit_dom_element_get_elements_by_tag_name_ns_as_html_collection(WebKitDOMElement* self, const(char)* namespaceURI, const(char)* localName);
	WebKitDOMElement* webkit_dom_element_get_first_element_child(WebKitDOMElement* self);
	char* webkit_dom_element_get_id(WebKitDOMElement* self);
	char* webkit_dom_element_get_inner_html(WebKitDOMElement* self);
	WebKitDOMElement* webkit_dom_element_get_last_element_child(WebKitDOMElement* self);
	char* webkit_dom_element_get_local_name(WebKitDOMElement* self);
	char* webkit_dom_element_get_namespace_uri(WebKitDOMElement* self);
	WebKitDOMElement* webkit_dom_element_get_next_element_sibling(WebKitDOMElement* self);
	double webkit_dom_element_get_offset_height(WebKitDOMElement* self);
	double webkit_dom_element_get_offset_left(WebKitDOMElement* self);
	WebKitDOMElement* webkit_dom_element_get_offset_parent(WebKitDOMElement* self);
	double webkit_dom_element_get_offset_top(WebKitDOMElement* self);
	double webkit_dom_element_get_offset_width(WebKitDOMElement* self);
	char* webkit_dom_element_get_outer_html(WebKitDOMElement* self);
	char* webkit_dom_element_get_prefix(WebKitDOMElement* self);
	WebKitDOMElement* webkit_dom_element_get_previous_element_sibling(WebKitDOMElement* self);
	glong webkit_dom_element_get_scroll_height(WebKitDOMElement* self);
	glong webkit_dom_element_get_scroll_left(WebKitDOMElement* self);
	glong webkit_dom_element_get_scroll_top(WebKitDOMElement* self);
	glong webkit_dom_element_get_scroll_width(WebKitDOMElement* self);
	WebKitDOMCSSStyleDeclaration* webkit_dom_element_get_style(WebKitDOMElement* self);
	char* webkit_dom_element_get_tag_name(WebKitDOMElement* self);
	char* webkit_dom_element_get_webkit_region_overset(WebKitDOMElement* self);
	int webkit_dom_element_has_attribute(WebKitDOMElement* self, const(char)* name);
	int webkit_dom_element_has_attribute_ns(WebKitDOMElement* self, const(char)* namespaceURI, const(char)* localName);
	int webkit_dom_element_has_attributes(WebKitDOMElement* self);
	int webkit_dom_element_html_input_element_get_auto_filled(WebKitDOMElement* element);
	int webkit_dom_element_html_input_element_is_user_edited(WebKitDOMElement* element);
	void webkit_dom_element_html_input_element_set_auto_filled(WebKitDOMElement* element, int autoFilled);
	void webkit_dom_element_html_input_element_set_editing_value(WebKitDOMElement* element, const(char)* value);
	WebKitDOMElement* webkit_dom_element_insert_adjacent_element(WebKitDOMElement* self, const(char)* where, WebKitDOMElement* element, GError** err);
	void webkit_dom_element_insert_adjacent_html(WebKitDOMElement* self, const(char)* where, const(char)* html, GError** err);
	void webkit_dom_element_insert_adjacent_text(WebKitDOMElement* self, const(char)* where, const(char)* text, GError** err);
	int webkit_dom_element_matches(WebKitDOMElement* self, const(char)* selectors, GError** err);
	WebKitDOMElement* webkit_dom_element_query_selector(WebKitDOMElement* self, const(char)* selectors, GError** err);
	WebKitDOMNodeList* webkit_dom_element_query_selector_all(WebKitDOMElement* self, const(char)* selectors, GError** err);
	void webkit_dom_element_remove(WebKitDOMElement* self, GError** err);
	void webkit_dom_element_remove_attribute(WebKitDOMElement* self, const(char)* name);
	WebKitDOMAttr* webkit_dom_element_remove_attribute_node(WebKitDOMElement* self, WebKitDOMAttr* oldAttr, GError** err);
	void webkit_dom_element_remove_attribute_ns(WebKitDOMElement* self, const(char)* namespaceURI, const(char)* localName);
	void webkit_dom_element_request_pointer_lock(WebKitDOMElement* self);
	void webkit_dom_element_scroll_by_lines(WebKitDOMElement* self, glong lines);
	void webkit_dom_element_scroll_by_pages(WebKitDOMElement* self, glong pages);
	void webkit_dom_element_scroll_into_view(WebKitDOMElement* self, int alignWithTop);
	void webkit_dom_element_scroll_into_view_if_needed(WebKitDOMElement* self, int centerIfNeeded);
	void webkit_dom_element_set_attribute(WebKitDOMElement* self, const(char)* name, const(char)* value, GError** err);
	WebKitDOMAttr* webkit_dom_element_set_attribute_node(WebKitDOMElement* self, WebKitDOMAttr* newAttr, GError** err);
	WebKitDOMAttr* webkit_dom_element_set_attribute_node_ns(WebKitDOMElement* self, WebKitDOMAttr* newAttr, GError** err);
	void webkit_dom_element_set_attribute_ns(WebKitDOMElement* self, const(char)* namespaceURI, const(char)* qualifiedName, const(char)* value, GError** err);
	void webkit_dom_element_set_class_name(WebKitDOMElement* self, const(char)* value);
	void webkit_dom_element_set_id(WebKitDOMElement* self, const(char)* value);
	void webkit_dom_element_set_inner_html(WebKitDOMElement* self, const(char)* value, GError** err);
	void webkit_dom_element_set_outer_html(WebKitDOMElement* self, const(char)* value, GError** err);
	void webkit_dom_element_set_scroll_left(WebKitDOMElement* self, glong value);
	void webkit_dom_element_set_scroll_top(WebKitDOMElement* self, glong value);
	int webkit_dom_element_webkit_matches_selector(WebKitDOMElement* self, const(char)* selectors, GError** err);
	void webkit_dom_element_webkit_request_fullscreen(WebKitDOMElement* self);

	// webkit2webextension.DOMEntityReference

	GType webkit_dom_entity_reference_get_type();

	// webkit2webextension.DOMEvent

	GType webkit_dom_event_get_type();
	int webkit_dom_event_get_bubbles(WebKitDOMEvent* self);
	int webkit_dom_event_get_cancel_bubble(WebKitDOMEvent* self);
	int webkit_dom_event_get_cancelable(WebKitDOMEvent* self);
	WebKitDOMEventTarget* webkit_dom_event_get_current_target(WebKitDOMEvent* self);
	ushort webkit_dom_event_get_event_phase(WebKitDOMEvent* self);
	char* webkit_dom_event_get_event_type(WebKitDOMEvent* self);
	int webkit_dom_event_get_return_value(WebKitDOMEvent* self);
	WebKitDOMEventTarget* webkit_dom_event_get_src_element(WebKitDOMEvent* self);
	WebKitDOMEventTarget* webkit_dom_event_get_target(WebKitDOMEvent* self);
	uint webkit_dom_event_get_time_stamp(WebKitDOMEvent* self);
	void webkit_dom_event_init_event(WebKitDOMEvent* self, const(char)* eventTypeArg, int canBubbleArg, int cancelableArg);
	void webkit_dom_event_prevent_default(WebKitDOMEvent* self);
	void webkit_dom_event_set_cancel_bubble(WebKitDOMEvent* self, int value);
	void webkit_dom_event_set_return_value(WebKitDOMEvent* self, int value);
	void webkit_dom_event_stop_propagation(WebKitDOMEvent* self);

	// webkit2webextension.DOMEventTarget

	GType webkit_dom_event_target_get_type();
	int webkit_dom_event_target_add_event_listener(WebKitDOMEventTarget* target, const(char)* eventName, GCallback handler, int useCapture, void* userData);
	int webkit_dom_event_target_add_event_listener_with_closure(WebKitDOMEventTarget* target, const(char)* eventName, GClosure* handler, int useCapture);
	int webkit_dom_event_target_dispatch_event(WebKitDOMEventTarget* target, WebKitDOMEvent* event, GError** err);
	int webkit_dom_event_target_remove_event_listener(WebKitDOMEventTarget* target, const(char)* eventName, GCallback handler, int useCapture);
	int webkit_dom_event_target_remove_event_listener_with_closure(WebKitDOMEventTarget* target, const(char)* eventName, GClosure* handler, int useCapture);

	// webkit2webextension.DOMFile

	GType webkit_dom_file_get_type();
	char* webkit_dom_file_get_name(WebKitDOMFile* self);

	// webkit2webextension.DOMFileList

	GType webkit_dom_file_list_get_type();
	gulong webkit_dom_file_list_get_length(WebKitDOMFileList* self);
	WebKitDOMFile* webkit_dom_file_list_item(WebKitDOMFileList* self, gulong index);

	// webkit2webextension.DOMHTMLAnchorElement

	GType webkit_dom_html_anchor_element_get_type();
	char* webkit_dom_html_anchor_element_get_charset(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_coords(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_hash(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_host(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_hostname(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_href(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_hreflang(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_name(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_pathname(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_port(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_protocol(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_rel(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_rev(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_search(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_shape(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_target(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_text(WebKitDOMHTMLAnchorElement* self);
	char* webkit_dom_html_anchor_element_get_type_attr(WebKitDOMHTMLAnchorElement* self);
	void webkit_dom_html_anchor_element_set_charset(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_coords(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_hash(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_host(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_hostname(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_href(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_hreflang(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_name(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_pathname(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_port(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_protocol(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_rel(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_rev(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_search(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_shape(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_target(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_text(WebKitDOMHTMLAnchorElement* self, const(char)* value);
	void webkit_dom_html_anchor_element_set_type_attr(WebKitDOMHTMLAnchorElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLAppletElement

	GType webkit_dom_html_applet_element_get_type();
	char* webkit_dom_html_applet_element_get_align(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_alt(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_archive(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_code(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_code_base(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_height(WebKitDOMHTMLAppletElement* self);
	glong webkit_dom_html_applet_element_get_hspace(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_name(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_object(WebKitDOMHTMLAppletElement* self);
	glong webkit_dom_html_applet_element_get_vspace(WebKitDOMHTMLAppletElement* self);
	char* webkit_dom_html_applet_element_get_width(WebKitDOMHTMLAppletElement* self);
	void webkit_dom_html_applet_element_set_align(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_alt(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_archive(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_code(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_code_base(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_height(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_hspace(WebKitDOMHTMLAppletElement* self, glong value);
	void webkit_dom_html_applet_element_set_name(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_object(WebKitDOMHTMLAppletElement* self, const(char)* value);
	void webkit_dom_html_applet_element_set_vspace(WebKitDOMHTMLAppletElement* self, glong value);
	void webkit_dom_html_applet_element_set_width(WebKitDOMHTMLAppletElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLAreaElement

	GType webkit_dom_html_area_element_get_type();
	char* webkit_dom_html_area_element_get_alt(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_coords(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_hash(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_host(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_hostname(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_href(WebKitDOMHTMLAreaElement* self);
	int webkit_dom_html_area_element_get_no_href(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_pathname(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_port(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_protocol(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_search(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_shape(WebKitDOMHTMLAreaElement* self);
	char* webkit_dom_html_area_element_get_target(WebKitDOMHTMLAreaElement* self);
	void webkit_dom_html_area_element_set_alt(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_coords(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_hash(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_host(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_hostname(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_href(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_no_href(WebKitDOMHTMLAreaElement* self, int value);
	void webkit_dom_html_area_element_set_pathname(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_port(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_protocol(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_search(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_shape(WebKitDOMHTMLAreaElement* self, const(char)* value);
	void webkit_dom_html_area_element_set_target(WebKitDOMHTMLAreaElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLBRElement

	GType webkit_dom_html_br_element_get_type();
	char* webkit_dom_html_br_element_get_clear(WebKitDOMHTMLBRElement* self);
	void webkit_dom_html_br_element_set_clear(WebKitDOMHTMLBRElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLBaseElement

	GType webkit_dom_html_base_element_get_type();
	char* webkit_dom_html_base_element_get_href(WebKitDOMHTMLBaseElement* self);
	char* webkit_dom_html_base_element_get_target(WebKitDOMHTMLBaseElement* self);
	void webkit_dom_html_base_element_set_href(WebKitDOMHTMLBaseElement* self, const(char)* value);
	void webkit_dom_html_base_element_set_target(WebKitDOMHTMLBaseElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLBaseFontElement

	GType webkit_dom_html_base_font_element_get_type();
	char* webkit_dom_html_base_font_element_get_color(WebKitDOMHTMLBaseFontElement* self);
	char* webkit_dom_html_base_font_element_get_face(WebKitDOMHTMLBaseFontElement* self);
	glong webkit_dom_html_base_font_element_get_size(WebKitDOMHTMLBaseFontElement* self);
	void webkit_dom_html_base_font_element_set_color(WebKitDOMHTMLBaseFontElement* self, const(char)* value);
	void webkit_dom_html_base_font_element_set_face(WebKitDOMHTMLBaseFontElement* self, const(char)* value);
	void webkit_dom_html_base_font_element_set_size(WebKitDOMHTMLBaseFontElement* self, glong value);

	// webkit2webextension.DOMHTMLBodyElement

	GType webkit_dom_html_body_element_get_type();
	char* webkit_dom_html_body_element_get_a_link(WebKitDOMHTMLBodyElement* self);
	char* webkit_dom_html_body_element_get_background(WebKitDOMHTMLBodyElement* self);
	char* webkit_dom_html_body_element_get_bg_color(WebKitDOMHTMLBodyElement* self);
	char* webkit_dom_html_body_element_get_link(WebKitDOMHTMLBodyElement* self);
	char* webkit_dom_html_body_element_get_text(WebKitDOMHTMLBodyElement* self);
	char* webkit_dom_html_body_element_get_v_link(WebKitDOMHTMLBodyElement* self);
	void webkit_dom_html_body_element_set_a_link(WebKitDOMHTMLBodyElement* self, const(char)* value);
	void webkit_dom_html_body_element_set_background(WebKitDOMHTMLBodyElement* self, const(char)* value);
	void webkit_dom_html_body_element_set_bg_color(WebKitDOMHTMLBodyElement* self, const(char)* value);
	void webkit_dom_html_body_element_set_link(WebKitDOMHTMLBodyElement* self, const(char)* value);
	void webkit_dom_html_body_element_set_text(WebKitDOMHTMLBodyElement* self, const(char)* value);
	void webkit_dom_html_body_element_set_v_link(WebKitDOMHTMLBodyElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLButtonElement

	GType webkit_dom_html_button_element_get_type();
	int webkit_dom_html_button_element_get_autofocus(WebKitDOMHTMLButtonElement* self);
	char* webkit_dom_html_button_element_get_button_type(WebKitDOMHTMLButtonElement* self);
	int webkit_dom_html_button_element_get_disabled(WebKitDOMHTMLButtonElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_button_element_get_form(WebKitDOMHTMLButtonElement* self);
	char* webkit_dom_html_button_element_get_name(WebKitDOMHTMLButtonElement* self);
	char* webkit_dom_html_button_element_get_value(WebKitDOMHTMLButtonElement* self);
	int webkit_dom_html_button_element_get_will_validate(WebKitDOMHTMLButtonElement* self);
	void webkit_dom_html_button_element_set_autofocus(WebKitDOMHTMLButtonElement* self, int value);
	void webkit_dom_html_button_element_set_button_type(WebKitDOMHTMLButtonElement* self, const(char)* value);
	void webkit_dom_html_button_element_set_disabled(WebKitDOMHTMLButtonElement* self, int value);
	void webkit_dom_html_button_element_set_name(WebKitDOMHTMLButtonElement* self, const(char)* value);
	void webkit_dom_html_button_element_set_value(WebKitDOMHTMLButtonElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLCanvasElement

	GType webkit_dom_html_canvas_element_get_type();
	glong webkit_dom_html_canvas_element_get_height(WebKitDOMHTMLCanvasElement* self);
	glong webkit_dom_html_canvas_element_get_width(WebKitDOMHTMLCanvasElement* self);
	void webkit_dom_html_canvas_element_set_height(WebKitDOMHTMLCanvasElement* self, glong value);
	void webkit_dom_html_canvas_element_set_width(WebKitDOMHTMLCanvasElement* self, glong value);

	// webkit2webextension.DOMHTMLCollection

	GType webkit_dom_html_collection_get_type();
	gulong webkit_dom_html_collection_get_length(WebKitDOMHTMLCollection* self);
	WebKitDOMNode* webkit_dom_html_collection_item(WebKitDOMHTMLCollection* self, gulong index);
	WebKitDOMNode* webkit_dom_html_collection_named_item(WebKitDOMHTMLCollection* self, const(char)* name);

	// webkit2webextension.DOMHTMLDListElement

	GType webkit_dom_html_d_list_element_get_type();
	int webkit_dom_html_d_list_element_get_compact(WebKitDOMHTMLDListElement* self);
	void webkit_dom_html_d_list_element_set_compact(WebKitDOMHTMLDListElement* self, int value);

	// webkit2webextension.DOMHTMLDirectoryElement

	GType webkit_dom_html_directory_element_get_type();
	int webkit_dom_html_directory_element_get_compact(WebKitDOMHTMLDirectoryElement* self);
	void webkit_dom_html_directory_element_set_compact(WebKitDOMHTMLDirectoryElement* self, int value);

	// webkit2webextension.DOMHTMLDivElement

	GType webkit_dom_html_div_element_get_type();
	char* webkit_dom_html_div_element_get_align(WebKitDOMHTMLDivElement* self);
	void webkit_dom_html_div_element_set_align(WebKitDOMHTMLDivElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLDocument

	GType webkit_dom_html_document_get_type();
	void webkit_dom_html_document_capture_events(WebKitDOMHTMLDocument* self);
	void webkit_dom_html_document_clear(WebKitDOMHTMLDocument* self);
	void webkit_dom_html_document_close(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_alink_color(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_bg_color(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_compat_mode(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_design_mode(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_dir(WebKitDOMHTMLDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_html_document_get_embeds(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_fg_color(WebKitDOMHTMLDocument* self);
	glong webkit_dom_html_document_get_height(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_link_color(WebKitDOMHTMLDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_html_document_get_plugins(WebKitDOMHTMLDocument* self);
	WebKitDOMHTMLCollection* webkit_dom_html_document_get_scripts(WebKitDOMHTMLDocument* self);
	char* webkit_dom_html_document_get_vlink_color(WebKitDOMHTMLDocument* self);
	glong webkit_dom_html_document_get_width(WebKitDOMHTMLDocument* self);
	void webkit_dom_html_document_release_events(WebKitDOMHTMLDocument* self);
	void webkit_dom_html_document_set_alink_color(WebKitDOMHTMLDocument* self, const(char)* value);
	void webkit_dom_html_document_set_bg_color(WebKitDOMHTMLDocument* self, const(char)* value);
	void webkit_dom_html_document_set_design_mode(WebKitDOMHTMLDocument* self, const(char)* value);
	void webkit_dom_html_document_set_dir(WebKitDOMHTMLDocument* self, const(char)* value);
	void webkit_dom_html_document_set_fg_color(WebKitDOMHTMLDocument* self, const(char)* value);
	void webkit_dom_html_document_set_link_color(WebKitDOMHTMLDocument* self, const(char)* value);
	void webkit_dom_html_document_set_vlink_color(WebKitDOMHTMLDocument* self, const(char)* value);

	// webkit2webextension.DOMHTMLElement

	GType webkit_dom_html_element_get_type();
	void webkit_dom_html_element_click(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_access_key(WebKitDOMHTMLElement* self);
	WebKitDOMHTMLCollection* webkit_dom_html_element_get_children(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_content_editable(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_dir(WebKitDOMHTMLElement* self);
	int webkit_dom_html_element_get_draggable(WebKitDOMHTMLElement* self);
	int webkit_dom_html_element_get_hidden(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_inner_html(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_inner_text(WebKitDOMHTMLElement* self);
	int webkit_dom_html_element_get_is_content_editable(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_lang(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_outer_html(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_outer_text(WebKitDOMHTMLElement* self);
	int webkit_dom_html_element_get_spellcheck(WebKitDOMHTMLElement* self);
	glong webkit_dom_html_element_get_tab_index(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_title(WebKitDOMHTMLElement* self);
	int webkit_dom_html_element_get_translate(WebKitDOMHTMLElement* self);
	char* webkit_dom_html_element_get_webkitdropzone(WebKitDOMHTMLElement* self);
	void webkit_dom_html_element_set_access_key(WebKitDOMHTMLElement* self, const(char)* value);
	void webkit_dom_html_element_set_content_editable(WebKitDOMHTMLElement* self, const(char)* value, GError** err);
	void webkit_dom_html_element_set_dir(WebKitDOMHTMLElement* self, const(char)* value);
	void webkit_dom_html_element_set_draggable(WebKitDOMHTMLElement* self, int value);
	void webkit_dom_html_element_set_hidden(WebKitDOMHTMLElement* self, int value);
	void webkit_dom_html_element_set_inner_html(WebKitDOMHTMLElement* self, const(char)* contents, GError** err);
	void webkit_dom_html_element_set_inner_text(WebKitDOMHTMLElement* self, const(char)* value, GError** err);
	void webkit_dom_html_element_set_lang(WebKitDOMHTMLElement* self, const(char)* value);
	void webkit_dom_html_element_set_outer_html(WebKitDOMHTMLElement* self, const(char)* contents, GError** err);
	void webkit_dom_html_element_set_outer_text(WebKitDOMHTMLElement* self, const(char)* value, GError** err);
	void webkit_dom_html_element_set_spellcheck(WebKitDOMHTMLElement* self, int value);
	void webkit_dom_html_element_set_tab_index(WebKitDOMHTMLElement* self, glong value);
	void webkit_dom_html_element_set_title(WebKitDOMHTMLElement* self, const(char)* value);
	void webkit_dom_html_element_set_translate(WebKitDOMHTMLElement* self, int value);
	void webkit_dom_html_element_set_webkitdropzone(WebKitDOMHTMLElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLEmbedElement

	GType webkit_dom_html_embed_element_get_type();
	char* webkit_dom_html_embed_element_get_align(WebKitDOMHTMLEmbedElement* self);
	glong webkit_dom_html_embed_element_get_height(WebKitDOMHTMLEmbedElement* self);
	char* webkit_dom_html_embed_element_get_name(WebKitDOMHTMLEmbedElement* self);
	char* webkit_dom_html_embed_element_get_src(WebKitDOMHTMLEmbedElement* self);
	char* webkit_dom_html_embed_element_get_type_attr(WebKitDOMHTMLEmbedElement* self);
	glong webkit_dom_html_embed_element_get_width(WebKitDOMHTMLEmbedElement* self);
	void webkit_dom_html_embed_element_set_align(WebKitDOMHTMLEmbedElement* self, const(char)* value);
	void webkit_dom_html_embed_element_set_height(WebKitDOMHTMLEmbedElement* self, glong value);
	void webkit_dom_html_embed_element_set_name(WebKitDOMHTMLEmbedElement* self, const(char)* value);
	void webkit_dom_html_embed_element_set_src(WebKitDOMHTMLEmbedElement* self, const(char)* value);
	void webkit_dom_html_embed_element_set_type_attr(WebKitDOMHTMLEmbedElement* self, const(char)* value);
	void webkit_dom_html_embed_element_set_width(WebKitDOMHTMLEmbedElement* self, glong value);

	// webkit2webextension.DOMHTMLFieldSetElement

	GType webkit_dom_html_field_set_element_get_type();
	WebKitDOMHTMLFormElement* webkit_dom_html_field_set_element_get_form(WebKitDOMHTMLFieldSetElement* self);

	// webkit2webextension.DOMHTMLFontElement

	GType webkit_dom_html_font_element_get_type();
	char* webkit_dom_html_font_element_get_color(WebKitDOMHTMLFontElement* self);
	char* webkit_dom_html_font_element_get_face(WebKitDOMHTMLFontElement* self);
	char* webkit_dom_html_font_element_get_size(WebKitDOMHTMLFontElement* self);
	void webkit_dom_html_font_element_set_color(WebKitDOMHTMLFontElement* self, const(char)* value);
	void webkit_dom_html_font_element_set_face(WebKitDOMHTMLFontElement* self, const(char)* value);
	void webkit_dom_html_font_element_set_size(WebKitDOMHTMLFontElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLFormElement

	GType webkit_dom_html_form_element_get_type();
	char* webkit_dom_html_form_element_get_accept_charset(WebKitDOMHTMLFormElement* self);
	char* webkit_dom_html_form_element_get_action(WebKitDOMHTMLFormElement* self);
	WebKitDOMHTMLCollection* webkit_dom_html_form_element_get_elements(WebKitDOMHTMLFormElement* self);
	char* webkit_dom_html_form_element_get_encoding(WebKitDOMHTMLFormElement* self);
	char* webkit_dom_html_form_element_get_enctype(WebKitDOMHTMLFormElement* self);
	glong webkit_dom_html_form_element_get_length(WebKitDOMHTMLFormElement* self);
	char* webkit_dom_html_form_element_get_method(WebKitDOMHTMLFormElement* self);
	char* webkit_dom_html_form_element_get_name(WebKitDOMHTMLFormElement* self);
	char* webkit_dom_html_form_element_get_target(WebKitDOMHTMLFormElement* self);
	void webkit_dom_html_form_element_reset(WebKitDOMHTMLFormElement* self);
	void webkit_dom_html_form_element_set_accept_charset(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_set_action(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_set_encoding(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_set_enctype(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_set_method(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_set_name(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_set_target(WebKitDOMHTMLFormElement* self, const(char)* value);
	void webkit_dom_html_form_element_submit(WebKitDOMHTMLFormElement* self);

	// webkit2webextension.DOMHTMLFrameElement

	GType webkit_dom_html_frame_element_get_type();
	WebKitDOMDocument* webkit_dom_html_frame_element_get_content_document(WebKitDOMHTMLFrameElement* self);
	WebKitDOMDOMWindow* webkit_dom_html_frame_element_get_content_window(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_frame_border(WebKitDOMHTMLFrameElement* self);
	glong webkit_dom_html_frame_element_get_height(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_long_desc(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_margin_height(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_margin_width(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_name(WebKitDOMHTMLFrameElement* self);
	int webkit_dom_html_frame_element_get_no_resize(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_scrolling(WebKitDOMHTMLFrameElement* self);
	char* webkit_dom_html_frame_element_get_src(WebKitDOMHTMLFrameElement* self);
	glong webkit_dom_html_frame_element_get_width(WebKitDOMHTMLFrameElement* self);
	void webkit_dom_html_frame_element_set_frame_border(WebKitDOMHTMLFrameElement* self, const(char)* value);
	void webkit_dom_html_frame_element_set_long_desc(WebKitDOMHTMLFrameElement* self, const(char)* value);
	void webkit_dom_html_frame_element_set_margin_height(WebKitDOMHTMLFrameElement* self, const(char)* value);
	void webkit_dom_html_frame_element_set_margin_width(WebKitDOMHTMLFrameElement* self, const(char)* value);
	void webkit_dom_html_frame_element_set_name(WebKitDOMHTMLFrameElement* self, const(char)* value);
	void webkit_dom_html_frame_element_set_no_resize(WebKitDOMHTMLFrameElement* self, int value);
	void webkit_dom_html_frame_element_set_scrolling(WebKitDOMHTMLFrameElement* self, const(char)* value);
	void webkit_dom_html_frame_element_set_src(WebKitDOMHTMLFrameElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLFrameSetElement

	GType webkit_dom_html_frame_set_element_get_type();
	char* webkit_dom_html_frame_set_element_get_cols(WebKitDOMHTMLFrameSetElement* self);
	char* webkit_dom_html_frame_set_element_get_rows(WebKitDOMHTMLFrameSetElement* self);
	void webkit_dom_html_frame_set_element_set_cols(WebKitDOMHTMLFrameSetElement* self, const(char)* value);
	void webkit_dom_html_frame_set_element_set_rows(WebKitDOMHTMLFrameSetElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLHRElement

	GType webkit_dom_html_hr_element_get_type();
	char* webkit_dom_html_hr_element_get_align(WebKitDOMHTMLHRElement* self);
	int webkit_dom_html_hr_element_get_no_shade(WebKitDOMHTMLHRElement* self);
	char* webkit_dom_html_hr_element_get_size(WebKitDOMHTMLHRElement* self);
	char* webkit_dom_html_hr_element_get_width(WebKitDOMHTMLHRElement* self);
	void webkit_dom_html_hr_element_set_align(WebKitDOMHTMLHRElement* self, const(char)* value);
	void webkit_dom_html_hr_element_set_no_shade(WebKitDOMHTMLHRElement* self, int value);
	void webkit_dom_html_hr_element_set_size(WebKitDOMHTMLHRElement* self, const(char)* value);
	void webkit_dom_html_hr_element_set_width(WebKitDOMHTMLHRElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLHeadElement

	GType webkit_dom_html_head_element_get_type();
	char* webkit_dom_html_head_element_get_profile(WebKitDOMHTMLHeadElement* self);
	void webkit_dom_html_head_element_set_profile(WebKitDOMHTMLHeadElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLHeadingElement

	GType webkit_dom_html_heading_element_get_type();
	char* webkit_dom_html_heading_element_get_align(WebKitDOMHTMLHeadingElement* self);
	void webkit_dom_html_heading_element_set_align(WebKitDOMHTMLHeadingElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLHtmlElement

	GType webkit_dom_html_html_element_get_type();
	char* webkit_dom_html_html_element_get_version(WebKitDOMHTMLHtmlElement* self);
	void webkit_dom_html_html_element_set_version(WebKitDOMHTMLHtmlElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLIFrameElement

	GType webkit_dom_html_iframe_element_get_type();
	char* webkit_dom_html_iframe_element_get_align(WebKitDOMHTMLIFrameElement* self);
	WebKitDOMDocument* webkit_dom_html_iframe_element_get_content_document(WebKitDOMHTMLIFrameElement* self);
	WebKitDOMDOMWindow* webkit_dom_html_iframe_element_get_content_window(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_frame_border(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_height(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_long_desc(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_margin_height(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_margin_width(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_name(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_scrolling(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_src(WebKitDOMHTMLIFrameElement* self);
	char* webkit_dom_html_iframe_element_get_width(WebKitDOMHTMLIFrameElement* self);
	void webkit_dom_html_iframe_element_set_align(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_frame_border(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_height(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_long_desc(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_margin_height(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_margin_width(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_name(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_scrolling(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_src(WebKitDOMHTMLIFrameElement* self, const(char)* value);
	void webkit_dom_html_iframe_element_set_width(WebKitDOMHTMLIFrameElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLImageElement

	GType webkit_dom_html_image_element_get_type();
	char* webkit_dom_html_image_element_get_align(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_alt(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_border(WebKitDOMHTMLImageElement* self);
	int webkit_dom_html_image_element_get_complete(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_height(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_hspace(WebKitDOMHTMLImageElement* self);
	int webkit_dom_html_image_element_get_is_map(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_long_desc(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_lowsrc(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_name(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_natural_height(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_natural_width(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_src(WebKitDOMHTMLImageElement* self);
	char* webkit_dom_html_image_element_get_use_map(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_vspace(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_width(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_x(WebKitDOMHTMLImageElement* self);
	glong webkit_dom_html_image_element_get_y(WebKitDOMHTMLImageElement* self);
	void webkit_dom_html_image_element_set_align(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_alt(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_border(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_height(WebKitDOMHTMLImageElement* self, glong value);
	void webkit_dom_html_image_element_set_hspace(WebKitDOMHTMLImageElement* self, glong value);
	void webkit_dom_html_image_element_set_is_map(WebKitDOMHTMLImageElement* self, int value);
	void webkit_dom_html_image_element_set_long_desc(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_lowsrc(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_name(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_src(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_use_map(WebKitDOMHTMLImageElement* self, const(char)* value);
	void webkit_dom_html_image_element_set_vspace(WebKitDOMHTMLImageElement* self, glong value);
	void webkit_dom_html_image_element_set_width(WebKitDOMHTMLImageElement* self, glong value);

	// webkit2webextension.DOMHTMLInputElement

	GType webkit_dom_html_input_element_get_type();
	char* webkit_dom_html_input_element_get_accept(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_align(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_alt(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_auto_filled(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_autofocus(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_capture(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_capture_type(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_checked(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_default_checked(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_default_value(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_disabled(WebKitDOMHTMLInputElement* self);
	WebKitDOMFileList* webkit_dom_html_input_element_get_files(WebKitDOMHTMLInputElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_input_element_get_form(WebKitDOMHTMLInputElement* self);
	gulong webkit_dom_html_input_element_get_height(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_indeterminate(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_input_type(WebKitDOMHTMLInputElement* self);
	glong webkit_dom_html_input_element_get_max_length(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_multiple(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_name(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_read_only(WebKitDOMHTMLInputElement* self);
	gulong webkit_dom_html_input_element_get_size(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_src(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_use_map(WebKitDOMHTMLInputElement* self);
	char* webkit_dom_html_input_element_get_value(WebKitDOMHTMLInputElement* self);
	gulong webkit_dom_html_input_element_get_width(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_get_will_validate(WebKitDOMHTMLInputElement* self);
	int webkit_dom_html_input_element_is_edited(WebKitDOMHTMLInputElement* input);
	void webkit_dom_html_input_element_select(WebKitDOMHTMLInputElement* self);
	void webkit_dom_html_input_element_set_accept(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_align(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_alt(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_auto_filled(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_autofocus(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_capture_type(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_checked(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_default_checked(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_default_value(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_disabled(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_editing_value(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_files(WebKitDOMHTMLInputElement* self, WebKitDOMFileList* value);
	void webkit_dom_html_input_element_set_height(WebKitDOMHTMLInputElement* self, gulong value);
	void webkit_dom_html_input_element_set_indeterminate(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_input_type(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_max_length(WebKitDOMHTMLInputElement* self, glong value, GError** err);
	void webkit_dom_html_input_element_set_multiple(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_name(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_read_only(WebKitDOMHTMLInputElement* self, int value);
	void webkit_dom_html_input_element_set_size(WebKitDOMHTMLInputElement* self, gulong value, GError** err);
	void webkit_dom_html_input_element_set_src(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_use_map(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_value(WebKitDOMHTMLInputElement* self, const(char)* value);
	void webkit_dom_html_input_element_set_width(WebKitDOMHTMLInputElement* self, gulong value);

	// webkit2webextension.DOMHTMLLIElement

	GType webkit_dom_html_li_element_get_type();
	char* webkit_dom_html_li_element_get_type_attr(WebKitDOMHTMLLIElement* self);
	glong webkit_dom_html_li_element_get_value(WebKitDOMHTMLLIElement* self);
	void webkit_dom_html_li_element_set_type_attr(WebKitDOMHTMLLIElement* self, const(char)* value);
	void webkit_dom_html_li_element_set_value(WebKitDOMHTMLLIElement* self, glong value);

	// webkit2webextension.DOMHTMLLabelElement

	GType webkit_dom_html_label_element_get_type();
	WebKitDOMHTMLFormElement* webkit_dom_html_label_element_get_form(WebKitDOMHTMLLabelElement* self);
	char* webkit_dom_html_label_element_get_html_for(WebKitDOMHTMLLabelElement* self);
	void webkit_dom_html_label_element_set_html_for(WebKitDOMHTMLLabelElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLLegendElement

	GType webkit_dom_html_legend_element_get_type();
	char* webkit_dom_html_legend_element_get_align(WebKitDOMHTMLLegendElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_legend_element_get_form(WebKitDOMHTMLLegendElement* self);
	void webkit_dom_html_legend_element_set_align(WebKitDOMHTMLLegendElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLLinkElement

	GType webkit_dom_html_link_element_get_type();
	char* webkit_dom_html_link_element_get_charset(WebKitDOMHTMLLinkElement* self);
	int webkit_dom_html_link_element_get_disabled(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_href(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_hreflang(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_media(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_rel(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_rev(WebKitDOMHTMLLinkElement* self);
	WebKitDOMStyleSheet* webkit_dom_html_link_element_get_sheet(WebKitDOMHTMLLinkElement* self);
	WebKitDOMDOMTokenList* webkit_dom_html_link_element_get_sizes(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_target(WebKitDOMHTMLLinkElement* self);
	char* webkit_dom_html_link_element_get_type_attr(WebKitDOMHTMLLinkElement* self);
	void webkit_dom_html_link_element_set_charset(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_disabled(WebKitDOMHTMLLinkElement* self, int value);
	void webkit_dom_html_link_element_set_href(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_hreflang(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_media(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_rel(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_rev(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_sizes(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_target(WebKitDOMHTMLLinkElement* self, const(char)* value);
	void webkit_dom_html_link_element_set_type_attr(WebKitDOMHTMLLinkElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLMapElement

	GType webkit_dom_html_map_element_get_type();
	WebKitDOMHTMLCollection* webkit_dom_html_map_element_get_areas(WebKitDOMHTMLMapElement* self);
	char* webkit_dom_html_map_element_get_name(WebKitDOMHTMLMapElement* self);
	void webkit_dom_html_map_element_set_name(WebKitDOMHTMLMapElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLMarqueeElement

	GType webkit_dom_html_marquee_element_get_type();
	void webkit_dom_html_marquee_element_start(WebKitDOMHTMLMarqueeElement* self);
	void webkit_dom_html_marquee_element_stop(WebKitDOMHTMLMarqueeElement* self);

	// webkit2webextension.DOMHTMLMenuElement

	GType webkit_dom_html_menu_element_get_type();
	int webkit_dom_html_menu_element_get_compact(WebKitDOMHTMLMenuElement* self);
	void webkit_dom_html_menu_element_set_compact(WebKitDOMHTMLMenuElement* self, int value);

	// webkit2webextension.DOMHTMLMetaElement

	GType webkit_dom_html_meta_element_get_type();
	char* webkit_dom_html_meta_element_get_content(WebKitDOMHTMLMetaElement* self);
	char* webkit_dom_html_meta_element_get_http_equiv(WebKitDOMHTMLMetaElement* self);
	char* webkit_dom_html_meta_element_get_name(WebKitDOMHTMLMetaElement* self);
	char* webkit_dom_html_meta_element_get_scheme(WebKitDOMHTMLMetaElement* self);
	void webkit_dom_html_meta_element_set_content(WebKitDOMHTMLMetaElement* self, const(char)* value);
	void webkit_dom_html_meta_element_set_http_equiv(WebKitDOMHTMLMetaElement* self, const(char)* value);
	void webkit_dom_html_meta_element_set_name(WebKitDOMHTMLMetaElement* self, const(char)* value);
	void webkit_dom_html_meta_element_set_scheme(WebKitDOMHTMLMetaElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLModElement

	GType webkit_dom_html_mod_element_get_type();
	char* webkit_dom_html_mod_element_get_cite(WebKitDOMHTMLModElement* self);
	char* webkit_dom_html_mod_element_get_date_time(WebKitDOMHTMLModElement* self);
	void webkit_dom_html_mod_element_set_cite(WebKitDOMHTMLModElement* self, const(char)* value);
	void webkit_dom_html_mod_element_set_date_time(WebKitDOMHTMLModElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLOListElement

	GType webkit_dom_html_o_list_element_get_type();
	int webkit_dom_html_o_list_element_get_compact(WebKitDOMHTMLOListElement* self);
	glong webkit_dom_html_o_list_element_get_start(WebKitDOMHTMLOListElement* self);
	char* webkit_dom_html_o_list_element_get_type_attr(WebKitDOMHTMLOListElement* self);
	void webkit_dom_html_o_list_element_set_compact(WebKitDOMHTMLOListElement* self, int value);
	void webkit_dom_html_o_list_element_set_start(WebKitDOMHTMLOListElement* self, glong value);
	void webkit_dom_html_o_list_element_set_type_attr(WebKitDOMHTMLOListElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLObjectElement

	GType webkit_dom_html_object_element_get_type();
	char* webkit_dom_html_object_element_get_align(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_archive(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_border(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_code(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_code_base(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_code_type(WebKitDOMHTMLObjectElement* self);
	WebKitDOMDocument* webkit_dom_html_object_element_get_content_document(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_data(WebKitDOMHTMLObjectElement* self);
	int webkit_dom_html_object_element_get_declare(WebKitDOMHTMLObjectElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_object_element_get_form(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_height(WebKitDOMHTMLObjectElement* self);
	glong webkit_dom_html_object_element_get_hspace(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_name(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_standby(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_type_attr(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_use_map(WebKitDOMHTMLObjectElement* self);
	glong webkit_dom_html_object_element_get_vspace(WebKitDOMHTMLObjectElement* self);
	char* webkit_dom_html_object_element_get_width(WebKitDOMHTMLObjectElement* self);
	void webkit_dom_html_object_element_set_align(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_archive(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_border(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_code(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_code_base(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_code_type(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_data(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_declare(WebKitDOMHTMLObjectElement* self, int value);
	void webkit_dom_html_object_element_set_height(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_hspace(WebKitDOMHTMLObjectElement* self, glong value);
	void webkit_dom_html_object_element_set_name(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_standby(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_type_attr(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_use_map(WebKitDOMHTMLObjectElement* self, const(char)* value);
	void webkit_dom_html_object_element_set_vspace(WebKitDOMHTMLObjectElement* self, glong value);
	void webkit_dom_html_object_element_set_width(WebKitDOMHTMLObjectElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLOptGroupElement

	GType webkit_dom_html_opt_group_element_get_type();
	int webkit_dom_html_opt_group_element_get_disabled(WebKitDOMHTMLOptGroupElement* self);
	char* webkit_dom_html_opt_group_element_get_label(WebKitDOMHTMLOptGroupElement* self);
	void webkit_dom_html_opt_group_element_set_disabled(WebKitDOMHTMLOptGroupElement* self, int value);
	void webkit_dom_html_opt_group_element_set_label(WebKitDOMHTMLOptGroupElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLOptionElement

	GType webkit_dom_html_option_element_get_type();
	int webkit_dom_html_option_element_get_default_selected(WebKitDOMHTMLOptionElement* self);
	int webkit_dom_html_option_element_get_disabled(WebKitDOMHTMLOptionElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_option_element_get_form(WebKitDOMHTMLOptionElement* self);
	glong webkit_dom_html_option_element_get_index(WebKitDOMHTMLOptionElement* self);
	char* webkit_dom_html_option_element_get_label(WebKitDOMHTMLOptionElement* self);
	int webkit_dom_html_option_element_get_selected(WebKitDOMHTMLOptionElement* self);
	char* webkit_dom_html_option_element_get_text(WebKitDOMHTMLOptionElement* self);
	char* webkit_dom_html_option_element_get_value(WebKitDOMHTMLOptionElement* self);
	void webkit_dom_html_option_element_set_default_selected(WebKitDOMHTMLOptionElement* self, int value);
	void webkit_dom_html_option_element_set_disabled(WebKitDOMHTMLOptionElement* self, int value);
	void webkit_dom_html_option_element_set_label(WebKitDOMHTMLOptionElement* self, const(char)* value);
	void webkit_dom_html_option_element_set_selected(WebKitDOMHTMLOptionElement* self, int value);
	void webkit_dom_html_option_element_set_value(WebKitDOMHTMLOptionElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLOptionsCollection

	GType webkit_dom_html_options_collection_get_type();
	gulong webkit_dom_html_options_collection_get_length(WebKitDOMHTMLOptionsCollection* self);
	glong webkit_dom_html_options_collection_get_selected_index(WebKitDOMHTMLOptionsCollection* self);
	WebKitDOMNode* webkit_dom_html_options_collection_named_item(WebKitDOMHTMLOptionsCollection* self, const(char)* name);
	void webkit_dom_html_options_collection_set_selected_index(WebKitDOMHTMLOptionsCollection* self, glong value);

	// webkit2webextension.DOMHTMLParagraphElement

	GType webkit_dom_html_paragraph_element_get_type();
	char* webkit_dom_html_paragraph_element_get_align(WebKitDOMHTMLParagraphElement* self);
	void webkit_dom_html_paragraph_element_set_align(WebKitDOMHTMLParagraphElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLParamElement

	GType webkit_dom_html_param_element_get_type();
	char* webkit_dom_html_param_element_get_name(WebKitDOMHTMLParamElement* self);
	char* webkit_dom_html_param_element_get_type_attr(WebKitDOMHTMLParamElement* self);
	char* webkit_dom_html_param_element_get_value(WebKitDOMHTMLParamElement* self);
	char* webkit_dom_html_param_element_get_value_type(WebKitDOMHTMLParamElement* self);
	void webkit_dom_html_param_element_set_name(WebKitDOMHTMLParamElement* self, const(char)* value);
	void webkit_dom_html_param_element_set_type_attr(WebKitDOMHTMLParamElement* self, const(char)* value);
	void webkit_dom_html_param_element_set_value(WebKitDOMHTMLParamElement* self, const(char)* value);
	void webkit_dom_html_param_element_set_value_type(WebKitDOMHTMLParamElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLPreElement

	GType webkit_dom_html_pre_element_get_type();
	glong webkit_dom_html_pre_element_get_width(WebKitDOMHTMLPreElement* self);
	int webkit_dom_html_pre_element_get_wrap(WebKitDOMHTMLPreElement* self);
	void webkit_dom_html_pre_element_set_width(WebKitDOMHTMLPreElement* self, glong value);
	void webkit_dom_html_pre_element_set_wrap(WebKitDOMHTMLPreElement* self, int value);

	// webkit2webextension.DOMHTMLQuoteElement

	GType webkit_dom_html_quote_element_get_type();
	char* webkit_dom_html_quote_element_get_cite(WebKitDOMHTMLQuoteElement* self);
	void webkit_dom_html_quote_element_set_cite(WebKitDOMHTMLQuoteElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLScriptElement

	GType webkit_dom_html_script_element_get_type();
	char* webkit_dom_html_script_element_get_charset(WebKitDOMHTMLScriptElement* self);
	int webkit_dom_html_script_element_get_defer(WebKitDOMHTMLScriptElement* self);
	char* webkit_dom_html_script_element_get_event(WebKitDOMHTMLScriptElement* self);
	char* webkit_dom_html_script_element_get_html_for(WebKitDOMHTMLScriptElement* self);
	char* webkit_dom_html_script_element_get_src(WebKitDOMHTMLScriptElement* self);
	char* webkit_dom_html_script_element_get_text(WebKitDOMHTMLScriptElement* self);
	char* webkit_dom_html_script_element_get_type_attr(WebKitDOMHTMLScriptElement* self);
	void webkit_dom_html_script_element_set_charset(WebKitDOMHTMLScriptElement* self, const(char)* value);
	void webkit_dom_html_script_element_set_defer(WebKitDOMHTMLScriptElement* self, int value);
	void webkit_dom_html_script_element_set_event(WebKitDOMHTMLScriptElement* self, const(char)* value);
	void webkit_dom_html_script_element_set_html_for(WebKitDOMHTMLScriptElement* self, const(char)* value);
	void webkit_dom_html_script_element_set_src(WebKitDOMHTMLScriptElement* self, const(char)* value);
	void webkit_dom_html_script_element_set_text(WebKitDOMHTMLScriptElement* self, const(char)* value);
	void webkit_dom_html_script_element_set_type_attr(WebKitDOMHTMLScriptElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLSelectElement

	GType webkit_dom_html_select_element_get_type();
	void webkit_dom_html_select_element_add(WebKitDOMHTMLSelectElement* self, WebKitDOMHTMLElement* element, WebKitDOMHTMLElement* before, GError** err);
	int webkit_dom_html_select_element_get_autofocus(WebKitDOMHTMLSelectElement* self);
	int webkit_dom_html_select_element_get_disabled(WebKitDOMHTMLSelectElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_select_element_get_form(WebKitDOMHTMLSelectElement* self);
	gulong webkit_dom_html_select_element_get_length(WebKitDOMHTMLSelectElement* self);
	int webkit_dom_html_select_element_get_multiple(WebKitDOMHTMLSelectElement* self);
	char* webkit_dom_html_select_element_get_name(WebKitDOMHTMLSelectElement* self);
	WebKitDOMHTMLOptionsCollection* webkit_dom_html_select_element_get_options(WebKitDOMHTMLSelectElement* self);
	char* webkit_dom_html_select_element_get_select_type(WebKitDOMHTMLSelectElement* self);
	glong webkit_dom_html_select_element_get_selected_index(WebKitDOMHTMLSelectElement* self);
	glong webkit_dom_html_select_element_get_size(WebKitDOMHTMLSelectElement* self);
	char* webkit_dom_html_select_element_get_value(WebKitDOMHTMLSelectElement* self);
	int webkit_dom_html_select_element_get_will_validate(WebKitDOMHTMLSelectElement* self);
	WebKitDOMNode* webkit_dom_html_select_element_item(WebKitDOMHTMLSelectElement* self, gulong index);
	WebKitDOMNode* webkit_dom_html_select_element_named_item(WebKitDOMHTMLSelectElement* self, const(char)* name);
	void webkit_dom_html_select_element_remove(WebKitDOMHTMLSelectElement* self, glong index);
	void webkit_dom_html_select_element_set_autofocus(WebKitDOMHTMLSelectElement* self, int value);
	void webkit_dom_html_select_element_set_disabled(WebKitDOMHTMLSelectElement* self, int value);
	void webkit_dom_html_select_element_set_length(WebKitDOMHTMLSelectElement* self, gulong value, GError** err);
	void webkit_dom_html_select_element_set_multiple(WebKitDOMHTMLSelectElement* self, int value);
	void webkit_dom_html_select_element_set_name(WebKitDOMHTMLSelectElement* self, const(char)* value);
	void webkit_dom_html_select_element_set_selected_index(WebKitDOMHTMLSelectElement* self, glong value);
	void webkit_dom_html_select_element_set_size(WebKitDOMHTMLSelectElement* self, glong value);
	void webkit_dom_html_select_element_set_value(WebKitDOMHTMLSelectElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLStyleElement

	GType webkit_dom_html_style_element_get_type();
	int webkit_dom_html_style_element_get_disabled(WebKitDOMHTMLStyleElement* self);
	char* webkit_dom_html_style_element_get_media(WebKitDOMHTMLStyleElement* self);
	WebKitDOMStyleSheet* webkit_dom_html_style_element_get_sheet(WebKitDOMHTMLStyleElement* self);
	char* webkit_dom_html_style_element_get_type_attr(WebKitDOMHTMLStyleElement* self);
	void webkit_dom_html_style_element_set_disabled(WebKitDOMHTMLStyleElement* self, int value);
	void webkit_dom_html_style_element_set_media(WebKitDOMHTMLStyleElement* self, const(char)* value);
	void webkit_dom_html_style_element_set_type_attr(WebKitDOMHTMLStyleElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTableCaptionElement

	GType webkit_dom_html_table_caption_element_get_type();
	char* webkit_dom_html_table_caption_element_get_align(WebKitDOMHTMLTableCaptionElement* self);
	void webkit_dom_html_table_caption_element_set_align(WebKitDOMHTMLTableCaptionElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTableCellElement

	GType webkit_dom_html_table_cell_element_get_type();
	char* webkit_dom_html_table_cell_element_get_abbr(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_align(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_axis(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_bg_color(WebKitDOMHTMLTableCellElement* self);
	glong webkit_dom_html_table_cell_element_get_cell_index(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_ch(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_ch_off(WebKitDOMHTMLTableCellElement* self);
	glong webkit_dom_html_table_cell_element_get_col_span(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_headers(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_height(WebKitDOMHTMLTableCellElement* self);
	int webkit_dom_html_table_cell_element_get_no_wrap(WebKitDOMHTMLTableCellElement* self);
	glong webkit_dom_html_table_cell_element_get_row_span(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_scope(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_v_align(WebKitDOMHTMLTableCellElement* self);
	char* webkit_dom_html_table_cell_element_get_width(WebKitDOMHTMLTableCellElement* self);
	void webkit_dom_html_table_cell_element_set_abbr(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_align(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_axis(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_bg_color(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_ch(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_ch_off(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_col_span(WebKitDOMHTMLTableCellElement* self, glong value);
	void webkit_dom_html_table_cell_element_set_headers(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_height(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_no_wrap(WebKitDOMHTMLTableCellElement* self, int value);
	void webkit_dom_html_table_cell_element_set_row_span(WebKitDOMHTMLTableCellElement* self, glong value);
	void webkit_dom_html_table_cell_element_set_scope(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_v_align(WebKitDOMHTMLTableCellElement* self, const(char)* value);
	void webkit_dom_html_table_cell_element_set_width(WebKitDOMHTMLTableCellElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTableColElement

	GType webkit_dom_html_table_col_element_get_type();
	char* webkit_dom_html_table_col_element_get_align(WebKitDOMHTMLTableColElement* self);
	char* webkit_dom_html_table_col_element_get_ch(WebKitDOMHTMLTableColElement* self);
	char* webkit_dom_html_table_col_element_get_ch_off(WebKitDOMHTMLTableColElement* self);
	glong webkit_dom_html_table_col_element_get_span(WebKitDOMHTMLTableColElement* self);
	char* webkit_dom_html_table_col_element_get_v_align(WebKitDOMHTMLTableColElement* self);
	char* webkit_dom_html_table_col_element_get_width(WebKitDOMHTMLTableColElement* self);
	void webkit_dom_html_table_col_element_set_align(WebKitDOMHTMLTableColElement* self, const(char)* value);
	void webkit_dom_html_table_col_element_set_ch(WebKitDOMHTMLTableColElement* self, const(char)* value);
	void webkit_dom_html_table_col_element_set_ch_off(WebKitDOMHTMLTableColElement* self, const(char)* value);
	void webkit_dom_html_table_col_element_set_span(WebKitDOMHTMLTableColElement* self, glong value);
	void webkit_dom_html_table_col_element_set_v_align(WebKitDOMHTMLTableColElement* self, const(char)* value);
	void webkit_dom_html_table_col_element_set_width(WebKitDOMHTMLTableColElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTableElement

	GType webkit_dom_html_table_element_get_type();
	WebKitDOMHTMLElement* webkit_dom_html_table_element_create_caption(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLElement* webkit_dom_html_table_element_create_t_foot(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLElement* webkit_dom_html_table_element_create_t_head(WebKitDOMHTMLTableElement* self);
	void webkit_dom_html_table_element_delete_caption(WebKitDOMHTMLTableElement* self);
	void webkit_dom_html_table_element_delete_row(WebKitDOMHTMLTableElement* self, glong index, GError** err);
	void webkit_dom_html_table_element_delete_t_foot(WebKitDOMHTMLTableElement* self);
	void webkit_dom_html_table_element_delete_t_head(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_align(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_bg_color(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_border(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLTableCaptionElement* webkit_dom_html_table_element_get_caption(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_cell_padding(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_cell_spacing(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLCollection* webkit_dom_html_table_element_get_rows(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_rules(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_summary(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLCollection* webkit_dom_html_table_element_get_t_bodies(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLTableSectionElement* webkit_dom_html_table_element_get_t_foot(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLTableSectionElement* webkit_dom_html_table_element_get_t_head(WebKitDOMHTMLTableElement* self);
	char* webkit_dom_html_table_element_get_width(WebKitDOMHTMLTableElement* self);
	WebKitDOMHTMLElement* webkit_dom_html_table_element_insert_row(WebKitDOMHTMLTableElement* self, glong index, GError** err);
	void webkit_dom_html_table_element_set_align(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_bg_color(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_border(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_caption(WebKitDOMHTMLTableElement* self, WebKitDOMHTMLTableCaptionElement* value, GError** err);
	void webkit_dom_html_table_element_set_cell_padding(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_cell_spacing(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_rules(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_summary(WebKitDOMHTMLTableElement* self, const(char)* value);
	void webkit_dom_html_table_element_set_t_foot(WebKitDOMHTMLTableElement* self, WebKitDOMHTMLTableSectionElement* value, GError** err);
	void webkit_dom_html_table_element_set_t_head(WebKitDOMHTMLTableElement* self, WebKitDOMHTMLTableSectionElement* value, GError** err);
	void webkit_dom_html_table_element_set_width(WebKitDOMHTMLTableElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTableRowElement

	GType webkit_dom_html_table_row_element_get_type();
	void webkit_dom_html_table_row_element_delete_cell(WebKitDOMHTMLTableRowElement* self, glong index, GError** err);
	char* webkit_dom_html_table_row_element_get_align(WebKitDOMHTMLTableRowElement* self);
	char* webkit_dom_html_table_row_element_get_bg_color(WebKitDOMHTMLTableRowElement* self);
	WebKitDOMHTMLCollection* webkit_dom_html_table_row_element_get_cells(WebKitDOMHTMLTableRowElement* self);
	char* webkit_dom_html_table_row_element_get_ch(WebKitDOMHTMLTableRowElement* self);
	char* webkit_dom_html_table_row_element_get_ch_off(WebKitDOMHTMLTableRowElement* self);
	glong webkit_dom_html_table_row_element_get_row_index(WebKitDOMHTMLTableRowElement* self);
	glong webkit_dom_html_table_row_element_get_section_row_index(WebKitDOMHTMLTableRowElement* self);
	char* webkit_dom_html_table_row_element_get_v_align(WebKitDOMHTMLTableRowElement* self);
	WebKitDOMHTMLElement* webkit_dom_html_table_row_element_insert_cell(WebKitDOMHTMLTableRowElement* self, glong index, GError** err);
	void webkit_dom_html_table_row_element_set_align(WebKitDOMHTMLTableRowElement* self, const(char)* value);
	void webkit_dom_html_table_row_element_set_bg_color(WebKitDOMHTMLTableRowElement* self, const(char)* value);
	void webkit_dom_html_table_row_element_set_ch(WebKitDOMHTMLTableRowElement* self, const(char)* value);
	void webkit_dom_html_table_row_element_set_ch_off(WebKitDOMHTMLTableRowElement* self, const(char)* value);
	void webkit_dom_html_table_row_element_set_v_align(WebKitDOMHTMLTableRowElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTableSectionElement

	GType webkit_dom_html_table_section_element_get_type();
	void webkit_dom_html_table_section_element_delete_row(WebKitDOMHTMLTableSectionElement* self, glong index, GError** err);
	char* webkit_dom_html_table_section_element_get_align(WebKitDOMHTMLTableSectionElement* self);
	char* webkit_dom_html_table_section_element_get_ch(WebKitDOMHTMLTableSectionElement* self);
	char* webkit_dom_html_table_section_element_get_ch_off(WebKitDOMHTMLTableSectionElement* self);
	WebKitDOMHTMLCollection* webkit_dom_html_table_section_element_get_rows(WebKitDOMHTMLTableSectionElement* self);
	char* webkit_dom_html_table_section_element_get_v_align(WebKitDOMHTMLTableSectionElement* self);
	WebKitDOMHTMLElement* webkit_dom_html_table_section_element_insert_row(WebKitDOMHTMLTableSectionElement* self, glong index, GError** err);
	void webkit_dom_html_table_section_element_set_align(WebKitDOMHTMLTableSectionElement* self, const(char)* value);
	void webkit_dom_html_table_section_element_set_ch(WebKitDOMHTMLTableSectionElement* self, const(char)* value);
	void webkit_dom_html_table_section_element_set_ch_off(WebKitDOMHTMLTableSectionElement* self, const(char)* value);
	void webkit_dom_html_table_section_element_set_v_align(WebKitDOMHTMLTableSectionElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTextAreaElement

	GType webkit_dom_html_text_area_element_get_type();
	char* webkit_dom_html_text_area_element_get_area_type(WebKitDOMHTMLTextAreaElement* self);
	int webkit_dom_html_text_area_element_get_autofocus(WebKitDOMHTMLTextAreaElement* self);
	glong webkit_dom_html_text_area_element_get_cols(WebKitDOMHTMLTextAreaElement* self);
	char* webkit_dom_html_text_area_element_get_default_value(WebKitDOMHTMLTextAreaElement* self);
	int webkit_dom_html_text_area_element_get_disabled(WebKitDOMHTMLTextAreaElement* self);
	WebKitDOMHTMLFormElement* webkit_dom_html_text_area_element_get_form(WebKitDOMHTMLTextAreaElement* self);
	char* webkit_dom_html_text_area_element_get_name(WebKitDOMHTMLTextAreaElement* self);
	int webkit_dom_html_text_area_element_get_read_only(WebKitDOMHTMLTextAreaElement* self);
	glong webkit_dom_html_text_area_element_get_rows(WebKitDOMHTMLTextAreaElement* self);
	glong webkit_dom_html_text_area_element_get_selection_end(WebKitDOMHTMLTextAreaElement* self);
	glong webkit_dom_html_text_area_element_get_selection_start(WebKitDOMHTMLTextAreaElement* self);
	char* webkit_dom_html_text_area_element_get_value(WebKitDOMHTMLTextAreaElement* self);
	int webkit_dom_html_text_area_element_get_will_validate(WebKitDOMHTMLTextAreaElement* self);
	int webkit_dom_html_text_area_element_is_edited(WebKitDOMHTMLTextAreaElement* input);
	void webkit_dom_html_text_area_element_select(WebKitDOMHTMLTextAreaElement* self);
	void webkit_dom_html_text_area_element_set_autofocus(WebKitDOMHTMLTextAreaElement* self, int value);
	void webkit_dom_html_text_area_element_set_cols(WebKitDOMHTMLTextAreaElement* self, glong value);
	void webkit_dom_html_text_area_element_set_default_value(WebKitDOMHTMLTextAreaElement* self, const(char)* value);
	void webkit_dom_html_text_area_element_set_disabled(WebKitDOMHTMLTextAreaElement* self, int value);
	void webkit_dom_html_text_area_element_set_name(WebKitDOMHTMLTextAreaElement* self, const(char)* value);
	void webkit_dom_html_text_area_element_set_read_only(WebKitDOMHTMLTextAreaElement* self, int value);
	void webkit_dom_html_text_area_element_set_rows(WebKitDOMHTMLTextAreaElement* self, glong value);
	void webkit_dom_html_text_area_element_set_selection_end(WebKitDOMHTMLTextAreaElement* self, glong value);
	void webkit_dom_html_text_area_element_set_selection_range(WebKitDOMHTMLTextAreaElement* self, glong start, glong end, const(char)* direction);
	void webkit_dom_html_text_area_element_set_selection_start(WebKitDOMHTMLTextAreaElement* self, glong value);
	void webkit_dom_html_text_area_element_set_value(WebKitDOMHTMLTextAreaElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLTitleElement

	GType webkit_dom_html_title_element_get_type();
	char* webkit_dom_html_title_element_get_text(WebKitDOMHTMLTitleElement* self);
	void webkit_dom_html_title_element_set_text(WebKitDOMHTMLTitleElement* self, const(char)* value);

	// webkit2webextension.DOMHTMLUListElement

	GType webkit_dom_html_u_list_element_get_type();
	int webkit_dom_html_u_list_element_get_compact(WebKitDOMHTMLUListElement* self);
	char* webkit_dom_html_u_list_element_get_type_attr(WebKitDOMHTMLUListElement* self);
	void webkit_dom_html_u_list_element_set_compact(WebKitDOMHTMLUListElement* self, int value);
	void webkit_dom_html_u_list_element_set_type_attr(WebKitDOMHTMLUListElement* self, const(char)* value);

	// webkit2webextension.DOMKeyboardEvent

	GType webkit_dom_keyboard_event_get_type();
	int webkit_dom_keyboard_event_get_alt_graph_key(WebKitDOMKeyboardEvent* self);
	int webkit_dom_keyboard_event_get_alt_key(WebKitDOMKeyboardEvent* self);
	int webkit_dom_keyboard_event_get_ctrl_key(WebKitDOMKeyboardEvent* self);
	char* webkit_dom_keyboard_event_get_key_identifier(WebKitDOMKeyboardEvent* self);
	gulong webkit_dom_keyboard_event_get_key_location(WebKitDOMKeyboardEvent* self);
	int webkit_dom_keyboard_event_get_meta_key(WebKitDOMKeyboardEvent* self);
	int webkit_dom_keyboard_event_get_modifier_state(WebKitDOMKeyboardEvent* self, const(char)* keyIdentifierArg);
	int webkit_dom_keyboard_event_get_shift_key(WebKitDOMKeyboardEvent* self);
	void webkit_dom_keyboard_event_init_keyboard_event(WebKitDOMKeyboardEvent* self, const(char)* type, int canBubble, int cancelable, WebKitDOMDOMWindow* view, const(char)* keyIdentifier, gulong location, int ctrlKey, int altKey, int shiftKey, int metaKey, int altGraphKey);

	// webkit2webextension.DOMMediaList

	GType webkit_dom_media_list_get_type();
	void webkit_dom_media_list_append_medium(WebKitDOMMediaList* self, const(char)* newMedium, GError** err);
	void webkit_dom_media_list_delete_medium(WebKitDOMMediaList* self, const(char)* oldMedium, GError** err);
	gulong webkit_dom_media_list_get_length(WebKitDOMMediaList* self);
	char* webkit_dom_media_list_get_media_text(WebKitDOMMediaList* self);
	char* webkit_dom_media_list_item(WebKitDOMMediaList* self, gulong index);
	void webkit_dom_media_list_set_media_text(WebKitDOMMediaList* self, const(char)* value, GError** err);

	// webkit2webextension.DOMMouseEvent

	GType webkit_dom_mouse_event_get_type();
	int webkit_dom_mouse_event_get_alt_key(WebKitDOMMouseEvent* self);
	ushort webkit_dom_mouse_event_get_button(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_client_x(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_client_y(WebKitDOMMouseEvent* self);
	int webkit_dom_mouse_event_get_ctrl_key(WebKitDOMMouseEvent* self);
	WebKitDOMNode* webkit_dom_mouse_event_get_from_element(WebKitDOMMouseEvent* self);
	int webkit_dom_mouse_event_get_meta_key(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_offset_x(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_offset_y(WebKitDOMMouseEvent* self);
	WebKitDOMEventTarget* webkit_dom_mouse_event_get_related_target(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_screen_x(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_screen_y(WebKitDOMMouseEvent* self);
	int webkit_dom_mouse_event_get_shift_key(WebKitDOMMouseEvent* self);
	WebKitDOMNode* webkit_dom_mouse_event_get_to_element(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_x(WebKitDOMMouseEvent* self);
	glong webkit_dom_mouse_event_get_y(WebKitDOMMouseEvent* self);
	void webkit_dom_mouse_event_init_mouse_event(WebKitDOMMouseEvent* self, const(char)* type, int canBubble, int cancelable, WebKitDOMDOMWindow* view, glong detail, glong screenX, glong screenY, glong clientX, glong clientY, int ctrlKey, int altKey, int shiftKey, int metaKey, ushort button, WebKitDOMEventTarget* relatedTarget);

	// webkit2webextension.DOMNamedNodeMap

	GType webkit_dom_named_node_map_get_type();
	gulong webkit_dom_named_node_map_get_length(WebKitDOMNamedNodeMap* self);
	WebKitDOMNode* webkit_dom_named_node_map_get_named_item(WebKitDOMNamedNodeMap* self, const(char)* name);
	WebKitDOMNode* webkit_dom_named_node_map_get_named_item_ns(WebKitDOMNamedNodeMap* self, const(char)* namespaceURI, const(char)* localName);
	WebKitDOMNode* webkit_dom_named_node_map_item(WebKitDOMNamedNodeMap* self, gulong index);
	WebKitDOMNode* webkit_dom_named_node_map_remove_named_item(WebKitDOMNamedNodeMap* self, const(char)* name, GError** err);
	WebKitDOMNode* webkit_dom_named_node_map_remove_named_item_ns(WebKitDOMNamedNodeMap* self, const(char)* namespaceURI, const(char)* localName, GError** err);
	WebKitDOMNode* webkit_dom_named_node_map_set_named_item(WebKitDOMNamedNodeMap* self, WebKitDOMNode* node, GError** err);
	WebKitDOMNode* webkit_dom_named_node_map_set_named_item_ns(WebKitDOMNamedNodeMap* self, WebKitDOMNode* node, GError** err);

	// webkit2webextension.DOMNode

	GType webkit_dom_node_get_type();
	WebKitDOMNode* webkit_dom_node_for_js_value(JSCValue* value);
	WebKitDOMNode* webkit_dom_node_append_child(WebKitDOMNode* self, WebKitDOMNode* newChild, GError** err);
	WebKitDOMNode* webkit_dom_node_clone_node(WebKitDOMNode* self, int deep, GError** err);
	WebKitDOMNode* webkit_dom_node_clone_node_with_error(WebKitDOMNode* self, int deep, GError** err);
	ushort webkit_dom_node_compare_document_position(WebKitDOMNode* self, WebKitDOMNode* other);
	int webkit_dom_node_contains(WebKitDOMNode* self, WebKitDOMNode* other);
	char* webkit_dom_node_get_base_uri(WebKitDOMNode* self);
	WebKitDOMNodeList* webkit_dom_node_get_child_nodes(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_get_first_child(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_get_last_child(WebKitDOMNode* self);
	char* webkit_dom_node_get_local_name(WebKitDOMNode* self);
	char* webkit_dom_node_get_namespace_uri(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_get_next_sibling(WebKitDOMNode* self);
	char* webkit_dom_node_get_node_name(WebKitDOMNode* self);
	ushort webkit_dom_node_get_node_type(WebKitDOMNode* self);
	char* webkit_dom_node_get_node_value(WebKitDOMNode* self);
	WebKitDOMDocument* webkit_dom_node_get_owner_document(WebKitDOMNode* self);
	WebKitDOMElement* webkit_dom_node_get_parent_element(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_get_parent_node(WebKitDOMNode* self);
	char* webkit_dom_node_get_prefix(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_get_previous_sibling(WebKitDOMNode* self);
	char* webkit_dom_node_get_text_content(WebKitDOMNode* self);
	int webkit_dom_node_has_child_nodes(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_insert_before(WebKitDOMNode* self, WebKitDOMNode* newChild, WebKitDOMNode* refChild, GError** err);
	int webkit_dom_node_is_default_namespace(WebKitDOMNode* self, const(char)* namespaceURI);
	int webkit_dom_node_is_equal_node(WebKitDOMNode* self, WebKitDOMNode* other);
	int webkit_dom_node_is_same_node(WebKitDOMNode* self, WebKitDOMNode* other);
	int webkit_dom_node_is_supported(WebKitDOMNode* self, const(char)* feature, const(char)* version_);
	char* webkit_dom_node_lookup_namespace_uri(WebKitDOMNode* self, const(char)* prefix);
	char* webkit_dom_node_lookup_prefix(WebKitDOMNode* self, const(char)* namespaceURI);
	void webkit_dom_node_normalize(WebKitDOMNode* self);
	WebKitDOMNode* webkit_dom_node_remove_child(WebKitDOMNode* self, WebKitDOMNode* oldChild, GError** err);
	WebKitDOMNode* webkit_dom_node_replace_child(WebKitDOMNode* self, WebKitDOMNode* newChild, WebKitDOMNode* oldChild, GError** err);
	void webkit_dom_node_set_node_value(WebKitDOMNode* self, const(char)* value, GError** err);
	void webkit_dom_node_set_prefix(WebKitDOMNode* self, const(char)* value, GError** err);
	void webkit_dom_node_set_text_content(WebKitDOMNode* self, const(char)* value, GError** err);

	// webkit2webextension.DOMNodeFilter

	GType webkit_dom_node_filter_get_type();
	short webkit_dom_node_filter_accept_node(WebKitDOMNodeFilter* filter, WebKitDOMNode* node);

	// webkit2webextension.DOMNodeIterator

	GType webkit_dom_node_iterator_get_type();
	void webkit_dom_node_iterator_detach(WebKitDOMNodeIterator* self);
	int webkit_dom_node_iterator_get_expand_entity_references(WebKitDOMNodeIterator* self);
	WebKitDOMNodeFilter* webkit_dom_node_iterator_get_filter(WebKitDOMNodeIterator* self);
	int webkit_dom_node_iterator_get_pointer_before_reference_node(WebKitDOMNodeIterator* self);
	WebKitDOMNode* webkit_dom_node_iterator_get_reference_node(WebKitDOMNodeIterator* self);
	WebKitDOMNode* webkit_dom_node_iterator_get_root(WebKitDOMNodeIterator* self);
	gulong webkit_dom_node_iterator_get_what_to_show(WebKitDOMNodeIterator* self);
	WebKitDOMNode* webkit_dom_node_iterator_next_node(WebKitDOMNodeIterator* self, GError** err);
	WebKitDOMNode* webkit_dom_node_iterator_previous_node(WebKitDOMNodeIterator* self, GError** err);

	// webkit2webextension.DOMNodeList

	GType webkit_dom_node_list_get_type();
	gulong webkit_dom_node_list_get_length(WebKitDOMNodeList* self);
	WebKitDOMNode* webkit_dom_node_list_item(WebKitDOMNodeList* self, gulong index);

	// webkit2webextension.DOMObject

	GType webkit_dom_object_get_type();

	// webkit2webextension.DOMProcessingInstruction

	GType webkit_dom_processing_instruction_get_type();
	WebKitDOMStyleSheet* webkit_dom_processing_instruction_get_sheet(WebKitDOMProcessingInstruction* self);
	char* webkit_dom_processing_instruction_get_target(WebKitDOMProcessingInstruction* self);

	// webkit2webextension.DOMRange

	GType webkit_dom_range_get_type();
	WebKitDOMDocumentFragment* webkit_dom_range_clone_contents(WebKitDOMRange* self, GError** err);
	WebKitDOMRange* webkit_dom_range_clone_range(WebKitDOMRange* self, GError** err);
	void webkit_dom_range_collapse(WebKitDOMRange* self, int toStart, GError** err);
	short webkit_dom_range_compare_boundary_points(WebKitDOMRange* self, ushort how, WebKitDOMRange* sourceRange, GError** err);
	short webkit_dom_range_compare_node(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	short webkit_dom_range_compare_point(WebKitDOMRange* self, WebKitDOMNode* refNode, glong offset, GError** err);
	WebKitDOMDocumentFragment* webkit_dom_range_create_contextual_fragment(WebKitDOMRange* self, const(char)* html, GError** err);
	void webkit_dom_range_delete_contents(WebKitDOMRange* self, GError** err);
	void webkit_dom_range_detach(WebKitDOMRange* self, GError** err);
	void webkit_dom_range_expand(WebKitDOMRange* self, const(char)* unit, GError** err);
	WebKitDOMDocumentFragment* webkit_dom_range_extract_contents(WebKitDOMRange* self, GError** err);
	int webkit_dom_range_get_collapsed(WebKitDOMRange* self, GError** err);
	WebKitDOMNode* webkit_dom_range_get_common_ancestor_container(WebKitDOMRange* self, GError** err);
	WebKitDOMNode* webkit_dom_range_get_end_container(WebKitDOMRange* self, GError** err);
	glong webkit_dom_range_get_end_offset(WebKitDOMRange* self, GError** err);
	WebKitDOMNode* webkit_dom_range_get_start_container(WebKitDOMRange* self, GError** err);
	glong webkit_dom_range_get_start_offset(WebKitDOMRange* self, GError** err);
	char* webkit_dom_range_get_text(WebKitDOMRange* self);
	void webkit_dom_range_insert_node(WebKitDOMRange* self, WebKitDOMNode* newNode, GError** err);
	int webkit_dom_range_intersects_node(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	int webkit_dom_range_is_point_in_range(WebKitDOMRange* self, WebKitDOMNode* refNode, glong offset, GError** err);
	void webkit_dom_range_select_node(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	void webkit_dom_range_select_node_contents(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	void webkit_dom_range_set_end(WebKitDOMRange* self, WebKitDOMNode* refNode, glong offset, GError** err);
	void webkit_dom_range_set_end_after(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	void webkit_dom_range_set_end_before(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	void webkit_dom_range_set_start(WebKitDOMRange* self, WebKitDOMNode* refNode, glong offset, GError** err);
	void webkit_dom_range_set_start_after(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	void webkit_dom_range_set_start_before(WebKitDOMRange* self, WebKitDOMNode* refNode, GError** err);
	void webkit_dom_range_surround_contents(WebKitDOMRange* self, WebKitDOMNode* newParent, GError** err);
	char* webkit_dom_range_to_string(WebKitDOMRange* self, GError** err);

	// webkit2webextension.DOMStyleSheet

	GType webkit_dom_style_sheet_get_type();
	char* webkit_dom_style_sheet_get_content_type(WebKitDOMStyleSheet* self);
	int webkit_dom_style_sheet_get_disabled(WebKitDOMStyleSheet* self);
	char* webkit_dom_style_sheet_get_href(WebKitDOMStyleSheet* self);
	WebKitDOMMediaList* webkit_dom_style_sheet_get_media(WebKitDOMStyleSheet* self);
	WebKitDOMNode* webkit_dom_style_sheet_get_owner_node(WebKitDOMStyleSheet* self);
	WebKitDOMStyleSheet* webkit_dom_style_sheet_get_parent_style_sheet(WebKitDOMStyleSheet* self);
	char* webkit_dom_style_sheet_get_title(WebKitDOMStyleSheet* self);
	void webkit_dom_style_sheet_set_disabled(WebKitDOMStyleSheet* self, int value);

	// webkit2webextension.DOMStyleSheetList

	GType webkit_dom_style_sheet_list_get_type();
	gulong webkit_dom_style_sheet_list_get_length(WebKitDOMStyleSheetList* self);
	WebKitDOMStyleSheet* webkit_dom_style_sheet_list_item(WebKitDOMStyleSheetList* self, gulong index);

	// webkit2webextension.DOMText

	GType webkit_dom_text_get_type();
	char* webkit_dom_text_get_whole_text(WebKitDOMText* self);
	WebKitDOMText* webkit_dom_text_replace_whole_text(WebKitDOMText* self, const(char)* content, GError** err);
	WebKitDOMText* webkit_dom_text_split_text(WebKitDOMText* self, gulong offset, GError** err);

	// webkit2webextension.DOMTreeWalker

	GType webkit_dom_tree_walker_get_type();
	WebKitDOMNode* webkit_dom_tree_walker_first_child(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_get_current_node(WebKitDOMTreeWalker* self);
	int webkit_dom_tree_walker_get_expand_entity_references(WebKitDOMTreeWalker* self);
	WebKitDOMNodeFilter* webkit_dom_tree_walker_get_filter(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_get_root(WebKitDOMTreeWalker* self);
	gulong webkit_dom_tree_walker_get_what_to_show(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_last_child(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_next_node(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_next_sibling(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_parent_node(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_previous_node(WebKitDOMTreeWalker* self);
	WebKitDOMNode* webkit_dom_tree_walker_previous_sibling(WebKitDOMTreeWalker* self);
	void webkit_dom_tree_walker_set_current_node(WebKitDOMTreeWalker* self, WebKitDOMNode* value, GError** err);

	// webkit2webextension.DOMUIEvent

	GType webkit_dom_ui_event_get_type();
	glong webkit_dom_ui_event_get_char_code(WebKitDOMUIEvent* self);
	glong webkit_dom_ui_event_get_detail(WebKitDOMUIEvent* self);
	glong webkit_dom_ui_event_get_key_code(WebKitDOMUIEvent* self);
	glong webkit_dom_ui_event_get_layer_x(WebKitDOMUIEvent* self);
	glong webkit_dom_ui_event_get_layer_y(WebKitDOMUIEvent* self);
	glong webkit_dom_ui_event_get_page_x(WebKitDOMUIEvent* self);
	glong webkit_dom_ui_event_get_page_y(WebKitDOMUIEvent* self);
	WebKitDOMDOMWindow* webkit_dom_ui_event_get_view(WebKitDOMUIEvent* self);
	void webkit_dom_ui_event_init_ui_event(WebKitDOMUIEvent* self, const(char)* type, int canBubble, int cancelable, WebKitDOMDOMWindow* view, glong detail);

	// webkit2webextension.DOMWheelEvent

	GType webkit_dom_wheel_event_get_type();
	glong webkit_dom_wheel_event_get_wheel_delta(WebKitDOMWheelEvent* self);
	glong webkit_dom_wheel_event_get_wheel_delta_x(WebKitDOMWheelEvent* self);
	glong webkit_dom_wheel_event_get_wheel_delta_y(WebKitDOMWheelEvent* self);
	void webkit_dom_wheel_event_init_wheel_event(WebKitDOMWheelEvent* self, glong wheelDeltaX, glong wheelDeltaY, WebKitDOMDOMWindow* view, glong screenX, glong screenY, glong clientX, glong clientY, int ctrlKey, int altKey, int shiftKey, int metaKey);

	// webkit2webextension.DOMXPathExpression

	GType webkit_dom_xpath_expression_get_type();
	WebKitDOMXPathResult* webkit_dom_xpath_expression_evaluate(WebKitDOMXPathExpression* self, WebKitDOMNode* contextNode, ushort type, WebKitDOMXPathResult* inResult, GError** err);

	// webkit2webextension.DOMXPathNSResolver

	GType webkit_dom_xpath_ns_resolver_get_type();
	char* webkit_dom_xpath_ns_resolver_lookup_namespace_uri(WebKitDOMXPathNSResolver* resolver, const(char)* prefix);

	// webkit2webextension.DOMXPathResult

	GType webkit_dom_xpath_result_get_type();
	int webkit_dom_xpath_result_get_boolean_value(WebKitDOMXPathResult* self, GError** err);
	int webkit_dom_xpath_result_get_invalid_iterator_state(WebKitDOMXPathResult* self);
	double webkit_dom_xpath_result_get_number_value(WebKitDOMXPathResult* self, GError** err);
	ushort webkit_dom_xpath_result_get_result_type(WebKitDOMXPathResult* self);
	WebKitDOMNode* webkit_dom_xpath_result_get_single_node_value(WebKitDOMXPathResult* self, GError** err);
	gulong webkit_dom_xpath_result_get_snapshot_length(WebKitDOMXPathResult* self, GError** err);
	char* webkit_dom_xpath_result_get_string_value(WebKitDOMXPathResult* self, GError** err);
	WebKitDOMNode* webkit_dom_xpath_result_iterate_next(WebKitDOMXPathResult* self, GError** err);
	WebKitDOMNode* webkit_dom_xpath_result_snapshot_item(WebKitDOMXPathResult* self, gulong index, GError** err);

	// webkit2webextension.Frame

	GType webkit_frame_get_type();
	ulong webkit_frame_get_id(WebKitFrame* frame);
	JSGlobalContextRef webkit_frame_get_javascript_context_for_script_world(WebKitFrame* frame, WebKitScriptWorld* world);
	JSGlobalContextRef webkit_frame_get_javascript_global_context(WebKitFrame* frame);
	JSCContext* webkit_frame_get_js_context(WebKitFrame* frame);
	JSCContext* webkit_frame_get_js_context_for_script_world(WebKitFrame* frame, WebKitScriptWorld* world);
	JSCValue* webkit_frame_get_js_value_for_dom_object(WebKitFrame* frame, WebKitDOMObject* domObject);
	JSCValue* webkit_frame_get_js_value_for_dom_object_in_script_world(WebKitFrame* frame, WebKitDOMObject* domObject, WebKitScriptWorld* world);
	const(char)* webkit_frame_get_uri(WebKitFrame* frame);
	int webkit_frame_is_main_frame(WebKitFrame* frame);

	// webkit2webextension.HitTestResult

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

	// webkit2webextension.ScriptWorld

	GType webkit_script_world_get_type();
	WebKitScriptWorld* webkit_script_world_new();
	WebKitScriptWorld* webkit_script_world_new_with_name(const(char)* name);
	WebKitScriptWorld* webkit_script_world_get_default();
	const(char)* webkit_script_world_get_name(WebKitScriptWorld* world);

	// webkit2webextension.URIRequest

	GType webkit_uri_request_get_type();
	WebKitURIRequest* webkit_uri_request_new(const(char)* uri);
	SoupMessageHeaders* webkit_uri_request_get_http_headers(WebKitURIRequest* request);
	const(char)* webkit_uri_request_get_http_method(WebKitURIRequest* request);
	const(char)* webkit_uri_request_get_uri(WebKitURIRequest* request);
	void webkit_uri_request_set_uri(WebKitURIRequest* request, const(char)* uri);

	// webkit2webextension.URIResponse

	GType webkit_uri_response_get_type();
	ulong webkit_uri_response_get_content_length(WebKitURIResponse* response);
	SoupMessageHeaders* webkit_uri_response_get_http_headers(WebKitURIResponse* response);
	const(char)* webkit_uri_response_get_mime_type(WebKitURIResponse* response);
	uint webkit_uri_response_get_status_code(WebKitURIResponse* response);
	const(char)* webkit_uri_response_get_suggested_filename(WebKitURIResponse* response);
	const(char)* webkit_uri_response_get_uri(WebKitURIResponse* response);

	// webkit2webextension.UserMessage

	GType webkit_user_message_get_type();
	WebKitUserMessage* webkit_user_message_new(const(char)* name, GVariant* parameters);
	WebKitUserMessage* webkit_user_message_new_with_fd_list(const(char)* name, GVariant* parameters, GUnixFDList* fdList);
	GQuark webkit_user_message_error_quark();
	GUnixFDList* webkit_user_message_get_fd_list(WebKitUserMessage* message);
	const(char)* webkit_user_message_get_name(WebKitUserMessage* message);
	GVariant* webkit_user_message_get_parameters(WebKitUserMessage* message);
	void webkit_user_message_send_reply(WebKitUserMessage* message, WebKitUserMessage* reply);

	// webkit2webextension.WebEditor

	GType webkit_web_editor_get_type();
	WebKitWebPage* webkit_web_editor_get_page(WebKitWebEditor* editor);

	// webkit2webextension.WebExtension

	GType webkit_web_extension_get_type();
	WebKitWebPage* webkit_web_extension_get_page(WebKitWebExtension* extension, ulong pageId);
	void webkit_web_extension_send_message_to_context(WebKitWebExtension* extension, WebKitUserMessage* message, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitUserMessage* webkit_web_extension_send_message_to_context_finish(WebKitWebExtension* extension, GAsyncResult* result, GError** err);

	// webkit2webextension.WebHitTestResult

	GType webkit_web_hit_test_result_get_type();
	WebKitDOMNode* webkit_web_hit_test_result_get_node(WebKitWebHitTestResult* hitTestResult);

	// webkit2webextension.WebPage

	GType webkit_web_page_get_type();
	WebKitDOMDocument* webkit_web_page_get_dom_document(WebKitWebPage* webPage);
	WebKitWebEditor* webkit_web_page_get_editor(WebKitWebPage* webPage);
	ulong webkit_web_page_get_id(WebKitWebPage* webPage);
	WebKitFrame* webkit_web_page_get_main_frame(WebKitWebPage* webPage);
	const(char)* webkit_web_page_get_uri(WebKitWebPage* webPage);
	void webkit_web_page_send_message_to_view(WebKitWebPage* webPage, WebKitUserMessage* message, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	WebKitUserMessage* webkit_web_page_send_message_to_view_finish(WebKitWebPage* webPage, GAsyncResult* result, GError** err);
}