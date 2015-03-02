R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>  pecip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/pecip.csv")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'C:/Users/Emily/Documents/enield/homework2/data/pecip.csv': No such file or directory
> precip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precip.csv")
> rwi <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/rwi.csv")
> library(ggplot2)
> library(dplyr)
Error in library(dplyr) : there is no package called 'dplyr'
> library(tidyr)
Error in library(tidyr) : there is no package called 'tidyr'
> library(magrittr)
Error in library(magrittr) : there is no package called 'magrittr'
> install.packages('dplyr')
Installing package into 'C:/Users/Emily/Documents/R/win-library/3.1'
(as 'lib' is unspecified)
also installing the dependencies 'assertthat', 'R6', 'magrittr', 'lazyeval', 'DBI', 'BH'

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/assertthat_0.1.zip'
Content type 'application/zip' length 44935 bytes (43 Kb)
opened URL
downloaded 43 Kb

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/R6_2.0.1.zip'
Content type 'application/zip' length 123252 bytes (120 Kb)
opened URL
downloaded 120 Kb

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/magrittr_1.5.zip'
Content type 'application/zip' length 152031 bytes (148 Kb)
opened URL
downloaded 148 Kb

Warning in install.packages :
  downloaded length 152031 != reported length 152031
trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/lazyeval_0.1.10.zip'
Content type 'application/zip' length 63059 bytes (61 Kb)
opened URL
downloaded 61 Kb

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/DBI_0.3.1.zip'
Content type 'application/zip' length 153944 bytes (150 Kb)
opened URL
downloaded 150 Kb

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/BH_1.55.0-3.zip'
Content type 'application/zip' length 12472026 bytes (11.9 Mb)
opened URL
downloaded 11.9 Mb

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/dplyr_0.4.1.zip'
Content type 'application/zip' length 2583888 bytes (2.5 Mb)
opened URL
downloaded 2.5 Mb

package 'assertthat' successfully unpacked and MD5 sums checked
package 'R6' successfully unpacked and MD5 sums checked
package 'magrittr' successfully unpacked and MD5 sums checked
package 'lazyeval' successfully unpacked and MD5 sums checked
package 'DBI' successfully unpacked and MD5 sums checked
package 'BH' successfully unpacked and MD5 sums checked
package 'dplyr' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Emily\AppData\Local\Temp\RtmpUHu5EC\downloaded_packages
> install.packages('tidyr')
Installing package into 'C:/Users/Emily/Documents/R/win-library/3.1'
(as 'lib' is unspecified)
also installing the dependency 'stringi'

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/stringi_0.4-1.zip'
Content type 'application/zip' length 13436804 bytes (12.8 Mb)
opened URL
downloaded 12.8 Mb

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/tidyr_0.2.0.zip'
Content type 'application/zip' length 77725 bytes (75 Kb)
opened URL
downloaded 75 Kb

package 'stringi' successfully unpacked and MD5 sums checked
package 'tidyr' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Emily\AppData\Local\Temp\RtmpUHu5EC\downloaded_packages
> > install.packages('tidyr')
Error: unexpected '>' in ">"
> install.packages('magrittr')
Installing package into 'C:/Users/Emily/Documents/R/win-library/3.1'
(as 'lib' is unspecified)
trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.1/magrittr_1.5.zip'
Content type 'application/zip' length 152031 bytes (148 Kb)
opened URL
downloaded 148 Kb

package 'magrittr' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Emily\AppData\Local\Temp\RtmpUHu5EC\downloaded_packages
> library(dplyr)

Attaching package: 'dplyr'

The following object is masked from 'package:stats':
  
  filter

The following objects are masked from 'package:base':
  
  intersect, setdiff, setequal, union

> library(tidyr)
> library(magrittr)

Attaching package: 'magrittr'

The following object is masked from 'package:tidyr':
  
  extract

