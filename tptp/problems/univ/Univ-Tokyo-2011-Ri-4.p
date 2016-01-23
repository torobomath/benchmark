%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Science Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-02-18

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   9 equality;  29 variable)
%            Maximal formula depth :   24 (  20 average)
%            Number of connectives :   74 (   1   ~;   0   |;  10   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_T: '2d.Shape'] :
        ( V_T
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_G: '2d.Point'] :
            ? [V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_C: '2d.Shape',V_a: 'R',V_b: 'R'] :
              ( ( V_P
                = ( '2d.point/2' @ ( '//2' @ 1 @ 2 ) @ ( '//2' @ 1 @ 4 ) ) )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
              & ( V_Q
                = ( '2d.point/2' @ V_a @ ( '^/2' @ V_a @ 2 ) ) )
              & ( V_R
                = ( '2d.point/2' @ V_b @ ( '^/2' @ V_b @ 2 ) ) )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_R @ V_C )
              & ( '2d.is-triangle/3' @ V_P @ V_Q @ V_R )
              & ( ( '2d.distance/2' @ V_P @ V_Q )
                = ( '2d.distance/2' @ V_P @ V_R ) )
              & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_T_dot_0: '2d.Shape'] :
      ( V_T_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_G_dot_0: '2d.Point'] :
            ( ( ( '2d.x-coord/1' @ V_G_dot_0 )
             != ( '//2' @ 1 @ 6 ) )
            & ( ( '2d.y-coord/1' @ V_G_dot_0 )
              = ( '-/2' @ ( '//2' @ 1 @ ( '*/2' @ 9 @ ( '-/2' @ ( '2d.x-coord/1' @ V_G_dot_0 ) @ ( '//2' @ 1 @ 6 ) ) ) ) @ ( '//2' @ 1 @ 12 ) ) )
            & ( '</2' @ ( '//2' @ 1 @ 4 ) @ ( '2d.y-coord/1' @ V_G_dot_0 ) ) ) ) ) ),
    answer_to(p_question,[])).
