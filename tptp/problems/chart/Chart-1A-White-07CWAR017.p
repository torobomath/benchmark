%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR017
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   4 equality;  17 variable)
%            Maximal formula depth :   19 (  10 average)
%            Number of connectives :   41 (   0   ~;   0   |;   7   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   11 (   0 sgn;   1   !;   2   ?;   7   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
            ? [V_x: 'Z',V_y: 'Z'] :
              ( ( 'int.is-integer/1' @ V_x )
              & ( 'int.<=/2' @ 1 @ V_x )
              & ( 'int.<=/2' @ V_x @ 5 )
              & ( 'int.is-integer/1' @ V_y )
              & ( 'int.<=/2' @ 1 @ V_y )
              & ( 'int.<=/2' @ V_y @ 5 )
              & ( V_m
                = ( 'int.+/2' @ ( 'int.*/2' @ 10 @ V_x ) @ V_y ) ) ) ) ) )).

thf(p2_qustion,question,(
    ! [Tv32: $tType] :
      ( 'Find/1'
      @ ^ [V_n: 'Z'] :
          ( 'is-cardinality-of/2' @ V_n
          @ ( 'set-by-def/1'
            @ ^ [V_s: 'SetOf' @ Tv32] :
                ( ( V_S
                  = ( 'set-by-def/1'
                    @ ^ [V_s_dot_0: Tv32] :
                        ( 'member/2' @ V_s_dot_0 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ) )
                & ( 'is-subset-of/2' @ V_s @ V_S ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 25 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 8 ) ),
    answer_to(p2_question,[])).
