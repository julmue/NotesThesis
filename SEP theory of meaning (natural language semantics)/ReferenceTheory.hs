{-# LANGUAGE EmptyDataDecals #-}
{-# LANGUAGE GADTs #-}

module ReferenceTheory where

-- the names have to be stratified to?
-- because prediactes and relations can not be in the universe
data Infividual
data Predicate
data Relation

-- names in the universe
newtype Name = Name { getName :: String }
-- names in the function space over the universe
-- predicates and relations can be modelled via HOF
-- does function space contain all sorts of functions?
newtype PredName = PredName { getPredName :: String }
newtype RelName = RelName { getPredName :: String }

-- Term, Sentence, Expression are syntactical categories?
data Term a where
    -- an object from the universe U
    Name :: Name -> Term Individual
    -- an object from 2^U
    Predicate :: PredName -> Term Predicate
    -- an object form 2^(U x U)
    Relation :: RelName -> Term Relation

-- Propositional attitude ascriptions are missing and further fragments
data Sentence
    = PredSentence (Term Predicate) (Term Individual)
    | PredRelation (Term Relation) (Term Individual) (Term Individual)

data Expression
    = T Term
    | S Sentence

-- evaluation function of reference theory
eval :: Expression -> Maybe Universe
eval (T Name n)  = lookup n universe
eval (T Predicate p) = lookup p functionspace
eval (T Relation r) = lookup r functionspace
eval (S PredSentence p i) = (eval p) <*> (eval i)
eval (S RelSentence r o1 o2) = (eval r) <*> (eval o1) <*> (eval o2)
