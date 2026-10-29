# My project checks and method practice

## My remaining project checks

- [ ] I confirm the date of the source screenshot labelled Today.
- [ ] I check my 31 records against the source screenshots and avoid duplicate entries from overlapping screenshots.
- [ ] I distinguish assigned times from verified listening times.
- [ ] I open DearDataMusic/DearDataMusic.pde in Processing Java mode with its data folder beside it.
- [ ] I run the sketch and check that all 31 records appear without an error.
- [ ] I hover over records and compare the displayed details with the CSV.
- [ ] I check artist colours and repeated-track rings, then press S and inspect the saved PNG.
- [ ] I prepare my repository URL, a brief topic and progress description, and a data image for submission.

## My method practice

I will attempt these in a blank sketch before checking the example:

1. I write addFive(int number), returning number plus five. I expect addFive(7) to return 12.
2. I write triple(int number), returning three times the input. I expect triple(4) to return 12.
3. I write add(int a, int b), returning their sum. I expect add(3, 8) to return 11.
4. I write remaining(int collected), returning 100 minus the input. I expect remaining(31) to return 69.

### My worked example

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

## My next updates

I will commit genuine changes on separate days, such as corrected source dates, additional listening records or fixes after running the sketch. Multiple commits on one date still represent one commit day. I have not marked the checks above complete yet.
