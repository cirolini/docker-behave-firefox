@when('we visit google')
def step(context):
   context.browser.get('http://www.google.com/')

@then('it should have a "content"')
def step(context):
   assert "html" in context.browser.page_source
