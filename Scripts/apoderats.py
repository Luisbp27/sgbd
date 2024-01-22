import csv

def edit_apoderats(output_file):
    # Llegir el contingut del arxiu CSV
    with open('../APODERATS.csv', 'r', encoding='utf-8') as csv_file:
        reader = csv.reader(csv_file)
        data = list(reader)

        # Copiar la capçalera de la primera columna
        header = [data[0][0]]

        # Eliminar la capçalera
        data = data[1:]

        # Guardar la primera columna del fitxer
        new_data = list()
        for row in data:
            new_data.append([row[0]])

        # Guardar les dades
        with open(output_file, 'w', encoding='utf-8') as csv_file:
            writer = csv.writer(csv_file)
            writer.writerow(header)
            writer.writerows(new_data)

# Main
if __name__ == '__main__':
    edit_apoderats('../APODERATS_edit.csv')
