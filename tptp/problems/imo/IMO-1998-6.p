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
%            Number of atoms       :   43 (   4 equality;  18 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   33 (   0   ~;   0   |;   4   &;  26   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   4   !;   1   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   3 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_y: $int] :
      ? [V_f: ( $int > $int )] :
        ( ! [V_n_dot_0: $int] :
            ( ( $lesseq @ V_n_dot_0 @ 0 )
           => ( ( V_f @ V_n_dot_0 )
              = 0 ) )
        & ! [V_n: $int] :
            ( ( $greater @ V_n @ 0 )
           => ( $greater @ ( V_f @ V_n ) @ 0 ) )
        & ! [V_s: $int,V_t: $int] :
            ( ( ( $less @ 0 @ V_s )
              & ( $less @ 0 @ V_t ) )
           => ( ( V_f @ ( $product @ ( 'int.^/2' @ V_t @ 2 ) @ ( V_f @ V_s ) ) )
              = ( $product @ V_s @ ( 'int.^/2' @ ( V_f @ V_t ) @ 2 ) ) ) )
        & ( V_y
          = ( V_f @ 1998 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_y_dot_0: $int] : ( V_y_dot_0 = 120 ) ),
    answer_to(p_question,[])).

