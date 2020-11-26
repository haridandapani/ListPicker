package hari.listpicker;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Picker {

  private List<String> movies;
  private List<String> people;
  private List<String> peopleCopy;
  private int order;
  private int rounds;

  public Picker(List<String> movies, List<String> people, int order) {
    this.movies = movies;
    this.people = people;
    this.peopleCopy = new ArrayList<String>(people);
    this.order = order;
    this.rounds = 0;
    if (order == 1) {
      Collections.shuffle(this.peopleCopy);
    }
  }

  public List<String> getMovies() {
    return new ArrayList<String>(this.movies);
  }

  public String getPerson() {
    if (!peopleCopy.isEmpty()) {
      String thisPerson = peopleCopy.remove(0);
      return thisPerson;
    } else {
      rounds++;
      this.peopleCopy = new ArrayList<String>(people);
      if (order == 1) {
        Collections.shuffle(this.peopleCopy);
      } else if (order == 2 && rounds % 2 == 1) {
        Collections.reverse(this.peopleCopy);
      }
      String thisPerson = peopleCopy.remove(0);
      return thisPerson;
    }
  }

}
