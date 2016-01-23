%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2E018
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  316 (   9 equality;  87 variable)
%            Maximal formula depth :   19 (  18 average)
%            Number of connectives :  294 (   0   ~;   6   |;  40   &; 248   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;   6   ?;   7   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_D: '2d.Point' > $o] :
        ( ( V_D
          = ( ^ [V_R: '2d.Point'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_P ) )
                & ( '<=/2' @ ( '2d.x-coord/1' @ V_P ) @ 1 )
                & ( ( '2d.y-coord/1' @ V_P )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) )
                & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_Q ) )
                & ( '<=/2' @ ( '2d.x-coord/1' @ V_Q ) @ 1 )
                & ( ( '2d.y-coord/1' @ V_Q )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_Q ) @ 2 ) )
                & ( V_R
                  = ( '2d.internally-dividing-point/3' @ V_P @ V_Q @ ( '//2' @ 1 @ 3 ) ) ) ) ) )
        & ( '<=/2' @ -1 @ V_a )
        & ( '<=/2' @ V_a @ 1 )
        & ( 'PLamApp/2' @ V_D @ ( '2d.point/2' @ V_a @ V_b ) ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_pred: '2d.Point' > $o] :
        ( ( V_pred
          = ( ^ [V_R: '2d.Point'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_P ) )
                & ( '<=/2' @ ( '2d.x-coord/1' @ V_P ) @ 1 )
                & ( ( '2d.y-coord/1' @ V_P )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) )
                & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_Q ) )
                & ( '<=/2' @ ( '2d.x-coord/1' @ V_Q ) @ 1 )
                & ( ( '2d.y-coord/1' @ V_Q )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_Q ) @ 2 ) )
                & ( V_R
                  = ( '2d.internally-dividing-point/3' @ V_P @ V_Q @ ( '//2' @ 1 @ 3 ) ) ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1' @ V_pred ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( ( ( '<=/2' @ -1 @ V_a )
        & ( '<=/2' @ V_a @ ( '//2' @ -1 @ 3 ) )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ V_a ) @ 2 ) ) ) )
      | ( ( '<=/2' @ ( '//2' @ -1 @ 3 ) @ V_a )
        & ( '<=/2' @ V_a @ 0 )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '-/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) ) ) ) )
      | ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ ( '//2' @ 1 @ 3 ) )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ V_a @ ( '//2' @ 1 @ 2 ) ) ) ) )
      | ( ( '<=/2' @ ( '//2' @ 1 @ 3 ) @ V_a )
        & ( '<=/2' @ V_a @ 1 )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ -4 @ V_a ) @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_a: 'R',V_b: 'R'] :
        ( ( ( '<=/2' @ -1 @ V_a )
          & ( '<=/2' @ V_a @ ( '//2' @ -1 @ 3 ) )
          & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b )
          & ( '<=/2' @ V_b @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ V_a ) @ 2 ) ) ) )
        | ( ( '<=/2' @ ( '//2' @ -1 @ 3 ) @ V_a )
          & ( '<=/2' @ V_a @ 0 )
          & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b )
          & ( '<=/2' @ V_b @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '-/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) ) ) ) )
        | ( ( '<=/2' @ 0 @ V_a )
          & ( '<=/2' @ V_a @ ( '//2' @ 1 @ 3 ) )
          & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b )
          & ( '<=/2' @ V_b @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ V_a @ ( '//2' @ 1 @ 2 ) ) ) ) )
        | ( ( '<=/2' @ ( '//2' @ 1 @ 3 ) @ V_a )
          & ( '<=/2' @ V_a @ 1 )
          & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b )
          & ( '<=/2' @ V_b @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ -4 @ V_a ) @ 2 ) ) ) ) ) ),
    answer_to(p2_question,[])).
