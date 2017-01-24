%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Find all solutions $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ of the system
%% \[   x_5 + x_2 = y x_1   \]
%% \[   x_1 + x_3 = y x_2   \]
%% \[   x_2 + x_4 = y x_3   \]
%% \[   x_3 + x_5 = y x_4   \]
%% \[   x_4 + x_1 = y x_5,  \]
%% where $y$ is a parameter.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  142 (  11 equality;  37 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :  120 (   0   ~;   2   |;   7   &; 111   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   1   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_x1x2x3x4x5: ( 'ListOf' @ $real )] :
      ? [V_x1: $real,V_x2: $real,V_x3: $real,V_x4: $real,V_x5: $real] :
        ( ( V_x1x2x3x4x5
          = ( 'cons/2' @ $real @ V_x1 @ ( 'cons/2' @ $real @ V_x2 @ ( 'cons/2' @ $real @ V_x3 @ ( 'cons/2' @ $real @ V_x4 @ ( 'cons/2' @ $real @ V_x5 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( ( $sum @ V_x2 @ V_x5 )
          = ( $product @ 'y/0' @ V_x1 ) )
        & ( ( $sum @ V_x1 @ V_x3 )
          = ( $product @ 'y/0' @ V_x2 ) )
        & ( ( $sum @ V_x2 @ V_x4 )
          = ( $product @ 'y/0' @ V_x3 ) )
        & ( ( $sum @ V_x3 @ V_x5 )
          = ( $product @ 'y/0' @ V_x4 ) )
        & ( ( $sum @ V_x4 @ V_x1 )
          = ( $product @ 'y/0' @ V_x5 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x1x2x3x4x5_dot_0: ( 'ListOf' @ $real )] :
      ( ( ( ( $difference @ ( $sum @ ( '^/2' @ 'y/0' @ 2.0 ) @ 'y/0' ) @ 1.0 )
          = 0.0 )
        & ? [V_s_dot_0: $real,V_t: $real] :
            ( V_x1x2x3x4x5_dot_0
            = ( 'cons/2' @ $real @ V_s_dot_0 @ ( 'cons/2' @ $real @ V_t @ ( 'cons/2' @ $real @ ( $sum @ ( $uminus @ V_s_dot_0 ) @ ( $product @ 'y/0' @ V_t ) ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $sum @ ( $product @ 'y/0' @ V_s_dot_0 ) @ ( $product @ 'y/0' @ V_t ) ) ) @ ( 'cons/2' @ $real @ ( $difference @ ( $product @ 'y/0' @ V_s_dot_0 ) @ V_t ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      | ( ( 'y/0' = 2.0 )
        & ? [V_s: $real] :
            ( V_x1x2x3x4x5_dot_0
            = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_s @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      | ( V_x1x2x3x4x5_dot_0
        = ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

