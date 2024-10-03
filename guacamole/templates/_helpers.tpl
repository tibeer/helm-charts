{{/*
Expand the name of the chart.
*/}}
{{- define "guacamole.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "guacamole.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "guacd.fullname" -}}
{{- printf "%s-guacd" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "guacamole.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "guacamole.labels" -}}
helm.sh/chart: {{ include "guacamole.chart" . }}
{{ include "guacamole.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
compoentn: guacamole
{{- end }}

{{- define "guacd.labels" -}}
helm.sh/chart: {{ include "guacamole.chart" . }}
{{ include "guacd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
compoentn: guacd
{{- end }}

{{/*
Selector labels
*/}}
{{- define "guacamole.selectorLabels" -}}
app.kubernetes.io/name: {{ include "guacamole.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
component: guacamole
{{- end }}

{{- define "guacd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "guacamole.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
component: guacd
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "guacamole.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "guacamole.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
