class Base < SitePrism::Page
  @qtd = nil

  def rolar(qtd)
    execute_script "window.scrollBy(0," + qtd.to_s + ")"
  end
end
