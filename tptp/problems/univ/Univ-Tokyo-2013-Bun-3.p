%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 3
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2013-11-11
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be constant real numbers. When the real numbers $x$
%% and $y$ satisfy both $x^2+y^2\le 25$ and $2 x+y\le 5$, find the
%% minimum value of $z=x^2+y^2-2 a x-2 b y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  211 (   6 equality;  52 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :  197 (   0   ~;   5   |;  13   &; 179   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :    9 (   2 sgn;   0   !;   2   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_z: 'R'] :
            ? [V_x: 'R',V_y: 'R'] :
              ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ 25 )
              & ( '<=/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ V_y ) @ 5 )
              & ( V_z
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ V_x ) ) ) @ ( '-/1' @ ( '*/2' @ 2 @ ( '*/2' @ V_b @ V_y ) ) ) ) ) ) ) ) )
        @ V_m ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) @ 25 )
        & ( '<=/2' @ V_b @ ( '-/2' @ 5 @ ( '*/2' @ 2 @ V_a ) ) )
        & ( V_m_dot_0
          = ( '-/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) ) )
      | ( ( '>=/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) @ 25 )
        & ( ( '<=/2' @ V_a @ 0 )
          | ( '<=/2' @ V_b @ ( '*/2' @ ( '-/1' @ ( '//2' @ 3 @ 4 ) ) @ V_a ) ) )
        & ( V_m_dot_0
          = ( '-/2' @ 25 @ ( '*/2' @ 10 @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) ) ) ) )
      | ( ( '>=/2' @ V_b @ ( '-/2' @ 5 @ ( '*/2' @ 2 @ V_a ) ) )
        & ( '<=/2' @ V_b @ ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) @ 5 ) )
        & ( '>=/2' @ V_b @ ( '-/2' @ 5 @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) ) )
        & ( V_m_dot_0
          = ( '*/2' @ ( '//2' @ 1 @ 5 ) @ ( '+/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ ( '^/2' @ V_b @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ 4 @ ( '*/2' @ V_a @ V_b ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 20 @ V_a ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 10 @ V_b ) ) @ 25 ) ) ) ) ) ) ) )
      | ( ( '>=/2' @ V_a @ 0 )
        & ( '>=/2' @ V_b @ ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) @ 5 ) )
        & ( V_m_dot_0
          = ( '-/2' @ 25 @ ( '*/2' @ 10 @ V_b ) ) ) )
      | ( ( '>=/2' @ V_b @ ( '*/2' @ ( '-/1' @ ( '//2' @ 3 @ 4 ) ) @ V_a ) )
        & ( '<=/2' @ V_b @ ( '-/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) @ 5 ) )
        & ( V_m_dot_0
          = ( '+/2' @ 25 @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 8 @ V_a ) ) @ ( '*/2' @ 6 @ V_b ) ) ) ) ) ) ),
    answer_to(p_question,[])).
