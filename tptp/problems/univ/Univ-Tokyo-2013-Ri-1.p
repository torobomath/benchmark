%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Science Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2013-11-21
%%
%% <PROBLEM-TEXT>
%% For the real numbers $a$ and $b$, define the point $P_n(x_n, y_n)$ on
%% a plane as $(x_0, y_0)=(1, 0)$
%% $(x_{n+1}, y_{n+1})=(a x_n-b y_n, b x_n+a y_n)(n = 0, 1, 2, \cdots)$.
%% Find all $(a, b)$ such that the following conditions (i) and (ii) are
%% both true. (i) $P_0=P_6$(ii) $P_0$, where $P_1$, $P_2$, $P_3$, $P_4$,
%% and $P_5$ are different from one another.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  106 (  12 equality;  41 variable)
%            Maximal formula depth :   31 (  21 average)
%            Number of connectives :   82 (   0   ~;   1   |;  10   &;  71   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   13 (   0 sgn;   0   !;  10   ?;   3   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ? [V_P0: '2d.Point',V_P1: '2d.Point',V_P2: '2d.Point',V_P3: '2d.Point',V_P4: '2d.Point',V_P5: '2d.Point',V_P6: '2d.Point',V_f: '2d.Point' > '2d.Point'] :
            ( ( V_f
              = ( ^ [V_p: '2d.Point'] :
                    ( '2d.point/2' @ ( '-/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_p ) ) @ ( '*/2' @ V_b @ ( '2d.y-coord/1' @ V_p ) ) ) @ ( '+/2' @ ( '*/2' @ V_b @ ( '2d.x-coord/1' @ V_p ) ) @ ( '*/2' @ V_a @ ( '2d.y-coord/1' @ V_p ) ) ) ) ) )
            & ( V_P0
              = ( '2d.point/2' @ 1 @ 0 ) )
            & ( V_P1
              = ( 'LamApp/2' @ V_f @ V_P0 ) )
            & ( V_P2
              = ( 'LamApp/2' @ V_f @ V_P1 ) )
            & ( V_P3
              = ( 'LamApp/2' @ V_f @ V_P2 ) )
            & ( V_P4
              = ( 'LamApp/2' @ V_f @ V_P3 ) )
            & ( V_P5
              = ( 'LamApp/2' @ V_f @ V_P4 ) )
            & ( V_P6
              = ( 'LamApp/2' @ V_f @ V_P5 ) )
            & ( V_P0 = V_P6 )
            & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_P0 @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ ( 'cons/2' @ V_P5 @ 'nil/0' ) ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 'nil/0' ) ) )
      | ( V_ab_dot_0
        = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
