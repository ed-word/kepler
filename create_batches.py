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
            f.write('mkdir ' + 'data/' + batch_name + '\n')
            for line in b:
                line = line.replace('BATCH_NAME', batch_name)
                f.write(line)
