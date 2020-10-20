module webkit2webextension.DOMXPathExpression;

private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.DOMXPathResult;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMXPathExpression : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMXPathExpression* webKitDOMXPathExpression;

	/** Get the main Gtk struct */
	public WebKitDOMXPathExpression* getDOMXPathExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMXPathExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMXPathExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMXPathExpression* webKitDOMXPathExpression, bool ownedRef = false)
	{
		this.webKitDOMXPathExpression = webKitDOMXPathExpression;
		super(cast(WebKitDOMObject*)webKitDOMXPathExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_xpath_expression_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     contextNode = A #WebKitDOMNode
	 *     type = A #gushort
	 *     inResult = A #WebKitDOMXPathResult
	 *
	 * Returns: A #WebKitDOMXPathResult
	 *
	 * Throws: GException on failure.
	 */
	public DOMXPathResult evaluate(DOMNode contextNode, ushort type, DOMXPathResult inResult)
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_expression_evaluate(webKitDOMXPathExpression, (contextNode is null) ? null : contextNode.getDOMNodeStruct(), type, (inResult is null) ? null : inResult.getDOMXPathResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMXPathResult)(cast(WebKitDOMXPathResult*) __p, true);
	}
}
