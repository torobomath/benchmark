%% DOMAIN:    Geometry, quadrangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1976, Problem 1
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% In a plane convex quadrilateral of area $32$, the sum of the lengths of two
%% opposite sides and one diagonal is $16$. Determine all possible lengths of the
%% other diagonal.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   42 (   4 equality;  18 variable)
%            Maximal formula depth :   17 (  11 average)
%            Number of connectives :   32 (   0   ~;   0   |;   3   &;  29   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_L: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '2d.area-of/1' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
          = 32 )
        & ( ( '+/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '+/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) ) )
          = 16 )
        & ( V_L
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_L_dot_0: 'R'] :
      ( V_L_dot_0
      = ( '*/2' @ 8 @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p_question,[])).
