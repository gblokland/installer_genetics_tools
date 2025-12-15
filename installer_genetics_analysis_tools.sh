#!/bin/bash
#bin_dir=/ricopili/dependencies/
bin_dir=/root/persistent/opt/
cd $bin_dir
mkdir -p zips

apt-get update && apt-get install -y ca-certificates
update-ca-certificates

source conda_eigensoft.sh

wget https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20220402.zip
unzip plink_linux_x86_64_20220402.zip

wget https://s3.amazonaws.com/plink2-assets/alpha3/plink2_linux_x86_64_20220603.zip
unzip plink2_linux_x86_64_20220603.zip

wget https://yanglab.westlake.edu.cn/software/gcta/bin/gcta_v1.94.0Beta_linux_kernel_3_x86_64.zip
unzip gcta_v1.94.0Beta_linux_kernel_3_x86_64.zip

#Additional genetics tools
curl -Lo /tmp/bedtools-2.30.0.tgz https://github.com/arq5x/bedtools2/releases/download/v2.30.0/bedtools-2.30.0.tar.gz && \
tar zxvf /tmp/bedtools-2.30.0.tgz -C $bin_dir && \
cd $bin_dir/bedtools2 && make && make install && \
chmod 755 $bin_dir && \
rm /tmp/bedtools-2.30.0.tgz && \
cd $bin_dir && ln -s bedtools2/bin/bedtools ./bedtools
    
#vcftools - Perl and C++
#cd /tmp/ && git clone https://github.com/vcftools/vcftools.git && \
#cd /tmp/vcftools && ./autogen.sh && ./configure && make && make install && \
#cp -r /tmp/vcftools $bin_dir && \
#chmod 755 $bin_dir && \
#rm -r /tmp/vcftools && \
#cd $bin_dir && ln -s vcftools/bin/vcftools ./vcftools
ln -s /usr/local/bin/vcftools vcftools

#samtools
wget https://github.com/samtools/samtools/releases/download/1.21/samtools-1.21.tar.bz2
tar -xvjf samtools-1.21.tar.bz2
cd samtools-1.21    # and similarly for bcftools and htslib
./configure --prefix=/where/to/install
make
make install
cd $bin_dir && ln -s samtools-1.21/samtools ./samtools
mv samtools-1.21.tar.bz2 zips/

#bcftools
git clone --recurse-submodules https://github.com/samtools/htslib.git
git clone https://github.com/samtools/bcftools.git
cd bcftools
 # The following is optional:
 #   autoheader && autoconf && ./configure --enable-libgsl --enable-perl-filters
make
mv bcftools bcftools1.21
cd $bin_dir && ln -s bcftools1.21/bcftools ./bcftools
    
curl -Lo /tmp/gcta-1.94.1.zip https://yanglab.westlake.edu.cn/software/gcta/bin/gcta-1.94.1-linux-kernel-3-x86_64.zip && \
unzip /tmp/gcta-1.94.1.zip -d $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/gcta-1.94.1.zip 

#curl -Lo /tmp/locuszoom_1.3.tgz https://statgen.sph.umich.edu/locuszoom/download/locuszoom_1.3.tgz && \
#tar zxvf /tmp/locuszoom_1.3.tgz -C $bin_dir && \
#chmod 755 $bin_dir && \
#rm /tmp/locuszoom_1.3.tgz 

wget --no-check-certificate -O /tmp/locuszoom_1.4.tgz https://statgen.sph.umich.edu/locuszoom/download/locuszoom_1.4.tgz && \
tar zxvf /tmp/locuszoom_1.4.tgz -C $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/locuszoom_1.4.tgz 
    
curl -Lo /tmp/magma_v1.10.zip https://ctg.cncr.nl/software/MAGMA/prog/magma_v1.10.zip && \
unzip /tmp/magma_v1.10.zip -d $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/magma_v1.10.zip 

cd $bin_dir && mkdir -p magma_refs && cd magma_refs
wget https://ctg.cncr.nl/software/MAGMA/aux_files/NCBI38.zip && unzip NCBI38.zip
wget https://ctg.cncr.nl/software/MAGMA/aux_files/NCBI37.3.zip && unzip NCBI37.3.zip
wget https://ctg.cncr.nl/software/MAGMA/aux_files/dbsnp151.synonyms.zip && unzip dbsnp151.synonyms.zip
wget https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_eur.zip && unzip g1000_eur.zip
wget https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_afr.zip && unzip g1000_afr.zip
wget https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_eas.zip && unzip g1000_eas.zip
wget https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_sas.zip && unzip g1000_sas.zip
wget https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_amr.zip && unzip g1000_amr.zip
wget https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_subpop.zip && unzip g1000_subpop.zip

