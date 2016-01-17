{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE GADTs #-}

module PossibleWorldSemantics where

-- universe of discourse
data Universe

-- phantom types
data Individual
data Predicate
data Relation

-- content
-- contents of expressions in possible world semantics are intensions
type Content = Intension
-- intensions are functions from circumstances to references (extension)
-- (cirumstance: state of the world during evaluation)
type Intension = Circumstance -> Universe

-- circumstance of evaluation
-- a concrete representation for circumstances has not yet been defined
data Circumstance

-- context of utterance
-- a concrete representation for contexts has not yet been defined
data Context

-- Character of an expression
-- Character is a function associated to indexicals
-- it is the contentual disposition of an expression
type Character = Context -> Intension

-- Syntax
-- building blocks of the logical form of a sentence
-- assumption: the logical form of a sentence is given
newtype ObjName = ObjName { getObjName :: String }
newtype PredName = PredName { getPredName :: String }
newtype RelName = RelName { getRelName :: String }

data Term a where
    Name :: ObjName -> Term Individual
    Predicate :: PredName -> Term Predicate
    Relation :: RelName -> Term Relation

data Sentence
    = PredSentence (Term Predicate) (Term Individual)
    | PredRelation (Term Relation) (Term Individual) (Term Individual)

data Expression a
    -- rigid designator
    = T (Term a)
    | S Sentence
    -- Indexical: Term or Sentence whichs content differs depending on context
    | I (Expression a) Character

-- (propositional) semantics
-- semantics assigns meaning to an expression
-- assumption: a semantic "knows" the character of an expression.
-- character + content = meaning of an expression.
semantics :: Expression a -> Context -> Intension
semantics = undefined

-- evaluation function
-- meaning of contents: references (extensions)
-- Frege: content determines reference
-- no, this does not necessarily have to go to the universe ...
-- also the function space for predicates and relations ...
eval :: Intension -> Circumstance -> Universe
eval i c = i c

