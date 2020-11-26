package hari.listpicker;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.common.collect.ImmutableMap;

import spark.ModelAndView;
import spark.QueryParamsMap;
import spark.Request;
import spark.Response;
import spark.TemplateViewRoute;

public class SetupGUI implements TemplateViewRoute {

  @Override
  public ModelAndView handle(Request request, Response response) throws Exception {

    QueryParamsMap vars = request.queryMap();

    int numMovies = Integer.valueOf(vars.value("numMovies"));
    int numPeople = Integer.valueOf(vars.value("numPeople"));

    List<String> movies = new ArrayList<>();
    List<String> people = new ArrayList<>();

    for (int i = 1; i <= numMovies; i++) {
      movies.add(vars.value("movie" + i));
    }
    for (int j = 1; j <= numPeople; j++) {
      people.add(vars.value("person" + j));
    }

    String order = vars.value("order");
    int orderer = 3;
    if (order.equals("random")) {
      orderer = 1;
    } else if (order.equals("snake")) {
      orderer = 2;
    }

    Picker picker = new Picker(movies, people, orderer);

    String person = picker.getPerson();

    request.session().attribute("picker", picker);

    Map<String, Object> variables = ImmutableMap.<String, Object>builder().put("person", person)
        .put("movies", picker.getMovies()).build();

    return new ModelAndView(variables, "roomer.ftl");

  }
}
