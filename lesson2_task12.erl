-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([]) -> [];  
decode_modified([{Count, X} | Tail]) -> lists:append(lists:duplicate(Count, X), decode_modified(Tail)); 
decode_modified([X | Tail]) -> [X | decode_modified(Tail)].  
