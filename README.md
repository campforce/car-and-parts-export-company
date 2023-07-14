[![build](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/build.yml)
[![code-coverage](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml/badge.svg)](https://github.com/campforce/auto-parts-retail/actions/workflows/code-coverage.yml)
[![codecov](https://codecov.io/gh/campforce/auto-parts-retail/branch/main/graph/badge.svg?token=PGE9F3Z0NB)](https://codecov.io/gh/campforce/auto-parts-retail)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/6c7b346f469b4d7295173d058266558f)](https://www.codacy.com/gh/campforce/auto-parts-retail/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=campforce/auto-parts-retail&amp;utm_campaign=Badge_Grade)

# Auto Parts Retail App
Salesforce application of auto parts retailer. 🚘🛠⚙️

## Installation

### Before starting the project
- [Install Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli)
- [Install Git (for Windows users Only)](https://git-scm.com/downloads)
- [Install Fork](https://git-fork.com/)
- [Install Visual Studio Code](https://code.visualstudio.com/download)
- [Install Java](https://www.java.com/en/download/)
- [Install Discord](https://discord.com/download/)
- [Set Up Visual Studio Code](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/set-up-visual-studio-code)
- [Enable Dev Hub in your Org](https://www.youtube.com/watch?v=Y1pZ9sFcILo)
---

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
## Entity–relationship model   
<img width="986" alt="ER-diagram" src="https://user-images.githubusercontent.com/89274213/190663688-c9496343-d8e1-4036-a366-75310bbf85f8.png">    
    
## Contributors
<a href = "https://github.com/campforce/car-and-parts-export-company/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=campforce/car-and-parts-export-company"/>
</a>


