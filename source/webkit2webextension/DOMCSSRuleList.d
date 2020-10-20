module webkit2webextension.DOMCSSRuleList;

private import gobject.ObjectG;
private import webkit2webextension.DOMCSSRule;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCSSRuleList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMCSSRuleList* webKitDOMCSSRuleList;

	/** Get the main Gtk struct */
	public WebKitDOMCSSRuleList* getDOMCSSRuleListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCSSRuleList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCSSRuleList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCSSRuleList* webKitDOMCSSRuleList, bool ownedRef = false)
	{
		this.webKitDOMCSSRuleList = webKitDOMCSSRuleList;
		super(cast(WebKitDOMObject*)webKitDOMCSSRuleList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_css_rule_list_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getLength()
	{
		return webkit_dom_css_rule_list_get_length(webKitDOMCSSRuleList);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMCSSRule
	 */
	public DOMCSSRule item(gulong index)
	{
		auto __p = webkit_dom_css_rule_list_item(webKitDOMCSSRuleList, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSRule)(cast(WebKitDOMCSSRule*) __p, true);
	}
}
