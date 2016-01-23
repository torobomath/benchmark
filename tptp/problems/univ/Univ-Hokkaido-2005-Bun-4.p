%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2005, Humanities Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-10-02
%%
%% <PROBLEM-TEXT>
%% Find the length of the side of the regular tetrahedron inscribed in a
%% sphere of the radius of $1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   2 equality;  13 variable)
%            Maximal formula depth :   15 (  11 average)
%            Number of connectives :   22 (   0   ~;   0   |;   2   &;  20   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_o: '3d.Point',V_a: '3d.Point',V_b: '3d.Point',V_c: '3d.Point',V_d: '3d.Point'] :
        ( ( '3d.is-inscribed-in/2' @ ( '3d.tetrahedron/4' @ V_a @ V_b @ V_c @ V_d ) @ ( '3d.sphere/2' @ V_o @ 1 ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_a @ V_b @ V_c @ V_d )
        & ( V_l
          = ( '3d.distance/2' @ V_a @ V_b ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( 'sqrt/1' @ 6 ) ) ) ),
    answer_to(p1_question,[])).
