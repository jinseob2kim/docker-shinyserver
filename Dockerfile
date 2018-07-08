FROM rocker/shiny:latest

MAINTAINER Jinseob Kim "jinseob2kim@gmail.com"

RUN R -e "install.packages(c('DT', 'data.table', 'ggplot2', 'devtools', 'epiDisplay', 'tableone', 'svglite', 'plotROC', 'pROC', 'labelled', 'geepack', 'lme4'), repos='https://cran.rstudio.com/')" 


EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]