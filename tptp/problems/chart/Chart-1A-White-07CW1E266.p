%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E266
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  129 (  15 equality;  50 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   93 (   0   ~;   0   |;   9   &;  81   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   18 (   1 sgn;  12   !;   0   ?;   6   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
          & ( 0
            = ( 'cos/1' @ ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) ) ) )
          & ( ( '//2' @ -1 @ 2 )
            = ( 'cos/1' @ ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) )
          & ( ( '//2' @ ( '-/1' @ ( 'sqrt/1' @ 3 ) ) @ 2 )
            = ( 'cos/1' @ ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) )
          & ( 1
            = ( '2d.distance/2' @ V_B @ V_C ) ) )
       => ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_cosC: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_t: 'R'] :
        ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
          & ( ( '*/2' @ 8 @ V_t )
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( ( '*/2' @ 5 @ V_t )
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( ( '*/2' @ 7 @ V_t )
            = ( '2d.distance/2' @ V_A @ V_B ) ) )
       => ( V_cosC
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) )).

thf(p3_qustion,question,(
    ! [Tv4: $tType] :
      ( 'Find/1'
      @ ^ [V_cosB: 'R'] :
        ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_t: Tv4] :
          ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
            & ( ( '2d.distance/2' @ V_C @ V_A )
              = ( '*/2' @ 2 @ ( '2d.distance/2' @ V_A @ V_B ) ) )
            & ( ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 )
              = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) )
         => ( V_cosB
            = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( V_b_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_cosC_dot_0: 'R'] :
      ( V_cosC_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_cosB_dot_0: 'R'] : ( V_cosB_dot_0 = 0 ) ),
    answer_to(p3_question,[])).
