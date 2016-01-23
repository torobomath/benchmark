%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2009, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Determine all functions f from the set of positive integers to the set of
%% positive integers such that, for all positive integers a and b, there
%% exists a non-degenerate triangle with sides of lengths
%% a, f(b) and f(b + f(a) - 1).
%% (A triangle is non-degenerate if its vertices are not collinear.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   84 (   3 equality;  36 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   76 (   0   ~;   0   |;   6   &;  65   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    7 (   0 sgn;   5   !;   0   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'Z' > 'Z'] :
        ( ! [V_n_dot_0: 'Z'] :
            ( ( 'int.<=/2' @ V_n_dot_0 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_n_dot_0 )
              = 0 ) )
        & ! [V_n: 'Z'] :
            ( ( 'int.</2' @ 0 @ V_n )
           => ( 'int.</2' @ 0 @ ( 'LamApp/2' @ V_f @ V_n ) ) )
        & ! [V_a: 'Z',V_b: 'Z'] :
            ( ( ( 'int.</2' @ 0 @ V_a )
              & ( 'int.</2' @ 0 @ V_b ) )
           => ( ( 'int.</2' @ V_a @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_b ) @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_b @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_a ) @ -1 ) ) ) ) )
              & ( 'int.</2' @ ( 'LamApp/2' @ V_f @ V_b ) @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_b @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_a ) @ -1 ) ) ) @ V_a ) )
              & ( 'int.</2' @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_b @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_a ) @ -1 ) ) ) @ ( 'int.+/2' @ V_a @ ( 'LamApp/2' @ V_f @ V_b ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'Z' > 'Z'] :
    ! [V_x: 'Z'] :
      ( ( ( 'int.>/2' @ V_x @ 0 )
       => ( ( 'LamApp/2' @ V_f_dot_0 @ V_x )
          = V_x ) )
      & ( ( 'int.<=/2' @ V_x @ 0 )
       => ( ( 'LamApp/2' @ V_f_dot_0 @ V_x )
          = 0 ) ) ) ),
    answer_to(p_question,[])).
