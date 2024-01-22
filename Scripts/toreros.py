import csv

def edit_toreros(output_file):
    # Llegir el contingut del arxiu CSV
    with open('../TOREROS.csv', 'r', encoding='utf-8') as csv_file:
        reader = csv.reader(csv_file)
        data = list(reader)

        # Copiar la capçalera de la primera i última columna
        header = [data[0][0]]
        header.append(data[0][-1])

        # Eliminar la capçalera
        data = data[1:]

        # Guardar la primera i última columna del fitxer
        new_data = list()
        for row in data:
            new_data.append([row[0]])
            new_data[-1].append(row[-1])

        # Guardar les dades
        with open(output_file, 'w', encoding='utf-8') as csv_file:
            writer = csv.writer(csv_file)
            writer.writerow(header)
            writer.writerows(new_data)

# Main
if __name__ == '__main__':
    edit_toreros('../TOREROS_edit.csv')