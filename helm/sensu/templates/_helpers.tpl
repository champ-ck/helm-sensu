{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "sensu.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "sensu.redis.fullname" -}}
{{- printf "%s-%s" "sensu" "redis" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "sensu.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf .Release.Name -}}
{{- end -}}

{{- define "sensu.uchiwa.fullname" -}}
{{- printf "%s-%s" .Release.Name "uchiwa" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sensu.api.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" "sensu" "api" | trunc 63 | trimSuffix "-" -}}
{{- end -}}