class CanBo
    @hoten_252
    @tuoi_252
    @gioitinh_252
    @diachi_252

    def initialize(hoten_252, tuoi_252, gioitinh_252, diachi_252)
        @hoten_252 = hoten_252
        @tuoi_252 = tuoi_252
        @gioitinh_252 = gioitinh_252
        @diachi_252 = diachi_252
    end
    
    attr_accessor :hoten_252, :tuoi_252, :gioitinh_252, :diachi_252
    
    def showInformation
        puts "Họ tên: #{hoten_252} \nTuổi: #{tuoi_252} \nGiới tính: #{gioitinh_252} \nĐịa chỉ: #{diachi_252}"
    end

end

class CongNhan < CanBo
    @Bac_252
    
    def initialize

    end
    # def initialize(HoTen_252, Tuoi_252, GioiTinh_252, DiaChi_252, Bac_252)
    #     super(HoTen_252, Tuoi_252, GioiTinh_252, DiaChi_252)
    #     @Bac_252 = Bac_252
    # end

    attr_accessor :Bac_252

    def showInformation
        super
        puts "Bac_252: #{Bac_252}"
    end
end

class KySu < CanBo
    @NganhDaoTao_252

    def initialize

    end

    # def initialize(HoTen_252, Tuoi_252, GioiTinh_252, DiaChi_252, NganhDaoTao_252)
    #     super(HoTen_252, Tuoi_252, GioiTinh_252, DiaChi_252)
    #     @NganhDaoTao_252 = NganhDaoTao_252        
    # end

    attr_accessor :NganhDaoTao_252

    def showInformation
        super
        puts "NganhDaoTao_252: #{NganhDaoTao_252}"        
    end
end

class NhanVien < CanBo
    @CongViec_252

    def initialize

    end
    # def initialize(HoTen_252, Tuoi_252, GioiTinh_252, DiaChi_252, CongViec_252)
    #     super(HoTen_252, Tuoi_252, GioiTinh_252, DiaChi_252)
    #     @CongViec_252 = CongViec_252    
    # end

    attr_accessor :CongViec_252

    def showInformation
        super
        puts "CongViec_252: #{CongViec_252}"
    end
end

class QuanLyCanBo
    canBo_252 = Array.new
    continue_252 = true
    while continue_252
        puts "1. Thêm mới cán bộ."
        puts "2. Tìm kiếm theo họ tên."
        puts "3. Hiện thị thông tin về danh sách các cán bộ."
        puts "4. Thoát khỏi chương trình"

        print "chọn chức năng: "
        chucnang_252 = gets.to_i
        case chucnang_252
            when 1
                print "Thêm mới bao nhiêu cán bộ: "
                n = gets.to_i
                for i in (0..n-1) do
                    puts "Nhập thông tin cán bộ thứ #{i+1}: "
                    print "Nhập họ tên: "
                    hoten_252 = gets.chomp
                    print "Nhập tuổi: "
                    tuoi_252 = gets.to_i
                    print "Nhập giới tính: "
                    gioitinh_252 = gets.chomp
                    print "Nhập địa chỉ: "
                    diachi_252 = gets.chomp
                    canBo_252.push(CanBo.new(hoten_252, tuoi_252, gioitinh_252, diachi_252))
                end
            when 2
                print "Nhập tên cán bộ cần tìm: "
                ten_252 = gets.chomp
                
                tiemkiem_252 = canBo_252.select{|hoten_252| hoten_252.hoten_252 == ten_252}
                
                tiemkiem_252.each do |canbo_252|
                    puts "#{canbo_252.showInformation}"
                end

            when 3
                puts "Danh sách cán bộ:"
                canBo_252.each do |canbo_252|
                    puts "#{canbo_252.showInformation}"
                end
            else
                continue_252 = false
        end
    end
end