package hari.listpicker;

import java.util.Map;

import com.google.common.collect.ImmutableMap;
import com.google.gson.Gson;

import spark.Request;
import spark.Response;
import spark.Route;

public class GetNextGUI implements Route {
  @Override
  public String handle(Request request, Response response) throws Exception {

    Picker picker = request.session().attribute("picker");
    String newbie = picker.getPerson();
    Map<String, Object> variables = ImmutableMap.<String, Object>builder().put("newbie", newbie)
        .build();
    return new Gson().toJson(variables);

  }
}
