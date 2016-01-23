%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Humanities Course, Problem 3a
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% (a) Let $p$ be a real number. Assume that equation
%% $x^4 +(8 - 2 p)x^2 + p = 0$ has four different real solutions, and
%% the solutions form an arithmetic progression when they are arranged
%% in ascending order. Find this $p$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   9 equality;  24 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   40 (   0   ~;   0   |;   8   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'R'] :
      ? [V_x1: 'R',V_x2: 'R',V_x3: 'R',V_x4: 'R',V_m: 'R',V_f: 'R2R'] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_x: 'R'] :
                ( '+/2' @ ( '^/2' @ V_x @ 4 ) @ ( '+/2' @ ( '*/2' @ ( '-/2' @ 8 @ ( '*/2' @ 2 @ V_p ) ) @ ( '^/2' @ V_x @ 2 ) ) @ V_p ) ) ) )
        & ( 0
          = ( 'funapp/2' @ V_f @ V_x1 ) )
        & ( 0
          = ( 'funapp/2' @ V_f @ V_x2 ) )
        & ( 0
          = ( 'funapp/2' @ V_f @ V_x3 ) )
        & ( 0
          = ( 'funapp/2' @ V_f @ V_x4 ) )
        & ( '</2' @ 0 @ V_m )
        & ( V_x1
          = ( '+/2' @ V_x2 @ V_m ) )
        & ( V_x2
          = ( '+/2' @ V_x3 @ V_m ) )
        & ( V_x3
          = ( '+/2' @ V_x4 @ V_m ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_p_dot_0: 'R'] : ( V_p_dot_0 = 9 ) ),
    answer_to(p1_question,[])).
