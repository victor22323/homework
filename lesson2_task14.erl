-module(lesson2_task14).
-export([duplicate/1]).

duplicate([]) -> [];
duplicate([H|T]) -> [H, H | duplicate(T)].