> summary(rwi)
year           rwi            samp.depth   
Min.   :-136   Min.   :-0.0330   Min.   : 1.00  
1st Qu.: 399   1st Qu.: 0.6610   1st Qu.: 8.00  
Median : 934   Median : 0.9660   Median :13.00  
Mean   : 934   Mean   : 0.9765   Mean   :16.35  
3rd Qu.:1469   3rd Qu.: 1.2590   3rd Qu.:23.00  
Max.   :2004   Max.   : 3.0640   Max.   :66.00  
> tidy.precip %>% group_by(month) %>%
  +     summarize(precip=mean(precip, na.rm=TRUE)) %>%
  +     ggplot(data=., aes(month, precip)) + geom_bar(stat='identity') + labs(y='Precipitation (in)')
Error in eval(expr, envir, enclos) : object 'tidy.precip' not found
> library(tidyr)
> temp.data <- group_by(tidy.precip, month)
Error in group_by_(.data, .dots = lazyeval::lazy_dots(...), add = add) : 
  object 'tidy.precip' not found
> temp.data <- summarize(temp.data, precip=mean(precip, na.rm=TRUE))
Error in summarise_(.data, .dots = lazyeval::lazy_dots(...)) : 
  object 'temp.data' not found
> ggplot(temp.data, aes(month, precip)) + geom_bar(stat='identity') + labs(y='Precipitation (in)')
Error in ggplot(temp.data, aes(month, precip)) : 
  object 'temp.data' not found
> library(tidyr)
> filter(rwi, year >= 1895) %>% ggplot(data=.) + geom_line(aes(x=year, y=rwi))
> temp.data <- gather(data=precip, key=month, value=precip, -year)
> head(temp.data)
year month precip
1 1895   Jan   1.08
2 1896   Jan   0.25
3 1897   Jan   1.29
4 1898   Jan   1.13
5 1899   Jan   0.22
6 1900   Jan   0.69
> library(tidyr)
> summary(precip)
year           Jan             Feb              Mar              Apr              May              Jun        
Min.   :1895   Min.   :0.020   Min.   :0.0300   Min.   :0.0200   Min.   :0.0100   Min.   :0.0000   Min.   :0.0000  
1st Qu.:1925   1st Qu.:0.335   1st Qu.:0.3500   1st Qu.:0.4475   1st Qu.:0.2275   1st Qu.:0.1500   1st Qu.:0.2450  
Median :1954   Median :0.710   Median :0.6800   Median :0.6950   Median :0.5000   Median :0.3600   Median :0.6050  
Mean   :1954   Mean   :0.837   Mean   :0.8341   Mean   :0.8645   Mean   :0.6528   Mean   :0.5436   Mean   :0.7132  
3rd Qu.:1984   3rd Qu.:1.198   3rd Qu.:1.1575   3rd Qu.:1.2425   3rd Qu.:0.8725   3rd Qu.:0.8025   3rd Qu.:1.0925  
Max.   :2014   Max.   :2.790   Max.   :3.3100   Max.   :3.1800   Max.   :2.9800   Max.   :3.0100   Max.   :2.5000  
Jul             Aug             Sep             Oct              Nov              Dec         
Min.   :0.860   Min.   :0.600   Min.   :0.030   Min.   :0.0000   Min.   :0.0000   Min.   :-9.9900  
1st Qu.:1.875   1st Qu.:2.252   1st Qu.:1.058   1st Qu.:0.3875   1st Qu.:0.2050   1st Qu.: 0.3675  
Median :2.565   Median :2.810   Median :1.775   Median :0.8900   Median :0.5900   Median : 0.7800  
Mean   :2.660   Mean   :2.856   Mean   :1.821   Mean   :1.1472   Mean   :0.7254   Mean   : 0.9164  
3rd Qu.:3.290   3rd Qu.:3.393   3rd Qu.:2.433   3rd Qu.:1.6525   3rd Qu.:0.9700   3rd Qu.: 1.4600  
Max.   :5.960   Max.   :5.820   Max.   :5.110   Max.   :5.1800   Max.   :4.0300   Max.   : 3.9200  
> ggplot(data=precip) + geom_line(aes(x=year,y=Aug)) + labs(y="in", title="August Precipitation")
> temp.data <- gather(data=precip, key=month, value=precip, -year)
> head(temp.data)
year month precip
1 1895   Jan   1.08
2 1896   Jan   0.25
3 1897   Jan   1.29
4 1898   Jan   1.13
5 1899   Jan   0.22
6 1900   Jan   0.69
> tidy.precip <- arrange(temp.data, year, month)
> head(tidy.precip)
year month precip
1 1895   Jan   1.08
2 1895   Feb   0.78
3 1895   Mar   0.11
4 1895   Apr   0.10
5 1895   May   1.12
6 1895   Jun   0.63
> temp.data <- mutate(tidy.precip, date.str = paste(year, month, '01'))
> head(temp.data)
year month precip    date.str
1 1895   Jan   1.08 1895 Jan 01
2 1895   Feb   0.78 1895 Feb 01
3 1895   Mar   0.11 1895 Mar 01
4 1895   Apr   0.10 1895 Apr 01
5 1895   May   1.12 1895 May 01
6 1895   Jun   0.63 1895 Jun 01
> temp.data <- mutate(temp.data, date=as.Date(date.str, '%Y %B %d'))
> head(temp.data)
year month precip    date.str       date
1 1895   Jan   1.08 1895 Jan 01 1895-01-01
2 1895   Feb   0.78 1895 Feb 01 1895-02-01
3 1895   Mar   0.11 1895 Mar 01 1895-03-01
4 1895   Apr   0.10 1895 Apr 01 1895-04-01
5 1895   May   1.12 1895 May 01 1895-05-01
6 1895   Jun   0.63 1895 Jun 01 1895-06-01
> temp.data <- group_by(tidy.precip, month)
> temp.data <- summarize(temp.data, precip=mean(precip, na.rm=TRUE))
> ggplot(temp.data, aes(month, precip)) + geom_bar(stat='identity') + labs(y='Precipitation (in)')
> precip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precip.csv")
> View(tidy.precip)
> ggplot(temp.data, aes(month, precip)) + geom_bar(stat='identity') + labs(y='Precipitation (in)')
> View(temp.data)
> View(precip)
> View(precip)
> View(rwi)
> ggplot(dat, aes(x=xvar, y=yvar)) +
  +     geom_point(shape=1)  
