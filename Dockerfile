FROM rocker/shiny:latest

MAINTAINER Jinseob Kim "jinseob2kim@gmail.com"



## For dependency
RUN apt-get update && apt-get install -y -t unstable \
    libssl-dev  

RUN R -e "install.packages(c('DT', 'data.table', 'ggplot2', 'devtools', 'epiDisplay', 'tableone', 'svglite', 'plotROC', 'pROC', 'labelled', 'geepack', 'lme4'), repos='https://cran.rstudio.com/')" 


EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]