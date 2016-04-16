%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    PA+trans
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-29
%%
%% <PROBLEM-TEXT>
%% Solve the equation $\cos^n x - \sin^n x = 1$, where $n$ is a natural number.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   51 (   4 equality;   8 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   41 (   0   ~;   2   |;   3   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   1   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    5 func;    3 numbers)

include('axioms.ax').

thf('n/0_type',type,(
    'n/0': $int )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( ( $difference @ ( '^/2' @ ( 'cos/1' @ V_x ) @ ( $to_real @ 'n/0' ) ) @ ( '^/2' @ ( 'sin/1' @ V_x ) @ ( $to_real @ 'n/0' ) ) )
          = 1.0 )
        & ( $greatereq @ ( $to_real @ 'n/0' ) @ 1.0 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( ( 'int.is-odd-number/1' @ 'n/0' )
        & ? [V_m_dot_0: $int] :
            ( ( V_x_dot_0
              = ( $product @ 2.0 @ ( $product @ ( $to_real @ V_m_dot_0 ) @ 'Pi/0' ) ) )
            | ( V_x_dot_0
              = ( $sum @ ( $product @ 2.0 @ ( $product @ ( $to_real @ V_m_dot_0 ) @ 'Pi/0' ) ) @ ( $quotient @ ( $product @ 3.0 @ 'Pi/0' ) @ 2.0 ) ) ) ) )
      | ( ( 'int.is-even-number/1' @ 'n/0' )
        & ? [V_m: $int] :
            ( V_x_dot_0
            = ( $product @ ( $to_real @ V_m ) @ 'Pi/0' ) ) ) ) ),
    answer_to(p_question,[])).

