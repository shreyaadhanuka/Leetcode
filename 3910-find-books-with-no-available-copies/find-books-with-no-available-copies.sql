# Write your MySQL query statement below
select l.book_id, title, author, genre, publication_year,total_copies as current_borrowers
from library_books l join borrowing_records b on l.book_id = b.book_id where return_date is null group by b.book_id having count(*) = l.total_copies order by current_borrowers desc, title