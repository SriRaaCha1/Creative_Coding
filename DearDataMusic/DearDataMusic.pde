// My listening collection (Processing, Java mode)
// I've explained where my data came from and how I assigned the times in ../README.md.
ArrayList<Listen> listens = new ArrayList<Listen>();
ArrayList<String> artistNames = new ArrayList<String>();
int page = 0;
final int PAGE_SIZE = 100;
Listen selected;
String loadError = "";

void setup() {
  size(1200, 900);
  smooth();
  textFont(createFont("SansSerif", 14));
  // I skip the headings and read one listen from each remaining row.
  String[] lines = loadStrings("listening.csv");
  if (lines == null) {
    loadError = "Missing data/listening.csv. Keep the data folder with the sketch.";
    return;
  }
  for (int i = 1; i < lines.length; i++) {
    if (trim(lines[i]).length() == 0) continue;
    String[] fields = split(lines[i], ',');
    if (fields.length != 6) {
      loadError = "Expected six columns on CSV line " + (i + 1);
      return;
    }
    Listen item = new Listen(fields);
    listens.add(item);
    if (!artistNames.contains(item.primaryArtist)) artistNames.add(item.primaryArtist);
  }
  for (Listen item : listens) {
    item.plays = countPlays(item.song, item.artists);
  }
}

void draw() {
  background(18, 23, 33);
  fill(244, 239, 226);
  textSize(32);
  text("THE LISTENING COLLECTION", 40, 54);
  textSize(15);
  fill(171, 183, 197);
  text(listens.size() + " observations / 100 target | one record = one listen", 40, 86);
  text("Artist colour + gold ring for repeated tracks in this sample", 40, 110);
  if (loadError.length() > 0) {
    fill(255, 160, 160);
    text(loadError, 40, 170, 1000, 200);
    return;
  }
  selected = null;
  int start = page * PAGE_SIZE;
  int end = min(start + PAGE_SIZE, listens.size());
  for (int i = start; i < end; i++) {
    int slot = i - start;
    float x = 75 + (slot % 10) * 75;
    float y = 172 + (slot / 10) * 64;
    Listen item = listens.get(i);
    boolean hover = item.contains(x, y);
    item.display(x, y, hover);
    if (hover) selected = item;
  }
  stroke(53, 64, 80);
  line(815, 135, 815, 790);
  noStroke();
  fill(244, 239, 226);
  textSize(18);
  text("ARTISTS", 850, 160);
  for (int i = 0; i < artistNames.size(); i++) {
    float y = 188 + i * 23;
    fill(artistColour(artistNames.get(i)));
    ellipse(858, y - 4, 10, 10);
    fill(210, 217, 224);
    textSize(13);
    text(artistNames.get(i), 876, y);
  }
  fill(244, 239, 226);
  textSize(18);
  text("SELECTED LISTEN", 850, 500);
  textSize(14);
  if (selected == null) {
    fill(171, 183, 197);
    text("Hover a record to inspect its song, date and artists.", 850, 520, 300, 90);
  } else {
    fill(244, 239, 226);
    text(selected.song, 850, 520, 300, 70);
    fill(171, 183, 197);
    text(selected.artists, 850, 598, 300, 60);
    text(selected.date + " | " + selected.time, 850, 678);
    text("Time assigned; see data notes", 850, 704);
    text("Plays of this track in sample: " + selected.plays, 850, 730);
  }
  fill(171, 183, 197);
  textSize(13);
  text("Chronological date groups; within-date order follows the source screenshots.", 40, 822);
  text("Selected history only: missing days do not mean no listening.", 40, 845);
  text("Page " + (page + 1) + " / " + max(1, (listens.size() + 99) / 100)
       + "     LEFT / RIGHT: pages     S: save image", 40, 872);
}

// I count a repeat when both the song title and the full artist list match.
int countPlays(String title, String artists) {
  int total = 0;
  for (Listen item : listens) {
    if (item.song.equals(title) && item.artists.equals(artists)) total++;
  }
  return total;
}

color artistColour(String artist) {
  int index = artistNames.indexOf(artist);
  colorMode(HSB, 360, 100, 100);
  color result = color((index * 137.5f + 25) % 360, 55, 95);
  colorMode(RGB, 255);
  return result;
}

void keyPressed() {
  int lastPage = max(0, (listens.size() - 1) / PAGE_SIZE);
  if (key == CODED && keyCode == RIGHT) page = min(page + 1, lastPage);
  if (key == CODED && keyCode == LEFT) page = max(0, page - 1);
  if (key == 's' || key == 'S') saveFrame("listening-####.png");
}

// I use each Listen object to store one entry and draw its disc.
class Listen {
  int id;
  String date, time, song, artists, primaryArtist;
  int plays;

  Listen(String[] fields) {
    id = int(fields[0]);
    date = fields[1];
    time = fields[2];
    song = fields[3];
    artists = fields[4];
    primaryArtist = trim(split(artists, ';')[0]);
  }

  boolean contains(float x, float y) {
    return dist(mouseX, mouseY, x, y) < 25;
  }

  void display(float x, float y, boolean hover) {
    float diameter = 42;
    if (hover) diameter = 48;
    stroke(62, 73, 89);
    strokeWeight(1);
    if (plays > 1) {
      stroke(240, 190, 80);
      strokeWeight(2);
    }
    fill(27, 34, 45);
    ellipse(x, y, diameter, diameter);
    noFill();
    stroke(65, 76, 91);
    strokeWeight(1);
    ellipse(x, y, diameter - 10, diameter - 10);
    noStroke();
    fill(artistColour(primaryArtist));
    ellipse(x, y, 20, 20);
    fill(18, 23, 33);
    ellipse(x, y, 4, 4);
    fill(171, 183, 197);
    textAlign(CENTER);
    textSize(10);
    text(id, x, y + 31);
    textAlign(LEFT);
  }
}
