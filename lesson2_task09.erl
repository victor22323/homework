-module(lesson2_task09).
-export([pack/1]).

pack([]) -> []; 
pack([X]) -> [[X]]; 
pack([X, X | Tail]) -> 
    [ [X | group] | rest ] = pack([X | Tail]),
    [[X] | group] ++ rest;
pack([X, Y | Tail]) -> [[X] | pack([Y | Tail])]. 
