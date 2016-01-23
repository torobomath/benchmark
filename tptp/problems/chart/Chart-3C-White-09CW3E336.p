%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E336
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  164 (  17 equality;  53 variable)
%            Maximal formula depth :   27 (  15 average)
%            Number of connectives :  127 (   1   ~;   0   |;  16   &; 109   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   21 (   0 sgn;   4   !;   5   ?;  10   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '*/2' @ V_a @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2 )
                = ( '*/2' @ V_a @ ( '*/2' @ ( '-/2' @ 1 @ V_a ) @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) )
        & ( '</2' @ V_a @ 1 )
        & ( '</2' @ 0 @ V_a )
        & ( V_P != '2d.origin/0' )
        & ( '2d.intersect/3' @ V_C1 @ V_C2 @ V_P ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_a: 'R'] :
        ( ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_2: '2d.Point'] :
                ( ( '*/2' @ V_a @ ( '2d.y-coord/1' @ V_p_dot_2 ) )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_2 ) @ 2 ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( ( '^/2' @ ( '2d.y-coord/1' @ V_p_dot_1 ) @ 2 )
                = ( '*/2' @ V_a @ ( '*/2' @ ( '-/2' @ 1 @ V_a ) @ ( '2d.x-coord/1' @ V_p_dot_1 ) ) ) ) ) )
        & ( '</2' @ V_a @ 1 )
        & ( '</2' @ 0 @ V_a )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_C2 @ 'nil/0' ) ) ) ) )
        & ! [V_C12: '2d.Shape',V_C22: '2d.Shape',V_a2: 'R',V_S2: 'R'] :
            ( ( ( V_C12
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p_dot_0: '2d.Point'] :
                      ( ( '*/2' @ V_a2 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                      = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) ) )
              & ( V_C22
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2 )
                      = ( '*/2' @ V_a2 @ ( '*/2' @ ( '-/2' @ 1 @ V_a ) @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) )
              & ( '</2' @ V_a2 @ 1 )
              & ( '</2' @ 0 @ V_a2 )
              & ( V_S2
                = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C12 @ ( 'cons/2' @ V_C22 @ 'nil/0' ) ) ) ) ) )
           => ( '>=/2' @ V_S @ V_S2 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( V_P_dot_0
        = ( '2d.point/2' @ ( '*/2' @ V_a @ ( '^/2' @ ( '-/2' @ 1 @ V_a ) @ ( '//2' @ 1 @ 3 ) ) ) @ ( '*/2' @ V_a @ ( '^/2' @ ( '-/2' @ 1 @ V_a ) @ ( '//2' @ 2 @ 3 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 4 @ 81 ) ) ),
    answer_to(p2_question,[])).
