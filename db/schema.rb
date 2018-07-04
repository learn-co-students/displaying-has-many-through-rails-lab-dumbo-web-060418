
ActiveRecord::Schema.define(version: 20180704130613) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "appointment_datetime"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "department"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "age"
  end

end
