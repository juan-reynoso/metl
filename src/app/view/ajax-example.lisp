(in-package #:metl)

(defun chunk-of-code ()
  (with-yaclml-output-to-string
    (<:div :class "content mt-5"
	   (<:h1 :class "text-success"
		 (<:as-html (get-model))
		 ))))

(defun ajax-example ()
  (with-html "jquery AJAX example"
    (<:main :id "content"
	    :class "container"
	    (<:h1 "First content"))
    (<:style "body{text-shadow:none;box-shadow: none !important;}")
    (<:script :type "text/javascript"
	      (<:as-is "alert('The text will be updated.'); $.ajax ({url: '/chunk',
	     cache: false,
	     success: function (result) {
		 $('#content').html(result);
	     }
	    });"))))
