#!/bin/bash
#ricopili_make_gwascatalog.sh

set -euo pipefail

OUT="gwascatalog.Dec_2025.rp.txt"

echo "Downloading latest GWAS catalog bulk file..."
#List files on ftp
#wget -q -O - ftp://ftp.ebi.ac.uk/pub/databases/gwas/releases/latest/
wget -nv -O gwas-catalog-associations-full.zip \
	ftp://ftp.ebi.ac.uk:21/pub/databases/gwas/releases/latest/gwas-catalog-associations-full.zip
unzip gwas-catalog-associations-full.zip
gunzip gwas-catalog-download-associations-v1.0-full.tsv.gz
echo "Processing into Ricopili format..."

#zcat gwas-catalog-download-associations-v1.0-full.tsv.gz|head
#DATE ADDED TO CATALOG   PUBMEDID        FIRST AUTHOR    DATE    JOURNAL LINK    STUDY   DISEASE/TRAIT   INITIAL SAMPLE SIZE     REPLICATION SAMPLE SIZE      REGION  CHR_ID  CHR_POS REPORTED GENE(S)        MAPPED_GENE     UPSTREAM_GENE_ID        DOWNSTREAM_GENE_ID      SNP_GENE_IDS    UPSTREAM_GENE_DISTANCE       DOWNSTREAM_GENE_DISTANCE        STRONGEST SNP-RISK ALLELE       SNPS    MERGED  SNP_ID_CURRENT  CONTEXT INTERGENIC      RISK ALLELE FREQUENCY        P-VALUE PVALUE_MLOG     P-VALUE (TEXT)  OR or BETA      95% CI (TEXT)   PLATFORM [SNPS PASSING QC]      CNV

# Ricopili expects: snp, chr, pos_start, pos_end, pval, tag
# We extract: TRAIT, CHR_ID, CHR_POS, PVALUE
# And generate a tag "TRAIT(PUBMEDID)"

#SNPS	CHR_ID	CHR_POS	CHR_POS	P-VALUE	DISEASE/TRAIT(PUBMEDID)
#rs12393627	X	2967682	2967682	5E-12	Height(22021425)
#rs12393627	X	2967682	2967682	6E-12	Height(21998595)
#rs6638512	X	5266661	5266661	2E-25	Antineutrophil_...(22808956)
#rs12845396	X	6111492	6111492	2E-8	Schizophrenia(25056061)

awk -F'\t' 'BEGIN{
  OFS="\t";
  print "SNPS","CHR_ID","CHR_POS","CHR_POS","P-VALUE","DISEASE/TRAIT(PUBMEDID)"
}
NR>1 {
  # SNP: remove -RISK allele suffix if present
  split($21,snp_parts,"-");
  snp=snp_parts[1];

  chr=$12;
  bp=$13;
  a1=$21; # STRONGEST SNP-RISK ALLELE, can also use $22
  gsub(/-.*$/,"",a1); # remove -T

  p=$28;  # P-VALUE
  or_beta=$29; # OR or BETA
  study=$7;    # STUDY
  trait=$8;   # PDISEASE/TRAIT
  pubmed=$2;   # PUBMEDID
 
  print snp,chr,bp,bp,p,trait"("pubmed")"
}' gwas-catalog-download-associations-v1.0-full.tsv \
> "$OUT"

#gzip -f gwas-catalog-download-associations-v1.0-full.tsv 

echo "Created $OUT"
echo "Done."
