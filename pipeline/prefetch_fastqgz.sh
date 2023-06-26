# prefetch and turn-to-fastq.gz

projects=$(cat projects_list.txt)
for project in $projects
do
    echo $project
    mkdir "${project}"
    mkdir "${project}"/01_sra
    prefetch $project -O ./"${project}"/01_sra

    mkdir "${project}"/02_fastq_gz
    for i in ./"${project}"/01_sra/SRR*;do fastq-dump.3.0.0 ${i}/*sra --split-files --gzip --outdir ./"${project}/02_fastq_gz" & done

    # mkdir "${project}"/02_fastq
    # for i in ./"${project}"/01_sra/SRR*;do fastq-dump.3.0.0 ${i}/*sra --split-files --outdir ./"${project}/02_fastq" & done

    rm -rf "${project}"/01_sra
done
