; ----------------------------------------------------------------------------------------------------------------------------------------------------------
; Problem	:	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.	
;				Find the sum of all the multiples of 3 or 5 below 1000.
; Language	:	AutoLisp
; Date		:	18.06.2018
; written by:	J.E.Nolting
; ----------------------------------------------------------------------------------------------------------------------------------------------------------
(defun c:multiples_by_3_or_5()
	(setq	maxNumber (getint "maximum natural number: ")
			naturalNumbersList '()
			number 1)
	(repeat (- maxNumber 1)
		(if (or (= (rem number 3)0)(= (rem number 5)0))
				 (setq naturalNumbersList (append naturalNumbersList (list number)))	
		)
		;(if (= (rem number 5)0)
		;		 (setq naturalNumbersList (append naturalNumbersList (list number)))	
		;)
		(setq number (1+ number))
	)
	(setq answer (apply '+ naturalNumbersList))
	(princ (strcat "de som van alle getallen onder de " (itoa maxNumber) " en deelbaar door 3 of 5 is " (itoa answer)  "\n"))(princ)
)

