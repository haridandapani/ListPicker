package hari.listpicker;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Picker {

  private List<String> movies;
  private List<String> people;
  private List<String> peopleCopy;

  public Picker(List<String> movies, List<String> people) {
    this.movies = movies;
    this.people = people;
    this.peopleCopy = new ArrayList<String>(people);
    Collections.shuffle(this.peopleCopy);
  }

  public List<String> getMovies() {
    return new ArrayList<String>(this.movies);
  }

  public String getPerson() {
    if (!peopleCopy.isEmpty()) {
      String thisPerson = peopleCopy.remove(0);
      return thisPerson;
    } else {
      this.peopleCopy = new ArrayList<String>(people);
      Collections.shuffle(this.peopleCopy);
      return getPerson();
    }
  }

}
