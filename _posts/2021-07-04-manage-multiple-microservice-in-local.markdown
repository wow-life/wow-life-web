---
title: Micro services in Local
layout: post
date: '2021-06-04 16:00:00'
author: Vikhyath Choradia
categories:
- utility
- microservices
tags:
- microservices
permalink: MIL
---

We have all been there when we wanted to start multiple dependent micro service(s) at once in our local to develop / test an application.

Well as a developer I have always believed that writing automation take time but eventually saves time!!


Now that you have read until here you are curious enough to know the solution I have in mind right!!

Let quickly jump to that section below.

## Setup

The setup is quite simple and easy to setup for mac

- ### Install
    - #### Using homebrew
`brew install foreman`

    - #### Using [npm](https://www.npmjs.com/package/foreman)
`npm install -g foreman`

    Note: If you install via npm then replace the command `foreman` with `nf`
- ### Define 

    Go ahead and define a simple `Procfile` as below in `root` folder of all your services

{% include codeCopy.html %}
```yml
<BACKEND_SERVICE_NAME>: cd PATH_TO_SERVICE && <COMMAND_TO_START_THE_SERVICE>
<YET_ANOTHER_BACKEND_SERVICE_NAME>: cd PATH_TO_SERVICE &&  <COMMAND_TO_START_THE_SERVICE>
<FRONTEND_SERVICE_NAME>: cd PATH_TO_SERVICE && <COMMAND_TO_START_THE_SERVICE_2>
```

**Example:**
```yml
web: cd webserver && ./gradlew build>
payment: cd payments &&  rails serve
ui: cd frontend && npm run dev
```

- ### Run 
`foreman start`

**Logs:**
```log
18:51:12: web.1     |  Web Server started listening on 0.0.0.0:8080
18:51:12: payment.1 |  Payments started listening on 0.0.0.0:3000
18:51:12: ui.1      |  node started listening on 0.0.0.0:4000
```

The setup is that simple and easy to use

### Advance usage
You can start multiple instance of the any service to scale and balance the load

`foreman start web=5 payment=3`

**Logs:**
```log
18:51:12: web.1     |  Web Server started listening on 0.0.0.0:8080
18:51:12: web.2     |  Web Server started listening on 0.0.0.0:8081
18:51:12: web.3     |  Web Server started listening on 0.0.0.0:8082
18:51:12: web.4     |  Web Server started listening on 0.0.0.0:8083
18:51:12: web.5     |  Web Server started listening on 0.0.0.0:8084
18:51:12: payment.1 |  Payments started listening on 0.0.0.0:3000
18:51:12: payment.2 |  Payments started listening on 0.0.0.0:3001
18:51:12: payment.3 |  Payments started listening on 0.0.0.0:3002
18:51:12: ui.1      |  node started listening on 0.0.0.0:4000
```

For more options and official documentation on the same find it [here](https://ddollar.github.io/foreman)
