package hari.listpicker;

import spark.ModelAndView;
import spark.Request;
import spark.Response;
import spark.TemplateViewRoute;

public class HomeGUI implements TemplateViewRoute {
  @Override
  public ModelAndView handle(Request request, Response response) throws Exception {

    return new ModelAndView(null, "index.ftl");

  }
}
