module webkit2.Settings;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * #WebKitSettings can be applied to a #WebKitWebView to control text charset,
 * color, font sizes, printing mode, script support, loading of images and various
 * other things on a #WebKitWebView. After creation, a #WebKitSettings object
 * contains default settings.
 * 
 * <informalexample><programlisting>
 * /<!-- -->* Disable JavaScript. *<!-- -->/
 * WebKitSettings *settings = webkit_web_view_group_get_settings (my_view_group);
 * webkit_settings_set_enable_javascript (settings, FALSE);
 * 
 * </programlisting></informalexample>
 */
public class Settings : ObjectG
{
	/** the main Gtk struct */
	protected WebKitSettings* webKitSettings;

	/** Get the main Gtk struct */
	public WebKitSettings* getSettingsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitSettings;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitSettings;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitSettings* webKitSettings, bool ownedRef = false)
	{
		this.webKitSettings = webKitSettings;
		super(cast(GObject*)webKitSettings, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_settings_get_type();
	}

	/**
	 * Creates a new #WebKitSettings instance with default values. It must
	 * be manually attached to a #WebKitWebView.
	 * See also webkit_settings_new_with_settings().
	 *
	 * Returns: a new #WebKitSettings instance.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_settings_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitSettings*) __p, true);
	}

	/**
	 * Convert @points to the equivalent value in pixels, based on the current
	 * screen DPI. Applications can use this function to convert font size values
	 * in points to font size values in pixels when setting the font size properties
	 * of #WebKitSettings.
	 *
	 * Params:
	 *     points = the font size in points to convert to pixels
	 *
	 * Returns: the equivalent font size in pixels.
	 *
	 * Since: 2.20
	 */
	public static uint fontSizeToPixels(uint points)
	{
		return webkit_settings_font_size_to_pixels(points);
	}

	/**
	 * Convert @pixels to the equivalent value in points, based on the current
	 * screen DPI. Applications can use this function to convert font size values
	 * in pixels to font size values in points when getting the font size properties
	 * of #WebKitSettings.
	 *
	 * Params:
	 *     pixels = the font size in pixels to convert to points
	 *
	 * Returns: the equivalent font size in points.
	 *
	 * Since: 2.20
	 */
	public static uint fontSizeToPoints(uint pixels)
	{
		return webkit_settings_font_size_to_points(pixels);
	}

	/**
	 * Get the #WebKitSettings:allow-file-access-from-file-urls property.
	 *
	 * Returns: %TRUE If file access from file URLs is allowed or %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getAllowFileAccessFromFileUrls()
	{
		return webkit_settings_get_allow_file_access_from_file_urls(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:allow-modal-dialogs property.
	 *
	 * Returns: %TRUE if it's allowed to create and run modal dialogs or %FALSE otherwise.
	 */
	public bool getAllowModalDialogs()
	{
		return webkit_settings_get_allow_modal_dialogs(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:allow-top-navigation-to-data-urls property.
	 *
	 * Returns: %TRUE If navigation to data URLs from the top frame is allowed or %FALSE\
	 *     otherwise.
	 *
	 * Since: 2.28
	 */
	public bool getAllowTopNavigationToDataUrls()
	{
		return webkit_settings_get_allow_top_navigation_to_data_urls(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:allow-universal-access-from-file-urls property.
	 *
	 * Returns: %TRUE If universal access from file URLs is allowed or %FALSE otherwise.
	 *
	 * Since: 2.14
	 */
	public bool getAllowUniversalAccessFromFileUrls()
	{
		return webkit_settings_get_allow_universal_access_from_file_urls(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:auto-load-images property.
	 *
	 * Returns: %TRUE If auto loading of images is enabled or %FALSE otherwise.
	 */
	public bool getAutoLoadImages()
	{
		return webkit_settings_get_auto_load_images(webKitSettings) != 0;
	}

	/**
	 * Gets the #WebKitSettings:cursive-font-family property.
	 *
	 * Returns: The default font family used to display content marked with cursive font.
	 */
	public string getCursiveFontFamily()
	{
		return Str.toString(webkit_settings_get_cursive_font_family(webKitSettings));
	}

	/**
	 * Gets the #WebKitSettings:default-charset property.
	 *
	 * Returns: Default charset.
	 */
	public string getDefaultCharset()
	{
		return Str.toString(webkit_settings_get_default_charset(webKitSettings));
	}

	/** */
	public string getDefaultFontFamily()
	{
		return Str.toString(webkit_settings_get_default_font_family(webKitSettings));
	}

	/**
	 * Gets the #WebKitSettings:default-font-size property.
	 *
	 * Returns: The default font size, in pixels.
	 */
	public uint getDefaultFontSize()
	{
		return webkit_settings_get_default_font_size(webKitSettings);
	}

	/**
	 * Gets the #WebKitSettings:default-monospace-font-size property.
	 *
	 * Returns: Default monospace font size, in pixels.
	 */
	public uint getDefaultMonospaceFontSize()
	{
		return webkit_settings_get_default_monospace_font_size(webKitSettings);
	}

	/**
	 * Get the #WebKitSettings:draw-compositing-indicators property.
	 *
	 * Returns: %TRUE If compositing borders are drawn or %FALSE otherwise.
	 */
	public bool getDrawCompositingIndicators()
	{
		return webkit_settings_get_draw_compositing_indicators(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-accelerated-2d-canvas property.
	 *
	 * Returns: %TRUE if accelerated 2D canvas is enabled or %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool getEnableAccelerated2dCanvas()
	{
		return webkit_settings_get_enable_accelerated_2d_canvas(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-back-forward-navigation-gestures property.
	 *
	 * Returns: %TRUE if horizontal swipe gesture will trigger back-forward navigaiton or %FALSE otherwise.
	 *
	 * Since: 2.24
	 */
	public bool getEnableBackForwardNavigationGestures()
	{
		return webkit_settings_get_enable_back_forward_navigation_gestures(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-caret-browsing property.
	 *
	 * Returns: %TRUE If caret browsing is enabled or %FALSE otherwise.
	 */
	public bool getEnableCaretBrowsing()
	{
		return webkit_settings_get_enable_caret_browsing(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-developer-extras property.
	 *
	 * Returns: %TRUE If developer extras is enabled or %FALSE otherwise.
	 */
	public bool getEnableDeveloperExtras()
	{
		return webkit_settings_get_enable_developer_extras(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-dns-prefetching property.
	 *
	 * Returns: %TRUE If DNS prefetching is enabled or %FALSE otherwise.
	 */
	public bool getEnableDnsPrefetching()
	{
		return webkit_settings_get_enable_dns_prefetching(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-encrypted-media property.
	 *
	 * Returns: %TRUE if EncryptedMedia support is enabled or %FALSE otherwise.
	 *
	 * Since: 2.20
	 */
	public bool getEnableEncryptedMedia()
	{
		return webkit_settings_get_enable_encrypted_media(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-frame-flattening property.
	 *
	 * Returns: %TRUE If frame flattening is enabled or %FALSE otherwise.
	 */
	public bool getEnableFrameFlattening()
	{
		return webkit_settings_get_enable_frame_flattening(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-fullscreen property.
	 *
	 * Returns: %TRUE If fullscreen support is enabled or %FALSE otherwise.
	 */
	public bool getEnableFullscreen()
	{
		return webkit_settings_get_enable_fullscreen(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-html5-database property.
	 *
	 * Returns: %TRUE if IndexedDB support is enabled or %FALSE otherwise.
	 */
	public bool getEnableHtml5Database()
	{
		return webkit_settings_get_enable_html5_database(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-html5-local-storage property.
	 *
	 * Returns: %TRUE If HTML5 local storage support is enabled or %FALSE otherwise.
	 */
	public bool getEnableHtml5LocalStorage()
	{
		return webkit_settings_get_enable_html5_local_storage(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-hyperlink-auditing property.
	 *
	 * Returns: %TRUE If hyper link auditing is enabled or %FALSE otherwise.
	 */
	public bool getEnableHyperlinkAuditing()
	{
		return webkit_settings_get_enable_hyperlink_auditing(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-java property.
	 *
	 * Returns: %TRUE If Java is enabled or %FALSE otherwise.
	 */
	public bool getEnableJava()
	{
		return webkit_settings_get_enable_java(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-javascript property.
	 *
	 * Returns: %TRUE If JavaScript is enabled or %FALSE otherwise.
	 */
	public bool getEnableJavascript()
	{
		return webkit_settings_get_enable_javascript(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-javascript-markup property.
	 *
	 * Returns: %TRUE if JavaScript markup is enabled or %FALSE otherwise.
	 *
	 * Since: 2.24
	 */
	public bool getEnableJavascriptMarkup()
	{
		return webkit_settings_get_enable_javascript_markup(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-media property.
	 *
	 * Returns: %TRUE if media support is enabled or %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public bool getEnableMedia()
	{
		return webkit_settings_get_enable_media(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-media-capabilities property.
	 *
	 * Returns: %TRUE if MediaCapabilities support is enabled or %FALSE otherwise.
	 *
	 * Since: 2.22
	 */
	public bool getEnableMediaCapabilities()
	{
		return webkit_settings_get_enable_media_capabilities(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-media-stream property.
	 *
	 * Returns: %TRUE If mediastream support is enabled or %FALSE otherwise.
	 *
	 * Since: 2.4
	 */
	public bool getEnableMediaStream()
	{
		return webkit_settings_get_enable_media_stream(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-mediasource property.
	 *
	 * Returns: %TRUE If MediaSource support is enabled or %FALSE otherwise.
	 *
	 * Since: 2.4
	 */
	public bool getEnableMediasource()
	{
		return webkit_settings_get_enable_mediasource(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-mock-capture-devices property.
	 *
	 * Returns: %TRUE If mock capture devices is enabled or %FALSE otherwise.
	 *
	 * Since: 2.24
	 */
	public bool getEnableMockCaptureDevices()
	{
		return webkit_settings_get_enable_mock_capture_devices(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-offline-web-application-cache property.
	 *
	 * Returns: %TRUE If HTML5 offline web application cache support is enabled or %FALSE otherwise.
	 */
	public bool getEnableOfflineWebApplicationCache()
	{
		return webkit_settings_get_enable_offline_web_application_cache(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-page-cache property.
	 *
	 * Returns: %TRUE if page cache enabled or %FALSE otherwise.
	 */
	public bool getEnablePageCache()
	{
		return webkit_settings_get_enable_page_cache(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-plugins property.
	 *
	 * Returns: %TRUE If plugins are enabled or %FALSE otherwise.
	 */
	public bool getEnablePlugins()
	{
		return webkit_settings_get_enable_plugins(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-private-browsing property.
	 *
	 * Deprecated: Use #WebKitWebView:is-ephemeral or #WebKitWebContext:is-ephemeral instead.
	 *
	 * Returns: %TRUE If private browsing is enabled or %FALSE otherwise.
	 */
	public bool getEnablePrivateBrowsing()
	{
		return webkit_settings_get_enable_private_browsing(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-resizable-text-areas property.
	 *
	 * Returns: %TRUE If text areas can be resized or %FALSE otherwise.
	 */
	public bool getEnableResizableTextAreas()
	{
		return webkit_settings_get_enable_resizable_text_areas(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-site-specific-quirks property.
	 *
	 * Returns: %TRUE if site specific quirks are enabled or %FALSE otherwise.
	 */
	public bool getEnableSiteSpecificQuirks()
	{
		return webkit_settings_get_enable_site_specific_quirks(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-smooth-scrolling property.
	 *
	 * Returns: %TRUE if smooth scrolling is enabled or %FALSE otherwise.
	 */
	public bool getEnableSmoothScrolling()
	{
		return webkit_settings_get_enable_smooth_scrolling(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-spatial-navigation property.
	 *
	 * Returns: %TRUE If HTML5 spatial navigation support is enabled or %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool getEnableSpatialNavigation()
	{
		return webkit_settings_get_enable_spatial_navigation(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-tabs-to-links property.
	 *
	 * Returns: %TRUE If tabs to link is enabled or %FALSE otherwise.
	 */
	public bool getEnableTabsToLinks()
	{
		return webkit_settings_get_enable_tabs_to_links(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-webaudio property.
	 *
	 * Returns: %TRUE If webaudio support is enabled or %FALSE otherwise.
	 */
	public bool getEnableWebaudio()
	{
		return webkit_settings_get_enable_webaudio(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-webgl property.
	 *
	 * Returns: %TRUE If WebGL support is enabled or %FALSE otherwise.
	 */
	public bool getEnableWebgl()
	{
		return webkit_settings_get_enable_webgl(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-write-console-messages-to-stdout property.
	 *
	 * Returns: %TRUE if writing console messages to stdout is enabled or %FALSE
	 *     otherwise.
	 *
	 * Since: 2.2
	 */
	public bool getEnableWriteConsoleMessagesToStdout()
	{
		return webkit_settings_get_enable_write_console_messages_to_stdout(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:enable-xss-auditor property.
	 *
	 * Returns: %TRUE If XSS auditing is enabled or %FALSE otherwise.
	 */
	public bool getEnableXssAuditor()
	{
		return webkit_settings_get_enable_xss_auditor(webKitSettings) != 0;
	}

	/**
	 * Gets the #WebKitSettings:fantasy-font-family property.
	 *
	 * Returns: The default font family used to display content marked with fantasy font.
	 */
	public string getFantasyFontFamily()
	{
		return Str.toString(webkit_settings_get_fantasy_font_family(webKitSettings));
	}

	/**
	 * Get the #WebKitSettings:hardware-acceleration-policy property.
	 *
	 * Returns: a #WebKitHardwareAccelerationPolicy
	 *
	 * Since: 2.16
	 */
	public WebKitHardwareAccelerationPolicy getHardwareAccelerationPolicy()
	{
		return webkit_settings_get_hardware_acceleration_policy(webKitSettings);
	}

	/**
	 * Get the #WebKitSettings:javascript-can-access-clipboard property.
	 *
	 * Returns: %TRUE If javascript-can-access-clipboard is enabled or %FALSE otherwise.
	 */
	public bool getJavascriptCanAccessClipboard()
	{
		return webkit_settings_get_javascript_can_access_clipboard(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:javascript-can-open-windows-automatically property.
	 *
	 * Returns: %TRUE If JavaScript can open window automatically or %FALSE otherwise.
	 */
	public bool getJavascriptCanOpenWindowsAutomatically()
	{
		return webkit_settings_get_javascript_can_open_windows_automatically(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:load-icons-ignoring-image-load-setting property.
	 *
	 * Returns: %TRUE If site icon can be loaded irrespective of image loading preference or %FALSE otherwise.
	 */
	public bool getLoadIconsIgnoringImageLoadSetting()
	{
		return webkit_settings_get_load_icons_ignoring_image_load_setting(webKitSettings) != 0;
	}

	/**
	 * Gets the #WebKitSettings:media-content-types-requiring-hardware-support property.
	 *
	 * Returns: Media content types requiring hardware support, or %NULL.
	 *
	 * Since: 2.30
	 */
	public string getMediaContentTypesRequiringHardwareSupport()
	{
		return Str.toString(webkit_settings_get_media_content_types_requiring_hardware_support(webKitSettings));
	}

	/**
	 * Get the #WebKitSettings:media-playback-allows-inline property.
	 *
	 * Returns: %TRUE If inline playback is allowed for media
	 *     or %FALSE if only fullscreen playback is allowed.
	 */
	public bool getMediaPlaybackAllowsInline()
	{
		return webkit_settings_get_media_playback_allows_inline(webKitSettings) != 0;
	}

	/**
	 * Get the #WebKitSettings:media-playback-requires-user-gesture property.
	 *
	 * Returns: %TRUE If an user gesture is needed to play or load media
	 *     or %FALSE if no user gesture is needed.
	 */
	public bool getMediaPlaybackRequiresUserGesture()
	{
		return webkit_settings_get_media_playback_requires_user_gesture(webKitSettings) != 0;
	}

	/**
	 * Gets the #WebKitSettings:minimum-font-size property.
	 *
	 * Returns: Minimum font size, in pixels.
	 */
	public uint getMinimumFontSize()
	{
		return webkit_settings_get_minimum_font_size(webKitSettings);
	}

	/**
	 * Gets the #WebKitSettings:monospace-font-family property.
	 *
	 * Returns: Default font family used to display content marked with monospace font.
	 */
	public string getMonospaceFontFamily()
	{
		return Str.toString(webkit_settings_get_monospace_font_family(webKitSettings));
	}

	/**
	 * Gets the #WebKitSettings:pictograph-font-family property.
	 *
	 * Returns: The default font family used to display content marked with pictograph font.
	 */
	public string getPictographFontFamily()
	{
		return Str.toString(webkit_settings_get_pictograph_font_family(webKitSettings));
	}

	/**
	 * Get the #WebKitSettings:print-backgrounds property.
	 *
	 * Returns: %TRUE If background images should be printed or %FALSE otherwise.
	 */
	public bool getPrintBackgrounds()
	{
		return webkit_settings_get_print_backgrounds(webKitSettings) != 0;
	}

	/**
	 * Gets the #WebKitSettings:sans-serif-font-family property.
	 *
	 * Returns: The default font family used to display content marked with sans-serif font.
	 */
	public string getSansSerifFontFamily()
	{
		return Str.toString(webkit_settings_get_sans_serif_font_family(webKitSettings));
	}

	/**
	 * Gets the #WebKitSettings:serif-font-family property.
	 *
	 * Returns: The default font family used to display content marked with serif font.
	 */
	public string getSerifFontFamily()
	{
		return Str.toString(webkit_settings_get_serif_font_family(webKitSettings));
	}

	/**
	 * Get the #WebKitSettings:user-agent property.
	 *
	 * Returns: The current value of the user-agent property.
	 */
	public string getUserAgent()
	{
		return Str.toString(webkit_settings_get_user_agent(webKitSettings));
	}

	/**
	 * Get the #WebKitSettings:zoom-text-only property.
	 *
	 * Returns: %TRUE If zoom level of the view should only affect the text
	 *     or %FALSE if all view contents should be scaled.
	 */
	public bool getZoomTextOnly()
	{
		return webkit_settings_get_zoom_text_only(webKitSettings) != 0;
	}

	/**
	 * Set the #WebKitSettings:allow-file-access-from-file-urls property.
	 *
	 * Params:
	 *     allowed = Value to be set
	 *
	 * Since: 2.10
	 */
	public void setAllowFileAccessFromFileUrls(bool allowed)
	{
		webkit_settings_set_allow_file_access_from_file_urls(webKitSettings, allowed);
	}

	/**
	 * Set the #WebKitSettings:allow-modal-dialogs property.
	 *
	 * Params:
	 *     allowed = Value to be set
	 */
	public void setAllowModalDialogs(bool allowed)
	{
		webkit_settings_set_allow_modal_dialogs(webKitSettings, allowed);
	}

	/**
	 * Set the #WebKitSettings:allow-top-navigation-to-data-urls property.
	 *
	 * Params:
	 *     allowed = Value to be set
	 *
	 * Since: 2.28
	 */
	public void setAllowTopNavigationToDataUrls(bool allowed)
	{
		webkit_settings_set_allow_top_navigation_to_data_urls(webKitSettings, allowed);
	}

	/**
	 * Set the #WebKitSettings:allow-universal-access-from-file-urls property.
	 *
	 * Params:
	 *     allowed = Value to be set
	 *
	 * Since: 2.14
	 */
	public void setAllowUniversalAccessFromFileUrls(bool allowed)
	{
		webkit_settings_set_allow_universal_access_from_file_urls(webKitSettings, allowed);
	}

	/**
	 * Set the #WebKitSettings:auto-load-images property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setAutoLoadImages(bool enabled)
	{
		webkit_settings_set_auto_load_images(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:cursive-font-family property.
	 *
	 * Params:
	 *     cursiveFontFamily = the new default cursive font family
	 */
	public void setCursiveFontFamily(string cursiveFontFamily)
	{
		webkit_settings_set_cursive_font_family(webKitSettings, Str.toStringz(cursiveFontFamily));
	}

	/**
	 * Set the #WebKitSettings:default-charset property.
	 *
	 * Params:
	 *     defaultCharset = default charset to be set
	 */
	public void setDefaultCharset(string defaultCharset)
	{
		webkit_settings_set_default_charset(webKitSettings, Str.toStringz(defaultCharset));
	}

	/**
	 * Set the #WebKitSettings:default-font-family property.
	 *
	 * Params:
	 *     defaultFontFamily = the new default font family
	 */
	public void setDefaultFontFamily(string defaultFontFamily)
	{
		webkit_settings_set_default_font_family(webKitSettings, Str.toStringz(defaultFontFamily));
	}

	/**
	 * Set the #WebKitSettings:default-font-size property.
	 *
	 * Params:
	 *     fontSize = default font size to be set in pixels
	 */
	public void setDefaultFontSize(uint fontSize)
	{
		webkit_settings_set_default_font_size(webKitSettings, fontSize);
	}

	/**
	 * Set the #WebKitSettings:default-monospace-font-size property.
	 *
	 * Params:
	 *     fontSize = default monospace font size to be set in pixels
	 */
	public void setDefaultMonospaceFontSize(uint fontSize)
	{
		webkit_settings_set_default_monospace_font_size(webKitSettings, fontSize);
	}

	/**
	 * Set the #WebKitSettings:draw-compositing-indicators property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setDrawCompositingIndicators(bool enabled)
	{
		webkit_settings_set_draw_compositing_indicators(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-accelerated-2d-canvas property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.2
	 */
	public void setEnableAccelerated2dCanvas(bool enabled)
	{
		webkit_settings_set_enable_accelerated_2d_canvas(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-back-forward-navigation-gestures property.
	 *
	 * Params:
	 *     enabled = value to be set
	 *
	 * Since: 2.24
	 */
	public void setEnableBackForwardNavigationGestures(bool enabled)
	{
		webkit_settings_set_enable_back_forward_navigation_gestures(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-caret-browsing property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableCaretBrowsing(bool enabled)
	{
		webkit_settings_set_enable_caret_browsing(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-developer-extras property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableDeveloperExtras(bool enabled)
	{
		webkit_settings_set_enable_developer_extras(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-dns-prefetching property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableDnsPrefetching(bool enabled)
	{
		webkit_settings_set_enable_dns_prefetching(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-encrypted-media property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.20
	 */
	public void setEnableEncryptedMedia(bool enabled)
	{
		webkit_settings_set_enable_encrypted_media(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-frame-flattening property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableFrameFlattening(bool enabled)
	{
		webkit_settings_set_enable_frame_flattening(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-fullscreen property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableFullscreen(bool enabled)
	{
		webkit_settings_set_enable_fullscreen(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-html5-database property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableHtml5Database(bool enabled)
	{
		webkit_settings_set_enable_html5_database(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-html5-local-storage property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableHtml5LocalStorage(bool enabled)
	{
		webkit_settings_set_enable_html5_local_storage(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-hyperlink-auditing property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableHyperlinkAuditing(bool enabled)
	{
		webkit_settings_set_enable_hyperlink_auditing(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-java property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableJava(bool enabled)
	{
		webkit_settings_set_enable_java(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-javascript property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableJavascript(bool enabled)
	{
		webkit_settings_set_enable_javascript(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-javascript-markup property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.24
	 */
	public void setEnableJavascriptMarkup(bool enabled)
	{
		webkit_settings_set_enable_javascript_markup(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-media property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.26
	 */
	public void setEnableMedia(bool enabled)
	{
		webkit_settings_set_enable_media(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-media-capabilities property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.22
	 */
	public void setEnableMediaCapabilities(bool enabled)
	{
		webkit_settings_set_enable_media_capabilities(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-media-stream property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.4
	 */
	public void setEnableMediaStream(bool enabled)
	{
		webkit_settings_set_enable_media_stream(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-mediasource property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.4
	 */
	public void setEnableMediasource(bool enabled)
	{
		webkit_settings_set_enable_mediasource(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-mock-capture-devices property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.4
	 */
	public void setEnableMockCaptureDevices(bool enabled)
	{
		webkit_settings_set_enable_mock_capture_devices(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-offline-web-application-cache property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableOfflineWebApplicationCache(bool enabled)
	{
		webkit_settings_set_enable_offline_web_application_cache(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-page-cache property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnablePageCache(bool enabled)
	{
		webkit_settings_set_enable_page_cache(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-plugins property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnablePlugins(bool enabled)
	{
		webkit_settings_set_enable_plugins(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-private-browsing property.
	 *
	 * Deprecated: Use #WebKitWebView:is-ephemeral or #WebKitWebContext:is-ephemeral instead.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnablePrivateBrowsing(bool enabled)
	{
		webkit_settings_set_enable_private_browsing(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-resizable-text-areas property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableResizableTextAreas(bool enabled)
	{
		webkit_settings_set_enable_resizable_text_areas(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-site-specific-quirks property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableSiteSpecificQuirks(bool enabled)
	{
		webkit_settings_set_enable_site_specific_quirks(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-smooth-scrolling property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableSmoothScrolling(bool enabled)
	{
		webkit_settings_set_enable_smooth_scrolling(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-spatial-navigation property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.2
	 */
	public void setEnableSpatialNavigation(bool enabled)
	{
		webkit_settings_set_enable_spatial_navigation(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-tabs-to-links property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableTabsToLinks(bool enabled)
	{
		webkit_settings_set_enable_tabs_to_links(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-webaudio property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableWebaudio(bool enabled)
	{
		webkit_settings_set_enable_webaudio(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-webgl property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableWebgl(bool enabled)
	{
		webkit_settings_set_enable_webgl(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-write-console-messages-to-stdout property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 *
	 * Since: 2.2
	 */
	public void setEnableWriteConsoleMessagesToStdout(bool enabled)
	{
		webkit_settings_set_enable_write_console_messages_to_stdout(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:enable-xss-auditor property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setEnableXssAuditor(bool enabled)
	{
		webkit_settings_set_enable_xss_auditor(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:fantasy-font-family property.
	 *
	 * Params:
	 *     fantasyFontFamily = the new default fantasy font family
	 */
	public void setFantasyFontFamily(string fantasyFontFamily)
	{
		webkit_settings_set_fantasy_font_family(webKitSettings, Str.toStringz(fantasyFontFamily));
	}

	/**
	 * Set the #WebKitSettings:hardware-acceleration-policy property.
	 *
	 * Params:
	 *     policy = a #WebKitHardwareAccelerationPolicy
	 *
	 * Since: 2.16
	 */
	public void setHardwareAccelerationPolicy(WebKitHardwareAccelerationPolicy policy)
	{
		webkit_settings_set_hardware_acceleration_policy(webKitSettings, policy);
	}

	/**
	 * Set the #WebKitSettings:javascript-can-access-clipboard property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setJavascriptCanAccessClipboard(bool enabled)
	{
		webkit_settings_set_javascript_can_access_clipboard(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:javascript-can-open-windows-automatically property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setJavascriptCanOpenWindowsAutomatically(bool enabled)
	{
		webkit_settings_set_javascript_can_open_windows_automatically(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:load-icons-ignoring-image-load-setting property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setLoadIconsIgnoringImageLoadSetting(bool enabled)
	{
		webkit_settings_set_load_icons_ignoring_image_load_setting(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:media-content-types-requiring-hardware-support property.
	 *
	 * Params:
	 *     contentTypes = list of media content types requiring hardware support split by semicolons (:) or %NULL to use the default value.
	 *
	 * Since: 2.30
	 */
	public void setMediaContentTypesRequiringHardwareSupport(string contentTypes)
	{
		webkit_settings_set_media_content_types_requiring_hardware_support(webKitSettings, Str.toStringz(contentTypes));
	}

	/**
	 * Set the #WebKitSettings:media-playback-allows-inline property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setMediaPlaybackAllowsInline(bool enabled)
	{
		webkit_settings_set_media_playback_allows_inline(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:media-playback-requires-user-gesture property.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setMediaPlaybackRequiresUserGesture(bool enabled)
	{
		webkit_settings_set_media_playback_requires_user_gesture(webKitSettings, enabled);
	}

	/**
	 * Set the #WebKitSettings:minimum-font-size property.
	 *
	 * Params:
	 *     fontSize = minimum font size to be set in pixels
	 */
	public void setMinimumFontSize(uint fontSize)
	{
		webkit_settings_set_minimum_font_size(webKitSettings, fontSize);
	}

	/**
	 * Set the #WebKitSettings:monospace-font-family property.
	 *
	 * Params:
	 *     monospaceFontFamily = the new default monospace font family
	 */
	public void setMonospaceFontFamily(string monospaceFontFamily)
	{
		webkit_settings_set_monospace_font_family(webKitSettings, Str.toStringz(monospaceFontFamily));
	}

	/**
	 * Set the #WebKitSettings:pictograph-font-family property.
	 *
	 * Params:
	 *     pictographFontFamily = the new default pictograph font family
	 */
	public void setPictographFontFamily(string pictographFontFamily)
	{
		webkit_settings_set_pictograph_font_family(webKitSettings, Str.toStringz(pictographFontFamily));
	}

	/**
	 * Set the #WebKitSettings:print-backgrounds property.
	 *
	 * Params:
	 *     printBackgrounds = Value to be set
	 */
	public void setPrintBackgrounds(bool printBackgrounds)
	{
		webkit_settings_set_print_backgrounds(webKitSettings, printBackgrounds);
	}

	/**
	 * Set the #WebKitSettings:sans-serif-font-family property.
	 *
	 * Params:
	 *     sansSerifFontFamily = the new default sans-serif font family
	 */
	public void setSansSerifFontFamily(string sansSerifFontFamily)
	{
		webkit_settings_set_sans_serif_font_family(webKitSettings, Str.toStringz(sansSerifFontFamily));
	}

	/**
	 * Set the #WebKitSettings:serif-font-family property.
	 *
	 * Params:
	 *     serifFontFamily = the new default serif font family
	 */
	public void setSerifFontFamily(string serifFontFamily)
	{
		webkit_settings_set_serif_font_family(webKitSettings, Str.toStringz(serifFontFamily));
	}

	/**
	 * Set the #WebKitSettings:user-agent property.
	 *
	 * Params:
	 *     userAgent = The new custom user agent string or %NULL to use the default user agent
	 */
	public void setUserAgent(string userAgent)
	{
		webkit_settings_set_user_agent(webKitSettings, Str.toStringz(userAgent));
	}

	/**
	 * Set the #WebKitSettings:user-agent property by appending the application details to the default user
	 * agent. If no application name or version is given, the default user agent used will be used. If only
	 * the version is given, the default engine version is used with the given application name.
	 *
	 * Params:
	 *     applicationName = The application name used for the user agent or %NULL to use the default user agent.
	 *     applicationVersion = The application version for the user agent or %NULL to user the default version.
	 */
	public void setUserAgentWithApplicationDetails(string applicationName, string applicationVersion)
	{
		webkit_settings_set_user_agent_with_application_details(webKitSettings, Str.toStringz(applicationName), Str.toStringz(applicationVersion));
	}

	/**
	 * Set the #WebKitSettings:zoom-text-only property.
	 *
	 * Params:
	 *     zoomTextOnly = Value to be set
	 */
	public void setZoomTextOnly(bool zoomTextOnly)
	{
		webkit_settings_set_zoom_text_only(webKitSettings, zoomTextOnly);
	}
}
