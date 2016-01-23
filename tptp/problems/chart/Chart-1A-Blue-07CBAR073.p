%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR073
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   8 equality;  33 variable)
%            Maximal formula depth :   17 (  14 average)
%            Number of connectives :   79 (   3   ~;   0   |;  17   &;  58   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   11 (   0 sgn;   1   !;   2   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
        ( ( 'int.is-prime/1' @ V_n )
        & ( 'int.</2' @ 2 @ V_n )
        & ( 'int.is-integer/1' @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ( 'int.<=/2' @ 0 @ V_b )
        & ( 'int.<=/2' @ 0 @ V_a )
        & ( V_n
          = ( 'int.-/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_n: 'Z'] :
      ( ( ( 'int.is-odd-number/1' @ V_n )
        & ~ ( 'int.is-prime/1' @ V_n )
        & ( 'int.<=/2' @ 2 @ V_n ) )
     => ? [V_a: 'Z',V_b: 'Z'] :
          ( ( 'int.is-integer/1' @ V_a )
          & ( 'int.is-integer/1' @ V_b )
          & ( 'int.<=/2' @ 0 @ V_b )
          & ( 'int.<=/2' @ 0 @ V_a )
          & ( V_n
            = ( 'int.-/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) )
          & ( V_a
           != ( 'int.div/2' @ ( 'int.+/2' @ V_n @ 1 ) @ 2 ) )
          & ( V_b
           != ( 'int.div/2' @ ( 'int.-/2' @ V_n @ 1 ) @ 2 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
      & ( V_a
        = ( 'int.div/2' @ ( 'int.+/2' @ V_n @ 1 ) @ 2 ) )
      & ( V_b
        = ( 'int.div/2' @ ( 'int.-/2' @ V_n @ 1 ) @ 2 ) ) ) ),
    answer_to(p1_question,[])).
