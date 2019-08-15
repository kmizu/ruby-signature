module Ruby
  module Signature
    class Writer
      attr_reader :out

      def initialize(out:)
        @out = out
      end

      def write_annotation(annotations, level:)
        prefix = " " * level

        annotations.each do |annotation|
          string = annotation.string
          case
          when string !~ /\}/
            out.puts "#{prefix}%a{#{string}}"
          when string !~ /\)/
            out.puts "#{prefix}%a(#{string})"
          when string !~ /\]/
            out.puts "#{prefix}%a[#{string}]"
          when string !~ /\>/
            out.puts "#{prefix}%a<#{string}>"
          when string !~ /\|/
            out.puts "#{prefix}%a|#{string}|"
          end
        end
      end

      def write(decls)
        decls.each.with_index do |decl, index|
          if index > 0
            out.puts
          end

          write_decl decl
        end
      end

      def write_decl(decl)
        case decl
        when AST::Declarations::Class
          super_class = if decl.super_class
                          " < #{name_and_args(decl.super_class.name, decl.super_class.args)}"
                        end
          write_annotation decl.annotations, level: 0
          out.puts "class #{name_and_args(decl.name, decl.type_params)}#{super_class}"

          decl.members.each.with_index do |member, index|
            if index > 0
              out.puts
            end
            write_member member
          end

          out.puts "end"

        when AST::Declarations::Module
          self_type = if decl.self_type
                        " : #{decl.self_type}"
                      end

          write_annotation decl.annotations, level: 0
          out.puts "module #{name_and_args(decl.name, decl.type_params)}#{self_type}"
          decl.members.each.with_index do |member, index|
            if index > 0
              out.puts
            end
            write_member member
          end
          out.puts "end"
        when AST::Declarations::Constant
          out.puts "#{decl.name}: #{decl.type}"

        when AST::Declarations::Global
          out.puts "#{decl.name}: #{decl.type}"

        when AST::Declarations::Alias
          write_annotation decl.annotations, level: 0
          out.puts "type #{decl.name} = #{decl.type}"

        when AST::Declarations::Interface
          write_annotation decl.annotations, level: 0
          out.puts "interface #{name_and_args(decl.name, decl.type_params)}"
          decl.members.each.with_index do |member, index|
            if index > 0
              out.puts
            end
            write_member member
          end
          out.puts "end"

        when AST::Declarations::Extension
          write_annotation decl.annotations, level: 0
          out.puts "extension #{name_and_args(decl.name, decl.type_params)} (#{decl.extension_name})"
          decl.members.each.with_index do |member, index|
            if index > 0
              out.puts
            end
            write_member member
          end
          out.puts "end"
        end
      end

      def name_and_args(name, args)
        if name && args
          if args.empty?
            "#{name}"
          else
            "#{name}[#{args.join(", ")}]"
          end
        end
      end

      def write_member(member)
        case member
        when AST::Members::Include
          write_annotation member.annotations, level: 2
          out.puts "  include #{name_and_args(member.name, member.args)}"
        when AST::Members::Extend
          write_annotation member.annotations, level: 2
          out.puts "  extend #{name_and_args(member.name, member.args)}"
        when AST::Members::Prepend
          write_annotation member.annotations, level: 2
          out.puts "  prepend #{name_and_args(member.name, member.args)}"
        when AST::Members::AttrAccessor
          write_annotation member.annotations, level: 2
          out.puts "  #{attribute(:accessor, member)}"
        when AST::Members::AttrReader
          write_annotation member.annotations, level: 2
          out.puts "  #{attribute(:reader, member)}"
        when AST::Members::AttrWriter
          write_annotation member.annotations, level: 2
          out.puts "  #{attribute(:writer, member)}"
        when AST::Members::Public
          out.puts "  public"
        when AST::Members::Private
          out.puts "  private"
        when AST::Members::Alias
          write_annotation member.annotations, level: 2
          new_name = member.singleton? ? "self.#{member.new_name}" : member.new_name
          old_name = member.singleton? ? "self.#{member.old_name}" : member.old_name
          out.puts "  alias #{new_name} #{old_name}"
        when AST::Members::InstanceVariable
          out.puts "  #{member.name}: #{member.type}"
        when AST::Members::ClassInstanceVariable
          out.puts "  self.#{member.name}: #{member.type}"
        when AST::Members::ClassVariable
          out.puts "  #{member.name}: #{member.type}"
        when AST::Members::MethodDefinition
          write_annotation member.annotations, level: 2
          write_def member
        end
      end

      def method_name(name)
        s = name.to_s

        if s =~ Parser::KEYWORDS_RE
          "`#{s}`"
        else
          s
        end
      end

      def write_def(member)
        name = case member.kind
               when :instance
                 "#{method_name(member.name)}"
               when :singleton_instance
                 "self?.#{method_name(member.name)}"
               when :singleton
                 "self.#{method_name(member.name)}"
               end

        padding = " " * "  def #{name}".size

        out.print "  def #{name}:"

        member.types.each.with_index do |type, index|
          if index > 0
            out.print padding
            out.print "|"
          end
          out.puts " #{type}"
        end
      end

      def attribute(kind, attr)
        var = case attr.ivar_name
              when nil
                ""
              when false
                "()"
              else
                "(#{attr.ivar_name})"
              end
        "attr_#{kind} #{attr.name}#{var}: #{attr.type}"
      end
    end
  end
end
