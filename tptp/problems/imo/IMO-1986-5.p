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
%            Number of atoms       :   85 (   5 equality;  28 variable)
%            Maximal formula depth :   16 (  15 average)
%            Number of connectives :   74 (   1   ~;   0   |;   7   &;  62   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   11 (   3 sgn;   5   !;   0   ?;   6   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R' > 'R'] :
        ( ! [V_x_dot_2: 'R'] :
            ( ( '</2' @ V_x_dot_2 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_x_dot_2 )
              = 0 ) )
        & ! [V_x_dot_1: 'R'] :
            ( ( '>=/2' @ V_x_dot_1 @ 0 )
           => ( '>=/2' @ ( 'LamApp/2' @ V_f @ V_x_dot_1 ) @ 0 ) )
        & ! [V_x_dot_0: 'R',V_y: 'R'] :
            ( ( ( '>=/2' @ V_x_dot_0 @ 0 )
              & ( '>=/2' @ V_y @ 0 ) )
           => ( ( '*/2' @ ( 'LamApp/2' @ V_f @ ( '*/2' @ V_x_dot_0 @ ( 'LamApp/2' @ V_f @ V_y ) ) ) @ ( 'LamApp/2' @ V_f @ V_y ) )
              = ( 'LamApp/2' @ V_f @ ( '+/2' @ V_x_dot_0 @ V_y ) ) ) )
        & ( ( 'LamApp/2' @ V_f @ 2 )
          = 0 )
        & ! [V_x: 'R'] :
            ( ( ( '<=/2' @ 0 @ V_x )
              & ( '</2' @ V_x @ 2 ) )
           => ( ( 'LamApp/2' @ V_f @ V_x )
             != 0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R' > 'R'] :
      ( V_f_dot_0
      = ( ^ [V_x_dot_3: 'R'] :
            ( 'cond/1'
            @ ( 'cons/2'
              @ ( 'pair/2'
                @ ^ [V___dot_1: 'Unit'] :
                    ( '</2' @ V_x_dot_3 @ 0 )
                @ 0 )
              @ ( 'cons/2'
                @ ( 'pair/2'
                  @ ^ [V___dot_0: 'Unit'] :
                      ( ( '<=/2' @ 0 @ V_x_dot_3 )
                      & ( '</2' @ V_x_dot_3 @ 2 ) )
                  @ ( '//2' @ 2 @ ( '-/2' @ 2 @ V_x_dot_3 ) ) )
                @ ( 'cons/2'
                  @ ( 'pair/2'
                    @ ^ [V__: 'Unit'] :
                        ( '<=/2' @ 2 @ V_x_dot_3 )
                    @ 0 )
                  @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).
