;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname TicketPriceDeterm) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;constant define
(define ticket-price 4.9)
(define price-sensitivity 15)
(define price-viable 0.1)
(define std-price 5.0)

;function define
(define (attendees ticket-price)
  (- 120 (* (- ticket-price std-price) (/ price-sensitivity price-viable))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticekt-price)
  (+ 180 (* 0.4 (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

;caculate the profit
(profit ticket-price)

