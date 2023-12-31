 [![build](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml)
[![code-coverage](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml)
[![codecov](https://codecov.io/gh/campforce/auto-parts-retail/branch/main/graph/badge.svg?token=PGE9F3Z0NB)](https://codecov.io/gh/campforce/auto-parts-retail)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/6c7b346f469b4d7295173d058266558f)](https://www.codacy.com/gh/campforce/auto-parts-retail/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=campforce/auto-parts-retail&amp;utm_campaign=Badge_Grade)

## [**About** - Auto Parts Retail (video)](https://us06web.zoom.us/rec/share/BVNv9FOqr8FPo0zk51Rmqrk1SMFSUm7v3agbfAoJAsx07MF5RI6acHwQslo1v3K8.i9a6hM3rj4qhRj4g/)
Salesforce application of auto parts retailer. 🚘🛠⚙️
***
***Complete the following 1-2 steps before starting the project !!!***
## [Step 1: Installation (video)](https://us06web.zoom.us/rec/share/PNP9PVR0Rm050UmgaxLFDMj6nXUzVhYe4LSrutY26hVHFNt00KYrMwk4AUk4oByd.qUtV-f20K2GYv1k1/)


- [Install Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli)
- [Install Git (for Windows users Only)](https://git-scm.com/downloads)
- [Install Fork](https://git-fork.com/)
- [Install Visual Studio Code](https://code.visualstudio.com/download)
- [Install Java](https://www.java.com/en/download/)
- [Install Discord](https://discord.com/download/)
- [Set Up Visual Studio Code](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/set-up-visual-studio-code)
- [Enable Dev Hub in your Org](https://www.youtube.com/watch?v=Y1pZ9sFcILo)
---

## [Step 2: Get a full copy of Github repository to your Scratch org (video)](https://zoom.us/rec/play/uUp8Ddv0bA2pQaljXtzsqlIYmdcQuy_m7ynL05F9Ioc8J7ASYkb4zBqibSzgun3UnePfHKXm-orgdS8O.1IAH2SFTVGFVgwNJ?autoplay=true&startTime=1689413199000/)

1. Clone this repository:

    ```
    cd ~/Desktop
    git clone https://github.com/campforce/car-and-parts-export-company.git
    cd car-and-parts-export-company
    ```

1. Authorize your hub org:

    ```
    sfdx auth:web:login -d -a mainOrg
    ```

1. Create a scratch org:

    ```
    sfdx force:org:create -s -f config/project-scratch-def.json -a scratchOrg
    ```

1. Push the app to your scratch org:

    ```
    sfdx force:source:push
    ```
1. Open the scratch org:

    ```
    sfdx force:org:open
    ```


   ---
   
    
### 🙋🎓 **Learning:** _Deployment Sessions:_
- [Session 1: **About the Deployment**](https://us06web.zoom.us/rec/share/_GJENfsOP2Mk7xmq7MIgN51SGsM66aKoL9bzI-kdUPFWO3v-FC0MQYV3na5mHq-R.hhwkhZ3PXLzQoe0y?startTime=1689423635000/)
- [Session 2: **Push And Pull Example**](https://us06web.zoom.us/rec/share/q8o5mzDtTD_76CnJGQLu9QMEWLgiY6NElB9IIvOwsjSqd1teo_OlgF5t9garkZhn.b1F1xnnevkOfmLRV?startTime=1689357305000/)
- [Session 3: **Example of completing (pushing-pulling) LWC Tasks**](https://us06web.zoom.us/rec/share/rLMaA7LwwEi6KvLcuoN9nk6ZPVtBaZDD7f3yc1vX634gM8WbzhJkU0xgEdsHcwkY.a-zfzI7SboXK_Dv5?startTime=1689429913000/)
- [Session 4: **Example of completing (pushing-pulling) Admin Tasks**](https://us06web.zoom.us/rec/share/wD2lSOjx0Tlla50x7A5wrlkGLYL4AwQE3oELW5Qg6Hp6u6uWvhhy8UMKOrqlyPgL.amoME5KaWW43ZZNu?startTime=1689492046000/)
- [Session 5: **Example of completing (pushing-pulling) Job (Batchable/Schedulleable) Tasks**](https://us06web.zoom.us/rec/share/OsdZ7OU4y-GZXMFgZAjpCAWKH3Nsk6FCnVbvAuWjMt83JDquauZ64Vl_2QiazJ2t.TzvLRYSFDWbGFPfF?startTime=1689501084000/)
- [Session 6: **Session about Trigger Framework**](https://drive.google.com/file/d/1Qw28JjGK2SkuaOHzEpKMtN3fWaITIQ9a/view?usp=sharing/)
- [Session 7: **Example of completing (pushing-pulling) Trigger Tasks**](https://us06web.zoom.us/rec/share/WQRQnXedXwwr9PGPizeNYlwQVquzLwXl2qEP-I2s0r0cEojBU8tRjHXoqbXB5Z0V.j6tQAf5-LeBBpFq6?startTime=1689517237000/)



 
    
## Contributors
<a href = "https://github.com/campforce/car-and-parts-export-company/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=campforce/car-and-parts-export-company"/>
</a>


