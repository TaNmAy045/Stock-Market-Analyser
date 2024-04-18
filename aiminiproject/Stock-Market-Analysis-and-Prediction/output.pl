?- cheap_stock(Symbol).
Symbol = appl ;
false.

?- high_volume_stock(Symbol).
Symbol = appl ;
Symbol = goog ;
Symbol = msft ;
Symbol = amzn ;
Symbol = fb ;
false.

?- large_cap_stock(Symbol).
Symbol = appl ;
Symbol = goog ;
Symbol = msft ;
Symbol = amzn ;
false.

?- expensive_low_volume_stock(Symbol).
Symbol = amzn ;
false.
