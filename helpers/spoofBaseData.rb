require 'date'
require 'json'

def uuidSpoofer()
  uuid = [*('a'..'f')].sample.to_s # this is a hack, css classes need a letter at the start
  35.times do |x|
    if x == 8 or x==13 or x==18 or x==23
      uuid << "-"
    else
      uuid << [*('a'..'f'),*('0'..'9')].sample.to_s
     end
  end
  return uuid
end

def makeSpoofUUIDs(thisMany, make_fresh)
  sampleUUIDs = []
  if make_fresh
    puts "fresh uuids"
    names = ["Abbie", "Antoine", "Antony", "Bell", "Bill", "Brian", "Corrin", "David",
             "Demetrius", "Giuseppina", "Helga", "Ian", "James", "Jane", "Julian", "Keven",
             "Kieth", "Lorinda", "Lucie", "Luke", "Malik", "Mark", "Matthew", "Miki",
             "Neil", "Nigel", "Ninotschka", "Norberto", "Phil", "Reginald", "Rossie",
             "Ruthann", "Sammie", "Sheryl", "Tashia", "Teddy", "Timmy", "Waldo",
             "Wilma", "Zetta"].shuffle

    colours = ["rgb(141, 211, 199)","rgb(255, 255, 179)","rgb(190, 186, 218)","rgb(251, 128, 114)",
               "rgb(128, 177, 211)","rgb(253, 180, 98)" ,"rgb(179, 222, 105)","rgb(252, 205, 229)",
               "rgb(217, 217, 217)","rgb(188, 128, 189)","rgb(204, 235, 197)","rgb(255, 237, 111)"].shuffle #TODO, this will fail with more than 12 paths
    thisMany.times do
      sampleUUIDs << {"Name"=>names.pop, "UUID"=> uuidSpoofer(), "Colour"=>colours.pop}
    end
    File.open("uuid_data.json", 'w') { |file|
      file.write(sampleUUIDs.to_json)
    }
  else
    puts "using existing UUIDS"
    sampleUUIDs = JSON.parse( File.read("movement_data_#{$identifier}.json") )
  end
  return sampleUUIDs
end

def seconds2days(seconds)
  # date arithmatic is in days
  seconds/24.0/60/60
end

def fuzz(value, range)
  return value + rand(range) - (range * 0.5)
end

def flip(mode, threshold)
  rand(100) < threshold ? mode : !mode # should we flip mode
end

def the_range(now_base, test_base)
  n = now_base
  t = test_base
  distance = Math.hypot(t["X"]-n["X"], t["Y"]-n["Y"])
  return distance
end

def pick_a_base_in_range(now_base_name)
  found = false
  guard = 0
  max_itterations = 2000
  now_base = $bases.select { |a| a["Name"] == now_base_name }[0]
  new_base = ""
  while not found and guard < max_itterations
    guard += 1
    trial_base = $bases.sample
    distance = the_range(now_base, trial_base)
    if (distance < $hop_range) and (distance  > 0)
      found = true
      new_base = trial_base
      # puts new_base["Name"]
    end
  end
  # puts new_base["Name"]
  return new_base["Name"]
end

def get_movement_data(numberOfRecordings, makeNewMovementData, now)
  if makeNewMovementData
    puts "using new movement data"
    File.open("movement_data_#{$identifier}.json", 'w') { |file|

      origin_time = now
      all_paths = []

      $sampleUUIDs.each do |personHash|
        # puts personHash
        move_mode = true
        now = origin_time # reset this for each person or paths will have staggered starts
        this_persons_path = []

        numberOfRecordings.times do |index|
          # puts move_mode
          if move_mode
            #add a movement
            now  = now + seconds2days(rand(5))          # advance time just a little bit or all the time stamps will be the same

            if index == 0
              base = ($bases.sample)["Name"] #first time around, no previous base
            else
              base = pick_a_base_in_range(this_persons_path.last[:base])
            end

            this_persons_path << { "Time": now.strftime("%Y-%m-%d %H:%M:%S %Z"), # dont format the new time, can't work with it as a string,
                                   "RSSI": rand(200)-100,                        # pick a random number for rssi,
                                   "base": base,                                 # pick a base station in range,
                                   "UUID": personHash["UUID"],                   # record uuid
                                   "Name_dont_use": personHash["Name"]           # Not in the real data, just friendlier to work with
                                 }
            move_mode = flip(move_mode, $stay_moving) # should we flip move mode? 95% chance of staying the same
          else
            #add the same position
            this_persons_path << this_persons_path.last
            move_mode = flip(move_mode, $stay_still) # should we flip move mode? 95% chance of staying the same
          end
        end
        # puts this_persons_path
        all_paths << this_persons_path
      end
      all_paths.flatten!.sort_by { |hsh| hsh["Time"] }
      file.write all_paths.to_json
    }
  else
    puts "using existing movement data"
  end
  movement_data = JSON.parse( File.read('movement_data.json') )
  return movement_data
