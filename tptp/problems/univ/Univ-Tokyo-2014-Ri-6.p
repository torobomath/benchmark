%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2014, Science Course, Problem 6
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-04-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  338 (  10 equality;  79 variable)
%            Maximal formula depth :   27 (  21 average)
%            Number of connectives :  314 (   0   ~;   4   |;  37   &; 273   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;  11   ?;  11   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_O: '2d.Point',V_D: '2d.Shape',V_Pf: '2d.Shape',V_Qf: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_d: '2d.Point'] :
                ( ( V_O = '2d.origin/0' )
                & ( V_Pf
                  = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) )
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q_dot_0: '2d.Point'] :
                          ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q_dot_0 ) )
                          & ( '<=/2' @ ( '2d.x-coord/1' @ V_q_dot_0 ) @ 2 ) ) ) ) )
                & ( '2d.on/2' @ V_P @ V_Pf )
                & ( V_Qf
                  = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ ( 'sqrt/1' @ 3 ) ) @ 'nil/0' ) ) ) )
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q: '2d.Point'] :
                          ( ( '<=/2' @ ( '-/1' @ 2 ) @ ( '2d.x-coord/1' @ V_q ) )
                          & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ 0 ) ) ) ) )
                & ( '2d.on/2' @ V_Q @ V_Qf )
                & ( ( '+/2' @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) )
                  = 6 )
                & ( '2d.on/2' @ V_d @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) )
        & ( '<=/2' @ 0 @ V_s )
        & ( '<=/2' @ V_s @ 2 )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t ) @ V_D ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_O: '2d.Point',V_Pf: '2d.Shape',V_Qf: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_d: '2d.Point'] :
              ( ( V_O = '2d.origin/0' )
              & ( V_Pf
                = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) )
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_q_dot_0: '2d.Point'] :
                        ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q_dot_0 ) )
                        & ( '<=/2' @ ( '2d.x-coord/1' @ V_q_dot_0 ) @ 2 ) ) ) ) )
              & ( '2d.on/2' @ V_P @ V_Pf )
              & ( V_Qf
                = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ ( 'sqrt/1' @ 3 ) ) @ 'nil/0' ) ) ) )
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_q: '2d.Point'] :
                        ( ( '<=/2' @ ( '-/1' @ 2 ) @ ( '2d.x-coord/1' @ V_q ) )
                        & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ 0 ) ) ) ) )
              & ( '2d.on/2' @ V_Q @ V_Qf )
              & ( ( '+/2' @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) )
                = 6 )
              & ( '2d.on/2' @ V_d @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( ( '<=/2' @ ( '*/2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ V_s ) @ V_t_dot_0 )
        & ( '<=/2' @ V_t_dot_0 @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 3 ) @ ( '+/2' @ V_s @ 4 ) ) )
        & ( '<=/2' @ 1 @ V_s )
        & ( '<=/2' @ V_s @ 2 ) )
      | ( ( '<=/2' @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 3 ) @ ( '-/2' @ 4 @ V_s ) ) @ V_t_dot_0 )
        & ( '<=/2' @ V_t_dot_0 @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 6 ) @ ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ 9 ) ) )
        & ( '<=/2' @ 0 @ V_s )
        & ( '<=/2' @ V_s @ 1 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_s: 'R',V_t: 'R'] :
        ( ( ( '<=/2' @ 1 @ V_s )
          & ( '<=/2' @ V_s @ 2 )
          & ( '<=/2' @ ( '*/2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ V_s ) @ V_t )
          & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 3 ) @ ( '+/2' @ V_s @ 4 ) ) ) )
        | ( ( '<=/2' @ 0 @ V_s )
          & ( '<=/2' @ V_s @ 1 )
          & ( '<=/2' @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 3 ) @ ( '-/2' @ 4 @ V_s ) ) @ V_t )
          & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 6 ) @ ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ 9 ) ) ) )
        | ( ( '<=/2' @ -1 @ V_s )
          & ( '<=/2' @ V_s @ 0 )
          & ( '<=/2' @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 3 ) @ ( '+/2' @ 4 @ V_s ) ) @ V_t )
          & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 6 ) @ ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ 9 ) ) ) )
        | ( ( '<=/2' @ -2 @ V_s )
          & ( '<=/2' @ V_s @ -1 )
          & ( '<=/2' @ ( '*/2' @ ( '-/1' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) @ V_s ) @ V_t )
          & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) @ 3 ) @ ( '+/2' @ ( '-/1' @ V_s ) @ 4 ) ) ) ) ) ),
    answer_to(p2_question,[])).
