/**
 * Control the behaviour of a WebKit WebView.
 */
module webkit2gtkd.settings;

import std.string: toStringz, fromStringz;

alias WebkitSettings = void*;

/// Enum values used for determining the hardware acceleration policy.
enum HardwareAccelerationPolicy {
    OnDemand, /// Hardware acceleration is used as request by web contents.
    Always,   /// Always on, even for websites which didnt ask for it.
    Never     /// Always off, even for websites which ask for it.
}

private extern (C) {
    WebkitSettings webkit_settings_new();
    bool webkit_settings_get_auto_load_images(WebkitSettings);
    void webkit_settings_set_auto_load_images(WebkitSettings, bool);
    bool webkit_settings_get_enable_frame_flattening(WebkitSettings);
    void webkit_settings_set_enable_frame_flattening(WebkitSettings, bool);
    bool webkit_settings_get_enable_html5_database(WebkitSettings);
    void webkit_settings_set_enable_html5_database(WebkitSettings, bool);
    bool webkit_settings_get_enable_html5_local_storage(WebkitSettings);
    void webkit_settings_set_enable_html5_local_storage(WebkitSettings, bool);
    bool webkit_settings_get_enable_hyperlink_auditing(WebkitSettings);
    void webkit_settings_set_enable_hyperlink_auditing(WebkitSettings, bool);
    bool webkit_settings_get_enable_java(WebkitSettings);
    void webkit_settings_set_enable_java(WebkitSettings, bool);
    bool webkit_settings_get_enable_javascript(WebkitSettings);
    void webkit_settings_set_enable_javascript(WebkitSettings, bool);
    bool webkit_settings_get_enable_javascript_markup(WebkitSettings);
    void webkit_settings_set_enable_javascript_markup(WebkitSettings, bool);
    bool webkit_settings_get_enable_offline_web_application_cache(WebkitSettings);
    void webkit_settings_set_enable_offline_web_application_cache(WebkitSettings, bool);
    bool webkit_settings_get_enable_plugins(WebkitSettings);
    void webkit_settings_set_enable_plugins(WebkitSettings, bool);
    bool webkit_settings_get_enable_xss_auditor(WebkitSettings);
    void webkit_settings_set_enable_xss_auditor(WebkitSettings, bool);
    bool webkit_settings_get_javascript_can_open_windows_automatically(WebkitSettings);
    void webkit_settings_set_javascript_can_open_windows_automatically(WebkitSettings, bool);
    bool webkit_settings_get_load_icons_ignoring_image_load_setting(WebkitSettings);
    void webkit_settings_set_load_icons_ignoring_image_load_setting(WebkitSettings, bool);
    immutable(char)* webkit_settings_get_default_font_family(WebkitSettings);
    void webkit_settings_set_default_font_family(WebkitSettings, immutable(char)*);
    immutable(char)* webkit_settings_get_monospace_font_family(WebkitSettings);
    void webkit_settings_set_monospace_font_family(WebkitSettings, immutable(char)*);
    immutable(char)* webkit_settings_get_serif_font_family(WebkitSettings);
    void webkit_settings_set_serif_font_family(WebkitSettings, immutable(char)*);
    immutable(char)* webkit_settings_get_sans_serif_font_family(WebkitSettings);
    void webkit_settings_set_sans_serif_font_family(WebkitSettings, immutable(char)*);
    immutable(char)* webkit_settings_get_cursive_font_family(WebkitSettings);
    void webkit_settings_set_cursive_font_family(WebkitSettings, immutable(char)*);
    immutable(char)* webkit_settings_get_fantasy_font_family(WebkitSettings);
    void webkit_settings_set_fantasy_font_family(WebkitSettings, immutable(char)*);
    immutable(char)* webkit_settings_get_pictograph_font_family(WebkitSettings);
    void webkit_settings_set_pictograph_font_family(WebkitSettings, immutable(char)*);
    uint webkit_settings_get_default_font_size(WebkitSettings);
    void webkit_settings_set_default_font_size(WebkitSettings, uint);
    uint webkit_settings_get_default_monospace_font_size(WebkitSettings);
    void webkit_settings_set_default_monospace_font_size(WebkitSettings, uint);
    uint webkit_settings_get_minimum_font_size(WebkitSettings);
    void webkit_settings_set_minimum_font_size(WebkitSettings, uint);
    immutable(char)* webkit_settings_get_default_charset(WebkitSettings);
    void webkit_settings_set_default_charset(WebkitSettings, immutable(char)*);
    bool webkit_settings_get_enable_private_browsing(WebkitSettings);
    void webkit_settings_set_enable_private_browsing(WebkitSettings, bool);
    bool webkit_settings_get_enable_developer_extras(WebkitSettings);
    void webkit_settings_set_enable_developer_extras(WebkitSettings, bool);
    bool webkit_settings_get_enable_resizable_text_areas(WebkitSettings);
    void webkit_settings_set_enable_resizable_text_areas(WebkitSettings, bool);
    bool webkit_settings_get_enable_tabs_to_links(WebkitSettings);
    void webkit_settings_set_enable_tabs_to_links(WebkitSettings, bool);
    bool webkit_settings_get_enable_dns_prefetching(WebkitSettings);
    void webkit_settings_set_enable_dns_prefetching(WebkitSettings, bool);
    bool webkit_settings_get_enable_caret_browsing(WebkitSettings);
    void webkit_settings_set_enable_caret_browsing(WebkitSettings, bool);
    bool webkit_settings_get_enable_fullscreen(WebkitSettings);
    void webkit_settings_set_enable_fullscreen(WebkitSettings, bool);
    bool webkit_settings_get_print_backgrounds(WebkitSettings);
    void webkit_settings_set_print_backgrounds(WebkitSettings, bool);
    bool webkit_settings_get_enable_webaudio(WebkitSettings);
    void webkit_settings_set_enable_webaudio(WebkitSettings, bool);
    bool webkit_settings_get_enable_webgl(WebkitSettings);
    void webkit_settings_set_enable_webgl(WebkitSettings, bool);
    bool webkit_settings_get_allow_modal_dialogs(WebkitSettings);
    void webkit_settings_set_allow_modal_dialogs(WebkitSettings, bool);
    bool webkit_settings_get_zoom_text_only(WebkitSettings);
    void webkit_settings_set_zoom_text_only(WebkitSettings, bool);
    bool webkit_settings_get_javascript_can_access_clipboard(WebkitSettings);
    void webkit_settings_set_javascript_can_access_clipboard(WebkitSettings, bool);
    bool webkit_settings_get_media_playback_requires_user_gesture(WebkitSettings);
    void webkit_settings_set_media_playback_requires_user_gesture(WebkitSettings, bool);
    bool webkit_settings_get_media_playback_allows_inline(WebkitSettings);
    void webkit_settings_set_media_playback_allows_inline(WebkitSettings, bool);
    bool webkit_settings_get_draw_compositing_indicators(WebkitSettings);
    void webkit_settings_set_draw_compositing_indicators(WebkitSettings, bool);
    bool webkit_settings_get_enable_site_specific_quirks(WebkitSettings);
    void webkit_settings_set_enable_site_specific_quirks(WebkitSettings, bool);
    bool webkit_settings_get_enable_page_cache(WebkitSettings);
    void webkit_settings_set_enable_page_cache(WebkitSettings, bool);
    immutable(char)* webkit_settings_get_user_agent(WebkitSettings);
    void webkit_settings_set_user_agent(WebkitSettings, immutable(char)*);
    void webkit_settings_set_user_agent_with_application_details(WebkitSettings, immutable(char)*, immutable(char)*);
    bool webkit_settings_get_enable_smooth_scrolling(WebkitSettings);
    void webkit_settings_set_enable_smooth_scrolling(WebkitSettings, bool);
    bool webkit_settings_get_enable_accelerated_2d_canvas(WebkitSettings);
    void webkit_settings_set_enable_accelerated_2d_canvas(WebkitSettings, bool);
    bool webkit_settings_get_enable_write_console_messages_to_stdout(WebkitSettings);
    void webkit_settings_set_enable_write_console_messages_to_stdout(WebkitSettings, bool);
    bool webkit_settings_get_enable_media_stream(WebkitSettings);
    void webkit_settings_set_enable_media_stream(WebkitSettings, bool);
    bool webkit_settings_get_enable_mock_capture_devices(WebkitSettings);
    void webkit_settings_set_enable_mock_capture_devices(WebkitSettings, bool);
    bool webkit_settings_get_enable_spatial_navigation(WebkitSettings);
    void webkit_settings_set_enable_spatial_navigation(WebkitSettings, bool);
    bool webkit_settings_get_enable_mediasource(WebkitSettings);
    void webkit_settings_set_enable_mediasource(WebkitSettings, bool);
    bool webkit_settings_get_enable_encrypted_media(WebkitSettings);
    void webkit_settings_set_enable_encrypted_media(WebkitSettings, bool);
    bool webkit_settings_get_enable_media_capabilities(WebkitSettings);
    void webkit_settings_set_enable_media_capabilities(WebkitSettings, bool);
    bool webkit_settings_get_allow_file_access_from_file_urls(WebkitSettings);
    void webkit_settings_set_allow_file_access_from_file_urls(WebkitSettings, bool);
    bool webkit_settings_get_allow_universal_access_from_file_urls(WebkitSettings);
    void webkit_settings_set_allow_universal_access_from_file_urls(WebkitSettings, bool);
    bool webkit_settings_get_allow_top_navigation_to_data_urls(WebkitSettings);
    void webkit_settings_set_allow_top_navigation_to_data_urls(WebkitSettings, bool);
    HardwareAccelerationPolicy webkit_settings_get_hardware_acceleration_policy(WebkitSettings);
    void webkit_settings_set_hardware_acceleration_policy(WebkitSettings, HardwareAccelerationPolicy);
    bool webkit_settings_get_enable_back_forward_navigation_gestures(WebkitSettings);
    void webkit_settings_set_enable_back_forward_navigation_gestures(WebkitSettings, bool);
    uint webkit_settings_font_size_to_points(uint);
    uint webkit_settings_font_size_to_pixels(uint);
    bool webkit_settings_get_enable_media(WebkitSettings);
    void webkit_settings_set_enable_media(WebkitSettings, bool);
    immutable(char)* webkit_settings_get_media_content_types_requiring_hardware_support(WebkitSettings);
    void webkit_settings_set_media_content_types_requiring_hardware_support(WebkitSettings, immutable(char)*);
}