Error in ggplot(dat, aes(x = xvar, y = yvar)) : object 'dat' not found
> ggplot(data=precip) + geom_point(aes(x=year, y=Jan))
> ggplot(data=precip) + geom_point(aes(x=year, y=rwi))
Don't know how to automatically pick scale for object of type data.frame. Defaulting to continuous
Error: Aesthetics must either be length one, or the same length as the dataProblems:rwi
> ggplot(data=precip) + ggplot(data=rwi)+ geom_point(aes(x=year, y=rwi))
Error in p + o : non-numeric argument to binary operator
In addition: Warning message:
Incompatible methods ("+.gg", "Ops.data.frame") for "+" 
> View(tidy.precip)
> View(temp.data)
> View(tidy.precip)
> View(precip)
> ggplot(data=precip) + geom_point(aes(x=year, y=rwi))
Don't know how to automatically pick scale for object of type data.frame. Defaulting to continuous
Error: Aesthetics must either be length one, or the same length as the dataProblems:rwi
> precip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precip.csv")
> View(precip)
> ggplot(data=precip) + geom_point(aes(x=year, y=rwi))
Warning message:
  Removed 10 rows containing missing values (geom_point). 
> View(precip)
> ggplot(data=precip) + geom_point(aes(x=jan, y=rwi))
Error in eval(expr, envir, enclos) : object 'jan' not found
> ggplot(data=precip) + geom_point(aes(x=Jan, y=rwi))
Warning message:
  Removed 10 rows containing missing values (geom_point). 
> ggplot(data=precip) + geom_point(aes(x=year, y=rwi))+ 
  +     ylab('Tree Ring Width ')+xlab('Pecip in Jan. (inches)')
Warning message:
  Removed 10 rows containing missing values (geom_point). 
