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
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_f: 'R2R'] :
      ( ! [V_x: $real,V_y: $real] :
          ( $lesseq @ ( 'funapp/2' @ V_f @ ( $sum @ V_x @ V_y ) ) @ ( $sum @ ( $product @ V_y @ ( 'funapp/2' @ V_f @ V_x ) ) @ ( 'funapp/2' @ V_f @ ( 'funapp/2' @ V_f @ V_x ) ) ) )
     => ! [V_x_dot_0: $real] :
          ( ( $lesseq @ V_x_dot_0 @ 0.0 )
         => ( ( 'funapp/2' @ V_f @ V_x_dot_0 )
            = 0.0 ) ) ) )).

