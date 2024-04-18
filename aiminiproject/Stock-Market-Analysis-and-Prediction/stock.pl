% Facts representing stock data
% stock(Symbol, CompanyName, Price, Volume, MarketCap)
stock(appl, 'Apple Inc.', 150, 1000000, 200000000).
stock(goog, 'Alphabet Inc.', 2500, 500000, 180000000).
stock(msft, 'Microsoft Corporation', 300, 800000, 150000000).
stock(amzn, 'Amazon.com Inc.', 3500, 700000, 170000000).
stock(fb, 'Meta Platforms Inc.', 300, 600000, 150000000).

% Rules for analyzing stocks
% Rule 1: Find stocks with price below a certain threshold
cheap_stock(Symbol) :-
    stock(Symbol, _, Price, _, _),
    Price < 500.

% Rule 2: Find stocks with high volume
high_volume_stock(Symbol) :-
    stock(Symbol, _, _, Volume, _),
    Volume > 500000.

% Rule 3: Find stocks with high market cap
large_cap_stock(Symbol) :-
    stock(Symbol, _, _, _, MarketCap),
    MarketCap > 150000000.

% Rule 4: Find expensive stocks with low volume
expensive_low_volume_stock(Symbol) :-
    stock(Symbol, _, Price, Volume, _),
    Price > 1000,
    Volume < 500000.
