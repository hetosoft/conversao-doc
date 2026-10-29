[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$PastaConversor,
    [string]$ArquivoZip
)

$ErrorActionPreference = 'Stop'
$destino = (Resolve-Path -LiteralPath $PastaConversor).Path
$exe = Join-Path $destino 'SolNET_Conversao.exe'
if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) {
    throw 'Informe a pasta que contém SolNET_Conversao.exe.'
}

function Assert-ConversorFechado {
    foreach ($processo in @(Get-Process SolNET_Conversao -ErrorAction SilentlyContinue)) {
        if ($processo.Path -eq $exe) {
            throw 'Feche o conversor dessa pasta antes de instalar o cliente Oracle.'
        }
    }
}

Assert-ConversorFechado
$binario = [IO.File]::OpenRead($exe)
try {
    $leitor = New-Object IO.BinaryReader($binario)
    if ($leitor.ReadUInt16() -ne 0x5A4D) {
        throw 'O executável informado não é um programa Windows válido.'
    }
    $binario.Position = 0x3C
    $cabecalho = $leitor.ReadInt32()
    $binario.Position = $cabecalho
    if ($leitor.ReadUInt32() -ne 0x4550 -or $leitor.ReadUInt16() -ne 0x8664) {
        throw 'Este instalador requer SolNET_Conversao.exe Win64. Não instale DLLs x64 no conversor Win32.'
    }
} finally {
    $binario.Dispose()
}

$temporario = Join-Path ([IO.Path]::GetTempPath()) ('solnet-oracle-' + [Guid]::NewGuid().ToString('N'))
$null = New-Item -ItemType Directory -Path $temporario
try {
    if ($ArquivoZip) {
        $pacote = (Resolve-Path -LiteralPath $ArquivoZip).Path
    } else {
        $pacote = Join-Path $temporario 'instantclient.zip'
        [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
        Write-Output 'Baixando Oracle Instant Client Basic x64 23.26.4.0.0...'
        Invoke-WebRequest -UseBasicParsing -Uri 'https://download.oracle.com/otn_software/nt/instantclient/2326400/instantclient-basic-windows.x64-23.26.4.0.0.zip' -OutFile $pacote
    }
    $sha256 = '09e9b81cd492f5ce6f671317c23a0e1f5dee5e786258149d216321c3dad3023f'
    if ((Get-FileHash -LiteralPath $pacote -Algorithm SHA256).Hash -ne $sha256) {
        throw 'SHA-256 divergente. Nenhum arquivo foi instalado. Baixe o pacote Basic x64 23.26.4.0.0 oficial.'
    }
    $extraido = Join-Path $temporario 'extraido'
    Expand-Archive -LiteralPath $pacote -DestinationPath $extraido
    $origem = Join-Path $extraido 'instantclient_23_26'
    foreach ($nome in @('oci.dll', 'oraociei.dll', 'BASIC_LICENSE', 'BASIC_README')) {
        if (-not (Test-Path -LiteralPath (Join-Path $origem $nome) -PathType Leaf)) {
            throw "Arquivo obrigatório ausente no pacote: $nome. Nenhum arquivo foi instalado."
        }
    }
    Assert-ConversorFechado
    Get-ChildItem -LiteralPath $origem -Filter '*.dll' -File | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $destino -Force
    }
    foreach ($nome in @('BASIC_LICENSE', 'BASIC_README')) {
        Copy-Item -LiteralPath (Join-Path $origem $nome) -Destination (Join-Path $destino ('ORACLE_' + $nome)) -Force
    }
    Write-Output "Cliente Oracle x64 instalado em $destino. Abra o conversor novamente."
} finally {
    $pastaTemporaria = [IO.Path]::GetFullPath([IO.Path]::GetTempPath()).TrimEnd('\') + '\'
    $alvoLimpeza = [IO.Path]::GetFullPath($temporario)
    if ($alvoLimpeza.StartsWith($pastaTemporaria, [StringComparison]::OrdinalIgnoreCase) -and
        ([IO.Path]::GetFileName($alvoLimpeza) -match '^solnet-oracle-[0-9a-f]{32}$')) {
        Remove-Item -LiteralPath $alvoLimpeza -Recurse -Force
    }
}
