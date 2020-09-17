AI geometry is the figure a right triangle                                                                          
                                                                                                                    
github                                                                                                              
https://tinyurl.com/y5o9ozk4                                                                                        
https://github.com/rogerjdeangelis/utl-AI-geometry-is-the-figure-a-right-triangle-                                  
                                                                                                                    
This is not a trivial useless example it can apply to higher diemension.                                            
Geometry is critical for AI applications?                                                                           
Principle Components, Eigenvalues and Eigenvectors?                                                                 
                                                                                                                    
  Explanation                                                                                                       
                                                                                                                    
      There are two key R functions                                                                                 
                                                                                                                    
         1. dist function which creates the matrix of distances between all rows (x,y) pairs                        
         2. norm given the length of two(n) sides of a figure compute the length                                    
            of the hyptenuse. (works in higher dimensions?)                                                         
                                                                                                                    
  Solution by Thomasiscoding                                                                                        
  https://stackoverflow.com/users/12158757/thomasiscoding                                                           
                                                                                                                    
StackOverflow                                                                                                       
https://tinyurl.com/yxpuqwad                                                                                        
https://stackoverflow.com/questions/63910157/a-fast-way-to-determine-if-a-triangle-is-rectangular                   
                                                                                                                    
/*                   _                                                                                              
(_)_ __  _ __  _   _| |_                                                                                            
| | `_ \| `_ \| | | | __|                                                                                           
| | | | | |_) | |_| | |_                                                                                            
|_|_| |_| .__/ \__,_|\__|                                                                                           
        |_|                                                                                                         
*/                                                                                                                  
                                                                                                                    
options validvarname=upcase;                                                                                        
libname sd1 "d:/sd1";                                                                                               
                                                                                                                    
data sd1.figurea;                                                                                                   
 input x y;                                                                                                         
cards4;                                                                                                             
0 0                                                                                                                 
3 0                                                                                                                 
3 4                                                                                                                 
;;;;                                                                                                                
run;quit;                                                                                                           
                                                                                                                    
        FIGURE A                                                                                                    
        =========                                                                                                   
                                                                                                                    
      0       X        3                                                                                            
   ---+----------------+------                                                                                      
 4 +  FigureA          +     + 4                                                                                    
   |  -------         /|     |                                                                                      
   |   X    Y        / |     |                                                                                      
   |   0    0       /  |     |                                                                                      
   |   3    0      /   |     |                                                                                      
 3 +   3    4     /    |     + 3                                                                                    
   |             /     |     |                                                                                      
   |        25  /      |     |                                                                                      
   |           /     4 | 16  |                                                                                      
 2 +          / 5      |     + 2                                                                                    
   |         /         |     |                                                                                      
   |        /          |     |                                                                                      
   |       /           |     |                                                                                      
 1 +      /            |     + 1                                                                                    
   |     /             |     |                                                                                      
   |    /              |     |                                                                                      
   |   /       3       |     |                                                                                      
 0 +  *----------------+     + 0                                                                                    
   |           9             |                                                                                      
   ---+----------------+---- -                                                                                      
      0       X        3                                                                                            
                                                                                                                    
  Pythogorean Theorem of right triagles                                                                             
      2    2     2                                                                                                  
     5  = 3   + 4                                                                                                   
                                                                                                                    
    Hypotenuse = sqrt(25)=5                                                                                         
                                                                                                                    
          FIGURE B                                                                                                  
          ========                                                                                                  
                                                                                                                    
      0       X        3                                                                                            
   ---+----------------+---                                                                                         
 4 +                   +  + 4                                                                                       
   |  FigureB         /|  |                                                                                         
   |  -------        / |  |                                                                                         
   |   X    Y       /  |  |                                                                                         
   |   0    0      /   |  |                                                                                         
 3 +   3    0     /    |  + 3                                                                                       
   |   3    4    /     | b|                                                                                         
   |            /      |  |                                                                                         
   |        h  /       |  |                                                                                         
 2 +          /        +  + 2                                                                                       
   |         /       /    |                                                                                         
   |        /      /      |                                                                                         
   |       /     /        |                                                                                         
 1 +      /    /          + 1                                                                                       
   |     /   /  a         |                                                                                         
   |    /  /              |                                                                                         
   |   / /                |                                                                                         
 0 +   +                  + 0                                                                                       
   |                      |                                                                                         
   ---+----------------+---                                                                                         
      0       X        3                                                                                            
                                                                                                                    
      2     2    2                                                                                                  
     h  ^= a  + b                                                                                                   
                                                                                                                    
data sd1.figureb;                                                                                                   
 input x y;                                                                                                         
cards4;                                                                                                             
0 0                                                                                                                 
3 2                                                                                                                 
3 4                                                                                                                 
;;;;                                                                                                                
run;quit;                                                                                                           
                                                                                                                    
/*           _               _                                                                                      
  ___  _   _| |_ _ __  _   _| |_                                                                                    
 / _ \| | | | __| `_ \| | | | __|                                                                                   
| (_) | |_| | |_| |_) | |_| | |_                                                                                    
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                   
                |_|                                                                                                 
*/                                                                                                                  
                                                                                                                    
