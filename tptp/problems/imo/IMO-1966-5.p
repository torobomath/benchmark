%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1966, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Solve the system of equations
%% \[                    |a_1 - a_2| x_2 + |a_1 - a_3| x_3 + |a_1 - a_4| x_4 = 1  \]
%% \[  |a_2 - a_1| x_1                   + |a_2 - a_3| x_3 + |a_2 - a_4| x_4 = 1  \]
%% \[  |a_3 - a_1| x_1 + |a_3 - a_2| x_2                   + |a_3 - a_4| x_4 = 1  \]
%% \[  |a_4 - a_1| x_1 + |a_4 - a_2| x_2 + |a_4 - a_3| x_3                   = 1  \]
%% where $a_1$, $a_2$, $a_3$, $a_4$ are four different real numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  163 (   6 equality;  18 variable)
%            Maximal formula depth :   21 (   7 average)
%            Number of connectives :  151 (   0   ~;   0   |;   6   &; 145   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   4   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    4 func;    2 numbers)

include('axioms.ax').

thf('A1/0_type',type,(
    'A1/0': $real )).

thf('A2/0_type',type,(
    'A2/0': $real )).

thf('A3/0_type',type,(
    'A3/0': $real )).

thf('A4/0_type',type,(
    'A4/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_xs: ( 'ListOf' @ $real )] :
        ( ( 'pairwise-distinct/1' @ $real @ ( 'cons/2' @ $real @ 'A1/0' @ ( 'cons/2' @ $real @ 'A2/0' @ ( 'cons/2' @ $real @ 'A3/0' @ ( 'cons/2' @ $real @ 'A4/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ? [V_X1: $real,V_X2: $real,V_X3: $real,V_X4: $real] :
            ( ( V_xs
              = ( 'cons/2' @ $real @ V_X1 @ ( 'cons/2' @ $real @ V_X2 @ ( 'cons/2' @ $real @ V_X3 @ ( 'cons/2' @ $real @ V_X4 @ ( 'nil/0' @ $real ) ) ) ) ) )
            & ( ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A1/0' @ 'A2/0' ) ) @ V_X2 ) @ ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A1/0' @ 'A3/0' ) ) @ V_X3 ) @ ( $product @ ( 'abs/1' @ ( $difference @ 'A1/0' @ 'A4/0' ) ) @ V_X4 ) ) )
              = 1.0 )
            & ( ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A2/0' @ 'A1/0' ) ) @ V_X1 ) @ ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A2/0' @ 'A3/0' ) ) @ V_X3 ) @ ( $product @ ( 'abs/1' @ ( $difference @ 'A2/0' @ 'A4/0' ) ) @ V_X4 ) ) )
              = 1.0 )
            & ( ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A3/0' @ 'A2/0' ) ) @ V_X2 ) @ ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A3/0' @ 'A1/0' ) ) @ V_X1 ) @ ( $product @ ( 'abs/1' @ ( $difference @ 'A3/0' @ 'A4/0' ) ) @ V_X4 ) ) )
              = 1.0 )
            & ( ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A4/0' @ 'A2/0' ) ) @ V_X2 ) @ ( $sum @ ( $product @ ( 'abs/1' @ ( $difference @ 'A4/0' @ 'A3/0' ) ) @ V_X3 ) @ ( $product @ ( 'abs/1' @ ( $difference @ 'A4/0' @ 'A1/0' ) ) @ V_X1 ) ) )
              = 1.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xs_dot_0: ( 'ListOf' @ $real )] :
      ( ( 'pairwise-distinct/1' @ $real @ ( 'cons/2' @ $real @ 'A1/0' @ ( 'cons/2' @ $real @ 'A2/0' @ ( 'cons/2' @ $real @ 'A3/0' @ ( 'cons/2' @ $real @ 'A4/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
      & ( V_xs_dot_0
        = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ ( $difference @ 'A1/0' @ 'A4/0' ) ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ ( $difference @ 'A1/0' @ 'A4/0' ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

