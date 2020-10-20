module webkit2webextension.DOMCSSStyleSheet;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCSSRule;
private import webkit2webextension.DOMCSSRuleList;
private import webkit2webextension.DOMStyleSheet;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCSSStyleSheet : DOMStyleSheet
{
	/** the main Gtk struct */
	protected WebKitDOMCSSStyleSheet* webKitDOMCSSStyleSheet;

	/** Get the main Gtk struct */
	public WebKitDOMCSSStyleSheet* getDOMCSSStyleSheetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCSSStyleSheet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCSSStyleSheet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCSSStyleSheet* webKitDOMCSSStyleSheet, bool ownedRef = false)
	{
		this.webKitDOMCSSStyleSheet = webKitDOMCSSStyleSheet;
		super(cast(WebKitDOMStyleSheet*)webKitDOMCSSStyleSheet, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_css_style_sheet_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     selector = A #gchar
	 *     style = A #gchar
	 *     index = A #gulong
	 *
	 * Returns: A #glong
	 *
	 * Throws: GException on failure.
	 */
	public glong addRule(string selector, string style, gulong index)
	{
		GError* err = null;

		auto __p = webkit_dom_css_style_sheet_add_rule(webKitDOMCSSStyleSheet, Str.toStringz(selector), Str.toStringz(style), index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Throws: GException on failure.
	 */
	public void deleteRule(gulong index)
	{
		GError* err = null;

		webkit_dom_css_style_sheet_delete_rule(webKitDOMCSSStyleSheet, index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSRuleList
	 */
	public DOMCSSRuleList getCssRules()
	{
		auto __p = webkit_dom_css_style_sheet_get_css_rules(webKitDOMCSSStyleSheet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSRuleList)(cast(WebKitDOMCSSRuleList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSRule
	 */
	public DOMCSSRule getOwnerRule()
	{
		auto __p = webkit_dom_css_style_sheet_get_owner_rule(webKitDOMCSSStyleSheet);

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
	 * Returns: A #WebKitDOMCSSRuleList
	 */
	public DOMCSSRuleList getRules()
	{
		auto __p = webkit_dom_css_style_sheet_get_rules(webKitDOMCSSStyleSheet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSRuleList)(cast(WebKitDOMCSSRuleList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     rule = A #gchar
	 *     index = A #gulong
	 *
	 * Returns: A #gulong
	 *
	 * Throws: GException on failure.
	 */
	public gulong insertRule(string rule, gulong index)
	{
		GError* err = null;

		auto __p = webkit_dom_css_style_sheet_insert_rule(webKitDOMCSSStyleSheet, Str.toStringz(rule), index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Throws: GException on failure.
	 */
	public void removeRule(gulong index)
	{
		GError* err = null;

		webkit_dom_css_style_sheet_remove_rule(webKitDOMCSSStyleSheet, index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
