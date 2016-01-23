%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Answer the following questions:
%%
%% (1) Same as Kyodai-2011-Bun-Zenki-Suugaku-1 (1).
%%
%% (2) Find the definite integral
%% $\int_0^{\frac{1}{2}}(x+1)\sqrt{1+2 x^2} dx$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   37 (   2 equality;   4 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   31 (   0   ~;   0   |;   0   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_I: 'R'] :
        ( V_I
        = ( 'integral/3'
          @ ^ [V_x: 'R'] :
              ( '*/2' @ ( '+/2' @ V_x @ 1 ) @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '*/2' @ 2 @ ( '^/2' @ V_x @ 2 ) ) ) ) )
          @ 0
          @ ( '//2' @ 1 @ 2 ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_I_dot_0: 'R'] :
      ( V_I_dot_0
      = ( '+/2' @ ( '//2' @ ( '*/2' @ ( 'sqrt/1' @ 2 ) @ 'Pi/0' ) @ 16 ) @ ( '+/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 12 ) @ ( '//2' @ 1 @ 6 ) ) ) ) ),
    answer_to(p2_question,[])).
