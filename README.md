# Devops Essentials by Keboola

## Keboola Blocks Intro (Scaffold Prerequisite)
Looker Blocks powered by Keboola are designed to work in tandem with corresponding Keboola Scaffolds in the Keboola Connection platform. Similar to Blocks in nature, Keboola Scaffolds are templatized use-cases that can be instantly deployed into the Keboola platform, providing the whole data management and processing chain required to populate your Looker dashboards.

## Block Overview
This Block connects to data from Keboola “Devops” Scaffolds into Looker. Its purpose is to provide quick out-of-the-box end-to-end integration and functionality to be used either stand-alone or to be combined with other data, into scorecards, etc. In order to set up the Keboola data feed, please contact us: [here](https://get.keboola.com/lookerblocks?block=devops_essentials).

## Data and Block Structure
The Block contains two LookML dashboards:

*  Overview for checking recent commit/pull/issues activity and identifying unresolved issues.
*  User Activity for tracking activity of your team members.


The underlying model contains four main explores:

*  Repository Commit - contains commits and info about repositories.
*  Pull Request - contains pull requests and their activity (comments, approvals…).
*  Issues - contains issues and their comments.
*  Event - contains activity of your team members to track it in one place (commits, pulls, issues, comments etc.).

As a standard, the data gets provided as a connection to Keboola-provided Snowflake, but it can be easily changed to your own DWH of choice during the setup.

The **Keboola Scaffold** will set up everything for you - from the data extraction to data transformation, to setting up the Snowflake database with necessary tables for the LookML. All you need to do is set up the connection to the database in Looker and add it to the Looker model.

In case you want to enrich your Looker model and dashboards with other fields or objects, including the addition of more data sources, you can modify and extend the whole data extraction and processing directly in Keboola Connection.
