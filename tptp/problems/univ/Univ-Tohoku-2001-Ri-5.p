%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Science Course, Problem 5
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Assume that the complex numbers $z = x + y i$ and $w = u + v i$,
%% where $x$, $y$, $u$, and $v$ are real numbers, satisfy
%% $|z| = |w| = 1$ and $y v < 0$. Represent the necessary and sufficient
%% condition such that $|1 + z + w| < 1$ using $x$ and $u$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   6 equality;  24 variable)
%            Maximal formula depth :   21 (  17 average)
%            Number of connectives :   54 (   0   ~;   0   |;  11   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_xu: 'ListOf' @ 'R'] :
      ? [V_z: 'complex.Complex',V_w: 'complex.Complex',V_x: 'R',V_y: 'R',V_u: 'R',V_v: 'R'] :
        ( ( V_z
          = ( 'complex.complex/2' @ V_x @ V_y ) )
        & ( V_w
          = ( 'complex.complex/2' @ V_u @ V_v ) )
        & ( 1
          = ( 'complex.abs/1' @ V_z ) )
        & ( 1
          = ( 'complex.abs/1' @ V_w ) )
        & ( '>/2' @ 0 @ ( '*/2' @ V_y @ V_v ) )
        & ( '</2' @ ( 'complex.abs/1' @ ( 'complex.+/2' @ ( 'complex.real->complex/1' @ 1 ) @ ( 'complex.+/2' @ V_z @ V_w ) ) ) @ 1 )
        & ( V_xu
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_u @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xu_dot_0: 'ListOf' @ 'R'] :
    ? [V_x_dot_0: 'R',V_u_dot_0: 'R'] :
      ( ( V_xu_dot_0
        = ( 'cons/2' @ V_x_dot_0 @ ( 'cons/2' @ V_u_dot_0 @ 'nil/0' ) ) )
      & ( '</2' @ ( '-/1' @ 1 ) @ V_x_dot_0 )
      & ( '</2' @ V_x_dot_0 @ 1 )
      & ( '</2' @ ( '-/1' @ 1 ) @ V_u_dot_0 )
      & ( '</2' @ V_u_dot_0 @ 1 )
      & ( '</2' @ ( '+/2' @ V_x_dot_0 @ V_u_dot_0 ) @ 0 ) ) ),
    answer_to(p_question,[])).
