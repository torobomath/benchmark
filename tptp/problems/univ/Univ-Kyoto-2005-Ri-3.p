%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2005, Science Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-28
%%
%% <PROBLEM-TEXT>
%% Let ${\alpha}$, ${\beta}$, and ${\gamma}$ be the different complex
%% numbers satisfying
%% ${\alpha}+{\beta}+{\gamma}={\alpha}^2+{\beta}^2+{\gamma}^2=0$. Find
%% the triangle obtained by connecting the three points ${\alpha}$,
%% ${\beta}$, and ${\gamma}$ on the complex plane, where complex planes
%% are also called complex number plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   79 (  10 equality;  34 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   63 (   6   ~;   0   |;  10   &;  47   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    0 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_abc: '2d.Shape'] :
      ? [V_a: 'complex.Complex',V_b: 'complex.Complex',V_c: 'complex.Complex'] :
        ( ( V_a != V_b )
        & ( V_b != V_c )
        & ( V_c != V_a )
        & ( ( 'complex.+/2' @ V_a @ ( 'complex.+/2' @ V_b @ V_c ) )
          = ( 'complex.+/2' @ ( 'complex.^/2' @ V_a @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.^/2' @ V_b @ 2.0 ) @ ( 'complex.^/2' @ V_c @ 2.0 ) ) ) )
        & ( V_abc
          = ( '2d.triangle/3' @ ( 'complex.complex->point/1' @ V_a ) @ ( 'complex.complex->point/1' @ V_b ) @ ( 'complex.complex->point/1' @ V_c ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_abc_dot_0: '2d.Shape'] :
    ? [V_a_dot_0: 'complex.Complex',V_b_dot_0: 'complex.Complex',V_c_dot_0: 'complex.Complex'] :
      ( ( V_a_dot_0 != V_b_dot_0 )
      & ( V_b_dot_0 != V_c_dot_0 )
      & ( V_c_dot_0 != V_a_dot_0 )
      & ( ( 'complex.+/2' @ V_a_dot_0 @ ( 'complex.+/2' @ V_b_dot_0 @ V_c_dot_0 ) )
        = ( 'complex.+/2' @ ( 'complex.^/2' @ V_a_dot_0 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.^/2' @ V_b_dot_0 @ 2.0 ) @ ( 'complex.^/2' @ V_c_dot_0 @ 2.0 ) ) ) )
      & ( V_abc_dot_0
        = ( '2d.triangle/3' @ ( 'complex.complex->point/1' @ V_a_dot_0 ) @ ( 'complex.complex->point/1' @ V_b_dot_0 ) @ ( 'complex.complex->point/1' @ V_c_dot_0 ) ) )
      & ( '2d.is-equilateral-triangle/1' @ V_abc_dot_0 )
      & ( '2d.is-center-of-gravity-of/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ V_abc_dot_0 ) ) ),
    answer_to(p_question,[])).

