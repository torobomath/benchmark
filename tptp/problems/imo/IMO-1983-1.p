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
%            Number of atoms       :   65 (   4 equality;  28 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   55 (   0   ~;   0   |;   5   &;  43   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :   10 (   0 sgn;   7   !;   1   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R' > 'R'] :
        ( ! [V_x_dot_2: 'R'] :
            ( ( '<=/2' @ V_x_dot_2 @ 0 )
           => ( 0
              = ( 'LamApp/2' @ V_f @ V_x_dot_2 ) ) )
        & ! [V_x_dot_1: 'R'] :
            ( ( '</2' @ 0 @ V_x_dot_1 )
           => ( '</2' @ 0 @ ( 'LamApp/2' @ V_f @ V_x_dot_1 ) ) )
        & ! [V_x_dot_0: 'R',V_y: 'R'] :
            ( ( ( '</2' @ 0 @ V_x_dot_0 )
              & ( '</2' @ 0 @ V_y ) )
           => ( ( 'LamApp/2' @ V_f @ ( '*/2' @ V_x_dot_0 @ ( 'LamApp/2' @ V_f @ V_y ) ) )
              = ( '*/2' @ V_y @ ( 'LamApp/2' @ V_f @ V_x_dot_0 ) ) ) )
        & ! [V_epsilon: 'R'] :
            ( ( '</2' @ 0 @ V_epsilon )
           => ? [V_M: 'R'] :
              ! [V_x: 'R'] :
                ( ( '</2' @ V_M @ V_x )
               => ( '</2' @ ( 'LamApp/2' @ V_f @ V_x ) @ V_epsilon ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R' > 'R'] :
    ! [V_x_dot_3: 'R'] :
      ( ( ( '>/2' @ V_x_dot_3 @ 0 )
       => ( ( 'LamApp/2' @ V_f_dot_0 @ V_x_dot_3 )
          = ( '//2' @ 1 @ V_x_dot_3 ) ) )
      & ( ( '<=/2' @ V_x_dot_3 @ 0 )
       => ( ( 'LamApp/2' @ V_f_dot_0 @ V_x_dot_3 )
          = 0 ) ) ) ),
    answer_to(p_question,[])).
