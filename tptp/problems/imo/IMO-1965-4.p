%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Find all sets of four real numbers $x_1$, $x_2$, $x_3$, $x_4$ such that the sum
%% of any one and the product of the other three is equal to $2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (  10 equality;  26 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :   83 (   0   ~;   4   |;   4   &;  75   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_xyzw: 'ListOf' @ 'R'] :
      ? [V_x: 'R',V_y: 'R',V_z: 'R',V_w: 'R'] :
        ( ( V_xyzw
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ ( 'cons/2' @ V_w @ 'nil/0' ) ) ) ) )
        & ( ( '+/2' @ V_x @ ( '*/2' @ V_y @ ( '*/2' @ V_z @ V_w ) ) )
          = 2 )
        & ( ( '+/2' @ V_y @ ( '*/2' @ V_x @ ( '*/2' @ V_z @ V_w ) ) )
          = 2 )
        & ( ( '+/2' @ V_z @ ( '*/2' @ V_y @ ( '*/2' @ V_x @ V_w ) ) )
          = 2 )
        & ( ( '+/2' @ V_w @ ( '*/2' @ V_y @ ( '*/2' @ V_z @ V_x ) ) )
          = 2 ) ) )).

thf(p_answer,answer,(
    ^ [V_xyzw_dot_0: 'ListOf' @ 'R'] :
      ( ( V_xyzw_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) )
      | ( V_xyzw_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).
