%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2001, Humanities Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-08
%%
%% <PROBLEM-TEXT>
%% Consider the region $D$ defined by $-1\le y\le 1$ and the circle $C$
%% centered at $P$ and passing through the origin $O$ on the $xy$ plane.
%% Assuming that $C$ is included in $D$, draw the movable region of $P$
%% and find the area of the region.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (  10 equality;  29 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   77 (   1   ~;   0   |;  13   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   5   ?;   9   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_E: '2d.Shape'] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '<=/2' @ -1 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 1 ) ) ) )
        & ( V_E
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_p
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.on/2' @ '2d.origin/0' @ V_C )
                & ( '2d.inside-of/2' @ V_C @ V_D ) ) ) ) ) )).

thf(p_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_D: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '<=/2' @ -1 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 1 ) ) ) )
        & ( V_E
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_p
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.on/2' @ '2d.origin/0' @ V_C )
                & ( '2d.inside-of/2' @ V_C @ V_D ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_E ) ) ) )).

thf(p_1_answer,answer,(
    ^ [V_E_dot_0: '2d.Shape'] :
      ( V_E_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( V_P != '2d.origin/0' )
            & ( '<=/2' @ ( '-/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) ) @ ( '//2' @ 1 @ 2 ) ) @ ( '2d.y-coord/1' @ V_P ) )
            & ( '<=/2' @ ( '2d.y-coord/1' @ V_P ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) ) ) @ ( '//2' @ 1 @ 2 ) ) ) ) ) ) ),
    answer_to(p_1_question,[])).

thf(p_2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 4 @ 3 ) ) ),
    answer_to(p_2_question,[])).
