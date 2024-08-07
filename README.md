# IsDETI
In silico Differentially Expressed Transcripts Identification


**Bioinformatic tools to identify differentially expressed transcripts in species with or without a reference genome.**

## Software dependencies

### Procedure 1 - Identifying sex-specific transcripts in species WITHOUT a sequenced reference genome
1.  BLAST+ - https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/
2.  BUSCO - https://gitlab.com/ezlab/busco
3.  BOWTIE - https://bowtie-bio.sourceforge.net/index.shtml
4.  EDGER - https://bioconductor.org/packages/release/bioc/html/edgeR.html
5.  FASTQC - https://github.com/s-andrews/FastQC
6.  TRIMMOMATIC - http://www.usadellab.org/cms/?page=trimmomatic
7.  TRINITY - https://github.com/trinityrnaseq/trinityrnaseq
8.  R - https://www.r-project.org/
9.  RSEM - https://github.com/deweylab/RSEM
10.  SAMTOOLS - https://www.htslib.org
11.  SRA TOOLKIT - https://github.com/ncbi/sra-tools

### Procedure 2 - Identifying sex-specific transcripts in species WITH a sequenced reference genome
1.  EDGER - https://bioconductor.org/packages/release/bioc/html/edgeR.html
2.  FASTQC - https://github.com/s-andrews/FastQC
3.  R - https://www.r-project.org/
4.  RSEM - https://github.com/deweylab/RSEM
5.  SAMTOOLS - https://www.htslib.org/
6.  SRA TOOLKIT - https://github.com/ncbi/sra-tools
7.  STAR - https://github.com/alexdobin/STAR
8.  TRIMMOMATIC - http://www.usadellab.org/cms/?page=trimmomatic
9.  TRINITY - https://github.com/trinityrnaseq/trinityrnaseq/

## Let's setup a very powerful motd

```bash
nano /etc/motd
```

now, paste this ascii code


```
    ,                      _,-
   (\                  _,-','
    \\              ,-"  ,'
     \\           ,'   ,'
      \\        _:.----__.-."-._,-._
       \\    .-".:--`:::::.:.:'  )  `-.
        \\   `. ::L .::::::'`-._  (  ) :
         \\    ":::::::'  `-.   `-_ ) ,'
          \\.._/_`:::,' `.     .  `-:
          :" _   "\"" `-_    .    `  `.
           "\\"":--\     `-.__ ` .     `.
             \\'::  \    _-"__`--.__ `  . `.     _,--..-
              \\ ::  \_-":)(        ""-._ ` `.-''
               \\`:`-":::/ \\ .   .      `-.  :
               :\\:::::::'  \\     `    .   `. :
                :\\:':':'  . \\           `,  : :
                : \\     .    \\      .       `. :       ,-
               __`:\\      .   \\ .   `  ,'    ,: :   ,-'
        _,---""  :  \\ '        \\  .          :-"  ,'
    ,-""        :    \\:  .  :   \\  `  '     ,'   /
   '            :  :  \       .   \\   .   _,'  ,-'
               :  .   '       :   :`   `,-' ,--'
                :     :   :      ,'-._,' ,-'
                _:     :        :8:  ,--'
               :dd`-._,'-._.__-""' ,'
                             ,----'
                      _.----'
              __..--""
            ""

   _____  .__  __  .__                             .___.__
  /     \ |__|/  |_|  |______________    ____    __| _/|__|______
 /  \ /  \|  \   __\  |  \_  __ \__  \  /    \  / __ | |  \_  __ \
/    Y    \  ||  | |   Y  \  | \// __ \|   |  \/ /_/ | |  ||  | \/
\____|__  /__||__| |___|  /__|  (____  /___|  /\____ | |__||__|
        \/              \/           \/     \/      \/


```
## Dependencies from official debian repository

### Basic system requirements

**All this script is tested on Debian 12 and Ubuntu 24.04**

*You need to be root or member of sudoers to run the installation script*

```bash
apt-get install wget
wget -O biozap.tar.gz "https://github.com/snipershady/IsDETI/archive/refs/tags/1.0.0.tar.gz"
tar zxvf biozap.tar.gz
cd IsDETI-1.0.0
bash setup-bio-environment.sh
```

*Restart your system*

Download full script and run it