end

def get_bases(fileName)
  return JSON.parse(File.read(fileName))
end

def build_svg()
  def svg_wrap_meat_in_fluff(meat)
    p_bounds = find_point_bounds()
    svg_head = "<svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" viewBox = \"#{p_bounds[:x_min]} #{p_bounds[:y_min]} #{p_bounds[:x_max]} #{p_bounds[:y_max]}\">\n"
    svg_tail = "</svg>\n"
    svg_outline =""# "<polygon class=\"outline\" points=\"50,50,50,550,200,550,200,650,400,650,400,550,550,550,550,50\"/>\n"
    arrow_marker_defs = "<defs> <marker id=\"t\" markerWidth=\"20\" markerHeight=\"20\" orient=\"auto\" refY=\"20\"> <path d=\"M0,0 L20,10 0,20\" /> </marker></defs>"

    base_markers = "base markers"
    $bases.each do |b|
      base_markers << "<circle cx=\"#{b["X"]}\" cy=\"#{b["Y"]}\" r=\"#{$base_radius}\"/>"
      # base_markers << "<circle cx=\"#{b["X"]}\" cy=\"#{b["Y"]}\" r=\"180\" class=\"ranging\"/>"
      nameTxt = "<text x=\"#{b["X"] + $base_radius}\" y=\"#{b["Y"]}\">#{b["Name"]}</text>"
      base_markers << nameTxt
      puts "Name: " << nameTxt
    end
    svg_extras =  svg_outline << "<g>" << base_markers <<"</g>"
    return svg_head << arrow_marker_defs << svg_extras <<  meat  << svg_tail
  end

  svg_paths = ""
  $people_paths.each do |uuid|
    # e.g. "<polyline points = \"20,20 40,25 60,40 80,120 120,140 200,180\" />"
    if uuid.count > 0
      coords = ""
      uuid.each_with_index do |detection, index|
        thisBase = $bases.select { |a| a["Name"] == detection["base"] }[0] #this is super inneficient but it needs a bit of a data structure cleanup
        #coords << fuzz(thisBase["X"], 30).to_s << "," << fuzz(thisBase["Y"], 30).to_s << "," # for polylines
        if index == 0
          coords << "M#{fuzz(thisBase["X"], 30).to_s} #{fuzz(thisBase["Y"], 30).to_s} L"
        else
          coords <<  "#{fuzz(thisBase["X"], 30).to_s} #{fuzz(thisBase["Y"], 30).to_s} "
        end
      end

      coords    = coords.chomp(',') #take the trailing comma off
      css_class = uuid[0]["UUID"]
      colour    = uuid[0]["Colour"]
      svg_paths << "<path class=\"#{css_class}\" id=\"path-#{css_class}\" d=\"#{coords}\" />\n"
      svg_paths << "<circle xmlns=\"http://www.w3.org/2000/svg\" cx=\"\" cy=\"\" r=\"#{$base_radius*1.2}\" class=\"#{css_class} dot\">
        <animateMotion dur=\"#{$dot_speed}s\" repeatCount=\"indefinite\" rotate = \"auto\">
           <mpath xmlns:xlink=\"http://www.w3.org/1999/xlink\" xlink:href=\"#path-#{css_class}\"/>
        </animateMotion>
    </circle>"
      name_label_coords = coords.split(" ")
    end
    # puts "sampleUUIDs:",sampleUUIDs[0]
    # puts "uuid:",uuid[0]
    # person_hash = sampleUUIDs.select { |a| a["UUID"] == uuid["UUID"] }
    # puts "person_hash",person_hash
  end

  return svg_wrap_meat_in_fluff(svg_paths)
