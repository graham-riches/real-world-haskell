-- file: ch03/BookStore.hs
data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)


myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)


type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

data Customer = Customer {
   customerId      :: CustomerID,
   customerName    :: String,
   customerAddress :: Address
} deriving(Show)

customer2 = Customer {
   customerId = 271828,
   customerAddress = [
      "1048576 Disk Drive",
      "Milpitas, CA 95134",
      "USA"
   ],
   customerName = "Jane Q. Citizen"
}