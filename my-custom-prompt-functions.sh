#!/bin/bash

function k8s_format_output() {
  current=$(kubectl config current-context)
  case ${current} in
  prod)
    state=☠️
    ;;
  dev)
    state=🔬
    ;;
  *)
    state=🤔
    ;;
  esac
  echo -e ${state}
}
