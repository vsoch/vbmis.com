.. nidm documentation master file, created by
   sphinx-quickstart on Sun Oct 25 14:37:36 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

NIDM API
========

This is a tool to deploy a REST API to run queries on and visualize NIDM turtle objects. Queries can be found in the `nidm-query <https://github.com/incf-nidash/nidm-query>`_, repo, along with a `nidm viewer <https://github.com/vsoch/nidmviewer>`_.  This API is under development, and please submit issues and requests to the `nidm-api <https://github.com/incf-nidash/nidm-api/issues>`_ repo.

Why do I want to use this?
''''''''''''''''''''''''''
You might want to use this tool if you have a NIDM data structure, meaning NIDM-results, NIDM-experiment, or NIDM-workflow, and you want to get information out of it but you don't know a single thing about RDF files or the query language for them, which is called sparql. This tool will allow you to run pre-generated queries easily, and return results in a format that is easily parsable by modern web technologies (eg, json for javascript or python), and (coming soon) csv and tsv files.

Under Development
'''''''''''''''''
The tool currently implements returning basic json from a query against a ttl (turtle) file. The following will be developed:

- interactive interfaces for creating new queries
- returning interactive graphs (d3, neo4j)
- functions to search / filter queries
- returning more data types
- validation of query data structures


Contents:

.. toctree::
   :maxdepth: 2

   installation
   getting-started
   modules
   development
   Github repository <https://github.com/incf-nidash/nidm-api>
   nidm-query <https://github.com/incf-nidash/nidm-query>
   nidm-viewer <https://github.com/vsoch/nidmviewer>


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

