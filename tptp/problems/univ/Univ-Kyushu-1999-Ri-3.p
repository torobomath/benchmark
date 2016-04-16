%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 1999, Science Course, Problem 3
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-01-25
%%
%% <PROBLEM-TEXT>
%% (1) For the real number $k\ge 0$, find the equation of the curve that
%% satisfies
%% $\int_0^{2 {\pi}}\{y(x\cos {\theta} +\frac{1}{2} x^2)-(x\cos {\theta} +\frac{1}{2} x^2)^2\}\cos {\theta} d {\theta} = 2 k {\pi}$
%% on the $x y$ plane.
%%
%% (2) Find the range of the value of the real number $a$ such that the
%% curve found in (1) and the straight line $y = a$ have only one common
%% point.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  195 (  13 equality;  43 variable)
%            Maximal formula depth :   26 (  15 average)
%            Number of connectives :  166 (   1   ~;   3   |;  13   &; 148   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   2   !;   2   ?;  14   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   3 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('k/0_type',type,(
    'k/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( ( $lesseq @ 0.0 @ 'k/0' )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( 'integration/3'
                  @ ( 'fun/1'
                    @ ^ [V_theta: $real] :
                        ( $product @ ( $difference @ ( $product @ V_y @ ( $sum @ ( $product @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) ) ) @ ( '^/2' @ ( $sum @ ( $product @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) ) @ 2.0 ) ) @ ( 'cos/1' @ V_theta ) ) )
                  @ 0.0
                  @ ( $product @ 2.0 @ 'Pi/0' ) )
                = ( $product @ 2.0 @ ( $product @ 'k/0' @ 'Pi/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( $lesseq @ 0.0 @ 'k/0' )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( 'integration/3'
                  @ ( 'fun/1'
                    @ ^ [V_theta: $real] :
                        ( $product @ ( $difference @ ( $product @ V_y @ ( $sum @ ( $product @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) ) ) @ ( '^/2' @ ( $sum @ ( $product @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) ) @ 2.0 ) ) @ ( 'cos/1' @ V_theta ) ) )
                  @ 0.0
                  @ ( $product @ 2.0 @ 'Pi/0' ) )
                = ( $product @ 2.0 @ ( $product @ 'k/0' @ 'Pi/0' ) ) ) ) )
        & ? [V_P_dot_0: '2d.Point'] :
            ( ( '2d.on/2' @ V_P_dot_0 @ V_C )
            & ( '2d.on/2' @ V_P_dot_0 @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ! [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_P @ V_C )
              & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_Q @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
           => ( V_P = V_Q ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( ( ( $greater @ 'k/0' @ 0.0 )
        & ( V_C_dot_0
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( ( V_x_dot_1 != 0.0 )
                & ( ( $difference @ ( $product @ V_x_dot_1 @ V_y_dot_1 ) @ ( '^/2' @ V_x_dot_1 @ 3.0 ) )
                  = ( $product @ 2.0 @ 'k/0' ) ) ) ) ) )
      | ( ( 'k/0' = 0.0 )
        & ( V_C_dot_0
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( ( V_y_dot_0
                  = ( '^/2' @ V_x_dot_0 @ 2.0 ) )
                | ( V_x_dot_0 = 0.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( ( $greater @ 'k/0' @ 0.0 )
        & ( $less @ V_a_dot_0 @ ( $product @ 3.0 @ ( '^/2' @ 'k/0' @ ( $quotient @ 2.0 @ 3.0 ) ) ) ) )
      | ( ( 'k/0' = 0.0 )
        & ( $lesseq @ V_a_dot_0 @ 0.0 ) ) ) ),
    answer_to(p2_question,[])).

