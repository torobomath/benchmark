%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Find all sets of four real numbers $x_1$, $x_2$, $x_3$, $x_4$ such that the sum
%% of any one and the product of the other three is equal to $2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  135 (  10 equality;  26 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :  115 (   0   ~;   4   |;   4   &; 107   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_xyzw: ( 'ListOf' @ $real )] :
      ? [V_x: $real,V_y: $real,V_z: $real,V_w: $real] :
        ( ( V_xyzw
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'cons/2' @ $real @ V_w @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( ( $sum @ V_x @ ( $product @ V_y @ ( $product @ V_z @ V_w ) ) )
          = 2.0 )
        & ( ( $sum @ V_y @ ( $product @ V_x @ ( $product @ V_z @ V_w ) ) )
          = 2.0 )
        & ( ( $sum @ V_z @ ( $product @ V_y @ ( $product @ V_x @ V_w ) ) )
          = 2.0 )
        & ( ( $sum @ V_w @ ( $product @ V_y @ ( $product @ V_z @ V_x ) ) )
          = 2.0 ) ) )).

thf(p_answer,answer,(
    ^ [V_xyzw_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_xyzw_dot_0
        = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

