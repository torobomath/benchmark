%% DOMAIN:    Algebra, misc
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Find all polynomials f with real coeffcients such that for all
%% reals a,b,c such that ab + bc + ca = 0 we have the following relations
%% f (a - b) + f (b - c) + f (c - a) = 2f (a + b + c).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   4 equality;  24 variable)
%            Maximal formula depth :   15 (  13 average)
%            Number of connectives :   51 (   0   ~;   0   |;   1   &;  49   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   3   !;   3   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ 'R2R'
    @ ^ [V_P: 'R2R'] :
        ( ? [V_as: ( 'ListOf' @ $real )] :
            ( V_P
            = ( 'poly-fun/1' @ V_as ) )
        & ! [V_a: $real,V_b: $real,V_c: $real] :
            ( ( ( $sum @ ( $product @ V_a @ V_b ) @ ( $sum @ ( $product @ V_b @ V_c ) @ ( $product @ V_c @ V_a ) ) )
              = 0.0 )
           => ( ( $sum @ ( 'funapp/2' @ V_P @ ( $difference @ V_a @ V_b ) ) @ ( $sum @ ( 'funapp/2' @ V_P @ ( $difference @ V_b @ V_c ) ) @ ( 'funapp/2' @ V_P @ ( $difference @ V_c @ V_a ) ) ) )
              = ( $product @ 2.0 @ ( 'funapp/2' @ V_P @ ( $sum @ V_a @ ( $sum @ V_b @ V_c ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_P_dot_0: 'R2R'] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( V_P_dot_0
      = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p_question,[])).

