%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP200
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   41 (   5 equality;  20 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   29 (   0   ~;   0   |;   6   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   5   !;   0   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    0 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_BP: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_circle: '2d.Shape'] :
        ( ( ( 6.0
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 8.0
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 4.0
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( '2d.circle-type/1' @ V_circle )
          & ( '2d.is-inscribed-in/2' @ V_circle @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_B @ V_C ) )
          & ( '2d.on/2' @ V_P @ V_circle ) )
       => ( V_BP
          = ( '2d.distance/2' @ V_B @ V_P ) ) ) )).

thf(p_answer,answer,(
    ^ [V_BP_dot_0: $real] : ( V_BP_dot_0 = 5.0 ) ),
    answer_to(p_question,[])).