/**
 * Convert pixels to the equivalent value in points, based on the current screen
 * DPI.
 *
 * Applications can use this function to convert font size values in pixels
 * to font size values in points when getting the font size properties of
 * [Settings].
 *
 * Params:
 *      pixels = The font size in pixels to convert to points.
 *
 * Returns: The equivalent font size in points.
 */
uint fontSizeToPoints(uint pixels) {
    return webkit_settings_font_size_to_points(pixels);
}

/**
 * Convert to the equivalent value in pixels, based on the current screen DPI.
 *
 * Applications can use this function to convert font size values in points to
 * font size values in pixels when setting the font size properties of
 * [Settings].
 *
 * Params:
 *      points = The font size in points to convert to pixels.
 *
 * Returns: The equivalent font size in pixels.
 */
uint fontSizeToPixels(uint points) {
    return webkit_settings_font_size_to_pixels(points);
}

/**
 * Control the behaviour of a Webview.
 */
class Settings {
    /// Inner webkit pointer.
    WebkitSettings webkitSettings;

    /**
     * Determines whether images should be automatically loaded or not.
     *
     * On devices where network bandwidth is of concern, it might be useful to
     * turn this property off.
     */
    @property bool autoLoadImages() {
        return webkit_settings_get_auto_load_images(webkitSettings);
    }

