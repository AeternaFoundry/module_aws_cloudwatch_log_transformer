variable "cloudwatch_log_transformers" {
  description = <<EOT
Map of cloudwatch_log_transformers, attributes below
Required:
    - log_group_arn
Optional:
    - region
    - transformer_config (block):
        - add_keys (optional, block):
            - entry (optional, block):
                - key (required)
                - overwrite_if_exists (optional)
                - value (required)
        - copy_value (optional, block):
            - entry (optional, block):
                - overwrite_if_exists (optional)
                - source (required)
                - target (required)
        - csv (optional, block):
            - columns (optional)
            - delimiter (optional)
            - quote_character (optional)
            - source (optional)
        - date_time_converter (optional, block):
            - locale (optional)
            - match_patterns (required)
            - source (required)
            - source_timezone (optional)
            - target (required)
            - target_format (optional)
            - target_timezone (optional)
        - delete_keys (optional, block):
            - with_keys (required)
        - grok (optional, block):
            - match (required)
            - source (optional)
        - list_to_map (optional, block):
            - flatten (optional)
            - flattened_element (optional)
            - key (required)
            - source (required)
            - target (optional)
            - value_key (optional)
        - lower_case_string (optional, block):
            - with_keys (required)
        - move_keys (optional, block):
            - entry (optional, block):
                - overwrite_if_exists (optional)
                - source (required)
                - target (required)
        - parse_cloudfront (optional, block):
            - source (optional)
        - parse_json (optional, block):
            - destination (optional)
            - source (optional)
        - parse_key_value (optional, block):
            - destination (optional)
            - field_delimiter (optional)
            - key_prefix (optional)
            - key_value_delimiter (optional)
            - non_match_value (optional)
            - overwrite_if_exists (optional)
            - source (optional)
        - parse_postgres (optional, block):
            - source (optional)
        - parse_route53 (optional, block):
            - source (optional)
        - parse_to_ocsf (optional, block):
            - event_source (required)
            - ocsf_version (required)
            - source (optional)
        - parse_vpc (optional, block):
            - source (optional)
        - parse_waf (optional, block):
            - source (optional)
        - rename_keys (optional, block):
            - entry (optional, block):
                - key (required)
                - overwrite_if_exists (optional)
                - rename_to (required)
        - split_string (optional, block):
            - entry (optional, block):
                - delimiter (required)
                - source (required)
        - substitute_string (optional, block):
            - entry (optional, block):
                - from (required)
                - source (required)
                - to (required)
        - trim_string (optional, block):
            - with_keys (required)
        - type_converter (optional, block):
            - entry (optional, block):
                - key (required)
                - type (required)
        - upper_case_string (optional, block):
            - with_keys (required)
EOT

  type = map(object({
    log_group_arn = string
    region        = optional(string)
    transformer_config = optional(list(object({
      add_keys = optional(list(object({
        entry = optional(list(object({
          key                 = string
          overwrite_if_exists = optional(bool)
          value               = string
        })))
      })))
      copy_value = optional(list(object({
        entry = optional(list(object({
          overwrite_if_exists = optional(bool)
          source              = string
          target              = string
        })))
      })))
      csv = optional(list(object({
        columns         = optional(list(string))
        delimiter       = optional(string)
        quote_character = optional(string)
        source          = optional(string)
      })))
      date_time_converter = optional(list(object({
        locale          = optional(string)
        match_patterns  = list(string)
        source          = string
        source_timezone = optional(string)
        target          = string
        target_format   = optional(string)
        target_timezone = optional(string)
      })))
      delete_keys = optional(list(object({
        with_keys = list(string)
      })))
      grok = optional(list(object({
        match  = string
        source = optional(string)
      })))
      list_to_map = optional(list(object({
        flatten           = optional(bool)
        flattened_element = optional(string)
        key               = string
        source            = string
        target            = optional(string)
        value_key         = optional(string)
      })))
      lower_case_string = optional(list(object({
        with_keys = list(string)
      })))
      move_keys = optional(list(object({
        entry = optional(list(object({
          overwrite_if_exists = optional(bool)
          source              = string
          target              = string
        })))
      })))
      parse_cloudfront = optional(list(object({
        source = optional(string)
      })))
      parse_json = optional(list(object({
        destination = optional(string)
        source      = optional(string)
      })))
      parse_key_value = optional(list(object({
        destination         = optional(string)
        field_delimiter     = optional(string)
        key_prefix          = optional(string)
        key_value_delimiter = optional(string)
        non_match_value     = optional(string)
        overwrite_if_exists = optional(bool)
        source              = optional(string)
      })))
      parse_postgres = optional(list(object({
        source = optional(string)
      })))
      parse_route53 = optional(list(object({
        source = optional(string)
      })))
      parse_to_ocsf = optional(list(object({
        event_source = string
        ocsf_version = string
        source       = optional(string)
      })))
      parse_vpc = optional(list(object({
        source = optional(string)
      })))
      parse_waf = optional(list(object({
        source = optional(string)
      })))
      rename_keys = optional(list(object({
        entry = optional(list(object({
          key                 = string
          overwrite_if_exists = optional(bool)
          rename_to           = string
        })))
      })))
      split_string = optional(list(object({
        entry = optional(list(object({
          delimiter = string
          source    = string
        })))
      })))
      substitute_string = optional(list(object({
        entry = optional(list(object({
          from   = string
          source = string
          to     = string
        })))
      })))
      trim_string = optional(list(object({
        with_keys = list(string)
      })))
      type_converter = optional(list(object({
        entry = optional(list(object({
          key  = string
          type = string
        })))
      })))
      upper_case_string = optional(list(object({
        with_keys = list(string)
      })))
    })))
  }))
}

