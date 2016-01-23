%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1999, Science Course, Problem 6
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2015-02-07
%%
%% <PROBLEM-TEXT>
%% Prove that $\int_0^{{\pi}} e^x\sin^2 x dx>8$, where
%% ${\pi}=3.14\cdots$ is the circular constant, and $e=2.71\cdots$ is
%% the base of natural logarithms.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   14 (   0 equality;   2 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   13 (   0   ~;   0   |;   0   &;  13   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    1 (   0 sgn;   0   !;   0   ?;   1   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,
    ( '>/2'
    @ ( 'integral/3'
      @ ^ [V_x: 'R'] :
          ( '*/2' @ ( '^/2' @ ( 'exp/1' @ 1 ) @ V_x ) @ ( '^/2' @ ( 'sin/1' @ V_x ) @ 2 ) )
      @ 0
      @ 'Pi/0' )
    @ 8 )).