    /**
     * Sets automatically loading images.
     */
    @property void autoLoadImages(bool value) {
        webkit_settings_set_auto_load_images(webkitSettings, value);
    }

    /**
     * Whether to enable the frame flattening.
     *
     * With this setting each subframe is expanded to its contents, which will
     * flatten all the frames to become one scrollable page. On touch devices
     * scrollable subframes on a page can result in a confusing user experience.
     */
    @property bool enableFrameFlattening() {
        return webkit_settings_get_enable_frame_flattening(webkitSettings);
    }

    /**
     * Sets flame flattening.
     */
    @property void enableFrameFlattening(bool value) {
        webkit_settings_set_enable_frame_flattening(webkitSettings, value);
    }

    /**
     * Whether to enable HTML5 client-side SQL database support (IndexedDB).
     */
    @property bool enableHTML5Database() {
        return webkit_settings_get_enable_html5_database(webkitSettings);
    }

    /**
     * Sets HTML5 client-side SQL databases.
     */
    @property void enableHTML5Database(bool value) {
        webkit_settings_set_enable_html5_database(webkitSettings, value);
    }

    /**
     * Whether to enable HTML5 local storage support.
     *
     * Local storage provides simple synchronous storage access.
     * HTML5 local storage specification is available at http://dev.w3.org/html5/webstorage/.
     */
    @property bool enableHTML5LocalStorage() {
        return webkit_settings_get_enable_html5_local_storage(webkitSettings);
    }

    /**
     * Set HTML5 local storage.
     */
    @property void enableHTML5LocalStorage(bool value) {
        webkit_settings_set_enable_html5_local_storage(webkitSettings, value);
    }

    /**
     * Determines whether or not hyperlink auditing is enabled.
     *
     * The hyperlink auditing specification is available at
     * http://www.whatwg.org/specs/web-apps/current-work/multipage/links.htmlhyperlink-auditing.
     */
    @property bool enableHyperlinkAuditing() {
        return webkit_settings_get_enable_hyperlink_auditing(webkitSettings);
    }

    /**
     * Set hyperlink auditing.
     */
    @property void enableHyperlinkAuditing(bool value) {
        webkit_settings_set_enable_hyperlink_auditing(webkitSettings, value);
    }

    /**
     * Determines whether java is enabled or not.
     */
    @property bool enableJava() {
        return webkit_settings_get_enable_java(webkitSettings);
    }

    /**
     * Set java.
     */
    @property void enableJava(bool value) {
        webkit_settings_set_enable_java(webkitSettings, value);
    }

    /**
     * Get whether javascript is enabled.
     */
    @property bool enableJavascript() {
        return webkit_settings_get_enable_javascript(webkitSettings);
    }

    /**
     * Enable javascript support.
     */
    @property void enableJavascript(bool value) {
        webkit_settings_set_enable_javascript(webkitSettings, value);
    }

