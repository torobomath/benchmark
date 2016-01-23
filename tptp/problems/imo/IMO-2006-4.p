%% DOMAIN:    Number Theory, equations
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2006, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-28
%%
%% <PROBLEM-TEXT>
%% Determine all pairs (x, y) of integers such that
%% 1 + 2^x + 2^(2x+1) = y^2.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   32 (   3 equality;   7 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   26 (   0   ~;   0   |;   1   &;  25   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_xy: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_xy
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( ( 'int.+/2' @ 1 @ ( 'int.+/2' @ ( 'int.^/2' @ 2 @ V_x ) @ ( 'int.^/2' @ 2 @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x ) @ 1 ) ) ) )
          = ( 'int.^/2' @ V_y @ 2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xy_dot_0: 'ListOf' @ 'Z'] :
      ( V_xy_dot_0
      = ( 'cons/2' @ 0 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ),
    answer_to(p_question,[])).
