module webkit2.FindController;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.WebView;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * A #WebKitFindController is used to search text in a #WebKitWebView. You
 * can get a #WebKitWebView<!-- -->'s #WebKitFindController with
 * webkit_web_view_get_find_controller(), and later use it to search
 * for text using webkit_find_controller_search(), or get the
 * number of matches using webkit_find_controller_count_matches(). The
 * operations are asynchronous and trigger signals when ready, such as
 * #WebKitFindController::found-text,
 * #WebKitFindController::failed-to-find-text or
 * #WebKitFindController::counted-matches<!-- -->.
 */
public class FindController : ObjectG
{
	/** the main Gtk struct */
	protected WebKitFindController* webKitFindController;

	/** Get the main Gtk struct */
	public WebKitFindController* getFindControllerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitFindController;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitFindController;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitFindController* webKitFindController, bool ownedRef = false)
	{
		this.webKitFindController = webKitFindController;
		super(cast(GObject*)webKitFindController, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_find_controller_get_type();
	}

	/**
	 * Counts the number of matches for @search_text found in the
	 * #WebKitWebView with the provided @find_options. The number of
	 * matches will be provided by the
	 * #WebKitFindController::counted-matches signal.
	 *
	 * Params:
	 *     searchText = the text to look for
	 *     findOptions = a bitmask with the #WebKitFindOptions used in the search
	 *     maxMatchCount = the maximum number of matches allowed in the search
	 */
	public void countMatches(string searchText, uint findOptions, uint maxMatchCount)
	{
		webkit_find_controller_count_matches(webKitFindController, Str.toStringz(searchText), findOptions, maxMatchCount);
	}

	/**
	 * Gets the maximum number of matches to report during a text
	 * lookup. This number is passed as the last argument of
	 * webkit_find_controller_search() or
	 * webkit_find_controller_count_matches().
	 *
	 * Returns: the maximum number of matches to report.
	 */
	public uint getMaxMatchCount()
	{
		return webkit_find_controller_get_max_match_count(webKitFindController);
	}

	/**
	 * Gets a bitmask containing the #WebKitFindOptions associated with
	 * the current search.
	 *
	 * Returns: a bitmask containing the #WebKitFindOptions associated
	 *     with the current search.
	 */
	public uint getOptions()
	{
		return webkit_find_controller_get_options(webKitFindController);
	}

	/**
	 * Gets the text that @find_controller is currently searching
	 * for. This text is passed to either
	 * webkit_find_controller_search() or
	 * webkit_find_controller_count_matches().
	 *
	 * Returns: the text to look for in the #WebKitWebView.
	 */
	public string getSearchText()
	{
		return Str.toString(webkit_find_controller_get_search_text(webKitFindController));
	}

	/**
	 * Gets the #WebKitWebView this find controller is associated to. Do
	 * not dereference the returned instance as it belongs to the
	 * #WebKitFindController.
	 *
	 * Returns: the #WebKitWebView.
	 */
	public WebView getWebView()
	{
		auto __p = webkit_find_controller_get_web_view(webKitFindController);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebView)(cast(WebKitWebView*) __p);
	}

	/**
	 * Looks for @search_text in the #WebKitWebView associated with
	 * @find_controller since the beginning of the document highlighting
	 * up to @max_match_count matches. The outcome of the search will be
	 * asynchronously provided by the #WebKitFindController::found-text
	 * and #WebKitFindController::failed-to-find-text signals.
	 *
	 * To look for the next or previous occurrences of the same text
	 * with the same find options use webkit_find_controller_search_next()
	 * and/or webkit_find_controller_search_previous(). The
	 * #WebKitFindController will use the same text and options for the
	 * following searches unless they are modified by another call to this
	 * method.
	 *
	 * Note that if the number of matches is higher than @max_match_count
	 * then #WebKitFindController::found-text will report %G_MAXUINT matches
	 * instead of the actual number.
	 *
	 * Callers should call webkit_find_controller_search_finish() to
	 * finish the current search operation.
	 *
	 * Params:
	 *     searchText = the text to look for
	 *     findOptions = a bitmask with the #WebKitFindOptions used in the search
	 *     maxMatchCount = the maximum number of matches allowed in the search
	 */
	public void search(string searchText, uint findOptions, uint maxMatchCount)
	{
		webkit_find_controller_search(webKitFindController, Str.toStringz(searchText), findOptions, maxMatchCount);
	}

	/**
	 * Finishes a find operation started by
	 * webkit_find_controller_search(). It will basically unhighlight
	 * every text match found.
	 *
	 * This method will be typically called when the search UI is
	 * closed/hidden by the client application.
	 */
	public void searchFinish()
	{
		webkit_find_controller_search_finish(webKitFindController);
	}

	/**
	 * Looks for the next occurrence of the search text.
	 *
	 * Calling this method before webkit_find_controller_search() or
	 * webkit_find_controller_count_matches() is a programming error.
	 */
	public void searchNext()
	{
		webkit_find_controller_search_next(webKitFindController);
	}

	/**
	 * Looks for the previous occurrence of the search text.
	 *
	 * Calling this method before webkit_find_controller_search() or
	 * webkit_find_controller_count_matches() is a programming error.
	 */
	public void searchPrevious()
	{
		webkit_find_controller_search_previous(webKitFindController);
	}

	/**
	 * This signal is emitted when the #WebKitFindController has
	 * counted the number of matches for a given text after a call
	 * to webkit_find_controller_count_matches().
	 *
	 * Params:
	 *     matchCount = the number of matches of the search text
	 */
	gulong addOnCountedMatches(void delegate(uint, FindController) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "counted-matches", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a search operation does not find
	 * any result for the given text. It will be issued if the text
	 * is not found asynchronously after a call to
	 * webkit_find_controller_search(), webkit_find_controller_search_next()
	 * or webkit_find_controller_search_previous().
	 */
	gulong addOnFailedToFindText(void delegate(FindController) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "failed-to-find-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a given text is found in the web
	 * page text. It will be issued if the text is found
	 * asynchronously after a call to webkit_find_controller_search(),
	 * webkit_find_controller_search_next() or
	 * webkit_find_controller_search_previous().
	 *
	 * Params:
	 *     matchCount = the number of matches found of the search text
	 */
	gulong addOnFoundText(void delegate(uint, FindController) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "found-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
