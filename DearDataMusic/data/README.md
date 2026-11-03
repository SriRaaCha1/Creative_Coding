# Data Guide

I've recorded 31 listens in `listening.csv`. Each row is one entry from my Airbuds screenshots. If a track appears twice as two separate plays, I've kept both.

## Columns

| Column | What I've recorded |
| --- | --- |
| `id` | A different whole number for each listen. |
| `date` | The date in YYYY-MM-DD format. I still need to confirm the last one. |
| `time` | A time I've assigned between noon and 2 p.m., written as HH:MM. |
| `song` | The title shown in Airbuds. |
| `artists` | The artists in the order shown, separated by semicolons. The first artist determines the disc colour. |
| `source_order` | Where the entry appears within that date's group. |

## How the sketch reads my data

My sketch reads the file with `loadStrings()`, skips the headings and splits each row at the commas to get six fields. I've grouped the rows by date and kept the screenshot order within each group. The sketch draws them in that order.

My `countPlays()` method counts rows with the same title and full artist list. A different spelling, capital letter or artist order changes the match. A track that matches more than once gets a gold ring.

## Adding listens

When I add a listen, I'll check the screenshot, give the entry a new ID and keep the existing IDs. I'll use the same header, `id,date,time,song,artists,source_order`, and keep all six fields on one line.

If a title or artist name contains a comma or line break, I'll need to change how the sketch reads the CSV before adding that entry. Putting quotes around it won't fix that with the current code. After adding rows, I'll run the sketch and check the count, hover details and gold rings.

## Date to check

For record 31, `Ran To Atlanta`, I've used `2026-10-20` provisionally. The screenshot only says “Today”, so I still need to check when it was taken.

I've used a sample of my listening history. A gap between dates just means my sample has no entries for those days. The assigned times can't tell me when or how long I listened.
