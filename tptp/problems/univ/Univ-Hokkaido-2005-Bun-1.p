%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2005, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-09-27
%%
%% <PROBLEM-TEXT>
%% Answer the following questions:
%%
%% (1) Find the range of the value of the real number $k$ such that the
%% quadratic equation of $x$, $x^2-2 k x-3 k^2+1=0$ has imaginary
%% solutions.
%%
%% (2) Find the minimum and maximum values of
%% $F(k)=\int_0^k(x^2 - 2 k x - 3 k^2 + 1)d x$ in the range of $k$ found
%% in (1).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  128 (   4 equality;  20 variable)
%            Maximal formula depth :   22 (  13 average)
%            Number of connectives :  114 (   0   ~;   0   |;   3   &; 111   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   2   ?;   8   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
        ( 'complex.has-complex-solution/1' @ ( 'complex.quad-equation/3' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_k @ 2 ) ) ) @ 1 ) @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ 1 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_maxfk: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_fk: 'R'] :
            ? [V_k: 'R'] :
              ( ( V_fk
                = ( 'integration/3' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_k @ 2 ) ) ) @ 1 ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ 0 @ V_k ) )
              & ( 'complex.has-complex-solution/1' @ ( 'complex.quad-equation/3' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_k @ 2 ) ) ) @ 1 ) @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ 1 ) ) ) )
        @ V_maxfk ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_minfk: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_fk: 'R'] :
            ? [V_k: 'R'] :
              ( ( V_fk
                = ( 'integration/3' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_k @ 2 ) ) ) @ 1 ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ 0 @ V_k ) )
              & ( 'complex.has-complex-solution/1' @ ( 'complex.quad-equation/3' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_k @ 2 ) ) ) @ 1 ) @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ 1 ) ) ) )
        @ V_minfk ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( '</2' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ V_k_dot_0 )
      & ( '</2' @ V_k_dot_0 @ ( '//2' @ 1 @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_maxfk_dot_0: 'R'] :
      ( V_maxfk_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 33 ) @ ( 'sqrt/1' @ 11 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_minfk_dot_0: 'R'] :
      ( V_minfk_dot_0
      = ( '-/1' @ ( '*/2' @ ( '//2' @ 2 @ 33 ) @ ( 'sqrt/1' @ 11 ) ) ) ) ),
    answer_to(p3_question,[])).
