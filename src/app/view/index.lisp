(in-package #:metl)

(defun index ()
  "The index webpage"
  (with-html "index"
    (<:div :class "container pt-5 d-flex flex-column"
	   (<:div :class "row align-items-center justify-content-center gx-0"
		  (<:div :class "col-12 col-md-5 col-lg-4"
			 (<:div :class "card shadow"
				(<:div :class "card-header bg-primary text-white"
				       (<:h3 "Sign in "))
				(<:div :class "card-body"
				       (<:div :class "form-floating mb-3"
					      (<:input :class "form-control"
						       :id "floatingInput"
						       :type "email"
						       :placeholder "name@example.com")
					      (<:label :for "floatingInput"
						       "Email address"))
				       (<:div :class "form-floating mb-3"
					      (<:input :class "form-control"
						       :id "floatingPassword"
						       :type "email"
						       :placeholder "Password")
					      (<:label :for "floatingPassword"
						       "Password")))
				(<:div :class "card-footer d-flex justify-content-between bg-white"
				       (<:button :class "btn btn-primary w-100"
						 "Login"))))))
    (<:style "body{text-shadow:none;box-shadow: none !important;}")))
