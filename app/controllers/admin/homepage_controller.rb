class Admin::HomepageController < Admin::BaseController

  def show
    load_widgets
  end

  private

  def load_widgets
    widgets = /feature.homepage.widgets/
    @widgets = Setting.select {|setting| setting.key =~ /#{widgets}/ }
  end

end