{{/*
Expand the name of the chart.
*/}}
{{- define "lottery-service.name" -}}
{{- default .Chart.Name "lottery-service" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "lottery-service.fullname" -}}
{{- $name := default .Chart.Name "lottery-service" }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}


{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "lottery-service.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "lottery-service.labels" -}}
helm.sh/chart: {{ include "lottery-service.chart" . }}
{{ include "lottery-service.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "lottery-service.selectorLabels" -}}
app.kubernetes.io/name: {{ include "lottery-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
