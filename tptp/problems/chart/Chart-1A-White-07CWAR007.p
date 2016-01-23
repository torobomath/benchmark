%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR007
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   31 (   3 equality;  12 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   23 (   0   ~;   0   |;   4   &;  19   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
            ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
              ( ( 'int.is-natural-number/1' @ V_x )
              & ( 'int.is-natural-number/1' @ V_y )
              & ( 'int.is-natural-number/1' @ V_z )
              & ( 6
                = ( 'int.+/2' @ ( 'int.+/2' @ V_x @ V_y ) @ V_z ) )
              & ( V_m
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 100 @ V_x ) @ ( 'int.*/2' @ 10 @ V_y ) ) @ V_z ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 10 ) ),
    answer_to(p_question,[])).
