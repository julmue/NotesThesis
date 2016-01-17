{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE GADTs #-}

module Indexicals where

-- universe of discourse
data Universe

-- phantom types
data Individual
data Predicate
data Relation

-- content is not defined at this stage
-- later: possible worlds, intensions, senses
data Content

-- what a context is is not defined, yet (time/locationstamp,...)
-- other possibility:
-- type Context = Expression -> Content
data Context

-- Character is a function associated to indexicals
-- it is the contentual disposition of an expression
type Character = Context -> Content

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
    = T (Term a)
    | S Sentence
    -- Indexical: Term or Sentence whichs content differs depending on context
    | I (Expression a) Character

-- semantics assigns meaning to an expression
-- assumption: a semantic "knows" the character of an expression.
-- character + content = meaning of an expression.
semantics :: Expression a -> Content
semantics = undefined

-- Frege: content determines reference
eval :: Content -> Universe
eval = undefined

