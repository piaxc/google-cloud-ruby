# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/classification.proto

require 'google/protobuf'

require 'google/cloud/automl/v1beta1/temporal_pb'


descriptor_data = "\n0google/cloud/automl/v1beta1/classification.proto\x12\x1bgoogle.cloud.automl.v1beta1\x1a*google/cloud/automl/v1beta1/temporal.proto\")\n\x18\x43lassificationAnnotation\x12\r\n\x05score\x18\x01 \x01(\x02\"\xc7\x01\n\x1dVideoClassificationAnnotation\x12\x0c\n\x04type\x18\x01 \x01(\t\x12X\n\x19\x63lassification_annotation\x18\x02 \x01(\x0b\x32\x35.google.cloud.automl.v1beta1.ClassificationAnnotation\x12>\n\x0ctime_segment\x18\x03 \x01(\x0b\x32(.google.cloud.automl.v1beta1.TimeSegment\"\xa9\x07\n\x1f\x43lassificationEvaluationMetrics\x12\x0e\n\x06\x61u_prc\x18\x01 \x01(\x02\x12\x17\n\x0b\x62\x61se_au_prc\x18\x02 \x01(\x02\x42\x02\x18\x01\x12\x0e\n\x06\x61u_roc\x18\x06 \x01(\x02\x12\x10\n\x08log_loss\x18\x07 \x01(\x02\x12u\n\x18\x63onfidence_metrics_entry\x18\x03 \x03(\x0b\x32S.google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry\x12\x66\n\x10\x63onfusion_matrix\x18\x04 \x01(\x0b\x32L.google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix\x12\x1a\n\x12\x61nnotation_spec_id\x18\x05 \x03(\t\x1a\xfc\x02\n\x16\x43onfidenceMetricsEntry\x12\x1c\n\x14\x63onfidence_threshold\x18\x01 \x01(\x02\x12\x1a\n\x12position_threshold\x18\x0e \x01(\x05\x12\x0e\n\x06recall\x18\x02 \x01(\x02\x12\x11\n\tprecision\x18\x03 \x01(\x02\x12\x1b\n\x13\x66\x61lse_positive_rate\x18\x08 \x01(\x02\x12\x10\n\x08\x66\x31_score\x18\x04 \x01(\x02\x12\x12\n\nrecall_at1\x18\x05 \x01(\x02\x12\x15\n\rprecision_at1\x18\x06 \x01(\x02\x12\x1f\n\x17\x66\x61lse_positive_rate_at1\x18\t \x01(\x02\x12\x14\n\x0c\x66\x31_score_at1\x18\x07 \x01(\x02\x12\x1b\n\x13true_positive_count\x18\n \x01(\x03\x12\x1c\n\x14\x66\x61lse_positive_count\x18\x0b \x01(\x03\x12\x1c\n\x14\x66\x61lse_negative_count\x18\x0c \x01(\x03\x12\x1b\n\x13true_negative_count\x18\r \x01(\x03\x1a\xc0\x01\n\x0f\x43onfusionMatrix\x12\x1a\n\x12\x61nnotation_spec_id\x18\x01 \x03(\t\x12\x14\n\x0c\x64isplay_name\x18\x03 \x03(\t\x12]\n\x03row\x18\x02 \x03(\x0b\x32P.google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row\x1a\x1c\n\x03Row\x12\x15\n\rexample_count\x18\x01 \x03(\x05*Y\n\x12\x43lassificationType\x12#\n\x1f\x43LASSIFICATION_TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nMULTICLASS\x10\x01\x12\x0e\n\nMULTILABEL\x10\x02\x42\xae\x01\n\x1f\x63om.google.cloud.automl.v1beta1B\x13\x43lassificationProtoZ7cloud.google.com/go/automl/apiv1beta1/automlpb;automlpb\xca\x02\x1bGoogle\\Cloud\\AutoMl\\V1beta1\xea\x02\x1eGoogle::Cloud::AutoML::V1beta1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.automl.v1beta1.TimeSegment", "google/cloud/automl/v1beta1/temporal.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        ClassificationAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationAnnotation").msgclass
        VideoClassificationAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoClassificationAnnotation").msgclass
        ClassificationEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics").msgclass
        ClassificationEvaluationMetrics::ConfidenceMetricsEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry").msgclass
        ClassificationEvaluationMetrics::ConfusionMatrix = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix").msgclass
        ClassificationEvaluationMetrics::ConfusionMatrix::Row = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row").msgclass
        ClassificationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationType").enummodule
      end
    end
  end
end
