;;;; -*- Mode: Lisp; -*-
;;
;; AUTHORS: TEAM MEMBERS:
;;
;; This is a version of the bingo code that is written in a
;; style that is more functional than procedural in nature.
;;

(defun read-int-line (str)
  "Reads one line from stream STR, and returns a list of the integers parsed from the line."
  (mapcar #'parse-integer (delete-if #'(lambda (x) (equal x ""))  (split-sequence " " (read-line str)))))

(defun bingo-data (str)
  ;;suggestion to students: write this function to use read-int-line
  ;;to build up correct data structures (lists, arrays, whatever you
  ;;choose) for one test case, and return these in a list that is
  ;;used by verify-bingo-data. Pass the str argument to read-int-line.
  ;; for now, it just returns nil. 
  nil ;; Delete this nil when you write the actual code.
)

;;-----------------------------------------------------------------------
;;other helper functions should be written by students here as needed


;;------------------------------------------------------------------------


(defun rotate90 (p)
  "Returns a copy of 2D matrix P rotated 90 degrees."
;;this needs to be written by students.
  p)

;; a helper for debugging.
(defun print-matrix (m)
  "Prints out the 5x5 matrix M in a pretty format."
  (loop for i below 5 doing
        (loop for j from 0 to 4 doing
              (format t "~2D " (aref m i j)))
        (format t "~%"))
  (format t "~%"))



(defun verify-bingo-data (testcase-info)
  ;; this body needs to be written by students.
  ;; for now, it always returns false (nil).
  nil
  )




(defun verify (&optional (str *standard-input*))
"This is what gets called to handle data copied and pasted to STDIN, and prints out correct results."
  (if (verify-bingo-data (bingo-data str))
      (progn
        (format t "VALID BINGO~%")
        t)
      (progn
        (format t "NO BINGO~%")
        nil)))