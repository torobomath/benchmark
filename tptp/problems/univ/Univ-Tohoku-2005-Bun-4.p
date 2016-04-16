%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2005, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% The two curves $C$: $y = - x^2$ and $D$: $y =(x - a)^2 + b$ are in
%% contact with each other at a point. Find the value of the real
%% numbers $a$ and $b$ that give the minimum value of the area $S$ of
%% the region enclosed by the curves $D$ and $E$:
%% $y =\frac{1}{2}(x - 1)^2 + 1$ and $S$ at that time.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  120 (   9 equality;  30 variable)
%            Maximal formula depth :   32 (  22 average)
%            Number of connectives :  103 (   0   ~;   0   |;   9   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;  10   ?;   7   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   0 pred;    5 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abS: ( 'ListOf' @ $real )] :
      ? [V_S_set: ( 'SetOf' @ $real ),V_S_min: $real,V_a_opt: $real,V_b_opt: $real,V_D_opt: '2d.Shape',V_C: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_abS
          = ( 'cons/2' @ $real @ V_a_opt @ ( 'cons/2' @ $real @ V_b_opt @ ( 'cons/2' @ $real @ V_S_min @ ( 'nil/0' @ $real ) ) ) ) )
        & ( 'minimum/2' @ V_S_set @ V_S_min )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_2: $real] :
                  ( $uminus @ ( '^/2' @ V_x_dot_2 @ 2.0 ) ) ) ) )
        & ( V_E
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_1: $real] :
                  ( $sum @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ ( $difference @ V_x_dot_1 @ 1.0 ) @ 2.0 ) ) @ 1.0 ) ) ) )
        & ( V_S_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a: $real,V_b: $real,V_D: '2d.Shape'] :
                ( ( V_D
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: $real] :
                          ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ V_a ) @ 2.0 ) @ V_b ) ) ) )
                & ( '2d.tangent/2' @ V_C @ V_D )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_D @ ( 'cons/2' @ '2d.Shape' @ V_E @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )
        & ( V_D_opt
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $sum @ ( '^/2' @ ( $difference @ V_x @ V_a_opt ) @ 2.0 ) @ V_b_opt ) ) ) )
        & ( '2d.tangent/2' @ V_C @ V_D_opt )
        & ( V_S_min
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_D_opt @ ( 'cons/2' @ '2d.Shape' @ V_E @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_abS_dot_0: ( 'ListOf' @ $real )] :
      ( V_abS_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 2.0 @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ -2.0 @ 9.0 ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 32.0 @ 27.0 ) @ ( 'sqrt/1' @ 6.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p_question,[])).

