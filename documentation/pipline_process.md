# CircleCI Pipeline Configuration

## Version: 2.1

### Orbs:
- `node`: circleci/node@5.0.2
- `eb`: circleci/aws-elastic-beanstalk@2.0.1
- `aws-cli`: circleci/aws-cli@3.1.1

### Jobs:
- `build`:
    - Docker:
        - Base image: "cimg/node:14.15"
    - Steps:
        - Install Node and checkout code:
            - `node/install`:
                - Node version: '14.15'
            - `checkout`
        - Install Front-End Dependencies:
            - Command:
              ```bash
              npm run frontend:install
              ```
        - Install API Dependencies:
            - Command:
              ```bash
              npm run api:install
              ```
        - Front-End Build:
            - Command:
              ```bash
              npm run frontend:build
              ```
        - API Build:
            - Command:
              ```bash
              npm run api:build
              ```

- `deploy` (Manual Approval required):
    - Docker:
        - Base image: "cimg/base:stable"
    - Steps:
        - Install Node:
            - `node/install`:
                - Node version: '14.15'
        - Setup AWS CLI and Elastic Beanstalk:
            - `aws-cli/setup`
            - `eb/setup`
        - Checkout code:
            - `checkout`
        - Deploy Frontend:
            - Command:
              ```bash
              npm run frontend:deploy
              ```
        - Deploy API:
            - Command:
              ```bash
              npm run api:deploy
              ```

### Workflows:
- `udagram`:
    - Jobs:
        - `build`
        - `hold` (Approval Required):
            - Filters:
                - Branches:
                    - Only: `master`
            - Requires: `build`
        - `deploy`:
            - Requires: `hold`