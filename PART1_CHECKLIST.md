# Part 1 Checklist

## Checks

- [ ] I confirm the date of the source screenshot labelled Today.
- [ ] I check my 31 records against the source screenshots and avoid duplicate entries from overlapping screenshots.
- [ ] I distinguish assigned times from verified listening times.
- [ ] I open DearDataMusic/DearDataMusic.pde in Processing Java mode with its data folder beside it.
- [ ] I run the sketch and check that all 31 records appear without an error.
- [ ] I hover over records and compare the displayed details with the CSV.
- [ ] I check artist colours and repeated-track rings, then press S and inspect the saved PNG.
- [ ] I prepare my repository URL, a brief topic and progress description, and a data image for submission.

## Methods

I will attempt these in a blank sketch before checking the example:

1. I write addFive(int number), returning number plus five. I expect addFive(7) to return 12.
2. I write triple(int number), returning three times the input. I expect triple(4) to return 12.
3. I write add(int a, int b), returning their sum. I expect add(3, 8) to return 11.
4. I write remaining(int collected), returning 100 minus the input. I expect remaining(31) to return 69.

### Example

```java
void setup() {
  int answer = addFive(7);
  println(answer);
}

int addFive(int number) {
  return number + 5;
}
```

I read the first int as the return type, addFive as the method name, and int number as the parameter. The call supplies 7; return sends 12 back to the caller. I define the method outside setup(). A void method does not return a value.

## Next steps

I will commit genuine changes on separate days, such as corrected source dates, additional listening records or fixes after running the sketch. Multiple commits on one date still represent one commit day. I have not marked the checks above complete yet.

## Submission

- [ ] I check the current Part 1 form and instructions before submitting.
- [ ] I use my repository URL: https://github.com/SriRaaCha1/Creative_Coding.
- [ ] I check that the branch I submit contains my latest files and that my assessor has the required access.
- [ ] I prepare one JPEG or PNG showing my collected data, with readable column names and records.
- [ ] I inspect the image at normal size and check that it contains no unrelated account details.
- [ ] I update the description below if my record count or progress changes.
- [ ] I attach the image, enter the URL and description, and complete the submission steps.
- [ ] I reopen the submission page to verify the saved text, attachment and submission status.

### Draft

I am collecting music-listening observations from my Airbuds history. My current sample contains 31 records. Each record contains an ID, date, assigned time, song, artists and source order. I use assigned times between noon and 2 p.m. where exact times are unavailable; these do not show my actual listening times. I have organised the records in a CSV and added a Processing sketch to my repository. I still need to confirm the date of the screenshot labelled Today, check the visual output in Processing and collect more observations.
