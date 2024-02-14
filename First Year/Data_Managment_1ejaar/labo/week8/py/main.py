from services.CategoryServices import CategoryServices
# from services.CustomerServices import CustomerServices
from services.ProductServices import ProductServices


def main():

    question = "Kies een optie voor categoriën: C=Create, R=Read, U=Update, D=Delete , S = Search\n"
    question += "Kies een optie voor klanten: RC=ReadCustomers, DC=DetailCustomer, SC=SaldoCustomers, CC=CreateCustomer\n"
    question += "Druk op X voor exit> "

    print("Welkom administrator. Beheer hier jouw categorieën & klanten.")
    choice = ""

    while(choice.upper() != 'X'):
        print("---------------------------------------------------------------------")
        choice = input(question)
        if choice.upper() == 'C':
            naam = input('Geef een  categorie naam: ')
            beschrijving = input ('Geef een categorie beschrijving: ')      
            CategoryServices.add_category(naam, beschrijving)
         
        elif (choice.upper() == 'R') :
            CategoryServices.print_all_categories()

        elif choice.upper() == 'U':
             number = int(input("Geef het categorienummer op dat u wenst aan te passen: "))
             name = input("Geef de nieuwe categorienaam op:")
             description = input("Geef de nieuwe beschrijving op:")
             CategoryServices.update_category(name, description, number)
	
        elif choice.upper() == 'D':
             number = int(input("Geef het categorienummer op dat u wenst te verwijderen: "))
             CategoryServices.delete_category(number)
        
        elif choice.upper() == 'S':
            categorynumber = int(input('Geef een bestaand categorienummer op om producten op te zoeken: '))     
            ProductServices.print_products_from_category(categorynumber)

        elif choice.upper() == 'RC':          
            pass

        elif choice.upper() == 'DC':
            number = int(input("Geef het klantennummer op waarvan u details wenst: "))          
            pass

        elif choice.upper() == 'SC':
            city = input('Geef een gemeente op waar de saldo\'s van klanten zullen opgezocht worden: ')             
            pass

        elif choice.upper() == 'CC':
            # CustomerServices.create_customer("Walcarius","Graaf Karel de Goedelaan 5",8500,"Kortrijk","W")
            name = input('Geef de naam van de klant op: ')
            address = input('Geef het adres van de klant op: ')
            city = input('Geef de stad/gemeente van de klant op: ')
            zipcode = int(input('Geef het postnummer op: '))
            type_customer = input('Geef het type customer op [W,R,T,P]: ')           
            pass
    
        elif choice.upper()== 'X':
            print("Tot de volgende keer.Bye")
        
        else:
            choice =""
            print('Onbestaande keuze. Probeer opnieuw.')

####  main function oproepen ########################################################
main()