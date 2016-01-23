%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 3
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Find the area of the region enclosed by the graphs of $y=x$ and
%% $y=|\frac{3}{4} x^2 - 3|-2$ on the $xy$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   4 equality;   6 variable)
%            Maximal formula depth :   21 (  13 average)
%            Number of connectives :   26 (   0   ~;   0   |;   0   &;  26   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.shape-enclosed-by/1'
            @ ( 'cons/2'
              @ ( '2d.shape-of-cpfun/1'
                @ ^ [V_P_dot_0: '2d.Point'] :
                    ( ( '2d.y-coord/1' @ V_P_dot_0 )
                    = ( '2d.x-coord/1' @ V_P_dot_0 ) ) )
              @ ( 'cons/2'
                @ ( '2d.shape-of-cpfun/1'
                  @ ^ [V_P: '2d.Point'] :
                      ( ( '2d.y-coord/1' @ V_P )
                      = ( '-/2' @ ( 'abs/1' @ ( '-/2' @ ( '*/2' @ ( '//2' @ 3 @ 4 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) ) @ 3 ) ) @ 2 ) ) )
                @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 208 @ 27 ) ) ),
    answer_to(p1_question,[])).
