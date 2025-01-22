# Adventures_Works_Data_engineering_project

Azure Data Lake and Pipeline Project Overview

This document outlines the process of setting up a resource group, creating an Azure Data Lake, building static and dynamic pipelines, registering an application in Microsoft Entra ID, and transforming data from bronze to silver layers in Databricks and Synapse. The goal is to enable seamless data management and transformation using Azure services.

1. Resource Group Creation

Before creating any resources, it is essential to establish a resource group. The resource group acts as a container to store and manage all related resources for this project.

2. Azure Data Lake Creation

Storage Account Creation: Begin by creating a storage account with a unique name. By default, Azure assigns Geo-Redundant Storage (GRS), but for this project, we switch to Locally Redundant Storage (LRS).

Enabling Hierarchical Namespace: To transform the storage account into a Data Lake, enable the hierarchical namespace option. This allows the creation of directories and subdirectories for better data organization.

Finalizing Setup: Click on “Review and Create” to complete the configuration.

3. Pipeline Creation

Static Pipeline

Container Setup: Create containers in the Data Lake for organizing data.

Pipeline Configuration:

Open Azure Data Factory and create a new pipeline. Name the pipeline and add a copy activity.

Copy a file URL from GitHub by selecting the raw file view and copying the URL.

Navigate to the “Manage” section in Data Factory, create linked services for both the source and destination.

Source: Use the base URL from GitHub in HTTP format.

Destination: Set the destination link to the Data Lake (e.g., Data Lake Gen2).

Return to the pipeline editor, create a source link using the HTTP linked service, and paste the relative URL from GitHub. Define the destination file and enable hierarchy.

Publish the pipeline to save configurations and verify the data transfer.

Dynamic Pipeline

Pipeline Configuration:

Create a new pipeline and linked services, similar to the static pipeline setup.

For dynamic values, use variables and the “For Each” loop to process multiple files or datasets in one execution.

Debug the pipeline to ensure functionality.

Verify the creation of CSV files and folders in the Data Lake containers.

4. App Registration and Secret Key Creation

Register a new application in Microsoft Entra ID and securely store the credentials.

Create a secret key for authentication.

5. Connecting Databricks to Azure Storage

Assign the “Storage Blob Contributor” role to enable read and write operations.

Use Databricks to connect to the Data Lake by following the commands and steps in the Azure documentation.

Load data from the Data Lake into Databricks using the Spark command:

Df = spark.read.format(‘csv’)\
         .option(‘header’, True)\
         .option(‘inferSchema’, True)\
         .load(‘path’)

6. Data Transformation

Transform the data from the bronze layer and push it into the silver layer for further processing.

7. Accessing Data in Synapse

Azure Synapse allows data access from multiple sources, including Azure Data Factory, Spark, and dedicated SQL pools.

Key Features:

OPENROWSET: Simplifies data access by applying abstraction to the data stored in the Data Lake.

External Table Setup:

Define credentials for accessing the data.

Use an external data source to avoid repeatedly using the URL.

Specify the file format in the external file format.

CTAS (Create Table As Select):

Create an external table to transfer data between layers (e.g., silver to gold) and establish a structured table for querying.

This project demonstrates an end-to-end pipeline for data ingestion, transformation, and storage using Azure’s robust tools and services, ensuring scalability, efficiency, and secure data management.















![Screenshot 2025-01-21 181040](https://github.com/user-attachments/assets/a38631e7-6bf7-4eac-b495-8264a9b30ea3)
