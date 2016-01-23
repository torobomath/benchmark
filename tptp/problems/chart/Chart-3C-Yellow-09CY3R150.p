%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R150
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (   6 equality;  34 variable)
%            Maximal formula depth :   31 (  19 average)
%            Number of connectives :   64 (   0   ~;   0   |;  15   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   13 (   1 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '2d.Shape',V_C2: '3d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pp_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_Pp_dot_0 )
                = ( '-/2' @ 4 @ ( '^/2' @ ( '2d.x-coord/1' @ V_Pp_dot_0 ) @ 2 ) ) ) ) )
        & ( V_C2
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_Pp: '3d.Point'] :
              ? [V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_L: '3d.Shape',V_x: 'R'] :
                ( ( V_P
                  = ( '3d.point/3' @ V_x @ 0 @ 0 ) )
                & ( '<=/2' @ ( '-/1' @ 1 ) @ V_x )
                & ( '<=/2' @ V_x @ 1 )
                & ( '3d.line-type/1' @ V_L )
                & ( '3d.perpendicular/2' @ V_L @ '3d.x-axis/0' )
                & ( '3d.on/2' @ V_P @ V_L )
                & ( '3d.intersect/3' @ ( '3d.import-2d-shape/1' @ V_C ) @ V_L @ V_Q )
                & ? [V_alpha: '3d.Shape'] :
                    ( ( '3d.plane-type/1' @ V_alpha )
                    & ( '3d.is-equilateral-triangle/3' @ V_P @ V_Q @ V_R )
                    & ( '3d.perpendicular/2' @ V_alpha @ V_L )
                    & ( '3d.on/2' @ V_P @ V_alpha )
                    & ( '3d.on/2' @ V_Q @ V_alpha )
                    & ( '3d.on/2' @ V_R @ V_alpha ) )
                & ( '3d.on/2' @ V_Pp @ ( '3d.triangle/3' @ V_P @ V_Q @ V_Ry ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_C2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( '*/2' @ 203 @ ( 'sqrt/1' @ 3 ) ) @ 30 ) ) ),
    answer_to(p_question,[])).
