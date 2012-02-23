-- Unreadable, but still tweetable.
result = [if null n then show i else n|(i,n)<-[(x,foldr (++) "" [z|(y,z)<-[(3,"Fizz"),(5,"Buzz")],x `mod` y == 0])|x<-[1..100]]]
