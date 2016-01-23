%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2008, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% Find all functions f : (0, infinity) -> (0, infinity) (so, f is a function
%% from the positive real numbers to the positive real numbers) such that
%% (f(w)^2 + f(x)^2) / (f(y^2) + f(z^2)) = (w^2 + x^2)/(y^2 + z^2)
%% for all positive real numbers w, x, y, z, satisfying wx = yz.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   5 equality;  32 variable)
%            Maximal formula depth :   19 (  15 average)
%            Number of connectives :   81 (   0   ~;   1   |;   6   &;  71   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   12 (   2 sgn;   6   !;   0   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R' > 'R'] :
        ( ! [V_x_dot_1: 'R'] :
            ( ( '<=/2' @ V_x_dot_1 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_x_dot_1 )
              = 0 ) )
        & ! [V_x_dot_0: 'R'] :
            ( ( '</2' @ 0 @ V_x_dot_0 )
           => ( '</2' @ 0 @ ( 'LamApp/2' @ V_f @ V_x_dot_0 ) ) )
        & ! [V_w: 'R',V_x: 'R',V_y: 'R',V_z: 'R'] :
            ( ( ( ( '*/2' @ V_w @ V_x )
                = ( '*/2' @ V_y @ V_z ) )
              & ( '>/2' @ V_x @ 0 )
              & ( '>/2' @ V_y @ 0 )
              & ( '>/2' @ V_w @ 0 )
              & ( '>/2' @ V_z @ 0 ) )
           => ( ( '//2' @ ( '+/2' @ ( '^/2' @ ( 'LamApp/2' @ V_f @ V_w ) @ 2 ) @ ( '^/2' @ ( 'LamApp/2' @ V_f @ V_x ) @ 2 ) ) @ ( '+/2' @ ( 'LamApp/2' @ V_f @ ( '^/2' @ V_y @ 2 ) ) @ ( 'LamApp/2' @ V_f @ ( '^/2' @ V_z @ 2 ) ) ) )
              = ( '//2' @ ( '+/2' @ ( '^/2' @ V_w @ 2 ) @ ( '^/2' @ V_x @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '^/2' @ V_z @ 2 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R' > 'R'] :
      ( ( V_f_dot_0
        = ( ^ [V_x_dot_3: 'R'] :
              ( 'if/3'
              @ ^ [V___dot_0: 'Unit'] :
                  ( '</2' @ V_x_dot_3 @ 0 )
              @ 0
              @ V_x_dot_3 ) ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_2: 'R'] :
              ( 'if/3'
              @ ^ [V__: 'Unit'] :
                  ( '</2' @ V_x_dot_2 @ 0 )
              @ 0
              @ ( '//2' @ 1 @ V_x_dot_2 ) ) ) ) ) ),
    answer_to(p_question,[])).
