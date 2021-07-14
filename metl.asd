;;;; metl.asd

(asdf:defsystem #:metl
  :description "A sample project in Common Lisp"
  :author "Juan Reynoso juan@ikkiware.com"
  :maintainer "Juan Reynoso juan@ikkiware.com"
  :license "MIT"
  :version "0.0.1"
  :homepage "https://github.com/juan-reynoso/metl"
  :serial t
  :depends-on (#:hunchentoot #:yaclml #:parenscript #:postmodern)
  :components (
	       ;; src directory
	       (:module :src 
		:components
		((:file "package")
		 (:file "metl")
		 ;; web-server directory
		 (:module :web-server
		  :components
		  ((:file "web-server")))
		 ;; /src/app directory
		 (:module :app
		  :components
		  (;; /src/app/model/ directory
		   (:module :model 
		    :components
			    ((:file "model")))
		   ;; /src/app/view/ directory
		   (:module :view 
		    :components
			    ((:file "with-html")
			     (:file "index")
			     (:file "ajax-example")
			     (:file "video-hls")))
		   ;; /src/app/controller/ directory
		   (:module :controller 
		    :components
			    ((:file "controller")))))))))
