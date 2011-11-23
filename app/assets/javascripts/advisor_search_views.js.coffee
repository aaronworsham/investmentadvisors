class AdvisorSearchApp.AppView extends Backbone.View
  tagName: "advisor-search-app"


class AdvisorSearchApp.InvestmentCompanyView extends Backbone.View

  tagName: "tr"

  render: ->
    elem = $(@el).append(ich.trusted_by_template(@model.toJSON()));
    $(elem).hide();
    $("table#advisor-search-result-items").append(elem);
    $(elem).fadeIn("slow");