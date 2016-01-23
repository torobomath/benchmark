%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-06
%%
%% <PROBLEM-TEXT>
%% Determine all finite sets $S$ of at least three points in the plane which satisfy
%% the following condition:
%% ¥begin{flushleft}
%% for any two distinct points $A$ and $B$ in $S$, the perpendicular bisector of the
%% line segment $AB$ is an axis of symmetry for $S$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   4 equality;  18 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   38 (   0   ~;   0   |;   4   &;  31   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    7 (   0 sgn;   4   !;   1   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_y: 'Z'] :
      ? [V_f: 'Z' > 'Z'] :
        ( ! [V_n_dot_0: 'Z'] :
            ( ( 'int.<=/2' @ V_n_dot_0 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_n_dot_0 )
              = 0 ) )
        & ! [V_n: 'Z'] :
            ( ( 'int.>/2' @ V_n @ 0 )
           => ( 'int.>/2' @ ( 'LamApp/2' @ V_f @ V_n ) @ 0 ) )
        & ! [V_s: 'Z',V_t: 'Z'] :
            ( ( ( 'int.</2' @ 0 @ V_s )
              & ( 'int.</2' @ 0 @ V_t ) )
           => ( ( 'LamApp/2' @ V_f @ ( 'int.*/2' @ ( 'int.^/2' @ V_t @ 2 ) @ ( 'LamApp/2' @ V_f @ V_s ) ) )
              = ( 'int.*/2' @ V_s @ ( 'int.^/2' @ ( 'LamApp/2' @ V_f @ V_t ) @ 2 ) ) ) )
        & ( V_y
          = ( 'LamApp/2' @ V_f @ 1998 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_y_dot_0: 'Z'] : ( V_y_dot_0 = 120 ) ),
    answer_to(p_question,[])).