    /**
     * Determines whether or not JavaScript markup is allowed in document.
     *
     * When this setting is disabled, all JavaScript-related elements and
     * attributes are removed from the document during parsing. Note that
     * executing JavaScript is still allowed if [enableJavascript] is `true`.
     */
    @property bool enableJavascriptMarkup() {
        return webkit_settings_get_enable_javascript_markup(webkitSettings);
    }

    /**
     * Enable javascript markup support.
     */
    @property void enableJavascriptMarkup(bool value) {
        webkit_settings_set_enable_javascript_markup(webkitSettings, value);
    }

    /**
     * Whether to enable HTML5 offline web application cache support.
     *
     * Offline web application cache allows web applications to run even when
     * the user is not connected to the network.
     *
     * HTML5 offline web application specification is available at
     * http://dev.w3.org/html5/spec/offline.html.
     */
    @property bool enableOfflineWebApplicationCache() {
        return webkit_settings_get_enable_offline_web_application_cache(webkitSettings);
    }


    /**
     * Set offline webapp cache.
     */ 
    @property void enableOfflineWebApplicationCache(bool value) {
        webkit_settings_set_enable_offline_web_application_cache(webkitSettings, value);
    }

    /**
     * Get whether plugins are enabled in the page.
     */
    @property bool enablePlugins() {
        return webkit_settings_get_enable_plugins(webkitSettings);
    }

    /**
     * Get whether plugins are enabled in the page.
     */
    @property void enablePlugins(bool value) {
        webkit_settings_set_enable_plugins(webkitSettings, value);
    }

    /**
     * Whether to enable the XSS auditor.
     *
     * This feature filters some kinds of reflective XSS attacks on vulnerable
     * web sites.
     */
    @property bool enableXSSAuditor() {
        return webkit_settings_get_enable_xss_auditor(webkitSettings);
    }

    /**
     * Get whether XSSAuditor is enabled in the page.
     */
    @property void enableXSSAuditor(bool value) {
        webkit_settings_set_enable_xss_auditor(webkitSettings, value);
    }

    /**
     * Whether JavaScript can open popup windows automatically without user intervention.
     */
    @property bool canJavascriptOpenWindowsAutomatically() {
        return webkit_settings_get_javascript_can_open_windows_automatically(webkitSettings);
    }

    /**
     * Get whether JavaScript can open popup windows automatically.
     */
    @property void canJavascriptOpenWindowsAutomatically(bool value) {
        webkit_settings_set_javascript_can_open_windows_automatically(webkitSettings, value);
    }

    /**
     * Determines whether a site can load favicons irrespective of the value
     * of [autoLoadImages].
     */
    @property bool loadIconsIgnoringImageLoadSetting() {
        return webkit_settings_get_load_icons_ignoring_image_load_setting(webkitSettings);
    }

    /**
     * Set icon load rules.
     */
    @property void loadIconsIgnoringImageLoadSetting(bool value) {
        webkit_settings_set_load_icons_ignoring_image_load_setting(webkitSettings, value);
    }