> ggplot(data=precip) + geom_point(aes(x=Aug, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Pecip in Aug. (inches)')
Warning message:
  Removed 10 rows containing missing values (geom_point). 
> > ggplot(data=precip) + geom_point(aes(x=Jan, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Jan. (inches)')
Error: unexpected '>' in ">"
> >ggplot(data=precip) + geom_point(aes(x=Jan, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Jan. (inches)')
Error: unexpected '>' in ">"
> ggplot(data=precip) + geom_point(aes(x=Jan, y=rwi)) +  ylab('Tree Ring Width ')+xlab('Precip in Jan. (inches)')
Warning message:
  Removed 10 rows containing missing values (geom_point). 
> rwi.precip <- left_join(precip, rwi, by='year') 
> 
  > cor(rwi.precip$rwi, rwi.precip$Jan)
Error in cor(rwi.precip$rwi, rwi.precip$Jan) : 'x' must be numeric
> cor(rwi.precip$rwi, rwi.precip$Jan, use='complete.obs')
Error in cor(rwi.precip$rwi, rwi.precip$Jan, use = "complete.obs") : 
  'x' must be numeric
> cor(rwi.precip$rwi, rwi.precip$Jul, use='complete.obs')
Error in cor(rwi.precip$rwi, rwi.precip$Jul, use = "complete.obs") : 
  'x' must be numeric
> cor(rwi.precip$rwi, lag(rwi.precip$Dec), use = 'complete.obs')
Error in cor(rwi.precip$rwi, lag(rwi.precip$Dec), use = "complete.obs") : 
  'x' must be numeric
> # The next line is the same but uses the %$%.  It might be easier to read or write
  > rwi.precip %$% cor(rwi, lag(Dec), use='complete.obs')
Error in cor(rwi, lag(Dec), use = "complete.obs") : 
  incompatible dimensions
> rwi.precip <- left_join(precip, rwi, by='year')
> precip <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precip.csv")
> precipEN <- read.csv(file="C:/Users/Emily/Documents/enield/homework2/data/precipEN.csv")
> rwi.precip <- left_join(precip, rwi, by='year') 
> cor(rwi.precip$rwi, rwi.precip$Jan)
[1] NA
> cor(rwi.precip$rwi, rwi.precip$Jan, use='complete.obs')
[1] 0.3158294
> cor(rwi.precip$rwi, rwi.precip$Jul, use='complete.obs')
[1] 0.255625
> cor(rwi.precip$rwi, lag(rwi.precip$Dec), use = 'complete.obs')
[1] 0.4004378
> rwi.precip %$% cor(rwi, lag(Dec), use='complete.obs')
[1] 0.4004378
> rwi.precip <- left_join(rwi, tidy.precip, by='year') %>% filter(year>=1895)
> rwi.precip %>% filter(month=='Jan') %$% cor(rwi, precip, use='complete.obs')
[1] 0.3158294
> rwi.precip %>% filter(month=='Dec') %$% cor(rwi, lag(precip),use='complete.obs')
[1] 0.4004378
> rwi.precip %>% group_by(month) %>% summarise(r=cor(rwi, precip))
Source: local data frame [12 x 2]

month            r
1    Jan  0.315829372
2    Feb  0.304562553
3    Mar  0.244230808
4    Apr  0.274397451
5    May  0.281569478
6    Jun  0.113201718
7    Jul  0.255624983
8    Aug -0.003091787
9    Sep  0.087771788
10   Oct -0.061649633
11   Nov  0.077797480
12   Dec  0.175763184
> rwi.precip %>% group_by(month) %>%
  +     summarize(r=cor(rwi, precip)) %>%
  +     ggplot(data=., aes(month, precip)) + geom_bar(stat='identity') + labs(y='r coefficient') + labs(x='Month')
Don't know how to automatically pick scale for object of type data.frame. Defaulting to continuous
Error: Aesthetics must either be length one, or the same length as the dataProblems:month
> rwi.precip %>% group_by(month) %>%
+     +     summarize(r=cor(rwi, precip))
Error in summarise_(.data, .dots = lazyeval::lazy_dots(...)) : 
argument ".data" is missing, with no default
>     +     ggplot(data=., aes(month, precip)) + geom_bar(stat='identity') + labs(y='r coefficient') + labs(x='Month')
Error in ggplot(data = ., aes(month, precip)) : object '.' not found
> rwi.precip %>% group_by(month) %>%
+     +     summarize(r=cor(rwi, precip)) %>%
+     +     ggplot(data=., aes(month, precip)) + geom_bar(stat='identity') + labs(y='r coefficient') + labs(x='Month')
Error in summarise_(.data, .dots = lazyeval::lazy_dots(...)) : 
argument ".data" is missing, with no default
> rwi.precip %>% group_by(month) %>%
+     +     summarize(r=cor(rwi, precip))
Error in summarise_(.data, .dots = lazyeval::lazy_dots(...)) : 
argument ".data" is missing, with no default
> +     ggplot(data=., aes(month, r)) + geom_bar(stat='identity') + labs(y='r coefficient') + labs(x='Month')
Error in ggplot(data = ., aes(month, r)) : object '.' not found
> View(rwi.precip)
> View(rwi.precip)
> rwi.precip %>% group_by(month) %>% summarize(r=cor(rwi, precip))
Source: local data frame [12 x 2]

month            r
1    Jan  0.315829372
2    Feb  0.304562553
3    Mar  0.244230808
4    Apr  0.274397451
5    May  0.281569478
6    Jun  0.113201718
7    Jul  0.255624983
8    Aug -0.003091787
9    Sep  0.087771788
10   Oct -0.061649633
11   Nov  0.077797480
12   Dec  0.175763184
> rwi.precip %>% group_by(month) %>% summarize(r=cor(rwi, lag(precip)))
Source: local data frame [12 x 2]

month  r
1    Jan NA
2    Feb NA
3    Mar NA
4    Apr NA
5    May NA
6    Jun NA
7    Jul NA
8    Aug NA
9    Sep NA
10   Oct NA
11   Nov NA
12   Dec NA
> rwi.precip %>% group_by(month) %>% summarize(r=cor(rwi, lag(precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.400437840
2    Feb  0.315476461
3    Mar  0.304795265
4    Apr  0.248024404
5    May  0.277081925
6    Jun  0.281395141
7    Jul  0.113536672
8    Aug  0.255812407
9    Sep -0.004477474
10   Oct  0.088709760
11   Nov -0.061137208
12   Dec  0.076296158
> rwi.precip %>% group_by(month) %>% summarize(r=cor(rwi, (precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.315829372
2    Feb  0.304562553
3    Mar  0.244230808
4    Apr  0.274397451
5    May  0.281569478
6    Jun  0.113201718
7    Jul  0.255624983
8    Aug -0.003091787
9    Sep  0.087771788
10   Oct -0.061649633
11   Nov  0.077797480
12   Dec  0.175763184
> rwi.precip %>% group_by(month) %>% summarize(r=cor(rwi, lag(precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.400437840
2    Feb  0.315476461
3    Mar  0.304795265
4    Apr  0.248024404
5    May  0.277081925
6    Jun  0.281395141
7    Jul  0.113536672
8    Aug  0.255812407
9    Sep -0.004477474
10   Oct  0.088709760
11   Nov -0.061137208
12   Dec  0.076296158
> rwi.precip %>% group_by(month) %>% summarize(r=cor(lag(rwi), (precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.038736123
2    Feb  0.304795265
3    Mar  0.248024404
4    Apr  0.277081925
5    May  0.281395141
6    Jun  0.113536672
7    Jul  0.255812407
8    Aug -0.004477474
9    Sep  0.088709760
10   Oct -0.061137208
11   Nov  0.076296158
12   Dec  0.177996696
> rwi.precip %>% group_by(month) %>% summarize(r=cor(lead(rwi), (precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.315050945
2    Feb  0.306381797
3    Mar  0.252070667
4    Apr  0.312872833
5    May  0.275889822
6    Jun  0.111784923
7    Jul  0.250786023
8    Aug -0.008295097
9    Sep  0.083079759
10   Oct -0.060284775
11   Nov  0.089873586
12   Dec  0.400437840
> rwi.precip %>% filter(month=='Dec')
year    rwi samp.depth month precip
1   1895  1.025         50   Dec   0.23
2   1896  0.512         50   Dec   0.22
3   1897  1.019         50   Dec   0.69
4   1898  1.259         50   Dec   1.19
5   1899  0.417         50   Dec   0.24
6   1900  0.093         50   Dec   0.28
7   1901  0.497         49   Dec   0.22
8   1902  0.494         49   Dec   1.63
9   1903  0.280         49   Dec   0.07
10  1904  0.043         49   Dec   1.64
11  1905  0.755         50   Dec   2.24
12  1906  0.614         50   Dec   3.92
13  1907  1.095         50   Dec   0.11
14  1908  1.363         51   Dec   0.78
15  1909  0.740         51   Dec   1.09
16  1910  0.985         51   Dec   0.20
17  1911  0.787         52   Dec   0.64
18  1912  1.566         52   Dec   1.11
19  1913  0.938         52   Dec   1.61
20  1914  1.455         52   Dec   3.26
21  1915  1.958         52   Dec   1.44
22  1916  1.658         52   Dec   0.52
23  1917  1.507         52   Dec   0.00
24  1918  0.268         52   Dec   1.82
25  1919  1.581         52   Dec   0.97
26  1920  1.884         52   Dec   0.31
27  1921  0.683         52   Dec   0.83
28  1922  0.894         53   Dec   0.36
29  1923  0.382         53   Dec   2.86
30  1924  0.984         53   Dec   1.07
31  1925  0.264         53   Dec   0.53
32  1926  1.175         53   Dec   2.19
33  1927  0.985         53   Dec   1.10
34  1928  0.844         53   Dec   0.39
35  1929  0.687         53   Dec   0.15
36  1930  1.757         53   Dec   0.37
37  1931  1.193         52   Dec   0.90
38  1932  1.511         52   Dec   1.57
39  1933  1.205         52   Dec   0.33
40  1934  0.416         52   Dec   1.21
41  1935  1.604         52   Dec   1.55
42  1936  1.093         54   Dec   0.75
43  1937  1.525         54   Dec   0.89
44  1938  0.421         54   Dec   1.08
45  1939  1.048         54   Dec   0.70
46  1940  1.130         54   Dec   1.99
47  1941  1.591         52   Dec   1.36
48  1942  1.172         54   Dec   1.41
49  1943  0.772         54   Dec   1.13
50  1944  0.888         54   Dec   0.77
51  1945  0.448         54   Dec   0.69
52  1946  0.426         53   Dec   0.36
53  1947  0.556         53   Dec   0.82
54  1948  1.447         53   Dec   1.42
55  1949  0.971         55   Dec   0.94
56  1950  0.404         57   Dec   0.01
57  1951 -0.033         57   Dec   1.29
58  1952  0.667         57   Dec   0.47
59  1953  0.319         56   Dec   0.40
60  1954  0.256         56   Dec   0.20
61  1955  0.176         58   Dec   0.45
62  1956  0.621         58   Dec   0.14
63  1957  0.343         58   Dec   0.25
64  1958  0.891         58   Dec   0.10
65  1959  0.098         61   Dec   1.90
66  1960  0.934         62   Dec   1.20
67  1961  0.616         62   Dec   1.53
68  1962  0.924         64   Dec   1.45
69  1963  0.924         64   Dec   0.10
70  1964  1.255         64   Dec   0.75
71  1965  1.794         64   Dec   3.35
72  1966  1.332         64   Dec   0.62
73  1967  0.538         66   Dec   2.42
74  1968  1.420         66   Dec   1.10
75  1969  1.286         66   Dec   1.01
76  1970  1.396         66   Dec   0.36
77  1971  0.176         66   Dec   1.49
78  1972  0.430         66   Dec   0.81
79  1973  1.192         66   Dec   0.09
80  1974  0.253         66   Dec   0.65
81  1975  1.287         66   Dec   0.67
82  1976  0.751         66   Dec   0.05
83  1977  0.394         66   Dec   0.42
84  1978  0.849         66   Dec   1.92
85  1979  1.109         66   Dec   0.85
86  1980  1.175         66   Dec   0.41
87  1981  0.754         66   Dec   0.03
88  1982  1.351         66   Dec   2.09
89  1983  1.649         66   Dec   0.75
90  1984  1.737         66   Dec   2.88
91  1985  1.805         66   Dec   0.39
92  1986  1.998         66   Dec   1.54
93  1987  1.913         66   Dec   1.93
94  1988  1.381         65   Dec   0.65
95  1989  0.406         65   Dec   0.24
96  1990  0.770         62   Dec   1.76
97  1991  1.432         60   Dec   2.65
98  1992  1.519         60   Dec   2.44
99  1993  1.100         60   Dec   0.27
100 1994  0.870         60   Dec   1.77
101 1995  0.840         60   Dec   0.53
102 1996  0.270         60   Dec   0.09
103 1997  1.586         60   Dec   1.85
104 1998  1.532         60   Dec   0.55
105 1999  1.157         60   Dec   0.39
106 2000  0.591         60   Dec   0.41
107 2001  0.913         60   Dec   0.61
108 2002 -0.033         59   Dec   1.52
109 2003  0.710         59   Dec   0.35
110 2004  0.419         53   Dec   1.19
> rwi.precip %>% filter(month=='Dec') %$% cor(rwi, precip)
[1] 0.1757632
> rwi.precip %>% filter(month=='Dec') %$% cor(rwi, lag(precip))
[1] NA
> rwi.precip %>% filter(month=='Dec') %$% cor(rwi, lag(precip), use='complete.obs')
[1] 0.4004378
> rwi.precip %>% group_by(month) %>% summarize(r=rwi, lag(precip), use='complete.obs'))
Error: unexpected ')' in "rwi.precip %>% group_by(month) %>% summarize(r=rwi, lag(precip), use='complete.obs'))"
> rwi.precip %>% group_by(month) %>% summarize(r=cor(rwi, lag(precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.400437840
2    Feb  0.315476461
3    Mar  0.304795265
4    Apr  0.248024404
5    May  0.277081925
6    Jun  0.281395141
7    Jul  0.113536672
8    Aug  0.255812407
9    Sep -0.004477474
10   Oct  0.088709760
11   Nov -0.061137208
12   Dec  0.076296158
> rwi.precip %>% group_by(month) %>% summarise(r=cor(rwi, lag(precip), use='complete.obs'))
Source: local data frame [12 x 2]

month            r
1    Jan  0.400437840
2    Feb  0.315476461
3    Mar  0.304795265
4    Apr  0.248024404
5    May  0.277081925
6    Jun  0.281395141
7    Jul  0.113536672
8    Aug  0.255812407
9    Sep -0.004477474
10   Oct  0.088709760
11   Nov -0.061137208
12   Dec  0.076296158
> > rwi.precip %>% filter(month=='Jan') %$% cor(rwi, lag(precip), use='complete.obs')
Error: unexpected '>' in ">"
> [1] 0.4004378
Error: unexpected '[' in "["
                    > >rwi.precip %>% filter(month=='Jan') %$% cor(rwi, lag(precip), use='complete.obs')
                    Error: unexpected '>' in ">"
                    > 
                    > 
                    > rwi.precip %>% filter(month=='Jan') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.06468531
                    > 
                    > rwi.precip %>% filter(month=='Feb') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.141715
                    > rwi.precip %>% filter(month=='Mar') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.08305274
                    > rwi.precip %>% filter(month=='Apr') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.1405992
                    > rwi.precip %>% filter(month=='May') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.1792815
                    > rwi.precip %>% filter(month=='Jun') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.07805251
                    > rwi.precip %>% filter(month=='Jul') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.2806443
                    > rwi.precip %>% filter(month=='Aug') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.2604529
                    > rwi.precip %>% filter(month=='Sep') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.253018
                    > rwi.precip %>% filter(month=='Oct') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.2906626
                    > rwi.precip %>% filter(month=='Nov') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.2479463
                    > rwi.precip %>% filter(month=='Dec') %$% cor(rwi, lag(precip), use='complete.obs')
                    [1] 0.4004378
                    > 