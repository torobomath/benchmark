%% DOMAIN:    Algebra, misc
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2011, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-24
%%
%% <PROBLEM-TEXT>
%% Let f : R -> R be a real-valued function defined on the set of real numbers
%% that satisfies
%% f(x + y) <= yf(x) + f(f(x))
%% for all real numbers x and y. Prove that f(x) = 0 for all x <= 0.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   25 (   1 equality;  12 variable)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   22 (   0   ~;   0   |;   0   &;  20   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_f: 'R2R'] :
      ( ! [V_x: 'R',V_y: 'R'] :
          ( '<=/2' @ ( 'funapp/2' @ V_f @ ( '+/2' @ V_x @ V_y ) ) @ ( '+/2' @ ( '*/2' @ V_y @ ( 'funapp/2' @ V_f @ V_x ) ) @ ( 'funapp/2' @ V_f @ ( 'funapp/2' @ V_f @ V_x ) ) ) )
     => ! [V_x_dot_0: 'R'] :
          ( ( '<=/2' @ V_x_dot_0 @ 0 )
         => ( ( 'funapp/2' @ V_f @ V_x_dot_0 )
            = 0 ) ) ) )).
