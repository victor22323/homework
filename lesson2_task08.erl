-module(lesson2_task08).
-export([compress/1]).

compress([]) -> [];
compress([X]) -> [X];
compress([X, X | Tail]) -> compress([X | Tail]);
compress([X, Y | Tail]) -> [X | compress([Y | Tail])].
