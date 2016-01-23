%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2007, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-11-29
%%
%% <PROBLEM-TEXT>
%% Let $D$ be the region defined by the simultaneous inequalities
%% $y(y - |x^2 - 5| + 4)\le 0, y+x^2-2 x-3\le 0$.
%%
%% (1) Draw $D$.
%%
%% (2) Find the area of $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (   4 equality;  26 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :  128 (   0   ~;   1   |;   8   &; 119   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   0   ?;   7   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( '<=/2' @ ( '*/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '+/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '+/2' @ ( '-/1' @ ( 'abs/1' @ ( '-/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ 5 ) ) ) @ 4 ) ) ) @ 0 )
              & ( '<=/2' @ ( '+/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p ) ) ) @ -3 ) ) ) @ 0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( V_x
        = ( '2d.area-of/1'
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '<=/2' @ ( '*/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '+/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '+/2' @ ( '-/1' @ ( 'abs/1' @ ( '-/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ 5 ) ) ) @ 4 ) ) ) @ 0 )
                & ( '<=/2' @ ( '+/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p ) ) ) @ -3 ) ) ) @ 0 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: '2d.Shape'] :
      ( V_x_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( '<=/2' @ 0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '-/2' @ ( 'abs/1' @ ( '-/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ 5 ) ) @ 4 ) )
              & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1 ) )
            | ( ( '<=/2' @ ( '-/2' @ ( 'abs/1' @ ( '-/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ 5 ) ) @ 4 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 0 )
              & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '-/2' @ 20 @ ( '*/2' @ ( '//2' @ 20 @ 3 ) @ ( 'sqrt/1' @ 5 ) ) ) ) ),
    answer_to(p2_question,[])).
