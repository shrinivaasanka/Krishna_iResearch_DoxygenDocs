#!/bin/bash
rm -rf pdf
rm -rf text
git checkout pdf
git checkout text
cat /dev/null > text/NeuronRain_Documents/NeuronRainDesign_unified.txt
for i in `find .. -name "*.txt"`
do
	cp $i text/NeuronRain_Documents/
done
for i in `ls text/NeuronRain_Documents/*`
do
	echo "-------------------------------------" >> text/NeuronRainDesign_unified.txt
	echo $i >> text/NeuronRainDesign_unified.txt
	echo "-------------------------------------" >> text/NeuronRainDesign_unified.txt
	cat $i >> text/NeuronRainDesign_unified.txt
done
mv text/NeuronRainDesign_unified.txt text/NeuronRain_Documents/NeuronRainDesign_unified.txt
echo "--------------------------------------------------" >> text/NeuronRain_Documents/NeuronRainDesign_unified.txt
echo "text/NeuronRain_Documents/index.rst" >> text/NeuronRain_Documents/NeuronRainDesign_unified.txt 
echo "--------------------------------------------------" >> text/NeuronRain_Documents/NeuronRainDesign_unified.txt
cat index.rst >> text/NeuronRain_Documents/NeuronRainDesign_unified.txt 
#pandoc text/NeuronRain_Documents/NeuronRainDesign_unified.txt --pdf-engine wkhtmltopdf -o pdf/NeuronRain_Documents/NeuronRainDesign_unified.pdf 
#enscript text/NeuronRain_Documents/NeuronRainDesign_unified.txt -o - | ps2pdf  - pdf/NeuronRain_Documents/NeuronRainDesign_unified.pdf
#a2ps -v text/NeuronRain_Documents/NeuronRainDesign_unified.txt --output=text/NeuronRain_Documents/NeuronRainDesign_unified.ps
#mv text/NeuronRain_Documents/NeuronRainDesign_unified.ps ps/
#pandoc index.rst -o index.html
rst-buildhtml --report=5
#pandoc index.html --pdf-engine wkhtmltopdf -o pdf/NeuronRain_Documents/neuronrain-documentation.pdf 
rst2pdf index.rst -o pdf/NeuronRain_Documents/neuronrain-documentation.pdf 
