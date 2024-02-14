from repositories.Database import Database
from repositories.CategoryRepository import CategoryRepository
from services.CategoryServices import CategoryServices
from services.ProductServices import ProductServices
# from services.CustomerServices import CustomerServices
from tabulate import tabulate

# TEST database connection!
# rows = Database.get_rows("SELECT * FROM tblcategories")
# print(rows)
# print(tabulate(rows, headers="keys"))
# list_categories = CategoryRepository.read_all()
# print(list_categories)

# Test services
CategoryServices.print_all_categories()

ProductServices.print_products_from_category(1)

# CustomerServices.print_all_customers()
# CustomerServices.print_detail_customer(65)
# CustomerServices.print_details_city('Kortrijk')
# CustomerServices.create_customer("Walcarius","Graaf Karel de Goedelaan 5",8500,"Kortrijk","W")

# CategorieServices.create_new_category("MCT Fruit","Howest")
# CategorieServices.update_category(9,"IPO Fruit","Howest")
# CategorieServices.delete_category(9)