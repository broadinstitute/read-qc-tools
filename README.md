# read-qc-tools

Docker image containing tools for read QC and processing.

## Included Tools

- **fastqc** - Quality control for high throughput sequence data
- **multiqc** - Aggregate results from bioinformatics analyses
- **samtools** - Tools for manipulating SAM/BAM files
- **python 3.12** with biopython and pysam
- **GNU parallel** - Shell tool for executing jobs in parallel
- **jq** - Command-line JSON processor
- **pigz** - Parallel gzip
- **zstd** - Zstandard compression

## Usage

### Pull from GitHub Container Registry

```bash
docker pull ghcr.io/broadinstitute/read-qc-tools:main
```

### Run interactively

```bash
docker run --rm -it -v $(pwd):/data ghcr.io/broadinstitute/read-qc-tools:main bash
```

### Run a specific command

```bash
docker run --rm -v $(pwd):/data ghcr.io/broadinstitute/read-qc-tools:main fastqc reads.fastq.gz
```

## Building Locally

```bash
./scripts/build.sh
```

Or with custom image name/tag:

```bash
IMAGE_NAME=my-image TAG=dev ./scripts/build.sh
```

## Multi-Architecture Support

The image is built for both `linux/amd64` (Intel/AMD) and `linux/arm64` (Apple Silicon, ARM servers). Docker will automatically pull the correct architecture for your platform.

## Modifying the Environment

Edit `env.yaml` to add or remove conda packages, then rebuild.
