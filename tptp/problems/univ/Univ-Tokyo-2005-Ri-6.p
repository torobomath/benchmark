%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2005, Science Course, Problem 6
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Let $r$ be a positive real number. In the $xyz$ space, find the
%% volume of the solid consisting of all the points that satisfy
%% $\begin{matrix} x^2+y^2\le r^2\\ y^2+z^2\ge r^2\\ z^2+x^2\le r^2\end{matrix}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   2 equality;  14 variable)
%            Maximal formula depth :   17 (  14 average)
%            Number of connectives :   52 (   0   ~;   0   |;   4   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   0   ?;   5   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_v: 'R'] :
        ( ( '</2' @ 0 @ V_r )
        & ( V_v
          = ( '3d.volume-of/1'
            @ ( '3d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R',V_z: 'R'] :
                  ( ( '>=/2' @ ( '^/2' @ V_r @ 2 ) @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) )
                  & ( '<=/2' @ ( '^/2' @ V_r @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '^/2' @ V_z @ 2 ) ) )
                  & ( '>=/2' @ ( '^/2' @ V_r @ 2 ) @ ( '+/2' @ ( '^/2' @ V_z @ 2 ) @ ( '^/2' @ V_x @ 2 ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_v_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_r )
      & ( V_v_dot_0
        = ( '*/2' @ ( '-/2' @ ( '*/2' @ 8 @ ( 'sqrt/1' @ 2 ) ) @ ( '//2' @ 32 @ 3 ) ) @ ( '^/2' @ V_r @ 3 ) ) ) ) ),
    answer_to(p_question,[])).
