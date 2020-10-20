module webkit2webextension.HitTestResult;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * A Hit Test is an operation to get context information about a given
 * point in a #WebKitWebView. #WebKitHitTestResult represents the
 * result of a Hit Test. It provides context information about what is
 * at the coordinates of the Hit Test, such as if there's a link,
 * an image or a media.
 * 
 * You can get the context of the HitTestResult with
 * webkit_hit_test_result_get_context() that returns a bitmask of
 * #WebKitHitTestResultContext flags. You can also use
 * webkit_hit_test_result_context_is_link(), webkit_hit_test_result_context_is_image() and
 * webkit_hit_test_result_context_is_media() to determine whether there's
 * a link, image or a media element at the coordinates of the Hit Test.
 * Note that it's possible that several #WebKitHitTestResultContext flags
 * are active at the same time, for example if there's a link containing an image.
 * 
 * When the mouse is moved over a #WebKitWebView a Hit Test is performed
 * for the mouse coordinates and #WebKitWebView::mouse-target-changed
 * signal is emitted with a #WebKitHitTestResult.
 */
public class HitTestResult : ObjectG
{
	/** the main Gtk struct */
	protected WebKitHitTestResult* webKitHitTestResult;

	/** Get the main Gtk struct */
	public WebKitHitTestResult* getHitTestResultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitHitTestResult;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitHitTestResult;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitHitTestResult* webKitHitTestResult, bool ownedRef = false)
	{
		this.webKitHitTestResult = webKitHitTestResult;
		super(cast(GObject*)webKitHitTestResult, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_hit_test_result_get_type();
	}

	/**
	 * Gets whether %WEBKIT_HIT_TEST_RESULT_CONTEXT_EDITABLE flag is present in
	 * #WebKitHitTestResult:context.
	 *
	 * Returns: %TRUE if there's an editable element at the coordinates of the @hit_test_result,
	 *     or %FALSE otherwise
	 */
	public bool contextIsEditable()
	{
		return webkit_hit_test_result_context_is_editable(webKitHitTestResult) != 0;
	}

	/**
	 * Gets whether %WEBKIT_HIT_TEST_RESULT_CONTEXT_IMAGE flag is present in
	 * #WebKitHitTestResult:context.
	 *
	 * Returns: %TRUE if there's an image element in the coordinates of the Hit Test,
	 *     or %FALSE otherwise
	 */
	public bool contextIsImage()
	{
		return webkit_hit_test_result_context_is_image(webKitHitTestResult) != 0;
	}

	/**
	 * Gets whether %WEBKIT_HIT_TEST_RESULT_CONTEXT_LINK flag is present in
	 * #WebKitHitTestResult:context.
	 *
	 * Returns: %TRUE if there's a link element in the coordinates of the Hit Test,
	 *     or %FALSE otherwise
	 */
	public bool contextIsLink()
	{
		return webkit_hit_test_result_context_is_link(webKitHitTestResult) != 0;
	}

	/**
	 * Gets whether %WEBKIT_HIT_TEST_RESULT_CONTEXT_MEDIA flag is present in
	 * #WebKitHitTestResult:context.
	 *
	 * Returns: %TRUE if there's a media element in the coordinates of the Hit Test,
	 *     or %FALSE otherwise
	 */
	public bool contextIsMedia()
	{
		return webkit_hit_test_result_context_is_media(webKitHitTestResult) != 0;
	}

	/**
	 * Gets whether %WEBKIT_HIT_TEST_RESULT_CONTEXT_SCROLLBAR flag is present in
	 * #WebKitHitTestResult:context.
	 *
	 * Returns: %TRUE if there's a scrollbar element at the coordinates of the @hit_test_result,
	 *     or %FALSE otherwise
	 */
	public bool contextIsScrollbar()
	{
		return webkit_hit_test_result_context_is_scrollbar(webKitHitTestResult) != 0;
	}

	/**
	 * Gets whether %WEBKIT_HIT_TEST_RESULT_CONTEXT_SELECTION flag is present in
	 * #WebKitHitTestResult:context.
	 *
	 * Returns: %TRUE if there's a selected element at the coordinates of the @hit_test_result,
	 *     or %FALSE otherwise
	 *
	 * Since: 2.8
	 */
	public bool contextIsSelection()
	{
		return webkit_hit_test_result_context_is_selection(webKitHitTestResult) != 0;
	}

	/**
	 * Gets the value of the #WebKitHitTestResult:context property.
	 *
	 * Returns: a bitmask of #WebKitHitTestResultContext flags
	 */
	public uint getContext()
	{
		return webkit_hit_test_result_get_context(webKitHitTestResult);
	}

	/**
	 * Gets the value of the #WebKitHitTestResult:image-uri property.
	 *
	 * Returns: the URI of the image element in the coordinates of the Hit Test,
	 *     or %NULL if there isn't an image element in @hit_test_result context
	 */
	public string getImageUri()
	{
		return Str.toString(webkit_hit_test_result_get_image_uri(webKitHitTestResult));
	}

	/**
	 * Gets the value of the #WebKitHitTestResult:link-label property.
	 *
	 * Returns: the label of the link element in the coordinates of the Hit Test,
	 *     or %NULL if there isn't a link element in @hit_test_result context or the
	 *     link element doesn't have a label
	 */
	public string getLinkLabel()
	{
		return Str.toString(webkit_hit_test_result_get_link_label(webKitHitTestResult));
	}

	/**
	 * Gets the value of the #WebKitHitTestResult:link-title property.
	 *
	 * Returns: the title of the link element in the coordinates of the Hit Test,
	 *     or %NULL if there isn't a link element in @hit_test_result context or the
	 *     link element doesn't have a title
	 */
	public string getLinkTitle()
	{
		return Str.toString(webkit_hit_test_result_get_link_title(webKitHitTestResult));
	}

	/**
	 * Gets the value of the #WebKitHitTestResult:link-uri property.
	 *
	 * Returns: the URI of the link element in the coordinates of the Hit Test,
	 *     or %NULL if there isn't a link element in @hit_test_result context
	 */
	public string getLinkUri()
	{
		return Str.toString(webkit_hit_test_result_get_link_uri(webKitHitTestResult));
	}

	/**
	 * Gets the value of the #WebKitHitTestResult:media-uri property.
	 *
	 * Returns: the URI of the media element in the coordinates of the Hit Test,
	 *     or %NULL if there isn't a media element in @hit_test_result context
	 */
	public string getMediaUri()
	{
		return Str.toString(webkit_hit_test_result_get_media_uri(webKitHitTestResult));
	}
}
