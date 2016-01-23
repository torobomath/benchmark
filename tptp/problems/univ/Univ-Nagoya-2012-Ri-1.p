%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2012, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  332 (  15 equality; 100 variable)
%            Maximal formula depth :   31 (  16 average)
%            Number of connectives :  299 (   3   ~;   4   |;  27   &; 263   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   35 (   2 sgn;   3   !;   4   ?;  19   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_st: 'R'] :
      ? [V_u: 'R',V_v: 'R'] :
        ( ( V_st
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ V_l
                @ ( 'cons/2'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: 'R'] :
                          ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_0 ) ) ) )
                  @ 'nil/0' ) ) ) ) )
        & ( V_l
          = ( '2d.line2d/3' @ V_u @ 1 @ V_v ) )
        & ( '2d.tangent/3' @ V_l
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '-/2' @ ( '^/2' @ V_x @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x ) ) ) )
          @ ( '2d.point/2' @ V_t @ ( '-/2' @ ( '^/2' @ V_t @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_t ) ) ) )
        & ( '>/2' @ V_a @ 0 )
        & ( V_t != 0 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( V_x
        = ( 'cardinality-of/1'
          @ ( 'set-by-def/1'
            @ ^ [V_l: '2d.Shape'] :
                ( ( '2d.line-type/1' @ V_l )
                & ( '2d.on/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ V_a ) @ V_b ) @ V_l )
                & ( '2d.tangent/2' @ V_l
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: 'R'] :
                          ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_0 ) ) ) ) )
                & ( '>/2' @ V_a @ 0 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ! [V_a: 'R',V_b: 'R'] :
        ( ( ( '>/2' @ V_a @ 0 )
          & ( 2
            = ( 'cardinality-of/1'
              @ ( 'set-by-def/1'
                @ ^ [V_l: '2d.Shape'] :
                    ( ( '2d.line-type/1' @ V_l )
                    & ( '2d.on/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ V_a ) @ V_b ) @ V_l )
                    & ( '2d.tangent/2' @ V_l
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x_dot_1: 'R'] :
                              ( '-/2' @ ( '^/2' @ V_x_dot_1 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_1 ) ) ) ) ) ) ) ) )
          & ! [V_ls: '2d.Shape'] :
              ( ( ( '2d.line-type/1' @ V_ls )
                & ( '2d.on/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ V_a ) @ V_b ) @ V_ls )
                & ( '2d.tangent/2' @ V_ls
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: 'R'] :
                          ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_0 ) ) ) ) ) )
             => ~ ( '2d.on/2' @ '2d.origin/0' @ V_ls ) ) )
       => ? [V_l1: '2d.Shape',V_l2: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l1 )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ V_a ) @ V_b ) @ V_l1 )
            & ( '2d.tangent/2' @ V_l1
              @ ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x_dot_7: 'R'] :
                      ( '-/2' @ ( '^/2' @ V_x_dot_7 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_7 ) ) ) ) )
            & ( '2d.line-type/1' @ V_l2 )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ V_a ) @ V_b ) @ V_l2 )
            & ( '2d.tangent/2' @ V_l2
              @ ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x_dot_6: 'R'] :
                      ( '-/2' @ ( '^/2' @ V_x_dot_6 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_6 ) ) ) ) )
            & ( '>=/2'
              @ ( '2d.area-of/1'
                @ ( '2d.shape-enclosed-by/1'
                  @ ( 'cons/2' @ V_l1
                    @ ( 'cons/2'
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x_dot_5: 'R'] :
                              ( '-/2' @ ( '^/2' @ V_x_dot_5 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_5 ) ) ) )
                      @ 'nil/0' ) ) ) )
              @ ( '2d.area-of/1'
                @ ( '2d.shape-enclosed-by/1'
                  @ ( 'cons/2' @ V_l2
                    @ ( 'cons/2'
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x_dot_4: 'R'] :
                              ( '-/2' @ ( '^/2' @ V_x_dot_4 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_4 ) ) ) )
                      @ 'nil/0' ) ) ) ) )
            & ( V_x
              = ( '//2'
                @ ( '2d.area-of/1'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ V_l1
                      @ ( 'cons/2'
                        @ ( '2d.graph-of/1'
                          @ ( 'fun/1'
                            @ ^ [V_x_dot_3: 'R'] :
                                ( '-/2' @ ( '^/2' @ V_x_dot_3 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_3 ) ) ) )
                        @ 'nil/0' ) ) ) )
                @ ( '2d.area-of/1'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ V_l2
                      @ ( 'cons/2'
                        @ ( '2d.graph-of/1'
                          @ ( 'fun/1'
                            @ ^ [V_x_dot_2: 'R'] :
                                ( '-/2' @ ( '^/2' @ V_x_dot_2 @ 3 ) @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_x_dot_2 ) ) ) )
                        @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( V_t != 0 )
      & ( V_st_dot_0
        = ( '*/2' @ ( '//2' @ 27 @ 4 ) @ ( '^/2' @ V_t @ 4 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_1: 'Z'] :
      ( ( ( '</2' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '^/2' @ V_a @ 3 ) ) @ V_b )
        & ( '</2' @ V_b @ ( '*/2' @ 6 @ ( '^/2' @ V_a @ 3 ) ) )
        & ( V_x_dot_1 = 3 ) )
      | ( ( V_b
          = ( '*/2' @ ( '-/1' @ 2 ) @ ( '^/2' @ V_a @ 3 ) ) )
        & ( V_x_dot_1 = 2 ) )
      | ( ( V_b
          = ( '*/2' @ 6 @ ( '^/2' @ V_a @ 3 ) ) )
        & ( V_x_dot_1 = 2 ) )
      | ( ( ( '>/2' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '^/2' @ V_a @ 3 ) ) @ V_b )
          | ( '>/2' @ V_b @ ( '*/2' @ 6 @ ( '^/2' @ V_a @ 3 ) ) ) )
        & ( V_x_dot_1 = 1 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_8: 'R'] : ( V_x_dot_8 = 16 ) ),
    answer_to(p3_question,[])).
