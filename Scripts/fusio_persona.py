import csv

def merge_csv(file1, file2, output_file):
    # Llegir es contingut del primer arxiu CSV
    with open(file1, 'r', encoding='utf-8') as csv_file1:
        reader1 = csv.reader(csv_file1)
        data1 = list(reader1)

        # Eliminar la capçalera
        data1 = data1[1:]

    # Llegir es contingut del segon arxiu CSV
    with open(file2, 'r', encoding='utf-8') as csv_file2:
        reader2 = csv.reader(csv_file2)
        data2 = list(reader2)

        # Eliminar la capçalera
        data2 = data2[1:]

    # Fusionar les dades dels dos arxius
    merged_data = data1 + data2

    # Escriure les dades fusionades a un nou arxiu i nombrar les columnes
    with open(output_file, 'w', encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(['idper', 'nom', 'co1', 'co2', 'mai', 'dir', 'ciu', 'pai'])
        writer.writerows(merged_data)



# Main
if __name__ == '__main__':
    merge_csv('../TOREROS.csv', '..7APODERATS.csv', '../PERSONAS.csv')
