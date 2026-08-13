resource "aws_connect_bot_association" "connect_bot_associations" {
  for_each = var.connect_bot_associations

  instance_id = each.value.instance_id
  region      = each.value.region

  lex_bot {
    lex_region = each.value.lex_bot.lex_region
    name       = each.value.lex_bot.name
  }
}

