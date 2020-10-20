module webkit2webextension.WebHitTestResult;

private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.HitTestResult;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * WebKitWebHitTestResult extends #WebKitHitTestResult to provide information
 * about the #WebKitDOMNode in the coordinates of the Hit Test.
 *
 * Since: 2.8
 */
public class WebHitTestResult : HitTestResult
{
	/** the main Gtk struct */
	protected WebKitWebHitTestResult* webKitWebHitTestResult;

	/** Get the main Gtk struct */
	public WebKitWebHitTestResult* getWebHitTestResultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebHitTestResult;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebHitTestResult;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebHitTestResult* webKitWebHitTestResult, bool ownedRef = false)
	{
		this.webKitWebHitTestResult = webKitWebHitTestResult;
		super(cast(WebKitHitTestResult*)webKitWebHitTestResult, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_hit_test_result_get_type();
	}

	/**
	 * Get the #WebKitDOMNode in the coordinates of the Hit Test.
	 *
	 * Returns: a #WebKitDOMNode
	 *
	 * Since: 2.8
	 */
	public DOMNode getNode()
	{
		auto __p = webkit_web_hit_test_result_get_node(webKitWebHitTestResult);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}
}
