# Part 1 Checklist

## Checks

- [x] I've opened the sketch in Processing and checked that all 31 records appear.
- [x] I've hovered over the first record and seen “Spirit” by J Hus in the details panel.
- [ ] I still need to confirm the date on the screenshot labelled “Today”.
- [ ] I'll compare the CSV with my screenshots, especially where two screenshots overlap.
- [ ] I'll check the artist colours and gold rings against the CSV, then press S and open the saved PNG.

## Method practice

I'll try these in a blank sketch before looking at the worked example. They're practice questions for writing a method that returns a value.

1. Add five to a number. `addFive(7)` should return 12.
2. Triple a number. `triple(4)` should return 12.
3. Add two numbers together. `add(3, 8)` should return 11.
4. Work out how many listens I still need to reach 100. `remaining(31)` should return 69.

### Worked example

~~~java
void setup() {
  int answer = addFive(7);
  println(answer);
}

int addFive(int number) {
  return number + 5;
}
~~~

When I call `addFive(7)`, the parameter `number` takes the value 7. The first `int` tells me the method returns a whole number. Here it returns 12, which `setup()` prints. I've defined `addFive` outside `setup()`. The word `void` means a method returns no value.

## Next steps

I'll commit updates as I check the dates and add more listens. Several commits on the same day count as one day of progress.

## Submission

- [ ] I'll check the Moodle instructions and make sure my assessor can open the latest files from [my repository](https://github.com/SriRaaCha1/Creative_Coding).
- [ ] I'll prepare one JPEG or PNG of my data and check that the headings and records are readable, with no unrelated account details showing.
- [ ] I'll update my progress below, paste it into Moodle with the repository link and attach the image.
- [ ] After submitting, I'll reopen the page to check the text, image and submission status.

### My progress

I've collected 31 listens from my Airbuds history. For each one, I've recorded the song, the artists, the date and its position in the screenshot, and given it an ID. Where the exact time was missing, I've assigned a time between noon and 2 p.m. I've saved the records in a CSV and tested the sketch in Processing. All 31 discs appear, and hovering over a disc shows its details. I still need to confirm the date labelled “Today” and collect more listens.
