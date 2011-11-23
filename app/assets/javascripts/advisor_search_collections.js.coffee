class AdvisorSearchApp.InvestmentCompanyCollection extends Backbone.Collection
  model: AdvisorSearchApp.InvestmentCompany

  initialize: ->
    @bind('add', @addOneView, this);
  
  events:
    "submit form#new_advisor_search"  : "createOnEnter"

  addOneView: (f)->
    view = new AdvisorSearchApp.InvestmentCompanyView({model:f});
    view.render();
  
  createOnEnter: (e) ->
    if e.keyCode == 13
      @collection.create @newAttributes()
    
    
    
AdvisorSearchApp.InvestmentCompanies = new AdvisorSearchApp.InvestmentCompanyCollection
AdvisorSearchApp.InvestmentCompanies.bind('reset', (companies)->
    companies.each( (f)->
      companies.addOneView(f)
    );
);