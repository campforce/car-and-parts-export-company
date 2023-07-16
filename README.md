[![build](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml)
[![code-coverage](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml)
[![codecov](https://codecov.io/gh/campforce/auto-parts-retail/branch/main/graph/badge.svg?token=PGE9F3Z0NB)](https://codecov.io/gh/campforce/auto-parts-retail)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/6c7b346f469b4d7295173d058266558f)](https://www.codacy.com/gh/campforce/auto-parts-retail/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=campforce/auto-parts-retail&amp;utm_campaign=Badge_Grade)

## [**About** - Auto Parts Retail (video)](https://zoom.us/rec/play/oEhItPsStR5wsRXsc3_4RfRE0dwBvK3UXom-uqZNpkPVpz7-eLf9FRfrvWNvAN4OLaRVd2Lp3-rRJx_j.oXo5sKOG-0G39ng_?autoplay=true&startTime=1689271147000/)
Salesforce application of auto parts retailer. 🚘🛠⚙️
***
***Complete the following 1-2 steps before starting the project !!!***
## [Step 1: Installation (video)](https://zoom.us/rec/play/QF_dKsdnsIKPvAT98guYYZG_pporRnW2dGHeByTk6v03yYie46fydZT_17XIYB7_7PApm-IdBL5VM1ky.dVw2THyU1SM91WkK?autoplay=true&startTime=1689355391000/)


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
- [Session 1: **About the Deployment**](https://us06web.zoom.us/rec/play/u_DIN7ViLfp1Ho04hO3rsoWrO3Zc5OMxbuc7DvVlOtpD-L2y_HuSXyuNAqXjt0NvoTlXyJ8puy1RnKyL.2iziL_u8EeLV3mMI?autoplay=true/)
- [Session 2: **Push And Pull Example**](https://us06web.zoom.us/rec/play/6E1RzluXIzeyId7MdSNMB_5vjwigUjY_m6fmqUsocbMe9lsZDm15YKIbhN8hRK1Sp2fnBsRJ_DJKKrrN.i6-Wcrj7qJLGnOs-?canPlayFromShare=true&from=my_recording&continueMode=true&componentName=rec-play&originRequestUrl=https%3A%2F%2Fus06web.zoom.us%2Frec%2Fshare%2FbD78fzyNIqPl1p3D5EOOJmkkrcL60TPaA6g40M2xIk6XdJwgZJAma4eo51xY3QPI.pPDV16mRo9QrwX-S/)
- [Session 3: **Example of completing (pushing-pulling) LWC Tasks**](https://us06web.zoom.us/rec/play/2yKb8ZLc8no7x7XnNjVEc013g1-whIswAy4yKN5oYZtb3-k8lx0tbOUSJcfWXOgwr-4b2SEvbnV9kvOi.YrBU_AuHTTFw0AXq?autoplay=true&startTime=1689429913000)
- [Session 4: **Example of completing (pushing-pulling) Admin Tasks**](https://zoom.us/rec/play/M-S7M0_vvEgRluV67OQVjsbM8b4cclK_Ju1bot5qh7pCRRUUaTCQ4Ei9gt9s-RUmObTm9cy2nxX__tg.I_T4xA-RRMVPGoEf?autoplay=true&startTime=1689492046000)
- [Session 5: **Example of completing (pushing-pulling) Job (Batchable/Schedulleable) Tasks**](https://zoom.us/rec/play/0Q6iQmxUNRVFfy1dWQ5aoL08z5l5M68GF2G2-iRNxC2Pme_ZZ4MYneJgDWSDRxtoe_8T-Qz8-YLIwNF3.y9mDmrDVXeemYcsZ?autoplay=true&startTime=1689501084000)



 
    
## Contributors
<a href = "https://github.com/campforce/car-and-parts-export-company/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=campforce/car-and-parts-export-company"/>
</a>


