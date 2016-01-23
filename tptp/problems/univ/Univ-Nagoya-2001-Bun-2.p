%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2001, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-06
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be constants, where $a > 0$.
%%
%% (1) Prove that there exists only one tangent to the curve
%% $y = - a x^3 + b x + c$ at the point $(0, t)$ ( $t$ is a real
%% number).
%%
%% (2) Find the range of $t$ such that the tangent described in (1) has
%% a positive inclination.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  117 (   1 equality;  40 variable)
%            Maximal formula depth :   22 (  17 average)
%            Number of connectives :  112 (   0   ~;   0   |;  13   &;  97   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   16 (   2 sgn;   4   !;   3   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( '</2' @ 0 @ V_a )
     => ? [V_l: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l )
          & ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ V_a ) @ 'nil/0' ) ) ) ) ) ) @ V_l )
          & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ V_t ) @ V_l )
          & ! [V_m: '2d.Shape'] :
              ( ( ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ V_a ) @ 'nil/0' ) ) ) ) ) ) @ V_m )
                & ( '2d.line-type/1' @ V_m )
                & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ V_t ) @ V_m ) )
             => ( V_l = V_m ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_l: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ V_a ) @ 'nil/0' ) ) ) ) ) ) @ V_l )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ V_t ) @ V_l )
        & ( '</2' @ 0 @ V_a )
        & ? [V_s: 'R'] :
            ( ( '</2' @ 0 @ V_s )
            & ( '2d.is-slope-of/2' @ V_s @ V_l ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( '>/2' @ V_b @ 0 )
      & ( '</2' @ 0 @ V_a )
      & ( '</2' @ ( '-/2' @ V_c @ ( '*/2' @ ( '//2' @ ( '*/2' @ 2 @ V_b ) @ 3 ) @ ( 'sqrt/1' @ ( '//2' @ V_b @ ( '*/2' @ 3 @ V_a ) ) ) ) ) @ V_t_dot_0 )
      & ( '</2' @ V_t_dot_0 @ ( '+/2' @ V_c @ ( '*/2' @ ( '//2' @ ( '*/2' @ 2 @ V_b ) @ 3 ) @ ( 'sqrt/1' @ ( '//2' @ V_b @ ( '*/2' @ 3 @ V_a ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).
