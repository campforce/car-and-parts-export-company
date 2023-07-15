[![build](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml)
[![code-coverage](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml)
[![codecov](https://codecov.io/gh/campforce/auto-parts-retail/branch/main/graph/badge.svg?token=PGE9F3Z0NB)](https://codecov.io/gh/campforce/auto-parts-retail)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/6c7b346f469b4d7295173d058266558f)](https://www.codacy.com/gh/campforce/auto-parts-retail/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=campforce/auto-parts-retail&amp;utm_campaign=Badge_Grade)

---
## (video) [About Auto Parts Retail](https://zoom.us/rec/play/oEhItPsStR5wsRXsc3_4RfRE0dwBvK3UXom-uqZNpkPVpz7-eLf9FRfrvWNvAN4OLaRVd2Lp3-rRJx_j.oXo5sKOG-0G39ng_?autoplay=true&startTime=1689271147000/)
Salesforce application of auto parts retailer. 🚘🛠⚙️
***
---
### Complete following step step 1-2 before starting the project
## (video) [Step 1: Installation](https://zoom.us/rec/play/QF_dKsdnsIKPvAT98guYYZG_pporRnW2dGHeByTk6v03yYie46fydZT_17XIYB7_7PApm-IdBL5VM1ky.dVw2THyU1SM91WkK?autoplay=true&startTime=1689355391000/)


- [Install Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli)
- [Install Git (for Windows users Only)](https://git-scm.com/downloads)
- [Install Fork](https://git-fork.com/)
- [Install Visual Studio Code](https://code.visualstudio.com/download)
- [Install Java](https://www.java.com/en/download/)
- [Install Discord](https://discord.com/download/)
- [Set Up Visual Studio Code](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/set-up-visual-studio-code)
- [Enable Dev Hub in your Org](https://www.youtube.com/watch?v=Y1pZ9sFcILo)
---

## (video) [Step 2: Get a full copy of Github repository to your Scratch org](https://zoom.us/rec/play/uUp8Ddv0bA2pQaljXtzsqlIYmdcQuy_m7ynL05F9Ioc8J7ASYkb4zBqibSzgun3UnePfHKXm-orgdS8O.1IAH2SFTVGFVgwNJ?autoplay=true&startTime=1689413199000/)

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

## Step 3: About Auto Car Part Project
 
    
## Contributors
<a href = "https://github.com/campforce/car-and-parts-export-company/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=campforce/car-and-parts-export-company"/>
</a>


