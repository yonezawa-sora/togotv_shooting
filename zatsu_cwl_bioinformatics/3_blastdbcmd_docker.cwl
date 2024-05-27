#!/usr/bin/env cwl-runner
# Generated from: blastdbcmd -db uniprot_sprot.fasta -entry_batch blastp_result_id.txt  -out blastdbcmd_result.fasta
class: CommandLineTool
cwlVersion: v1.0
baseCommand: blastdbcmd
arguments:
  - -db
  - $(inputs.db)
  - -entry_batch
  - $(inputs.entry_batch)
  - -out
  - $(inputs.out)
inputs:
  - id: db
    type: File
    default:
      class: File
      location: uniprot_sprot.fasta
  - id: entry_batch
    type: File
    default:
      class: File
      location: blastp_result_id.txt
  - id: out
    type: File
    default:
      class: File
      location: blastdbcmd_result.fasta
outputs:
  - id: all-for-debugging
    type:
      type: array
      items: [File, Directory]
    outputBinding:
      glob: "*"
hints:
  - class: DockerRequirement
    dockerPull: biocontainers/blast:v2.2.31_cv2
