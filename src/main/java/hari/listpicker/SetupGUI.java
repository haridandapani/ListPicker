package hari.listpicker;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.common.collect.ImmutableMap;

import spark.ModelAndView;
import spark.QueryParamsMap;
import spark.Request;
import spark.Response;
import spark.Route;

public class SetupGUI implements Route {

  @Override
  public ModelAndView handle(Request request, Response response) throws Exception {

    QueryParamsMap vars = request.queryMap();

    int numMovies = Integer.valueOf(vars.value("numMovies"));
    int numPeople = Integer.valueOf(vars.value("numPeople"));

    List<String> movies = new ArrayList<>();
    List<String> people = new ArrayList<>();

    Picker picker = new Picker(movies, people);

    Map<String, Object> variables = ImmutableMap.<String, Object>builder()
        .put("movies", picker.getMovies()).put("person", picker.getPerson()).build();

    return new ModelAndView(variables, "roomer.ftl");

  }
}
