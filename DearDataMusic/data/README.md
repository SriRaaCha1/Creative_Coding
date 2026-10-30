# Data Guide

I store one displayed listening event per row in `listening.csv`. My current sample contains 31 records. I keep repeated listens as separate observations.

## Columns

| Column | What I record |
| --- | --- |
| `id` | A unique whole-number identifier for each listening event. |
| `date` | The listening date in YYYY-MM-DD format; I still need to confirm the final row's date. |
| `time` | An assigned HH:MM time between noon and 2 p.m., not a measured listening time. |
| `song` | The displayed track title. |
| `artists` | The displayed artists, separated by semicolons; I use the first listed artist for colour. |
| `source_order` | The entry's order within its source date group. |

## Loading

I load the lines with `loadStrings()` and skip the header. I split each remaining line at commas and expect six fields. My sketch draws records in file order; it does not sort by `source_order` or assigned time. I keep the rows arranged in chronological date groups and preserve source order within each group.

My `countPlays()` method matches both the song title and the complete artists text exactly. Spelling, capitalisation and artist order therefore affect which records receive a repeat ring.

## New records

- I add only listens supported by my source records.
- I keep the header `id,date,time,song,artists,source_order` unchanged.
- I use a new unique ID and preserve existing IDs.
- I keep all six fields on one line and use semicolons between artists.
- I check titles and artist names against the source before changing them.
- I do not put commas or line breaks inside a field with the current simple loader. Quoting a field will not solve this limitation; I would need to update the loader before adding such an entry faithfully.
- I run the sketch after changes and check the observation count, hover details and repeat rings.

## To confirm

Record 31, `Ran To Atlanta`, currently uses `2026-10-20` for a screenshot labelled `Today`. I still need to confirm the screenshot's actual date before treating that date as verified.

I do not interpret assigned times as evidence of listening duration or time-of-day habits. My selected screenshots are not a complete listening history, so missing dates do not mean I listened to nothing.

