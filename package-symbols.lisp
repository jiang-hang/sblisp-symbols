(defun dump-package-symbol (mpackage)
  (with-open-file (out (format nil "~A.txt" mpackage) :direction :output :if-exists :supersede)
    (do-symbols (sym mpackage) 
       (describe sym out))))
