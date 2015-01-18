# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mya=Mya.create!(title: 'first test')
i=0
10.times{
    i=i+1
    myb=Myb.create!(title: "my_#{i}")
    5000.times{
        myc=Myc.create!(mya_id: mya.id, myb_id: myb.id)
        4.times {
            myd=Myd.create!(mya_id: mya.id, myb_id: myb.id, myc_id: myc.id)
            mye=Mye.create!(mya_id: mya.id, myb_id: myb.id, myc_id: myc.id)
        }
    }
}