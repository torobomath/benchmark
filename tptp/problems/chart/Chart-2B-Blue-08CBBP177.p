%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP177
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   85 (   2 equality;  23 variable)
%            Maximal formula depth :   24 (  22 average)
%            Number of connectives :   79 (   0   ~;   0   |;  14   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'Z'] :
        ( ( 'int.is-integer/1' @ V_a )
        & ( 'int.<=/2' @ 0 @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ( 'int.<=/2' @ 0 @ V_b )
        & ( 'int.is-integer/1' @ V_c )
        & ( 'int.<=/2' @ 0 @ V_c )
        & ( V_s
          = ( 'int.sum/1'
            @ ( 'int.set-to-list/1'
              @ ( 'set-by-def/1'
                @ ^ [V_m: 'Z'] :
                    ( ( 'int.is-integer/1' @ V_m )
                    & ( 'int.</2' @ 0 @ V_m )
                    & ( 'int.is-divisible-by/2' @ ( 'int.*/2' @ ( 'int.*/2' @ ( 'int.^/2' @ 2 @ V_a ) @ ( 'int.^/2' @ 3 @ V_b ) ) @ ( 'int.^/2' @ 5 @ V_c ) ) @ V_m ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_s_dot_0: 'Z'] :
      ( ( 'int.is-integer/1' @ V_a )
      & ( 'int.<=/2' @ 0 @ V_a )
      & ( 'int.is-integer/1' @ V_b )
      & ( 'int.<=/2' @ 0 @ V_b )
      & ( 'int.is-integer/1' @ V_c )
      & ( 'int.<=/2' @ 0 @ V_c )
      & ( ( 'rat.int->rat/1' @ V_s_dot_0 )
        = ( 'rat.*/2' @ ( 'rat.ratio/2' @ 1 @ 8 ) @ ( 'rat.int->rat/1' @ ( 'int.*/2' @ ( 'int.*/2' @ ( 'int.+/2' @ ( 'int.^/2' @ 2 @ ( 'int.+/2' @ V_a @ 1 ) ) @ 1 ) @ ( 'int.+/2' @ ( 'int.^/2' @ 3 @ ( 'int.+/2' @ V_b @ 1 ) ) @ 1 ) ) @ ( 'int.+/2' @ ( 'int.^/2' @ 5 @ ( 'int.+/2' @ V_c @ 1 ) ) @ 1 ) ) ) ) ) ) ),
    answer_to(p_question,[])).
