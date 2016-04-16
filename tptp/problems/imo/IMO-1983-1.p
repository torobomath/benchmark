%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 1
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Find all functions $f$ defined on the set of positive real numbers which take
%% positive real values and satisfy the conditions:
%% ¥begin{flushleft}
%% (i)  $f(x f(y)) = y f(x)$ for all positive $x$, $y$;¥¥
%% (ii) $f(x)¥rightarrow 0$ as $x¥rightarrow ¥infty$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   59 (   4 equality;  28 variable)
%            Maximal formula depth :   14 (  11 average)
%            Number of connectives :   48 (   0   ~;   0   |;   5   &;  36   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   7   !;   1   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   3 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $real > $real )
    @ ^ [V_f: ( $real > $real )] :
        ( ! [V_x_dot_2: $real] :
            ( ( $lesseq @ V_x_dot_2 @ 0.0 )
           => ( 0.0
              = ( V_f @ V_x_dot_2 ) ) )
        & ! [V_x_dot_1: $real] :
            ( ( $less @ 0.0 @ V_x_dot_1 )
           => ( $less @ 0.0 @ ( V_f @ V_x_dot_1 ) ) )
        & ! [V_x_dot_0: $real,V_y: $real] :
            ( ( ( $less @ 0.0 @ V_x_dot_0 )
              & ( $less @ 0.0 @ V_y ) )
           => ( ( V_f @ ( $product @ V_x_dot_0 @ ( V_f @ V_y ) ) )
              = ( $product @ V_y @ ( V_f @ V_x_dot_0 ) ) ) )
        & ! [V_epsilon: $real] :
            ( ( $less @ 0.0 @ V_epsilon )
           => ? [V_M: $real] :
              ! [V_x: $real] :
                ( ( $less @ V_M @ V_x )
               => ( $less @ ( V_f @ V_x ) @ V_epsilon ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $real > $real )] :
    ! [V_x_dot_3: $real] :
      ( ( ( $greater @ V_x_dot_3 @ 0.0 )
       => ( ( V_f_dot_0 @ V_x_dot_3 )
          = ( $quotient @ 1.0 @ V_x_dot_3 ) ) )
      & ( ( $lesseq @ V_x_dot_3 @ 0.0 )
       => ( ( V_f_dot_0 @ V_x_dot_3 )
          = 0.0 ) ) ) ),
    answer_to(p_question,[])).

