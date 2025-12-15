#!/bin/bash
#https://docs.google.com/document/d/1pfJZmacumWHavtWP4aej2685c5gbLVA37rhba6M_vaw/edit?tab=t.0#heading=h.l4e2sbab1222

######################################## 1000 Genomes Project Phase 3 hg19 (b37) ########################################

cd /ricopili/references

mkdir 1KGPv3_REFERENCE_PANEL
cd 1KGPv3_REFERENCE_PANEL

wget -nv http://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/refGene.txt.gz
wget https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/integrated_call_samples_v3.20130502.ALL.panel

cp ~/persistent/ref_panels/1kgp3/ALL.chr* ./

echo "wget -nv ALL.chrX.phase3_shapeit2_mvncall_integrated_v1c.20130502.genotypes.vcf.gz">>download_ref_panel_files.sh
echo "wget -nv ALL.chrX.phase3_shapeit2_mvncall_integrated_v1c.20130502.genotypes.vcf.gz.tbi">>download_ref_panel_files.sh
echo "wget -nv ALL.chrY.phase3_integrated_v2b.20130502.genotypes.vcf.gz">>download_ref_panel_files.sh
echo "wget -nv ALL.chrY.phase3_integrated_v2b.20130502.genotypes.vcf.gz.tbi">>download_ref_panel_files.sh

for i in {1..22}; do echo "wget -nv ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz";done>>download_ref_panel_files.sh
for i in {1..22}; do echo "wget -nv ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz.tbi";done>>download_ref_panel_files.sh
for i in {1..22}; do echo "wget -nv http://mathgen.stats.ox.ac.uk/impute/ALL_1000G_phase1integrated_feb2012_impute/genetic_map_chr"$i"_combined_b37.txt";done>>download_ref_panel_files.sh
chmod +x download_ref_panel_files.sh
./download_ref_panel_files.sh

#The pipeline recognizes these files with a ‘loc.’ prefix attached to them. 
#After successful download of the files as indicated in the above commands, rename the files using the following

for i in {1..22};do echo "bcftools view -m2 -M2 -v snps -O z -o ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz \
  ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz";done >> filter_out_indels.sh
for i in {1..22};do echo "tabix -p vcf ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz";done >> filter_out_indels.sh
chmod +x filter_out_indels.sh
./filter_out_indels.sh

for i in {1..22};do echo "mv ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz loc.ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz";done >> rename.loc.sh
for i in {1..22};do echo "mv ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz.tbi loc.ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz.tbi";done >> rename.loc.sh
for i in {1..22};do echo "mv genetic_map_chr"$i"_combined_b37.txt loc.genetic_map_chr"$i"_combined_b37.txt";done >> rename.loc.sh
chmod +x rename.loc.sh
./rename.loc.sh

#After this, you should see that the files that were downloaded would have the ‘loc.’ prefix appended. 
#Restart the pipeline simply by running 

cd ~/ref_panels && ln -s /ricopili/reference/1KGPv3_REFERENCE_PANEL 1KGPv3_REFERENCE_PANEL
cd 1KGPv3_REFERENCE_PANEL

chmod +x ricopili_make_gwascatalog.sh
./ricopili_make_gwascatalog.sh


#Build the reference:
refdir_navi --vcf_site ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ \
--vcf_templ ALL.chrXXX.phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz \
--out_templ ALL_v5b.20130502.chrXXX_1KG_hg19 \
--outname 1KG_hg19 \
--sample_root integrated_call_samples_v3.20130502.ALL.panel \
--build_hg19


######################################## 1000 Genomes Project Phase 3 hg38 (b38) ########################################

cd /ricopili/references

mkdir 1KGPv3_REFERENCE_PANEL/hg38
cd 1KGPv3_REFERENCE_PANEL/hg38

wget -nv http://hgdownload.soe.ucsc.edu/goldenPath/hg38/database/refGene.txt.gz
wget https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/integrated_call_samples_v3.20130502.ALL.panel

for i in {1..22} X; do echo "wget -nv https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/release/20190312_biallelic_SNV_and_INDEL/ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.vcf.gz";done>>download_ref_panel_files_hg38.sh
for i in {1..22} X; do echo "wget -nv https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/release/20190312_biallelic_SNV_and_INDEL/ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.vcf.gz.tbi";done>>download_ref_panel_files_hg38.sh
for i in {1..22} X; do echo "wget https://raw.githubusercontent.com/odelaneau/shapeit4/master/maps/genetic_map_chr${i}_GRCh38.txt";done>>download_ref_panel_files_hg38.sh
echo "wget https://github.com/odelaneau/shapeit4/raw/master/maps/genetic_maps.b38.tar.gz && tar xzf genetic_maps.b38.tar.gz && gunzip chr*.b38.gmap.gz">>download_ref_panel_files_hg38.sh
chmod +x download_ref_panel_files_hg38.sh
./download_ref_panel_files_hg38.sh

for i in {1..22} X;do echo "bcftools view -m2 -M2 -v snps -O z -o ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz \
  ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.vcf.gz";done >> filter_out_indels_hg38.sh
for i in {1..22} X;do echo "tabix -p vcf ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz";done >> filter_out_indels_hg38.sh
chmod +x filter_out_indels_hg38.sh
./filter_out_indels_hg38.sh