    /**
     * The font family to use as the default for content that does not specify
     * a font.
     */
    @property string defaultFontFamily() {
        return fromStringz(webkit_settings_get_default_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void defaultFontFamily(string family) {
        webkit_settings_set_default_font_family(webkitSettings, toStringz(family));
    }

    /**
     * The font family used as the default for content using a monospace font.
     */
    @property string monospaceFontFamily() {
        return fromStringz(webkit_settings_get_monospace_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void monospaceFontFamily(string family) {
        webkit_settings_set_monospace_font_family(webkitSettings, toStringz(family));
    }

    /**
     * The font family used as the default for content using a serif font.
     */
    @property string serifFontFamily() {
        return fromStringz(webkit_settings_get_serif_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void serifFontFamily(string family) {
        webkit_settings_set_serif_font_family(webkitSettings, toStringz(family));
    }

    /**
     * The font family used as the default for content using a sans font.
     */
    @property string sansSerifFontFamily() {
        return fromStringz(webkit_settings_get_sans_serif_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void sansSerifFontFamily(string family) {
        webkit_settings_set_sans_serif_font_family(webkitSettings, toStringz(family));
    }

    /**
     * The font family used as the default for content using a cursive font.
     */
    @property string cursiveFontFamily() {
        return fromStringz(webkit_settings_get_cursive_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void cursiveFontFamily(string family) {
        webkit_settings_set_cursive_font_family(webkitSettings, toStringz(family));
    }

    /**
     * The font family used as the default for content using a fantasy font.
     */
    @property string fantasyFontFamily() {
        return fromStringz(webkit_settings_get_fantasy_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void fantasyFontFamily(string family) {
        webkit_settings_set_fantasy_font_family(webkitSettings, toStringz(family));
    }

    /**
     * The font family used as the default for content using a pictograph font.
     */
    @property string pictographFontFamily() {
        return fromStringz(webkit_settings_get_pictograph_font_family(webkitSettings));
    }

    /**
     * Sets the font family.
     */
    @property void pictographFontFamily(string family) {
        webkit_settings_set_pictograph_font_family(webkitSettings, toStringz(family));
    }

    /**
     * Get default font size.
     */
    @property uint defaultFontSize() {
        return webkit_settings_get_default_font_size(webkitSettings);
    }

    /**
     * Set default font size.
     */
    @property void defaultFontSize(uint size) {
        webkit_settings_set_default_font_size(webkitSettings, size);
    }

    /**
     * Get default monospace font size.
     */
    @property uint defaultMonospaceFontSize() {
        return webkit_settings_get_default_monospace_font_size(webkitSettings);
    }

    /**
     * Set default font size.
     */
    @property void defaultMonospaceFontSize(uint size) {
        webkit_settings_set_default_monospace_font_size(webkitSettings, size);
    }

    /**
     * Get minimum font size.
     */
    @property uint minimumFontSize() {
        return webkit_settings_get_minimum_font_size(webkitSettings);
    }

    /**
     * Set minimum font size.
     */
    @property void minimumFontSize(uint size) {
        webkit_settings_set_minimum_font_size(webkitSettings, size);
    }

    /**
     * The default text charset used when interpreting content with an
     * unspecified charset.
     */
    @property string defaultCharset() {
        return fromStringz(webkit_settings_get_default_charset(webkitSettings));
    }

    /**
     * Get the default charset.
     */
    @property void defaultCharset(string charset) {
        webkit_settings_set_default_charset(webkitSettings, toStringz(charset));
    }

    /**
     * Determines whether or not private browsing is enabled.
     *
     * Private browsing will disable history, cache and form auto-fill for
     * any pages visited.
     *
     * Deprecated: Deprecated since version 2.16.X and should not be used in
     * newly-written code. Use ephemeral webviews instead.
     */
    @property deprecated bool enablePrivateBrowsing() {
        return webkit_settings_get_enable_private_browsing(webkitSettings);
    }

    /**
     * Set private browsing.
     */
    @property deprecated void enablePrivateBrowsing(bool value) {
        webkit_settings_set_enable_private_browsing(webkitSettings, value);
    }

    /**
     * Determines whether or not developer tools, such as the Web Inspector, are
     * enabled.
     */
    @property bool enableDeveloperExtras() {
        return webkit_settings_get_enable_developer_extras(webkitSettings);
    }

    /**
     * Set developer extras.
     */
    @property void enableDeveloperExtras(bool value) {
        webkit_settings_set_enable_developer_extras(webkitSettings, value);
    }

    /**
     * Determines whether text areas can or cannot be resized.
     */
    @property bool enableResizeTextAreas() {
        return webkit_settings_get_enable_resizable_text_areas(webkitSettings);
    }

    /**
     * Set resizing of text areas.
     */
    @property void enableResizeTextAreas(bool value) {
        webkit_settings_set_enable_resizable_text_areas(webkitSettings, value);
    }

    /**
     * Determines whether the tab key cycles through the elements on the page.
     *
     * When this setting is enabled, users will be able to focus the next element
     * in the page by pressing the tab key. If the selected element is
     * editable, then pressing tab key will insert the tab character.
     */
    @property bool enableTabsToLinks() {
        return webkit_settings_get_enable_tabs_to_links(webkitSettings);
    }

    /**
     * Set tabs to links.
     */
    @property void enableTabsToLinks(bool value) {
        webkit_settings_set_enable_tabs_to_links(webkitSettings, value);
    }

    /**
     * Determines whether or not to prefetch domain names.
     *
     * DNS prefetching attempts to resolve domain names before a user tries to
     * follow a link.
     */
    @property bool enableDNSPrefetching() {
        return webkit_settings_get_enable_dns_prefetching(webkitSettings);
    }

    /**
     * Set DNS prefetching.
     */
    @property void enableDNSPrefetching(bool value) {
        webkit_settings_set_enable_dns_prefetching(webkitSettings, value);
    }

    /**
     * Whether to enable accessibility enhanced keyboard navigation.
     */
    @property bool enableCaretBrowsing() {
        return webkit_settings_get_enable_caret_browsing(webkitSettings);
    }

    /**
     * Set caret browsing.
     */
    @property void enableCaretBrowsing(bool value) {
        webkit_settings_set_enable_caret_browsing(webkitSettings, value);
    }

    /**
     * Whether to enable the Javascript Fullscreen API.
     *
     * The API allows any HTML element to request fullscreen display.
     * See also the current draft of the spec: http://www.w3.org/TR/fullscreen/
     */
    @property bool enableFullscreen() {
        return webkit_settings_get_enable_fullscreen(webkitSettings);
    }

    /**
     * Set enable fullscreen.
     */
    @property void enableFullscreen(bool value) {
        webkit_settings_set_enable_fullscreen(webkitSettings, value);
    }

    /**
     * Whether background images should be drawn during printing.
     */
    @property bool printBackgrounds() {
        return webkit_settings_get_print_backgrounds(webkitSettings);
    }

    /**
     * Set background printing.
     */
    @property void printBackgrounds(bool value) {
        webkit_settings_set_print_backgrounds(webkitSettings, value);
    }

    /**
     * Enable or disable support for WebAudio on pages.
     *
     * WebAudio is an API for processing and synthesizing audio in web applications.
     * See also https://webaudio.github.io/web-audio-api
     */
    @property bool enableWebaudio() {
        return webkit_settings_get_enable_webaudio(webkitSettings);
    }

    /**
     * Set webaudio.
     */
    @property void enableWebaudio(bool value) {
        webkit_settings_set_enable_webaudio(webkitSettings, value);
    }

    /**
     * Enable or disable support for WebGL on pages.
     *
     * WebGL enables web content to use an API based on OpenGL ES 2.0.
     */
    @property bool enableWebGL() {
        return webkit_settings_get_enable_webgl(webkitSettings);
    }

    /**
     * Set webgl.
     */
    @property void enableWebGL(bool value) {
        webkit_settings_set_enable_webgl(webkitSettings, value);
    }

    /**
     * Determine whether it's allowed to create and run modal dialogs from a
     * WebView through JavaScript with `window.showModalDialog`.
     *
     * If it's set to `false`, the associated WebView won't be able to create
     * new modal dialogs, so not even the `create` signal will be emitted.
     */
    @property bool allowModalDialogs() {
        return webkit_settings_get_allow_modal_dialogs(webkitSettings);
    }

    /**
     * Set modal dialogs.
     */
    @property void allowModalDialogs(bool value) {
        webkit_settings_set_allow_modal_dialogs(webkitSettings, value);
    }

    /**
     * Whether “zoom-level” affects only the text of the page or all the contents.
     *
     * Other contents containing text like form controls will be also affected
     * by zoom factor when this property is enabled.
     */
    @property bool zoomTextOnly() {
        return webkit_settings_get_zoom_text_only(webkitSettings);
    }

    /**
     * Set zoom on text only.
     */
    @property void zoomTextOnly(bool value) {
        webkit_settings_set_zoom_text_only(webkitSettings, value);
    }

    /**
     * Whether JavaScript can access the clipboard.
     *
     * The default value is `false`. If set to `true`, `document.execCommand()`
     * allows cut, copy and paste commands.
     */
    @property bool javascriptCanAccessClipboard() {
        return webkit_settings_get_javascript_can_access_clipboard(webkitSettings);
    }

    /**
     * Set javascript clipboard access.
     */
    @property void javascriptCanAccessClipboard(bool value) {
        return webkit_settings_set_javascript_can_access_clipboard(webkitSettings, value);
    }

    /**
     * Whether a user gesture (such as clicking the play button) would be
     * required to start media playback or load media.
     *
     * This is off by default, so media playback could start automatically.
     * Setting it on requires a gesture by the user to start playback, or to
     * load the media.
     */
    @property bool mediaPlaybackRequiresUserGesture() {
        return webkit_settings_get_media_playback_requires_user_gesture(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void mediaPlaybackRequiresUserGesture(bool value) {
        return webkit_settings_set_media_playback_requires_user_gesture(webkitSettings, value);
    }

    /**
     * Whether media playback is full-screen only or inline playback is allowed.
     *
     * This is `true` by default, so media playback can be inline.
     * Setting it to `false` allows specifying that media playback should be
     * always fullscreen.
     */
    @property bool mediaPlaybackAllowsInline() {
        return webkit_settings_get_media_playback_allows_inline(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void mediaPlaybackAllowsInline(bool value) {
        webkit_settings_set_media_playback_allows_inline(webkitSettings, value);
    }

    /**
     * Whether to draw compositing borders and repaint counters on layers drawn
     * with accelerated compositing.
     *
     * This is useful for debugging issues related to web content that is
     * composited with the GPU.
     */
    @property bool drawCompositingIndicators() {
        return webkit_settings_get_draw_compositing_indicators(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void drawCompositingIndicators(bool value) {
        webkit_settings_set_draw_compositing_indicators(webkitSettings, value);
    }

    /**
     * Whether to turn on site-specific quirks.
     *
     * Turning this on will tell WebKit to use some site-specific workarounds
     * for better web compatibility. For example, older versions of MediaWiki
     * will incorrectly send to WebKit a CSS file with KHTML workarounds.
     *
     * By turning on site-specific quirks, WebKit will special-case this and
     * other cases to make some specific sites work.
     */
    @property bool enableSiteSpecificQuirks() {
        return webkit_settings_get_enable_site_specific_quirks(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableSiteSpecificQuirks(bool value) {
        webkit_settings_set_enable_site_specific_quirks(webkitSettings, value);
    }

    /**
     * Enable or disable the page cache.
     * 
     * Disabling the page cache is generally only useful for special
     * circumstances like low-memory scenarios or special purpose applications
     * like static HTML viewers. This setting only controls the Page Cache, this
     * cache is different than the disk-based or memory-based traditional
     * resource caches, its point is to make going back and forth between pages
     * much faster. For details about the different types of caches and their
     * purposes see: http://webkit.org/blog/427/webkit-page-cache-i-the-basics/
     */
    @property bool enablePageCache() {
        return webkit_settings_get_enable_page_cache(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enablePageCache(bool value) {
        webkit_settings_set_enable_page_cache(webkitSettings, value);
    }

    /**
     *
     */
    @property string userAgent() {
        return fromStringz(webkit_settings_get_user_agent(webkitSettings));
    }

    /**
     * Set ditto.
     */
    @property void userAgent(string useragent) {
        webkit_settings_set_user_agent(webkitSettings, toStringz(useragent));
    }

    /**
     * Set ditto but generating it with the client application data.
     */
    @property void userAgent(string applicationName, string applicationVersion) {
        webkit_settings_set_user_agent_with_application_details(webkitSettings, toStringz(applicationName),
            toStringz(applicationVersion));
    }

    /**
     * Enable or disable smooth scrolling.
     */
    @property bool enableSmoothScrolling() {
        return webkit_settings_get_enable_smooth_scrolling(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableSmoothScrolling(bool value) {
        webkit_settings_set_enable_smooth_scrolling(webkitSettings, value);
    }

    /**
     * Enable or disable accelerated 2D canvas.
     *
     * Accelerated 2D canvas is only available if WebKit was compiled with a
     * version of Cairo including the unstable CairoGL API.
     *
     * When accelerated 2D canvas is enabled, WebKit may render some 2D canvas
     * content using hardware accelerated drawing operations.
     */
    @property bool enableAccelerated2DCanvas() {
        return webkit_settings_get_enable_accelerated_2d_canvas(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableAccelerated2DCanvas(bool value) {
        webkit_settings_set_enable_accelerated_2d_canvas(webkitSettings, value);
    }

    /**
     * Enable or disable writing console messages to stdout.
     *
     * These are messages sent to the console with `console.log` and related methods.
     */
    @property bool enableWriteConsoleMessagesToStdout() {
        return webkit_settings_get_enable_write_console_messages_to_stdout(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableWriteConsoleMessagesToStdout(bool value) {
        webkit_settings_set_enable_write_console_messages_to_stdout(webkitSettings, value);
    }

    /**
     * Enable or disable support for MediaStream on pages.
     *
     * MediaStream is an experimental proposal for allowing web pages to access
     * audio and video devices for capture.
     * See also http://dev.w3.org/2011/webrtc/editor/getusermedia.html
     */
    @property bool enableMediaStream() {
        return webkit_settings_get_enable_media_stream(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableMediaStream(bool value) {
        webkit_settings_set_enable_media_stream(webkitSettings, value);
    }

    /**
     * Enable or disable the Mock Capture Devices.
     * 
     * Those are fake Microphone and Camera devices to be used as MediaStream
     * sources.
     */
    @property bool enableMockCaptureDevices() {
        return webkit_settings_get_enable_mock_capture_devices(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableMockCaptureDevices(bool value) {
        webkit_settings_set_enable_mock_capture_devices(webkitSettings, value);
    }

    /**
     * Whether to enable Spatial Navigation.
     *
     * This feature consists in the ability to navigate between focusable
     * elements in a Web page, such as hyperlinks and form controls, by using
     * Left, Right, Up and Down arrow keys. For example, if an user presses the
     * Right key, heuristics determine whether there is an element they might
     * be trying to reach towards the right, and if there are multiple
     * elements, which element they probably wants.
     */
    @property bool enableSpatialNavigation() {
        return webkit_settings_get_enable_spatial_navigation(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableSpatialNavigation(bool value) {
        webkit_settings_set_enable_spatial_navigation(webkitSettings, value);
    }

    /**
     * Enable or disable support for MediaSource on pages.
     *
     * MediaSource extends HTMLMediaElement to allow JavaScript to generate
     * media streams for playback.
     *
     * See also http://www.w3.org/TR/media-source/
     */
    @property bool enableMediaSource() {
        return webkit_settings_get_enable_mediasource(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableMediaSource(bool value) {
        webkit_settings_set_enable_mediasource(webkitSettings, value);
    }

    /**
     * Enable or disable support for Encrypted Media API on pages.
     *
     * EncryptedMedia is an experimental JavaScript API for playing encrypted
     * media in HTML. This property will only work as intended if the
     * EncryptedMedia feature is enabled at build time with the
     * ENABLE_ENCRYPTED_MEDIA flag.
     */
    @property bool enableEncryptedMedia() {
        return webkit_settings_get_enable_encrypted_media(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableEncryptedMedia(bool value) {
        webkit_settings_set_enable_encrypted_media(webkitSettings, value);
    }

    /**
     * Enable or disable support for MediaCapabilities on pages.
     *
     * This specification intends to provide APIs to allow websites to make an
     * optimal decision when picking media content for the user. The APIs will
     * expose information about the decoding and encoding capabilities for a
     * given format but also output capabilities to find the best match based
     * on the device’s display.
     *
     * See also https://wicg.github.io/media-capabilities/
     */
    @property bool enableMediaCapabilities() {
        return webkit_settings_get_enable_media_capabilities(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableMediaCapabilities(bool value) {
        webkit_settings_set_enable_media_capabilities(webkitSettings, value);
    }

    /**
     * Whether file access is allowed from file URLs.
     *
     * By default, when something is loaded in a WebView using a file URI, cross
     * origin requests to other file resources are not allowed. This setting
     * allows you to change that behaviour, so that it would be possible to do
     * a XMLHttpRequest of a local file, for example.
     */
    @property bool allowFileAccessFromFileURLs() {
        return webkit_settings_get_allow_file_access_from_file_urls(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void allowFileAccessFromFileURLs(bool value) {
        webkit_settings_set_allow_file_access_from_file_urls(webkitSettings, value);
    }

    /**
     * Whether or not JavaScript running in the context of a file scheme URL
     * should be allowed to access content from any origin.
     *
     * By default, when something is loaded in a WebView using a file scheme
     * URL, access to the local file system and arbitrary local storage is not
     * allowed. This setting allows you to change that behaviour, so that it
     * would be possible to use local storage, for example.
     */
    @property bool allowUniversalAccessFromFileURLs() {
        return webkit_settings_get_allow_universal_access_from_file_urls(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void allowUniversalAccessFromFileURLs(bool value) {
        webkit_settings_set_allow_universal_access_from_file_urls(webkitSettings, value);
    }

    /**
     * Whether or not the top frame is allowed to navigate to data URLs.
     * 
     * It is disabled by default due to the risk it poses when loading untrusted
     * URLs, with data URLs being used in scamming and phishing attacks.
     * In contrast, a scenario where it could be enabled could be an app that
     * embeds a WebView and you have control of the pages being show instead of
     * a generic browser.
     */
    @property bool allowTopNavigationToDataURLs() {
        return webkit_settings_get_allow_top_navigation_to_data_urls(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void allowTopNavigationToDataURLs(bool value) {
        webkit_settings_set_allow_top_navigation_to_data_urls(webkitSettings, value);
    }

    /**
     * The [HardwareAccelerationPolicy] to decide how to enable and disable
     * hardware acceleration.
     *
     * The default value [HardwareAccelerationPolicy.OnDemand] enables the
     * hardware acceleration when the web contents request it. It's possible to
     * enforce hardware acceleration to be always enabled. And it's also possible
     * to disable it completely. Note that disabling hardware acceleration might
     * cause some websites to not render correctly or consume more CPU.
     *
     * Note that changing this setting might not be possible if hardware
     * acceleration is not supported by the hardware or the system. In that case
     * you can get the value to know the actual policy being used, but changing
     * the setting will not have any effect.
     */
    @property HardwareAccelerationPolicy hardwareAccelerationPolicy() {
        return webkit_settings_get_hardware_acceleration_policy(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void hardwareAccelerationPolicy(HardwareAccelerationPolicy value) {
        webkit_settings_set_hardware_acceleration_policy(webkitSettings, value);
    }

    /**
     * Enable or disable horizontal swipe gesture for back-forward navigation.
     */
    @property bool enableBackForwardNavigationGestures() {
        return webkit_settings_get_enable_back_forward_navigation_gestures(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableBackForwardNavigationGestures(bool value) {
        webkit_settings_set_enable_back_forward_navigation_gestures(webkitSettings, value);
    }

    /**
     * Enable or disable support for media playback on pages.
     *
     * This setting is enabled by default. Disabling it means <audio>, <track>
     * and <video> elements will have playback support disabled.
     */
    @property bool enableMedia() {
        return webkit_settings_get_enable_media(webkitSettings);
    }

    /**
     * Set ditto.
     */
    @property void enableMedia(bool value) {
        webkit_settings_set_enable_media(webkitSettings, value);
    }

    /**
     * List of media content types requiring hardware support, split by semicolons (:).
     *
     * For example: `video/webm; codecs="vp*":video/mp4; codecs="avc*":video/* codecs="av1*"`.
     */
    @property string mediaContentTypesRequiringHardwareSupport() {
        return fromStringz(webkit_settings_get_media_content_types_requiring_hardware_support(webkitSettings));
    }

    /**
     * Set ditto.
     */
    @property void mediaContentTypesRequiringHardwareSupport(string value) {
        webkit_settings_set_media_content_types_requiring_hardware_support(webkitSettings, toStringz(value));
    }

    /**
     * Create a new object.
     */
    this() {
        webkitSettings = webkit_settings_new();
    }

   /**
     * Create with an inner webkit pointer.
     */
    this(WebkitSettings s) {
        webkitSettings = s;
    }
}
