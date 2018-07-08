# docker-shinyserver

[![GitHub issues](https://img.shields.io/github/issues/jinseob2kim/docker-shinyserver.svg)](https://github.com/jinseob2kim/docker-shinyserver/issues)
[![GitHub forks](https://img.shields.io/github/forks/jinseob2kim/docker-shinyserver.svg)](https://github.com/jinseob2kim/docker-shinyserver/network)
[![GitHub stars](https://img.shields.io/github/stars/jinseob2kim/docker-shinyserver.svg)](https://github.com/jinseob2kim/docker-shinyserver/stargazers)
[![GitHub license](https://img.shields.io/github/license/jinseob2kim/docker-shinyserver.svg)](https://github.com/jinseob2kim/docker-shinyserver/blob/master/LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/google/skia.svg)](https://github.com/jinseob2kim/docker-shinyserver)

Docker images for shiny server with some additional packages

## Introduce

Original docker image: https://github.com/rocker-org/shiny 


I add some useful packaes for shiny: **DT, data.table, ggplot2, devtools, epiDisplay, tableone, svglite, plotROC, pROC, labelled, geepack, lme4, PredictABEL,  shinythemes**


## Image download & run
Assume Local shinyapps in `/home/js/ShinyApps` & logs in `/home/js/ShinyApps/log`


```shell
docker run --rm -d -p 3838:3838 \
    -v /home/js/ShinyApps:/srv/shiny-server/ \
    -v /home/js/ShinyApps/log:/var/log/shiny-server/ \
    --name js jinseob2kim/docker-shinyserver
```

Setting for figure download in shiny server

```shell
docker exec js chown -R shiny:shiny /srv/shiny-server
```

## Run 

1. Local cumputer : http://localhost/shiny


2. Server : **Your IP**/shiny