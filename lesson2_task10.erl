-module(lesson2_task10).
-export([encode/1]).

encode([]) -> []; 
encode([X]) -> [{1, X}];
encode([X, X | Tail]) -> 
    [{Count, X} | Rest] = encode([X | Tail]),
    [{Count + 1, X} | Rest];
encode([X, Y | Tail]) ->
    [{1, X} | encode([Y | Tail])].
