xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Recent Parishes' do
    xml.Table do
      # Header
      
      xml.Row do
        xml.Cell {xml.Data 'Reporte de parroquias por vicaria', 'ss:Type' => 'String'}
      end
      
  
   for vicariou in Vicariou.find(:all)
      # Rows
      xml.Row do
        xml.Cell { xml.Data vicariou.name_vicariou, 'ss:Type' => 'String' }
      end
             xml.Row do
        xml.Cell { xml.Data 'Nombre', 'ss:Type' => 'String'} 
        xml.Cell { xml.Data 'Ubicacion', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Transporte', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Telefono', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Pastor', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Contacto', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Telefono de contacto', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Vicaria', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Estado', 'ss:Type' => 'String' }               
      end
      
      for parish in Parish.all(:all,:conditions=>['vicariou_id=?', "#{vicariou.id}"])               
        xml.Row do
          xml.Cell { xml.Data parish.parish_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data parish.ubication, 'ss:Type' => 'String' }
          xml.Cell { xml.Data parish.transport, 'ss:Type' => 'String' }
          xml.Cell { xml.Data parish.telephone, 'ss:Type' => 'String' }
          xml.Cell { xml.Data Pastor.find(parish.pastor_id).name + " "+Pastor.find(parish.pastor_id).primary_last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data parish.contact, 'ss:Type' => 'String' }
          xml.Cell { xml.Data parish.contact_telephone, 'ss:Type' => 'String' }          
          xml.Cell { xml.Data parish.current_state, 'ss:Type' => 'String' }                           
        end
      end
   end
    end
  end
end
