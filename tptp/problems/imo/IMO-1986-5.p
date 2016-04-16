%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1986, Problem 5
%% SCORE:     7
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-14
%%
%% <PROBLEM-TEXT>
%% Find all functions $f$, defined on the non-negative real numbers and taking
%% nonnegative real values, such that:
%% ¥begin{flushleft}
%% (i)   $f(x f(y))f(y) = f(x + y)$ for all $x$, $y$ $¥ge 0$,¥¥
%% (ii)  $f(2) = 0$,¥¥
%% (iii) $f(x) ¥neq 0$ for $0 ¥le x < 2$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   72 (   5 equality;  27 variable)
%            Maximal formula depth :   15 (  14 average)
%            Number of connectives :   60 (   1   ~;   0   |;   7   &;  48   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :   10 (   2 sgn;   5   !;   0   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   3 pred;    4 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $real > $real )
    @ ^ [V_f: ( $real > $real )] :
        ( ! [V_x_dot_2: $real] :
            ( ( $less @ V_x_dot_2 @ 0.0 )
           => ( ( V_f @ V_x_dot_2 )
              = 0.0 ) )
        & ! [V_x_dot_1: $real] :
            ( ( $greatereq @ V_x_dot_1 @ 0.0 )
           => ( $greatereq @ ( V_f @ V_x_dot_1 ) @ 0.0 ) )
        & ! [V_x_dot_0: $real,V_y: $real] :
            ( ( ( $greatereq @ V_x_dot_0 @ 0.0 )
              & ( $greatereq @ V_y @ 0.0 ) )
           => ( ( $product @ ( V_f @ ( $product @ V_x_dot_0 @ ( V_f @ V_y ) ) ) @ ( V_f @ V_y ) )
              = ( V_f @ ( $sum @ V_x_dot_0 @ V_y ) ) ) )
        & ( ( V_f @ 2.0 )
          = 0.0 )
        & ! [V_x: $real] :
            ( ( ( $lesseq @ 0.0 @ V_x )
              & ( $less @ V_x @ 2.0 ) )
           => ( ( V_f @ V_x )
             != 0.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $real > $real )] :
      ( V_f_dot_0
      = ( ^ [V_x_dot_3: $real] :
            ( 'if/3' @ $real
            @ ^ [V___dot_0: 'Unit'] :
                ( $less @ V_x_dot_3 @ 0.0 )
            @ 0.0
            @ ( 'if/3' @ $real
              @ ^ [V__: 'Unit'] :
                  ( ( $lesseq @ 0.0 @ V_x_dot_3 )
                  & ( $less @ V_x_dot_3 @ 2.0 ) )
              @ ( $quotient @ 2.0 @ ( $difference @ 2.0 @ V_x_dot_3 ) )
              @ 0.0 ) ) ) ) ),
    answer_to(p_question,[])).

