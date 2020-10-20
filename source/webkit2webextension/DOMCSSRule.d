module webkit2webextension.DOMCSSRule;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCSSStyleSheet;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCSSRule : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMCSSRule* webKitDOMCSSRule;

	/** Get the main Gtk struct */
	public WebKitDOMCSSRule* getDOMCSSRuleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCSSRule;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCSSRule;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCSSRule* webKitDOMCSSRule, bool ownedRef = false)
	{
		this.webKitDOMCSSRule = webKitDOMCSSRule;
		super(cast(WebKitDOMObject*)webKitDOMCSSRule, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_css_rule_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCssText()
	{
		auto retStr = webkit_dom_css_rule_get_css_text(webKitDOMCSSRule);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSRule
	 */
	public DOMCSSRule getParentRule()
	{
		auto __p = webkit_dom_css_rule_get_parent_rule(webKitDOMCSSRule);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSRule)(cast(WebKitDOMCSSRule*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSStyleSheet
	 */
	public DOMCSSStyleSheet getParentStyleSheet()
	{
		auto __p = webkit_dom_css_rule_get_parent_style_sheet(webKitDOMCSSRule);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSStyleSheet)(cast(WebKitDOMCSSStyleSheet*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gushort
	 */
	public ushort getRuleType()
	{
		return webkit_dom_css_rule_get_rule_type(webKitDOMCSSRule);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setCssText(string value)
	{
		GError* err = null;

		webkit_dom_css_rule_set_css_text(webKitDOMCSSRule, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
