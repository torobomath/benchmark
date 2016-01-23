%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2012, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  209 (  13 equality;  75 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :  179 (   2   ~;   0   |;  27   &; 150   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   33 (   2 sgn;   0   !;  15   ?;  12   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_st: 'ListOf' @ 'R'] :
      ? [V_l: '2d.Shape',V_s: 'R',V_t: 'R'] :
        ( ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_l )
        & ( '2d.line-type/1' @ V_l )
        & ( V_st
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) )
        & ( '2d.is-slope-of/2' @ V_h @ V_l )
        & ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_a @ V_b ) @ ( '2d.point/2' @ V_s @ V_t ) @ V_l )
        & ~ ( '2d.on/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_l ) ) )).

thf(p2_max_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_OA: 'R'] :
            ? [V_l: '2d.Shape',V_O: '2d.Point',V_A: '2d.Point',V_h: 'R'] :
              ( ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_l )
              & ( '2d.line-type/1' @ V_l )
              & ( '2d.is-slope-of/2' @ V_h @ V_l )
              & ( V_O
                = ( '2d.point/2' @ 0 @ 0 ) )
              & ( '2d.line-symmetry/3' @ V_O @ V_A @ V_l )
              & ( '<=/2' @ -1 @ V_h )
              & ( '<=/2' @ V_h @ 1 )
              & ( V_OA
                = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_O @ V_A ) ) ) ) )
        @ V_m ) )).

thf(p2_min_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_OA: 'R'] :
            ? [V_l: '2d.Shape',V_O: '2d.Point',V_A: '2d.Point',V_h: 'R'] :
              ( ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_l )
              & ( '2d.line-type/1' @ V_l )
              & ( '2d.is-slope-of/2' @ V_h @ V_l )
              & ( V_O
                = ( '2d.point/2' @ 0 @ 0 ) )
              & ( '2d.line-symmetry/3' @ V_O @ V_A @ V_l )
              & ( '<=/2' @ -1 @ V_h )
              & ( '<=/2' @ V_h @ 1 )
              & ( V_OA
                = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_O @ V_A ) ) ) ) )
        @ V_m ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ V_C
                @ ( 'cons/2'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] : 2 ) )
                  @ 'nil/0' ) ) ) ) )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_A: '2d.Point'] :
              ? [V_l: '2d.Shape',V_h: 'R',V_O: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_l )
                & ( '2d.line-type/1' @ V_l )
                & ( '2d.is-slope-of/2' @ V_h @ V_l )
                & ( V_O
                  = ( '2d.point/2' @ 0 @ 0 ) )
                & ( '2d.line-symmetry/3' @ V_O @ V_A @ V_l )
                & ( '<=/2' @ -1 @ V_h )
                & ( '<=/2' @ V_h @ 1 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: 'ListOf' @ 'R'] :
      ( ( V_b
       != ( '+/2' @ ( '*/2' @ V_h @ V_a ) @ 1 ) )
      & ( V_st_dot_0
        = ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ V_a @ ( '^/2' @ V_h @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_b ) @ 2 ) @ V_h ) @ V_a ) ) @ ( '+/2' @ ( '^/2' @ V_h @ 2 ) @ 1 ) ) @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '*/2' @ V_b @ ( '^/2' @ V_h @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ V_h ) ) @ ( '+/2' @ ( '-/1' @ V_b ) @ 2 ) ) ) @ ( '+/2' @ ( '^/2' @ V_h @ 2 ) @ 1 ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_max_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = 2 ) ),
    answer_to(p2_max_question,[])).

thf(p2_min_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( V_m_dot_0
      = ( 'sqrt/1' @ 2 ) ) ),
    answer_to(p2_min_question,[])).

thf(p3_answer,answer,(
    ^ [V_a: 'R'] :
      ( V_a
      = ( '//2' @ 'Pi/0' @ 2 ) ) ),
    answer_to(p3_question,[])).
