%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2005, Science Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% For any complex number $z$ that satisfies $|z|>\frac{5}{4}$, let $T$
%% be the set of all the complex numbers $w$ that are not represented as
%% $w=z^2-2 z$. That is,
%% $T=\{If w| w=z^2-2 z, then |z|\le\frac{5}{4}\}$. Then, find the value
%% of the complex number $w$ belonging to $T$ such that the absolute
%% value $|w|$ is the maximum.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   5 equality;  14 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   42 (   0   ~;   0   |;   3   &;  37   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    7 (   0 sgn;   2   !;   2   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_w: 'complex.Complex'] :
      ? [V_max_abs: 'R'] :
        ( ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_w_abs: 'R'] :
              ? [V_w1: 'complex.Complex'] :
                ( ! [V_z_dot_0: 'complex.Complex'] :
                    ( ( V_w1
                      = ( 'complex.-/2' @ ( 'complex.^/2' @ V_z_dot_0 @ 2 ) @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 2 @ 0 ) @ V_z_dot_0 ) ) )
                   => ( '<=/2' @ ( 'complex.abs/1' @ V_z_dot_0 ) @ ( '//2' @ 5 @ 4 ) ) )
                & ( ( 'complex.abs/1' @ V_w1 )
                  = V_w_abs ) ) )
          @ V_max_abs )
        & ! [V_z: 'complex.Complex'] :
            ( ( V_w
              = ( 'complex.-/2' @ ( 'complex.^/2' @ V_z @ 2 ) @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 2 @ 0 ) @ V_z ) ) )
           => ( '<=/2' @ ( 'complex.abs/1' @ V_z ) @ ( '//2' @ 5 @ 4 ) ) )
        & ( ( 'complex.abs/1' @ V_w )
          = V_max_abs ) ) )).

thf(p_answer,answer,(
    ^ [V_w_dot_0: 'complex.Complex'] :
      ( V_w_dot_0
      = ( 'complex.complex/2' @ ( '-/1' @ ( '//2' @ 25 @ 16 ) ) @ 0 ) ) ),
    answer_to(p_question,[])).
