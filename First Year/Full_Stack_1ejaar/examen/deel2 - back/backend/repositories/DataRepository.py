from .Database import Database


class DataRepository:
    '''Deze klasse is de verbinding tussen de controller en de DAO (Data Acces Object)'''
    @staticmethod
    def json_or_formdata(request):
        '''Deze methode haalt de data op uit de request en zet deze om naar een dictionary'''
        if request.method != 'GET' and request.content_type == 'application/json':
            gegevens = request.get_json()
        else:
            gegevens = request.form.to_dict()
        return gegevens

    @staticmethod
    # Deze methode is deel van het frontend-gedeelte van examen en mag NIET gewijzigd worden
    def read_categories():
        '''Deze methode haalt alle categorieën op uit de database'''
        sql = "SELECT * from categories"
        return Database.get_rows(sql)

    @staticmethod
    # Deze methode is deel van het frontend-gedeelte van examen en mag NIET gewijzigd worden
    def read_data(cat_id):
        '''Deze methode haalt alle data op uit de database voor een bepaalde categorie'''
        sql = "SELECT totaal from categories WHERE id = %s"
        params = [cat_id]
        soort = Database.get_one_row(sql, params)
        if soort['totaal'] == "AVG":
            sql = "SELECT ROUND(AVG(data),2) as totaal, cat_id,  datum, eenheid  from data INNER JOIN categories on data.cat_id = categories.id WHERE cat_id = %s GROUP BY datum ORDER BY datum ASC"
        elif soort['totaal'] == "SUM":
            sql = "SELECT ROUND(SUM(data),2) as totaal, cat_id, datum, eenheid  from data INNER JOIN categories on data.cat_id = categories.id WHERE cat_id = %s GROUP BY datum ORDER BY datum ASC"

        params = [cat_id]
        return Database.get_rows(sql, params)

    @staticmethod
    # Deze methode is deel van het frontend-gedeelte van examen en mag NIET gewijzigd worden
    def delete_data(datum, cat_id):
        '''Deze methode verwijdert alle data uit de database voor een bepaalde datum en categorie'''
        sql = "DELETE FROM data WHERE datum = %s AND cat_id = %s"
        params = [datum, cat_id]
        return Database.execute_sql(sql, params)

    @staticmethod
    def add_categorie(naam, eenheid, image, ondertitel, klass, total):
        sql = 'insert into categories(naam,eenheid,image,ondertitel,class,totaal) values(%s,%s,%s,%s,%s,%s)'
        params = [naam, eenheid, image, ondertitel, klass, total]
        return Database.execute_sql(sql, params)

    @staticmethod
    def read_categorie(id):
        sql = 'select eenheid,naam,ondertitel,totaal from categories where id=%s'
        params = [id]
        return Database.get_rows(sql, params)

    @staticmethod
    def update_categorie(naam, eenheid, totaal, id):
        sql = 'update categories set naam=%s, eenheid=%s, totaal=%s where id=%s'
        params = [naam, eenheid, totaal, id]
        return Database.execute_sql(sql, params)
