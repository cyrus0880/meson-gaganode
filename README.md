# MESON-Gaganode
---
An unofficial Docker Image for Meson Network Mining Available on Docker Hub

Source code available at: [GitHub](https://github.com/cyrus0880/meson-gaganode)

```
### supports Raspberry Pi 2 and above! (ARMv7 /ARMv8 / ARM64 / AMD64) ###
```

### What's Meson Network?
---
Pioneering DEPIN [Decentralized Physical Infrastructure Network]

Maximize the value of your outdated tech at Gaganode.com and start earning passive income effortlessly.

### How to get started?
---
> 1.Register a Grass Account if you don't have one already: [dashboard.gaganode.com](https://dashboard.gaganode.com/register?referral_code=abljjezhbsunwpp)

> 2.Either build this image from source, or download it from Docker Hub

> 3.Set envriomental variables to their respective values: TOKEN

> 4.You're good to go! Once started,

### Docker Run Command
---
```
docker run -d \
    --name gaganode\
    -p 8080:80 \
    -e TOKEN=YOUR_TOKEN \
    cyrus0880/meson-gaganode:1.0.4
```

### Docker Compose 
---
> 1. mkdir gaganode
> 2. nano gaganode/docker-compose.yml

Docker-Compose.yml
```yml
version: "3.8"
services:
  gaganode:
    image: cyrus0880/meson-gaganode:1.0.4
    restart: unless-stopped
    environment:
      - TOKEN=${TOKEN}
```

> 3. cd gaganode
> 4. docker-compose up -d

### License
---
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

### if you like this project
----
you can [ buy me a coffee ](https://www.buymeacoffee.com/cyrus.yeung)