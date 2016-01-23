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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  187 (  13 equality;  53 variable)
%            Maximal formula depth :   26 (  18 average)
%            Number of connectives :  158 (   1   ~;   3   |;  13   &; 140   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   22 (   0 sgn;   2   !;   2   ?;  14   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
        ( ( '<=/2' @ 0 @ V_k )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( 'integration/3'
                  @ ( 'fun/1'
                    @ ^ [V_theta: 'R'] :
                        ( '*/2' @ ( '-/2' @ ( '*/2' @ V_y @ ( '+/2' @ ( '*/2' @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_x @ 2 ) ) ) ) @ ( '^/2' @ ( '+/2' @ ( '*/2' @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_x @ 2 ) ) ) @ 2 ) ) @ ( 'cos/1' @ V_theta ) ) )
                  @ 0
                  @ ( '*/2' @ 2 @ 'Pi/0' ) )
                = ( '*/2' @ 2 @ ( '*/2' @ V_k @ 'Pi/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( '<=/2' @ 0 @ V_k )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( 'integration/3'
                  @ ( 'fun/1'
                    @ ^ [V_theta: 'R'] :
                        ( '*/2' @ ( '-/2' @ ( '*/2' @ V_y @ ( '+/2' @ ( '*/2' @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_x @ 2 ) ) ) ) @ ( '^/2' @ ( '+/2' @ ( '*/2' @ V_x @ ( 'cos/1' @ V_theta ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_x @ 2 ) ) ) @ 2 ) ) @ ( 'cos/1' @ V_theta ) ) )
                  @ 0
                  @ ( '*/2' @ 2 @ 'Pi/0' ) )
                = ( '*/2' @ 2 @ ( '*/2' @ V_k @ 'Pi/0' ) ) ) ) )
        & ? [V_P_dot_0: '2d.Point'] :
            ( ( '2d.on/2' @ V_P_dot_0 @ V_C )
            & ( '2d.on/2' @ V_P_dot_0 @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
        & ! [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_P @ V_C )
              & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_Q @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
           => ( V_P = V_Q ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( ( ( '>/2' @ V_k @ 0 )
        & ( V_C_dot_0
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( ( V_x_dot_1 != 0 )
                & ( ( '-/2' @ ( '*/2' @ V_x_dot_1 @ V_y_dot_1 ) @ ( '^/2' @ V_x_dot_1 @ 3 ) )
                  = ( '*/2' @ 2 @ V_k ) ) ) ) ) )
      | ( ( V_k = 0 )
        & ( V_C_dot_0
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( ( V_y_dot_0
                  = ( '^/2' @ V_x_dot_0 @ 2 ) )
                | ( V_x_dot_0 = 0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( ( '>/2' @ V_k @ 0 )
        & ( '</2' @ V_a_dot_0 @ ( '*/2' @ 3 @ ( '^/2' @ V_k @ ( '//2' @ 2 @ 3 ) ) ) ) )
      | ( ( V_k = 0 )
        & ( '<=/2' @ V_a_dot_0 @ 0 ) ) ) ),
    answer_to(p2_question,[])).
