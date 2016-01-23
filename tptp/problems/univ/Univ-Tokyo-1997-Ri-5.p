%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Science Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number that satisfies $0<a<\frac{1}{4}$. Find the
%% volume of the solid of revolution formed by rotating the region
%% defined by the inequality $y^2\le x^2(1-x^2)-a$ on the $xy$ plane
%% around the $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   3 equality;  12 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   4   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    6 (   1 sgn;   0   !;   1   ?;   3   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_D: '3d.Shape'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ ( '//2' @ 1 @ 4 ) )
        & ( V_D
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
                ( ( '3d.on/2' @ V_p @ '3d.xy-plane/0' )
                & ( '<=/2' @ ( '^/2' @ ( '3d.y-coord/1' @ V_p ) @ 2 ) @ ( '-/2' @ ( '*/2' @ ( '^/2' @ ( '3d.x-coord/1' @ V_p ) @ 2 ) @ ( '-/2' @ 1 @ ( '^/2' @ ( '3d.x-coord/1' @ V_p ) @ 2 ) ) ) @ V_a ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D @ '3d.y-axis/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ ( '-/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) @ 4 ) @ ( '^/2' @ 'Pi/0' @ 2 ) ) ) ),
    answer_to(p_question,[])).
