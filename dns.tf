# Provision a Route53 Hosted Zone
# -------------------------------

resource "aws_route53_zone" "primary" {
  name = "a5projectdevops.com"
}

resource "aws_route53_record" "root" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "a5projectdevops.com"
  type    = "A"

  alias {
    name                   = aws_lb.load_balancer.dns_name
    zone_id                = aws_lb.load_balancer.zone_id
    evaluate_target_health = true
  }
}
