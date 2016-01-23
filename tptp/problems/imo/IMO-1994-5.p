%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-02
%%
%% <PROBLEM-TEXT>
%% Let $S$ be the set of real numbers strictly greater than $-1$. Find all functions
%% $f : S ¥rightarrow S$ satisfying the two conditions:
%% ¥begin{flushleft}
%% 1. $f(x + f(y) + xf(y)) = y + f(x) + yf(x)$ for all $x$ and $y$ in $S$;¥¥
%% 2. $¥frac{f(x)}{x}$ is strictly increasing on each of the intervals $-1 < x < 0$
%% and $0 < x$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   4 equality;  46 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   90 (   0   ~;   0   |;   8   &;  76   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    6 (   0 sgn;   4   !;   0   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R2R'] :
        ( ! [V_x_dot_0: 'R',V_y: 'R'] :
            ( ( ( '>/2' @ V_x_dot_0 @ -1 )
              & ( '>/2' @ V_y @ -1 ) )
           => ( ( '>/2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ -1 )
              & ( ( 'funapp/2' @ V_f @ ( '+/2' @ V_x_dot_0 @ ( '+/2' @ ( 'funapp/2' @ V_f @ V_y ) @ ( '*/2' @ V_x_dot_0 @ ( 'funapp/2' @ V_f @ V_y ) ) ) ) )
                = ( '+/2' @ V_y @ ( '+/2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ ( '*/2' @ V_y @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) ) )
              & ( ( ( '</2' @ V_x_dot_0 @ V_y )
                  & ( '</2' @ V_y @ 0 ) )
               => ( '</2' @ ( '//2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ V_x_dot_0 ) @ ( '//2' @ ( 'funapp/2' @ V_f @ V_y ) @ V_y ) ) )
              & ( ( ( '</2' @ V_x_dot_0 @ V_y )
                  & ( '</2' @ 0 @ V_x_dot_0 ) )
               => ( '</2' @ ( '//2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ V_x_dot_0 ) @ ( '//2' @ ( 'funapp/2' @ V_f @ V_y ) @ V_y ) ) ) ) )
        & ! [V_x: 'R'] :
            ( ( '<=/2' @ V_x @ -1 )
           => ( ( 'funapp/2' @ V_f @ V_x )
              = 0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
    ! [V_x_dot_1: 'R'] :
      ( ( ( '>/2' @ V_x_dot_1 @ -1 )
       => ( ( 'funapp/2' @ V_f_dot_0 @ V_x_dot_1 )
          = ( '//2' @ ( '-/1' @ V_x_dot_1 ) @ ( '+/2' @ V_x_dot_1 @ 1 ) ) ) )
      & ( ( '<=/2' @ V_x_dot_1 @ -1 )
       => ( ( 'funapp/2' @ V_f_dot_0 @ V_x_dot_1 )
          = 0 ) ) ) ),
    answer_to(p_question,[])).
