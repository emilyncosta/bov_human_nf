nextflow.enable.dsl = 2

ids_ch = [
            'SRR13046668',
            'SRR13046669',
            'SRR13046670',
            'SRR13046671',
            'SRR13046672',
            'SRR13046673',
            'SRR13046674',
            'SRR13046675',
            'SRR13046676',
            'SRR13046677',
            'SRR13046678',
            'SRR13046679',
            'SRR13046680',
            'SRR13046681',
            'SRR13046682',
            'SRR13046683',
            'SRR13046684',
            'SRR13046685',
            'SRR13046686',
            'SRR13046687',
            'SRR13046688',
            'SRR13046689'
    ]

process CARNEIRO {
    tag "${genomeId}"
    errorStrategy "ignore"
    cpus 1
    publishDir params.resultsDir, mode: 'move'

    input:
    val(genomeId)

    output:
    path("*fa")

    script:
    """
    ncbi-acc-download --format fasta ${genomeId}

    """

}
