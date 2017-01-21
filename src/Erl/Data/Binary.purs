module Erl.Data.Binary (Binary, IOList, toIolist, fromIolist) where

import Prelude
import Data.Monoid
import Data.Semigroup

foreign import data Binary :: *

foreign import data IOList :: *

foreign import toIolist :: Binary -> IOList

foreign import fromIolist :: IOList -> Binary

foreign import eq_ :: Binary -> Binary -> Boolean

instance binaryEq :: Eq Binary where
  eq = eq_

foreign import mempty_ :: IOList

instance applyIolist :: Monoid IOList where
  mempty = mempty_

foreign import append_ :: IOList -> IOList -> IOList

instance semigroupIolist :: Semigroup IOList where
  append = append_
