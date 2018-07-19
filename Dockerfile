FROM rocker/shiny:latest

MAINTAINER Jinseob Kim "jinseob2kim@gmail.com"



## For dependency
RUN apt-get update && apt-get install -y -t unstable \
    libssl-dev \
    libxml2-dev

RUN R -e "install.packages(c('DT', 'data.table', 'ggplot2', 'devtools', 'epiDisplay', 'tableone', 'svglite', 'plotROC', 'pROC', 'labelled', 'geepack', 'lme4', 'PredictABEL', 'shinythemes', 'maxstat'), repos='https://cran.rstudio.com/')" 

## Private packages by Jinseob Kim
RUN R -e "devtools::install_github(c('jinseob2kim/jstable', 'jinseob2kim/jskm'))"


EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]