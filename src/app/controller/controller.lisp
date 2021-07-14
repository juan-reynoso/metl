(in-package #:metl)

(setq *dispatch-table*
      (list
       (create-regex-dispatcher "^/$" 'index)
       (create-prefix-dispatcher  "/index.html" 'index)
       (create-prefix-dispatcher  "/chunk" 'chunk-of-code)
       (create-prefix-dispatcher  "/ajax-example.html" 'ajax-example)
       (create-prefix-dispatcher  "/video-hls.html" 'video-hls)
       (create-folder-dispatcher-and-handler "/js/" (concatenate 'string *wwwroot* "/js/"))
       (create-folder-dispatcher-and-handler "/video/" (concatenate 'string *wwwroot* "/video/"))))
