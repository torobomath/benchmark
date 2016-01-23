%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2013-11-21
%%
%% <PROBLEM-TEXT>
%% For $\triangle ABC$, assume that $\angle BAC = 90^{\circ}$,
%% $|\vec{AB}|=1$, and $|\vec{AC}|=\sqrt{3}$. Assume that the point $P$
%% on the inside of $\triangle ABC$ satisfies
%% $\frac{\vec{PA}}{|\vec{PA}|}+\frac{\vec{PB}}{|\vec{PB}|}+\frac{\vec{PC}}{|\vec{PC}|}=\vec{0}$.
%%
%% (1) Find $\angle APB$ and $\angle APC$.
%%
%% (2) Find $|\vec{PA}|$, $|\vec{PB}|$, and $|\vec{PC}|$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  295 (   8 equality;  31 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :  277 (   0   ~;   0   |;   5   &; 272   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p0_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
        ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) ) ) ) ) )).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_angles: 'ListOf' @ 'R'] :
      ? [V_P: '2d.Point'] :
        ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) ) ) )
        & ( V_angles
          = ( 'cons/2' @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ 0 @ 0 ) @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( 'cons/2' @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ 0 @ 0 ) @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_lengths: 'ListOf' @ 'R'] :
      ? [V_P: '2d.Point'] :
        ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) ) @ ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) ) ) ) )
        & ( V_lengths
          = ( 'cons/2' @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ 0 ) ) @ ( 'cons/2' @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1 @ 0 ) ) @ ( 'cons/2' @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) ) @ 'nil/0' ) ) ) ) ) )).

thf(p0_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ ( '//2' @ 2 @ 7 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 7 ) ) ) ),
    answer_to(p0_question,[])).

thf(p1_answer,answer,(
    ^ [V_angles_dot_0: 'ListOf' @ 'R'] :
      ( V_angles_dot_0
      = ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_lengths_dot_0: 'ListOf' @ 'R'] :
      ( V_lengths_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ ( 'sqrt/1' @ 7 ) ) @ ( 'cons/2' @ ( '//2' @ 2 @ ( 'sqrt/1' @ 7 ) ) @ ( 'cons/2' @ ( '//2' @ 4 @ ( 'sqrt/1' @ 7 ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
