module webkit2.FileChooserRequest;

private import glib.Str;
private import gobject.ObjectG;
private import gtk.FileFilter;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * Whenever the user interacts with an &lt;input type='file' /&gt;
 * HTML element, WebKit will need to show a dialog to choose one or
 * more files to be uploaded to the server along with the rest of the
 * form data. For that to happen in a general way, instead of just
 * opening a #GtkFileChooserDialog (which might be not desirable in
 * some cases, which could prefer to use their own file chooser
 * dialog), WebKit will fire the #WebKitWebView::run-file-chooser
 * signal with a #WebKitFileChooserRequest object, which will allow
 * the client application to specify the files to be selected, to
 * inspect the details of the request (e.g. if multiple selection
 * should be allowed) and to cancel the request, in case nothing was
 * selected.
 * 
 * In case the client application does not wish to handle this signal,
 * WebKit will provide a default handler which will asynchronously run
 * a regular #GtkFileChooserDialog for the user to interact with.
 */
public class FileChooserRequest : ObjectG
{
	/** the main Gtk struct */
	protected WebKitFileChooserRequest* webKitFileChooserRequest;

	/** Get the main Gtk struct */
	public WebKitFileChooserRequest* getFileChooserRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitFileChooserRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitFileChooserRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitFileChooserRequest* webKitFileChooserRequest, bool ownedRef = false)
	{
		this.webKitFileChooserRequest = webKitFileChooserRequest;
		super(cast(GObject*)webKitFileChooserRequest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_file_chooser_request_get_type();
	}

	/**
	 * Ask WebKit to cancel the request. It's important to do this in case
	 * no selection has been made in the client, otherwise the request
	 * won't be properly completed and the browser will keep the request
	 * pending forever, which might cause the browser to hang.
	 */
	public void cancel()
	{
		webkit_file_chooser_request_cancel(webKitFileChooserRequest);
	}

	/**
	 * Get the list of MIME types the file chooser dialog should handle,
	 * in the format specified in RFC 2046 for "media types". Its contents
	 * depend on the value of the 'accept' attribute for HTML input
	 * elements. This function should normally be called before presenting
	 * the file chooser dialog to the user, to decide whether to allow the
	 * user to select multiple files at once or only one.
	 *
	 * Returns: a
	 *     %NULL-terminated array of strings if a list of accepted MIME types
	 *     is defined or %NULL otherwise, meaning that any MIME type should be
	 *     accepted. This array and its contents are owned by WebKit and
	 *     should not be modified or freed.
	 */
	public string[] getMimeTypes()
	{
		return Str.toStringArray(webkit_file_chooser_request_get_mime_types(webKitFileChooserRequest));
	}

	/**
	 * Get the filter currently associated with the request, ready to be
	 * used by #GtkFileChooser. This function should normally be called
	 * before presenting the file chooser dialog to the user, to decide
	 * whether to apply a filter so the user would not be allowed to
	 * select files with other MIME types.
	 *
	 * See webkit_file_chooser_request_get_mime_types() if you are
	 * interested in getting the list of accepted MIME types.
	 *
	 * Returns: a #GtkFileFilter if a list of accepted
	 *     MIME types is defined or %NULL otherwise. The returned object is
	 *     owned by WebKit should not be modified or freed.
	 */
	public FileFilter getMimeTypesFilter()
	{
		auto __p = webkit_file_chooser_request_get_mime_types_filter(webKitFileChooserRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileFilter)(cast(GtkFileFilter*) __p);
	}

	/**
	 * Determine whether the file chooser associated to this
	 * #WebKitFileChooserRequest should allow selecting multiple files,
	 * which depends on the HTML input element having a 'multiple'
	 * attribute defined.
	 *
	 * Returns: %TRUE if the file chooser should allow selecting multiple files or %FALSE otherwise.
	 */
	public bool getSelectMultiple()
	{
		return webkit_file_chooser_request_get_select_multiple(webKitFileChooserRequest) != 0;
	}

	/**
	 * Get the list of selected files currently associated to the
	 * request. Initially, the return value of this method contains any
	 * files selected in previous file chooser requests for this HTML
	 * input element. Once webkit_file_chooser_request_select_files, the
	 * value will reflect whatever files are given.
	 *
	 * This function should normally be called only before presenting the
	 * file chooser dialog to the user, to decide whether to perform some
	 * extra action, like pre-selecting the files from a previous request.
	 *
	 * Returns: a
	 *     %NULL-terminated array of strings if there are selected files
	 *     associated with the request or %NULL otherwise. This array and its
	 *     contents are owned by WebKit and should not be modified or
	 *     freed.
	 */
	public string[] getSelectedFiles()
	{
		return Str.toStringArray(webkit_file_chooser_request_get_selected_files(webKitFileChooserRequest));
	}

	/**
	 * Ask WebKit to select local files for upload and complete the
	 * request.
	 *
	 * Params:
	 *     files = a
	 *         %NULL-terminated array of strings, containing paths to local files.
	 */
	public void selectFiles(string[] files)
	{
		webkit_file_chooser_request_select_files(webKitFileChooserRequest, Str.toStringzArray(files));
	}
}