for i in {1..22} X;do echo "mv ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz loc.ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz";done >> rename.loc_hg38.sh
for i in {1..22} X;do echo "mv ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz.tbi loc.ALL.chr"$i".shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz.tbi";done >> rename.loc_hg38.sh
for i in {1..22} X;do echo "mv chr1"$i".b38.gmap loc.genetic_map_chr"$i"_combined_b38.txt";done >> rename.loc_hg38.sh
chmod +x rename.loc_hg38.sh
./rename.loc_hg38.sh


#After this, you should see that the files that were downloaded would have the ‘loc.’ prefix appended. 
#Restart the pipeline simply by running 

cd ~/ref_panels && ln -s /ricopili/reference/1KGPv3_REFERENCE_PANEL 1KGPv3_REFERENCE_PANEL
cd 1KGPv3_REFERENCE_PANEL

chmod +x ricopili_make_gwascatalog.sh
./ricopili_make_gwascatalog.sh


#Build the reference:
refdir_navi --vcf_site https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/release/20190312_biallelic_SNV_and_INDEL/ \
--vcf_templ ALL.chrXXX.shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.SNPs.vcf.gz \
--out_templ ALL_v2a.27022019.chrXXX_1KG_hg38 \
--outname 1KG_hg38 \
--sample_root integrated_call_samples_v3.20130502.ALL.panel \
--build_hg38

######################################## HRC ########################################

cp /Volumes/projects/FHML_MHeNs/genus/ref_panels/HRC/HRC.r1-1.GRCh37.wgs.mac5.sites.tab.gz ~/persistent/ref_panels/HRC/
cp /Volumes/projects/FHML_MHeNs/genus/ref_panels/HRC/HRC.r1-1.GRCh37.wgs.mac5.sites.vcf.gz ~/persistent/ref_panels/HRC/

cd ~/persistent/ref_panels/HRC/
gunzip HRC/HRC.r1-1.GRCh37.wgs.mac5.sites.*.gz

for i in {1..22}; do echo "wget -nv ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz";done>>download_ref_panel_files.sh
for i in {1..22}; do echo "wget -nv ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz.tbi";done>>download_ref_panel_files.sh
for i in {1..22}; do echo "wget -nv http://mathgen.stats.ox.ac.uk/impute/ALL_1000G_phase1integrated_feb2012_impute/genetic_map_chr"$i"_combined_b37.txt";done>>download_ref_panel_files.sh
chmod +x download_ref_panel_files.sh
./download_ref_panel_files.sh

#The pipeline recognizes these files with a ‘loc.’ prefix attached to them. 
#After successful download of the files as indicated in the above commands, rename the files using the following

#Extract biallelic SNPs only, or the pipeline fails with error about number of characters for A1 and A2 (max 1).
for i in {1..22};do echo "bcftools view -m2 -M2 -v snps -O z -o ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz \
  ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz";done >> filter_out_indels.sh
for i in {1..22};do echo "tabix -p vcf ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz";done >> filter_out_indels.sh
chmod +x filter_out_indels.sh
./filter_out_indels.sh

for i in {1..22};do echo "mv ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz loc.ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz";done >> rename.loc.sh
for i in {1..22};do echo "mv ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz.tbi loc.ALL.chr"$i".phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz.tbi";done >> rename.loc.sh
for i in {1..22};do echo "mv genetic_map_chr"$i"_combined_b37.txt loc.genetic_map_chr"$i"_combined_b37.txt";done >> rename.loc.sh
chmod +x rename.loc.sh
./rename.loc.sh

#After this, you should see that the files that were downloaded would have the ‘loc.’ prefix appended. 
#Restart the pipeline simply by running 

cd ~/ref_panels && ln -s /ricopili/reference/1KGPv3_REFERENCE_PANEL 1KGPv3_REFERENCE_PANEL
cd 1KGPv3_REFERENCE_PANEL
chmod +x ricopili_make_gwascatalog.sh
./ricopili_make_gwascatalog.sh


#Build the reference:
refdir_navi --vcf_site ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ \
--vcf_templ ALL.chrXXX.phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.SNPs.vcf.gz \
--out_templ ALL_v5b.20130502.chrXXX_1KG_0517 \
--outname 1KG_0517 \
--sample_root integrated_call_samples_v3.20130502.ALL.panel \
--build_hg19






#Download:
#After access you need to arrange the following files in one working directory:
_EGAZ00001239268_HRC.r1-1.EGA.GRCh37.chr1.haplotypes.vcf.gz
_EGAZ00001239268_HRC.r1-1.EGA.GRCh37.chr1.legend.gz
_EGAZ00001239268_HRC.r1-1.EGA.GRCh37.chr1.samples
#Similar triplets for chr2-chr22

#Rename the files: You have to rename remove the first part in front of the second underscore (since these numbers change between the chromosomes. So you want to achieve a filename structure like this:
HRC.r1-1.EGA.GRCh37.chr1.haplotypes.vcf.gz
HRC.r1-1.EGA.GRCh37.chr1.legend.gz
HRC.r1-1.EGA.GRCh37.chr1.samples
#Same triplets for chr2-chr22

#You will need the ancestry definition file (hrs_annotated_3PCsvmNORD_short.txt)


#Build the reference:
refdir_navi \
--vcf_templ HRC.r1-1.EGA.GRCh37.chrXXX.haplotypes.vcf.gz \
--out_templ HRC.r1-1.EGA.GRCh37.chrXXX \
--outname HRC.r1-1 \
--sample_root hrs_annotated_3PCsvmNORD_short.txt \
--build_hg19 \
--walltimeplus 10



