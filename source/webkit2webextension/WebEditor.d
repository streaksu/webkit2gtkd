module webkit2webextension.WebEditor;

private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2webextension.WebPage;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * The WebKitWebEditor provides access to various editing capabilities of
 * a #WebKitWebPage such as a possibility to react to the current selection in
 * #WebKitWebPage.
 *
 * Since: 2.10
 */
public class WebEditor : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebEditor* webKitWebEditor;

	/** Get the main Gtk struct */
	public WebKitWebEditor* getWebEditorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebEditor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebEditor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebEditor* webKitWebEditor, bool ownedRef = false)
	{
		this.webKitWebEditor = webKitWebEditor;
		super(cast(GObject*)webKitWebEditor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_editor_get_type();
	}

	/**
	 * Gets the #WebKitWebPage that is associated with the #WebKitWebEditor that can
	 * be used to access the #WebKitDOMDocument currently loaded into it.
	 *
	 * Returns: the associated #WebKitWebPage
	 *
	 * Since: 2.10
	 */
	public WebPage getPage()
	{
		auto __p = webkit_web_editor_get_page(webKitWebEditor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebPage)(cast(WebKitWebPage*) __p);
	}

	/**
	 * This signal is emitted for every selection change inside a #WebKitWebPage
	 * as well as for every caret position change as the caret is a collapsed
	 * selection.
	 *
	 * Since: 2.10
	 */
	gulong addOnSelectionChanged(void delegate(WebEditor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selection-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
