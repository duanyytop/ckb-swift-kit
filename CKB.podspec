Pod::Spec.new do |s|
  s.name         = "CKB"
  s.version      = "0.1.0"
  s.summary      = "Swift SDK for Nervos CKB"

  s.description  = <<-DESC
  Swift SDK for Nervos CKB.
  DESC

  s.homepage     = "https://github.com/nervosnetwork/ckb-sdk-swift"
  s.license      = "MIT"
  s.author       = { "Nervos Core Dev" => "dev@nervos.org" }
  s.source       = { git: "https://github.com/nervosnetwork/ckb-sdk-swift.git" } #, tag: "v#{s.version.to_s}" }
  s.social_media_url = 'https://twitter.com/nervosnetwork'

  s.swift_version = '4.2'
  s.module_name = 'CKB'
  s.ios.deployment_target = "11.0"
  s.source_files = "Source/**/*.{h,swift}"
  s.public_header_files = "Source/**/*.{h}"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.dependency 'CryptoSwift', '~> 0.13.1'
  s.dependency 'secp256k1_swift', '~> 1.0.3' # https://github.com/shamatar/secp256k1_swift
end