curl -Lo /tmp/annovar.tgz http://www.openbioinformatics.org/annovar/download/0wgxR2rIVP/annovar.latest.tar.gz && \
tar zxvf /tmp/annovar.tgz -C $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/annovar.tgz 
    
curl -Lo /tmp/PRSice_2.3.5.zip https://github.com/choishingwan/PRSice/releases/download/2.3.5/PRSice_linux.zip && \
unzip /tmp/PRSice_2.3.5.zip -d $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/PRSice_2.3.5.zip
    
curl -Lo /tmp/mach_1.0.18.tgz http://csg.sph.umich.edu/abecasis/MaCH/download/mach.1.0.18.Linux.tgz && \
tar zxvf /tmp/mach_1.0.18.tgz -C $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/mach_1.0.18.tgz

#PAINTOR
cd /tmp/ && git clone https://github.com/gkichaev/PAINTOR_V3.0.git && \
cd /tmp/PAINTOR_V3.0 && bash install.sh && \
cp -r /tmp/PAINTOR_V3.0 $bin_dir && \
chmod 755 $bin_dir && \
rm -r /tmp/PAINTOR_V3.0 && \
cd $bin_dir && ln -s $bin_dir/PAINTOR_V3.0/PAINTOR ./PAINTOR

#FINEMAP
curl -Lo /tmp/finemap_v1.1.tgz http://www.christianbenner.com/finemap_v1.1_x86_64.tgz && \
tar zxvf /tmp/finemap_v1.1.tgz -C $bin_dir && \
chmod 755 $bin_dir && \
rm /tmp/finemap_v1.1.tgz && \
cd $bin_dir && ln -s finemap_v1.1_x86_64/finemap_v1.1_x86_64 ./finemap

#CAVIAR
cd $bin_dir && git clone https://github.com/fhormoz/caviar.git && \
cd caviar/CAVIAR-C++ && make clean && make && \
cd $bin_dir && ln -s caviar/CAVIAR-C++/CAVIAR ./CAVIAR
    
#Boost libraries - prerequisite for MiXeR
cd $bin_dir && wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz 
cd $bin_dir && wget https://boostorg.jfrog.io/artifactory/main/release/1.69.0/source/boost_1_69_0.tar.gz && \
tar -xzvf boost_1_69_0.tar.gz && cd boost_1_69_0 && \
./bootstrap.sh --with-libraries=program_options,filesystem,system,date_time && \
./b2 --clean && ./b2 --j12 -a && \
export PATH=$bin_dir/boost_1_69_0:$PATH

