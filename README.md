# LE AVION engine for Halfway project

A work-in-progress Ruby object wrapper for Google QPX API. All classes and helper methods are defined in Avion module. See comments in avion_tester.rb and avion.rb for details.

**Instructions**:

Create key for **QPX Express Airfare API** in Google Developers Console to test with live results. Free quota — 50 request per day (no credit card required if you keep it under 50).

Use JSONResults module in json_results.rb to test with cashed real responses (all possible flights between Lisbon and Prague on Dec 12, 2016)

**Note**: Use 3-letter airport codes to query searches. Results, however, are compared against 3-letter *city* codes, as some cities can have more then one airport (CDG and ORY for PAR).  

License: MIT
