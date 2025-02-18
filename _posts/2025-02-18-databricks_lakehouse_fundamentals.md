---
layout: post
title:  "Course notes: (Databricks) Lakehouse fundamentals course"
date: 2025-02-18 14:00:00 +0100
categories: jekyll update
tags: notes course databricks
---
## Course details
Course link require a partner account to access.
I've setup and signed into mine.
After completing the course there is a 20 question quiz to get `accredited`.

- [Fundamentals of the Databricks Lakehouse Platform][1]
- Duration: approx. 1hr 30mins

## Modules
1. What is a Data Lakehouse?
2. What is the Databricks Lakehouse Platform? 
3. Databricks Lakehouse Platform Architecture and Security Fundamentals
4. Supported Workloads on the Databricks Lakehouse Platform 

### 1. Data lakehouse
#### History

Data warehouse: only handle data with fixed schema. Couldn't handle data variety.

Data lakes: Can handle multiple data types. (Structured, unstructured, semi structured). Hard to govern data quality, and slow analysis, did not support transactions.

Neither approach met all needs. Resulting in complex combinations of both.

#### Data lakehouse
> A modernised version of a data lake

- Open archecture
- Transactions
- Governance and schema enforcement
- BI support
- Open standardised formats
- Handle many data types
- Can stream data
- Can 


### 2. Databricks Lakehouse Platform
> Designed to be an open, unified platform, while being vendor agnostic
- Can ingest data from multiple sources and formats

### 3. Platform Architecture and Security Fundamentals

#### Data reliability in a datalake
- Great at holding data, but it can be low quality data

#### Delta lake
> Provides data reliability and performance in Lakehouse

- Uses Delta tables
- ACID transactions, via transaction log
- scalable data handling
- audit trail and rollback
- schema enforcement
- streaming and batches

#### Photon
> Manage workloads in lakehouse

#### Unity catalogue
> Centralised governance

- Can restrict access at row/column level
- Audit trail
- Provide data lineage charts

#### Delta Sharing
- open cross platform sharing with data recipients
- share data live, not copies
- Audit and governance owned by data provider

#### The two planes
> Control and Compute(data) planes

- `Control` manages your account
- `Compute` where the data is processed inside data owners account by default

#### Instant Compute and server less

- Server less: fully managed by databricks in the databricks cloud account. Resources used from a shared pool.

#### Terminology

##### Unity catalogue
- Metastore: top level holding metadata
- Catalogue: container
- Schema: Normal SQL schema 

Tables: Table metadata + the actual data.
- Managed: data inside
- External: source from outside

### 4. Supported workloads

#### Data warehousing
- Scalable and flexible
- Governance (via Data Lake)
- Can use preferred tooling
- Remove silos

#### Data engineering
- Easier to ingest data
- Modern software practices (agile, CICD)
- Automate ETL pipelines with data quality checks
- Auto scaling
- Auto recovery of common failures

##### Delta Live Table (DLT)
- Treat data as code
- Testing, multiple environments etc

##### Databricks workflows
> Orchestrate anything you need to do with data!

- Can use UI, create via Internal and external APIs

#### Data streaming
> Supports decision making based on real time data

Main use cases:
- analytics 
- ML
- applications

## Supporting information

- [Lakehouse intro docs][2]

[1]: https://partner-academy.databricks.com/learn/courses/1325/fundamentals-of-the-databricks-lakehouse-platform/lessons
[2]: https://docs.databricks.com/en/lakehouse/index.html
