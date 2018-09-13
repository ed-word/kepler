mkdir -p data/batch20
cd data/batch20

echo "100.0% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0044/004466180 http://archive.stsci.edu/pub/kepler/lightcurves/0044/004466180/
echo "88.88888888888889% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0087/008718465 http://archive.stsci.edu/pub/kepler/lightcurves/0087/008718465/
echo "77.77777777777777% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0093/009389206 http://archive.stsci.edu/pub/kepler/lightcurves/0093/009389206/
echo "66.66666666666666% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0111/011193263 http://archive.stsci.edu/pub/kepler/lightcurves/0111/011193263/
echo "55.55555555555556% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0100/010019708 http://archive.stsci.edu/pub/kepler/lightcurves/0100/010019708/
echo "44.44444444444444% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0114/011446443 http://archive.stsci.edu/pub/kepler/lightcurves/0114/011446443/
echo "33.33333333333333% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0049/004949825 http://archive.stsci.edu/pub/kepler/lightcurves/0049/004949825/
echo "22.22222222222223% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0122/012202245 http://archive.stsci.edu/pub/kepler/lightcurves/0122/012202245/
echo "11.111111111111114% left"

wget -q -nH --cut-dirs=6 -r -l0 -c -nc -np -erobots=off -R 'index*' -A _llc.fits -P 0025/002584163 http://archive.stsci.edu/pub/kepler/lightcurves/0025/002584163/
echo "Completed"

zip -r ../../zip/batch20.zip *
cd ../../