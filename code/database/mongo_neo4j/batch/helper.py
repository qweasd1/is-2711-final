customer_category_map = {
    0:"home",
    1:"business",
    2:"government"
}

def customer_category(code):
    return customer_category_map.get(code,"unknown")