#MiXeR - (was MATLAB and) Python-based 
cd /tmp/ && git clone --recurse-submodules -j8 https://github.com/precimed/mixer.git && \
mkdir mixer/src/build && cd mixer/src/build && \
cmake .. && make bgmg -j16 && \                                # if you use GCC compiler
#CC=icc CXX=icpc cmake .. && make bgmg -j16 && \                # if you use Intel compiler
#cmake .. -DBOOST_ROOT=$HOME/boost_1_69_0 && make bgmg -j16 && \  # if you use locally compiled boost
cp -r /tmp/mixer $bin_dir && rm -r /tmp/mixer && \
cd $bin_dir && chmod +x mixer/*/*.py && \
export PATH=$bin_dir/mixer/precimed:$bin_dir/mixer/scripts:$PATH

#pleiofdr - MATLAB and Python-based
cd /tmp/ && git clone https://github.com/precimed/pleiofdr.git && \
cd /tmp/pleiofdr && \
wget https://precimed.s3-eu-west-1.amazonaws.com/pleiofdr/pleioFDR_demo_data.tar.gz && \
tar -xzvf pleioFDR_demo_data.tar.gz && \
#matlab -nodisplay -nosplash < runme.m
cp -r /tmp/pleiofdr $bin_dir && rm -r /tmp/pleiofdr
cd $bin_dir

#mostest - MATLAB and Python-based
cd /tmp/ && git clone https://github.com/precimed/mostest.git && \
cp -r /tmp/mostest $bin_dir && rm -r /tmp/mostest
cd $bin_dir

#ukb_helper - Python-based
cd $bin_dir && git clone https://github.com/precimed/ukb.git

#Make python findable
cd $bin_dir && ln -s /usr/bin/python3 python

#LDpred2 (R package)
mkdir -p ldpred_refs && cd ldpred_refs
#N/A

#LAVA (R package)
mkdir -p lava_refs && cd lava_refs
wget https://vu.data.surfsara.nl/index.php/s/VZNByNwpD8qqINe/download && mv download g1000_eur.zip && unzip g1000_eur.zip
wget https://vu.data.surfsara.nl/index.php/s/ePXET6IWVTwTes4/download && mv download g1000_afr.zip
wget https://vu.data.surfsara.nl/index.php/s/dz6PYdKOi3xVqHn/download && mv download g1000_eas.zip
wget https://vu.data.surfsara.nl/index.php/s/C6UkTV5nuFo8cJC/download && mv download g1000_sas.zip
wget https://vu.data.surfsara.nl/index.php/s/TXDEm70eEO7AgOb/download && mv download g1000_amr.zip

# ***** PRScs *****
apt-get update && apt-get install -y git wget
git clone https://github.com/getian107/PRScs.git
wget -r -np -R "index.html*" https://personal.broadinstitute.org/hhuang/public/PRS-CSx/Reference/1KG/
wget -r -np -R "index.html*" https://personal.broadinstitute.org/hhuang/public/PRS-CSx/Reference/UKBB/
mv personal.broadinstitute.org PRScs_refs
mv PRScs_refs/hhuang/public/PRS-CSx/Reference PRScs/
rm -r PRScs_refs
ln -s PRScs/PRScs.py PRScs.py

# ***** #GCTB containing SBayesR, SBayesRC, and SBayesS modules *****
wget https://cnsgenomics.com/software/gctb/download/gctb_2.05beta_Linux.zip
unzip gctb_2.05beta_Linux.zip && mv gctb_2.05beta_Linux.zip zips/
rm -r __MACOSX
ln -s gctb_2.05beta_Linux/gctb gctb
unlink gctb

wget https://cnsgenomics.com/software/gctb/download/gctb_2.5.2_Linux.zip
unzip gctb_2.5.2_Linux.zip && mv gctb_2.5.2_Linux.zip zips/
rm -r __MACOSX
ln -s gctb_2.5.2_Linux/gctb gctb

mkdir -p gctb_refs && cd gctb_refs

#Functional genomic annotations:
#wget https://plot.cnsgenomics.com/SBayesRC/Annotation/annot_baseline2.2.zip
wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/Annotation/annot_baseline2.2.zip
unzip annot_baseline2.2.zip && mv annot_baseline2.2.zip zips/ 
wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/GWFM/Annotation/annot_baseline2.2_13M.zip
unzip annot_baseline2.2_13M.zip && mv annot_baseline2.2_13M.zip zips/ 

#https://github.com/zhilizheng/SBayesRC
#LD reference: 
#We provide LD data calculated from different UKB ancestry (EUR, EAS and AFR) in imputed SNPs and HapMap3 SNPs. 
#We suggest to download imputed LD same ancestry as the GWAS summary data.

mkdir LD_Reference && cd LD_Reference
###wget https://plot.cnsgenomics.com/SBayesRC/LD/Imputed/ukbEUR_Imputed.zip
wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/LD/Imputed/ukbEUR_Imputed.zip && unzip ukbEUR_Imputed.zip
###wget https://plot.cnsgenomics.com/SBayesRC/LD/Imputed/ukbEAS_Imputed.zip
#wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/LD/Imputed/ukbEAS_Imputed.zip && unzip ukbEAS_Imputed.zip
###wget https://plot.cnsgenomics.com/SBayesRC/LD/Imputed/ukbAFR_Imputed.zip
#wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/LD/Imputed/ukbAFR_Imputed.zip && unzip ukbAFR_Imputed.zip
###wget https://plot.cnsgenomics.com/SBayesRC/LD/HapMap3/ukbEUR_HM3.zip
wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/LD/HapMap3/ukbEUR_HM3.zip && unzip ukbEUR_HM3.zip
###wget https://plot.cnsgenomics.com/SBayesRC/LD/HapMap3/ukbEAS_HM3.zip
#wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/LD/HapMap3/ukbEAS_HM3.zip && unzip ukbEAS_HM3.zip
###wget https://plot.cnsgenomics.com/SBayesRC/LD/HapMap3/ukbAFR_HM3.zip
#wget https://gctbhub.cloud.edu.au/data/SBayesRC/resources/v2.0/LD/HapMap3/ukbAFR_HM3.zip && unzip ukbAFR_HM3.zip

# ***** primus *****
wget https://primus.gs.washington.edu/docroot/versions/PRIMUS_v1.9.0.tgz
tar xzf PRIMUS_v1.9.0.tgz

# ***** fcgene *****
#https://sourceforge.net/projects/fcgene/files/latest/download
wget http://sourceforge.net/projects/fcgene/files/fcgene-1.0.7.tar.gz/download
mv download fcgene-1.0.7.tar.gz
tar -zxvf fcgene-1.0.7.tar.gz
cd fcgene-1.0.7
#	If you want to use static version of the program, run:
mv fcgene_static fcgene 
# For the dynamic version, run:
mv fcgene_dynamic fcgene  

# ***** eigensoft *****
bash install_eigensoft.sh /ricopili/dependencies/eigensoft

cd $bin_dir
mv *gz zips/
mv *zip zips/

Rscript -e 'install.packages(c("devtools", "remotes", "RcppEigen"), repos = "http://cran.rstudio.com/")'
Rscript -e 'install.packages("tidyverse", dependencies = TRUE, repos = "http://cran.rstudio.com/")'
Rscript -e 'install.packages("units", dependencies = TRUE, repos = "http://cran.rstudio.com/")'
Rscript -e 'install.packages(c("RSQLite","dbplyr","ggplot2"), dependencies = TRUE, repos = "http://cran.rstudio.com/")'

Rscript -e 'dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)' && \
Rscript -e '.libPaths(Sys.getenv("R_LIBS_USER"))' && \
Rscript -e 'install.packages("BiocManager", repos="https://cloud.r-project.org")' && \
Rscript -e "BiocManager::install('AnnotationDbi')" && \
Rscript -e "BiocManager::install('biomaRt')" && \
Rscript -e "BiocManager::install('org.Hs.eg.db')" && \
Rscript -e "BiocManager::install('Rgraphviz')" && \
Rscript -e "BiocManager::install('RBGL')" && \
#Standard packages
Rscript -e "install.packages(c('bigsnpr', 'corrgram', 'corrplot', 'cowplot', 'd3heatmap', 'data.table', 'DescTools', 'pbkrtest', 'doBy'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('dplyr', 'extrafont', 'extrafontdb', 'foreign', 'forestplot', 'forestploter'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('randomForest', 'RColorBrewer', 'readxl', 'reshape', 'reshape2'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('gdata', 'ggcorrplot', 'ggplot2', 'ggstats', 'gtools', 'gwasrapidd', 'haven', 'igraph', 'jpeg', 'lattice'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('lubridate', 'meta', 'metafor', 'MetaSKAT', 'rpf', 'OpenMx', 'pheatmap', 'plyr', 'png', 'poolr', 'psych'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('rmarkdown', 'scatterplot3d', 'scales', 'sem', 'semTools', 'stringr'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('sysfonts', 'systemfonts', 'tibble', 'tidyr', 'ukbtools', 'VennDiagram'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('viridis', 'viridisLite', 'vroom', 'writexl', 'WriteXLS', 'xtable'), repos='http://cran.rstudio.com/')" && \
Rscript -e "install.packages(c('mvoutlier', 'qqman', 'rsq', 'xlsx', 'xlsxjars'), repos='http://cran.rstudio.com/')"
    
Rscript -e 'dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)' && \
Rscript -e '.libPaths(Sys.getenv("R_LIBS_USER"))' && \
#Bioconductor packages
Rscript -e "BiocManager::install('ASSET')" && \
Rscript -e "BiocManager::install('gwascat')" && \
Rscript -e "BiocManager::install('snpStats')" && \
#install snpStats first otherwise LAVA install won't work: dependency ‘snpStats’ is not available for package ‘LAVA’
#GitHub packages
Sys.unsetenv("GITHUB_PAT")
Rscript -e "remotes::install_github('kenhanscombe/ukbtools', 'ramiromagno/gwasrapidd', 'privefl/bigsnpr', 'leeshawn/MetaSKAT', 'ozancinar/poolR'))" && \
#ukbtools gwasrapidd bigsnpr MetaSKAT poolR are now on cran so they get installed with standard packages
Rscript -e "remotes::install_github('DudbridgeLab/avengeme')" && \
#AVENGEME is a package for polygenic scoring analysis
Rscript -e "remotes::install_github('https://github.com/GenABEL-Project/GenABEL.git')" && \
Rscript -e "remotes::install_github('MathiasHarrer/dmetar')" && \
Rscript -e "remotes::install_github('kassambara/easyGgplot2')" && \
Rscript -e "remotes::install_github('https://github.com/josefin-werme/LAVA.git')" && \
setRepositories(ind = 1:6)
Rscript -e "remotes::install_github('weizhouUMICH/SAIGE')" && \
#SAIGE is an R package with Scalable and Accurate Implementation of Generalized mixed model.
Rscript -e "remotes::install_github('merns/postgwas')" && \
Rscript -e "remotes::install_github('MRCIEU/TwoSampleMR')"

# Suggest: enable faster backend BLAS for R, e.g. openBlas, MKL
# Run in R to install dependencies
Rscript -e "install.packages(c('Rcpp', 'data.table', 'stringi', 'BH', 'RcppEigen'))"
# Install SBayesRC package
Rscript -e "install.packages('https://github.com/zhilizheng/SBayesRC/releases/download/v0.2.1/SBayesRC_0.2.1.tar.gz', repos=NULL, type='source')"

Rscript -e "installed.packages(); .libPaths(); .libPaths( c( .libPaths(), '/ricopili/dependencies/R_packages', '/usr/local/lib/R/site-library') )"
    
