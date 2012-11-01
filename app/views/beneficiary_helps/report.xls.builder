xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Ayudas' do
    xml.Table do
      # Header
      
      xml.Row do
        xml.Cell {xml.Data 'Reporte de Ayudas a Beneficiarios', 'ss:Type' => 'String'}
      end
      
      xml.Row do
        xml.Cell { xml.Data 'Fecha', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Parroquia', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'CI', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Nombre', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Apellido', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Tipo de beneficiario', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Tipo de ayuda', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Cantidad', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Detalle', 'ss:Type' => 'String' }
      
      end
      @beneficiary_helps = BeneficiaryHelp.all

      # Rows
      for beneficiary_help in @beneficiary_helps
        xml.Row do
          xml.Cell { xml.Data beneficiary_help.date, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.beneficiary.parish.parish_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.beneficiary.ci, 'ss:Type' => 'String' }          
          xml.Cell { xml.Data beneficiary_help.beneficiary.name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.beneficiary.last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.beneficiary.beneficiary_type.name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.helpType, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.amount, 'ss:Type' => 'String' }
          xml.Cell { xml.Data beneficiary_help.detail, 'ss:Type' => 'String' } 
         
        end
      end
    end
  end
end
