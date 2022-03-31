mapMaybe :: (a -> b) -> Maybe a -> Maybe b
mapMaybe g Nothing = Nothing
mapMaybe g (Just x) = Just (g x)

squashMaybe :: Maybe (Maybe a) -> Maybe a
squashMaybe (Just (Just x)) = Just x
squashMaybe _ = Nothing  

composeMaybe :: (a -> Maybe b) ->
                (b -> Maybe c) ->
                (a -> Maybe c)
composeMaybe f g = squashMaybe . mapMaybe g . f