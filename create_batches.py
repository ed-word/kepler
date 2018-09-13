import math


def batch(iterable, n=1):
    ilen = len(iterable)
    for ndx in range(0, ilen, n):
        yield iterable[ndx:min(ndx + n, ilen)]


if __name__ == '__main__':
    with open('links_kepler.txt', 'r') as f:
        links = f.readlines()

    batches = [
        links[b[0]:b[0]+len(b)] for b in batch(
                    range(0, len(links)), math.floor(len(links) / 20)
                )
    ]

    for i, b in enumerate(batches):
        batch_name = 'batch' + str(i)
        with open('links/' + batch_name + '.sh', 'w') as f:
            f.write('mkdir -p ' + 'data/' + batch_name + '\n')
            f.write('cd data/' + batch_name + '\n\n')

            one_percent = int(len(b) / 100)
            if not one_percent:
                one_percent = 1
            for i, line in enumerate(b):
                if (i % one_percent == 0):
                    f.write(
                        'echo "' +
                        str(float(100) - float(i*100/len(b))) +
                        '% left"\n\n'
                    )
                f.write(line)

            f.write('echo "Completed"\n\n')
            f.write('zip -r ../../zip/' + batch_name + '.zip' + ' *' + '\n')
            f.write('cd ../\n')
            f.write('rm -rf ' + batch_name + '\n')
            f.write('cd ../' + '\n')
            f.write('grive -s zip/' + batch_name + '.zip' + '\n')