end

def build_css()
  css = ""
  css << "<style>\n"
  css << "body {font-family: 'Oswald', sans-serif; background-color: rgb(55, 71, 79); color: rgb(55, 71, 79);}"
  css << "text {fill: rgb(245, 245, 245); font-size: 1000px;}"
  css << "polyline, path, polygon { fill: none; stroke: blue; }\n"
  css << "polygon {fill: rgba(255,255,255,.1);}"
  css << "path:hover { stroke-width: #{$base_radius * 0.4 }; }"
  css << "path       { stroke-width: #{$base_radius * 0.2 }; stroke-linejoin: round; }"
  css << "svg {   height: 95vh; display: inline-block; width: 80%;}\n"
  css << "table { height: 95vh; display: inline-block; font-size: 200%; }\n"
  css << "td { padding: .5em; }\n"
  $sampleUUIDs.each do |s|
    css << ".#{s["UUID"]} { stroke: #{s["Colour"]}; background-color: #{s["Colour"]}; }\n"
    css << ".#{s["UUID"]}.dot { stroke: black; fill: #{s["Colour"]}; }\n"
  end
  css << "</style>"
  return css
end

def build_legend()
  table = "<table>"
  $sampleUUIDs.each do |p|
    puts p
    table << "<tr><td class=\"#{p["UUID"]}\" >#{p["Name"]}</td></tr>"
  end
  table << "</table>"
  return table
end

def save_html()
  html_doc = "<!DOCTYPE html>" +
  "<html>" +
  "<head>" +
  "<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>" +
  build_css() +
  "</head>" +
  "<body>" +
  build_svg() +
  build_legend() +
  "</body>" +
  "</html>"

  File.open("paths_#{$identifier}.html", 'w') { |file|
        file.write(html_doc)
      }


  # puts html_doc
end

def json_to_point_spacings()
  gaps = []
  for i in 0..$bases.length-2
    gaps.push( Math.hypot($bases[i+1]["X"]-$bases[i]["X"], $bases[i+1]["Y"]-$bases[i]["Y"]) )
  end
  return {gaps:gaps, max:gaps.max, min:gaps.min}
end

def find_point_bounds()
  x_list = []
  y_list = []
  $bases.each{|b|
    x_list.push b["X"]
    y_list.push b["Y"]
  }
  return {x_min:x_list.min, x_max:x_list.max, y_min:y_list.min, y_max:y_list.max}
end

# set up some variables
makeNewMovementData = true #false means that you are relying on the existing data. This is better if you want reliable results.
makeNewUUIDData = makeNewMovementData # it makes sense to keep these two in sync or you have a lot of keys and no locks that they fit
now = DateTime.now

# Variables
numberOfRecordings = 100
$base_radius = 500
$hop_range = 16000
$stay_moving = 70
$stay_still  = 90
$dot_speed = 20 #seconds to complete path

# $file_name = 'bases.json'
$file_name = 'baseStations_ARUP.json'
# $file_name = 'baseStations_BVN.json'
$identifier = $file_name.split(".")[0]

$bases = get_bases($file_name)
puts json_to_point_spacings()
puts find_point_bounds()
$sampleUUIDs = makeSpoofUUIDs(10, makeNewUUIDData)

# make the simulated data
movement_data = get_movement_data(numberOfRecordings, makeNewMovementData, now)

# puts("Bases:\n", bases)
# puts("UUIDs:\n", sampleUUIDs)
# puts "movement_data:\n",movement_data

#could break here and continue in a separate file

# visualise the simulated data as a web page

# This builds lists of each person's movements
$people_paths = []
$sampleUUIDs.each do |uuid_pair|
  $people_paths << movement_data.select { |a| a["UUID"] == uuid_pair["UUID"] }
end
# puts "people_paths:\n", people_paths


save_html()
