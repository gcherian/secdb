
-record(dbstate, {
    version,
    file,
    buffer,
    buffer_end,
    stock,
    date,
    depth,
    scale,
    chunk_size,
    last_timestamp = 0,
    last_bidask,
    next_chunk_time = 0,
    chunk_map_offset,
    chunk_map = [],
    daystart,
    next_md_full = true
  }).


-define(STOCKDB_VERSION, 1).


-define(STOCKDB_OPTIONS, [
    {version, 1},
    {stock, undefined},
    {date, utcdate()},
    {depth, 10},
    {scale, 100},
    {chunk_size, 300} % seconds
  ]).

-define(OFFSETLEN, 32).