* fromR macro variable is assugned by R;                                                                            
                                                                                                                    
%put The statement Is FIgureA a right triangle is  &fromr;                                                          
The statement Is FIgureA a right triangle is  TRUE                                                                  
                                                                                                                    
%put The statement Is FIgureB a right triangle is  &fromr;                                                          
The statement Is FIgureA a right triangle is  FALSE                                                                 
                                                                                                                    
/*                                                                                                                  
 _ __  _ __ ___   ___ ___  ___ ___                                                                                  
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                 
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                 
| .__/|_|  \___/ \___\___||___/___/                                                                                 
|_|                                                                                                                 
*/                                                                                                                  
                                                                                                                    
%symdel fromr tbl / nowarn;                                                                                         
                                                                                                                    
%macro isRightTriangle(tbl);                                                                                        
                                                                                                                    
/* %let tbl=figureB; */                                                                                             
                                                                                                                    
%utl_submit_r64(resolve('                                                                                           
library(haven);                                                                                                     
df<-read_sas("d:/sd1/&tbl..sas7bdat");                                                                              
" distance matrix ";                                                                                                
dist(df);                                                                                                           
" max distance in distance matrix ";                                                                                
max(d <- c(dist(df)));                                                                                              
" flatten distance matrix ";                                                                                        
d <- c(dist(df));                                                                                                   
d;                                                                                                                  
" drop max distance and compute length of hypotenuse using shorter legs ";                                          
norm(d[-which.max(d)],"2");                                                                                         
" check for equalaty ";                                                                                             
isRightTriangle <- function(df) isTRUE(all.equal(max(d <- c(dist(df))), norm(d[-which.max(d)],"2"),));              
isRightTriangle(df);                                                                                                
res<-print(isRightTriangle(df));                                                                                    
writeClipboard(as.character(paste(res, collapse = " ")));                                                           
str(res);                                                                                                           
'),returnvar=fromr);                                                                                                
                                                                                                                    
%mend isRightTriangle;                                                                                              
                                                                                                                    
%utlnopts; * shorten the log;                                                                                       
                                                                                                                    
%isRightTriangle(figureA);                                                                                          
%put The statement Is FIgureA a right triangle is  &fromr;                                                          
                                                                                                                    
%isRightTriangle(figureB);                                                                                          
%put The statement Is FIgureB a right triangle is  &fromr;                                                          
                                                                                                                    
%utlopts; * turn debug options on;                                                                                  
                                                                                                                    
/*                                                                                                                  
| | ___   __ _                                                                                                      
| |/ _ \ / _` |                                                                                                     
| | (_) | (_| |                                                                                                     
|_|\___/ \__, |                                                                                                     
         |___/                                                                                                      
*/                                                                                                                  
                                                                                                                    
MLOGIC(UTLNOPTS):  Beginning execution.                                                                             
MLOGIC(UTLNOPTS):  Parameter NOTE2ERR has value nonote2err                                                          
MLOGIC(UTLNOPTS):  Parameter NONOTES has value nonotes                                                              
SYMBOLGEN:  Macro variable NONOTES resolves to nonotes                                                              
MPRINT(UTLNOPTS):   OPTIONS MSGLEVEL=N FIRSTOBS=1 NONUMBER MLOGICNEST MPRINTN                                       
NOSOURCE2 NOMLOGIC NOMPRINT NOCENTER                                                                                
library(haven);df<-read_sas("d:/sd1/figureA.sas7bdat");" distance matrix ";di                                       
 <- c(dist(df));d;" drop max distance and compute length of hypotenuse using                                        
f) isTRUE(all.equal(max(d <- c(dist(df))), norm(d[-which.max(d)],"2"),));isRi                                       
e = " ")));str(res);                                                                                                
> library(haven);df<-read_sas("d:/sd1/figureA.sas7bdat");" distance matrix ";                                       
;d <- c(dist(df));d;" drop max distance and compute length of hypotenuse usin                                       
(df) isTRUE(all.equal(max(d <- c(dist(df))), norm(d[-which.max(d)],"2"),));is                                       
pse = " ")));str(res);                                                                                              
                                                                                                                    
[1] " distance matrix "                                                                                             
  1 2                                                                                                               
2 3                                                                                                                 
3 5 4                                                                                                               
                                                                                                                    
[1] " max distance in distance matrix "                                                                             
[1] 5                                                                                                               
                                                                                                                    
[1] " flatten distance matrix "                                                                                     
[1] 3 5 4                                                                                                           
                                                                                                                    
[1] " drop max distance and compute length of hypotenuse using shorter legs "                                       
[1] 5                                                                                                               
                                                                                                                    
[1] " check for equalaty "                                                                                          
[1] TRUE                                                                                                            
>                                                                                                                   
Stderr output:                                                                                                      
Warning message:                                                                                                    
package 'haven' was built under R version 3.6.3                                                                     
                                                                                                                    
macro variable fromr = TRUE                                                                                         
The statement Is FIgureA a right triangle is  TRUE                                                                  
                                                                                                                    
