%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2011, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Let $C$ be the point that internally divides the side $AB$ of the
%% triangle $OAB$ in a ratio of $1 : 2$. Assume that the moving point
%% $D$ satisfies $\vec{OD} = x\vec{OA}$ $(x\ge 1)$, and let $E$ be the
%% intersection of the straight lines $CD$ and $OB$.
%%
%% (1) When the real number $y$ is defined as $\vec{OE} = y\vec{OB}$,
%% prove that the following equation is true:
%% $\frac{2}{x} +\frac{1}{y} = 3$
%%
%% (2) Let $S$ be the area of the triangle $OAB$, and let $T$ be the
%% area of the triangle $ODE$, then find the maximum value of
%% $\frac{S}{T}$ and $x$ that gives the value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  182 (  14 equality;  84 variable)
%            Maximal formula depth :   36 (  21 average)
%            Number of connectives :  154 (   0   ~;   0   |;  21   &; 132   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   8   !;  17   ?;   3   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_x: $real,V_y: $real] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_A @ V_B ) @ 1.0 @ 2.0 )
        & ( $greatereq @ V_x @ 1.0 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_x @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( '2d.on/2' @ V_E @ ( '2d.intersection/2' @ ( '2d.line/2' @ V_C @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) ) )
        & ( ( '2d.vec/2' @ V_O @ V_E )
          = ( '2d.sv*/2' @ V_y @ ( '2d.vec/2' @ V_O @ V_B ) ) ) )
     => ( ( $sum @ ( $quotient @ 2.0 @ V_x ) @ ( $quotient @ 1.0 @ V_y ) )
        = 3.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_Ux: ( 'ListOf' @ $real )] :
      ? [V_U_set: ( 'SetOf' @ $real ),V_U_max: $real,V_x_opt: $real,V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_S: $real,V_T: $real] :
        ( ( 'maximum/2' @ V_U_set @ V_U_max )
        & ( V_U_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_U: $real] :
              ? [V_C_dot_0: '2d.Point',V_D_dot_0: '2d.Point',V_E_dot_0: '2d.Point',V_x: $real,V_S_dot_0: $real,V_T_dot_0: $real] :
                ( ( '2d.divide-internally/4' @ V_C_dot_0 @ ( '2d.seg/2' @ V_A @ V_B ) @ 1.0 @ 2.0 )
                & ( $greatereq @ V_x @ 1.0 )
                & ( ( '2d.vec/2' @ V_O @ V_D_dot_0 )
                  = ( '2d.sv*/2' @ V_x @ ( '2d.vec/2' @ V_O @ V_A ) ) )
                & ( '2d.on/2' @ V_E_dot_0 @ ( '2d.intersection/2' @ ( '2d.line/2' @ V_C_dot_0 @ V_D_dot_0 ) @ ( '2d.line/2' @ V_O @ V_B ) ) )
                & ( V_S_dot_0
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_O @ V_A @ V_B ) ) )
                & ( V_T_dot_0
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_O @ V_D_dot_0 @ V_E_dot_0 ) ) )
                & ( V_U
                  = ( $quotient @ V_S_dot_0 @ V_T_dot_0 ) ) ) ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_A @ V_B ) @ 1.0 @ 2.0 )
        & ( $greatereq @ V_x_opt @ 1.0 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_x_opt @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( '2d.on/2' @ V_E @ ( '2d.intersection/2' @ ( '2d.line/2' @ V_C @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_O @ V_A @ V_B ) ) )
        & ( V_T
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_O @ V_D @ V_E ) ) )
        & ( V_U_max
          = ( $quotient @ V_S @ V_T ) )
        & ( V_Ux
          = ( 'cons/2' @ $real @ V_U_max @ ( 'cons/2' @ $real @ V_x_opt @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_Ux_dot_0: ( 'ListOf' @ $real )] :
      ( V_Ux_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 9.0 @ 8.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 4.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

