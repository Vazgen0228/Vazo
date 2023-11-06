select sum("runtimeMinutes")/60 as sum_movie
from imdb.title_basics b 
join imdb.title_ratings r 
on r.tconst = b.tconst 
where genres like '%Animation%'
        and "averageRating" > 8
        and "startYear" >= 1990
        and ("titleType" like 'movie'
        or "titleType" like 'tvSeries'
        or "titleType" like 'tvMiniSeries')
