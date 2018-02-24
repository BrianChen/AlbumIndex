# AlbumIndex

## Database Schema
### song
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
title           | string    | not null, indexed
artist_id       | integer   | not null, foreign key
album_id        | integer   | foreign key

### artist
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
name            | string    | not null, indexed

### album
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
title           | string    | not null, indexed

## Search Functionality
