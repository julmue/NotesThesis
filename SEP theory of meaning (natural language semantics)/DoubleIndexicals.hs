{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE GADTs #-}

module DoubleIndexicals where

-- universe of discourse
data Universe

-- phantom types
data Individual
data Predicate
data Relation

-- content
-- a concrete representation for contents has not yet been defined
-- later: possible worlds, intensions, senses
data Content

-- circumstance of evaluation
-- a concrete representation for circumstances has not yet been defined
data Circumstance

-- context of utterance
-- a concrete representation for contexts has not yet been defined
data Context

-- Character of an expression
-- Character is a function associated to indexicals
-- it is the contentual disposition of an expression
type Character = Context -> Content

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
semantics :: Expression a -> Context -> Content
semantics = undefined

-- Frege: content determines reference
eval :: Content -> Circumstance -> Universe
eval = undefined

