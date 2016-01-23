%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 1999, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-20
%%
%% <PROBLEM-TEXT>
%% Let $k$ be a real number, and define
%% $f(x)= x^2 - 2 k x +\frac{1}{5}(2 k - 1)(4 k - 3)$. When the equation
%% $f(x)= 0$ has the real solutions ${\alpha}$ and ${\beta}$ (
%% ${\alpha}\le {\beta}$), answer the following questions.
%%
%% (1) Find the range of the value of $k$ such that ${\alpha}$ and
%% ${\beta}$ satisfy ${\alpha}\le 1\le {\beta}$.
%%
%% (2) In the case of (1), find the range of the possible minimum value
%% of $f(x)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  141 (   8 equality;  36 variable)
%            Maximal formula depth :   28 (  15 average)
%            Number of connectives :  121 (   0   ~;   0   |;  14   &; 107   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   9   ?;   5   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_f: 'R2R'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_k ) @ 1 ) @ ( '-/2' @ ( '*/2' @ 4 @ V_k ) @ 3 ) ) @ 5 ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
        & ( ( 'funapp/2' @ V_f @ V_a )
          = 0 )
        & ( ( 'funapp/2' @ V_f @ V_b )
          = 0 )
        & ( '<=/2' @ V_a @ V_b )
        & ( '<=/2' @ V_a @ 1 )
        & ( '<=/2' @ 1 @ V_b ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_k: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_z: 'R'] :
            ? [V_x: 'R',V_f: 'R2R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_k ) @ 1 ) @ ( '-/2' @ ( '*/2' @ 4 @ V_k ) @ 3 ) ) @ 5 ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
              & ( V_z
                = ( 'funapp/2' @ V_f @ V_x ) )
              & ? [V_a: 'R',V_b: 'R',V_f_dot_0: 'R2R'] :
                  ( ( V_f_dot_0
                    = ( 'poly-fun/1' @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_k ) @ 1 ) @ ( '-/2' @ ( '*/2' @ 4 @ V_k ) @ 3 ) ) @ 5 ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ V_k ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
                  & ( ( 'funapp/2' @ V_f_dot_0 @ V_a )
                    = 0 )
                  & ( ( 'funapp/2' @ V_f_dot_0 @ V_b )
                    = 0 )
                  & ( '<=/2' @ V_a @ V_b )
                  & ( '<=/2' @ V_a @ 1 )
                  & ( '<=/2' @ 1 @ V_b ) ) ) )
        @ V_m ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_k_dot_0 )
      & ( '<=/2' @ V_k_dot_0 @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ -16 @ 15 ) @ V_m_dot_0 )
      & ( '<=/2' @ V_m_dot_0 @ ( '//2' @ -1 @ 4 ) ) ) ),
    answer_to(p2_question,[])).
