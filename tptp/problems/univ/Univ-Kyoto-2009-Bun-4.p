%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2009, Humanities Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-28
%%
%% <PROBLEM-TEXT>
%% Let $\triangle OBC$ be the triangle obtained by turning back the
%% acute triangle $\triangle OAB$ with respect to the side $OB$, let
%% $\triangle OCD$ be the triangle obtained by turning back
%% $\triangle OBC$ with respect to the side $OC$, and let
%% $\triangle ODE$ be the triangle obtained by turning back
%% $\triangle OCD$ with respect to the side $OD$. When the area ratio of
%% $\triangle OAB$ and $\triangle OBE$ is $2:3$, find the value of
%% $\sin\angle AOB$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   3 equality;  19 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   44 (   0   ~;   0   |;   5   &;  39   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
        ( ( '2d.is-acute-triangle/1' @ ( '2d.triangle/3' @ '2d.origin/0' @ V_A @ V_B ) )
        & ( '2d.line-symmetry/3' @ V_A @ V_C @ ( '2d.line/2' @ '2d.origin/0' @ V_B ) )
        & ( '2d.line-symmetry/3' @ V_B @ V_D @ ( '2d.line/2' @ '2d.origin/0' @ V_C ) )
        & ( '2d.line-symmetry/3' @ V_C @ V_E @ ( '2d.line/2' @ '2d.origin/0' @ V_D ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ '2d.origin/0' @ V_A @ V_B ) )
          = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ '2d.origin/0' @ V_B @ V_E ) ) ) )
        & ( V_x
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_A @ '2d.origin/0' @ V_B ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) ) ),
    answer_to(p1_question,[])).
