class PhuongTien
    @id_252
    @hangsanxuat_252
    @namsanxuat_252
    @dongxe_252
    @giaban_252
    @bienso_252
    @mauxe_252

    attr_accessor :id_252, :hangsanxuat_252, :namsanxuat_252, :dongxe_252, :giaban_252, :bienso_252, :mauxe_252

    def NhapThongTin
        print "Nhập id: "
        @id_252 = gets.chomp
        print "Nhập hãng sản xuất: "
        @hangsanxuat_252 = gets.chomp
        print "Nhập năm sản xuất: "
        @namsanxuat_252 = gets.to_i
        print "Nhập dòng xe: "
        @dongxe_252 = gets.chomp
        print "Nhập giá bán: "
        @giaban_252 = gets.to_i
        print "Nhập biển số: "
        @bienso_252 = gets.chomp
        print "Nhập màu xe: "
        @mauxe_252 = gets.chomp
    end

    def HienThiThongTin
        puts "ID: #{@id_252}"
        puts "Hãng sản xuất: #{@hangsanxuat_252}"
        puts "Năm sản xuất: #{@namsanxuat_252}"
        puts "Dòng xe: #{@dongxe_252}"
        puts "Giá bán: #{@giaban_252}"
        puts "Biến số: #{@bienso_252}"
        puts "Màu xe: #{@mauxe_252}"
    end
end

class Oto < PhuongTien
    @sochongoi_252
    @kieudongco_252
    @nhienlieu_252
    @sotuikhi_252
    @ngaydangkiem_252

    attr_accessor :sochongoi_252, :kieudongco_252, :nhienlieu_252, :sotuikhi_252, :ngaydangkiem_252

    def NhapThongTin
        super
        print "Nhập số chỗ ngồi: "
        @sochongoi_252 = gets.to_i
        print "Nhập kiểu động cơ: "
        @kieudongco_252 = gets.chomp
        print "Nhập nhiên liệu: "
        @nhienlieu_252 = gets.chomp
        print "Nhập số túi khí: "
        @sotuikhi_252 = gets.to_i
        print "Nhập ngày đăng kiểm: "
        @ngaydangkiem_252 = gets.chomp
    end

    def HienThiThongTin
        super
        puts "Loại phương tiện: Ô tô"
        puts "Số chỗ ngồi: #{@sochongoi_252}"
        puts "Kiểu đồng cơ: #{@kieudongco_252}"
        puts "Nhiên liệu: #{@nhienlieu_252}"
        puts "Số túi khí: #{@sotuikhi_252}"
        puts "Ngày đăng kiểm: #{@ngaydangkiem_252}"
    end
end

class XeMay < PhuongTien
    @congsuat_252
    @dungtich_252

    attr_accessor :congsuat_252, :dungtich_252

    def NhapThongTin
        super
        print "Nhập công suất: "
        @congsuat_252 = gets.chomp
        print "Nhập dung tích: "
        @dungtich_252 = gets.to_i
        
    end

    def HienThiThongTin
        super
        puts "Loại phương tiện: Xe máy"
        puts "Công suất: #{@congsuat_252}"
        puts "Dung tích: #{@dungtich_252}"
        
    end
end

class XeTai < PhuongTien
    @trongtai_252

    attr_accessor :trongtai_252

    def NhapThongTin
        super
        print "Nhập trọng tái: "
        @trongtai_252 = gets.to_i
    end

    def HienThiThongTin
        super
        puts "Loại phương tiện: Xe tải"
        puts "Trọng tải: #{@trongtai_252}"
    end


end

class QLPTGT
    $list_252 = []
    continue_252 = true
    def ThemMoi
        puts "1. Thêm ô tô."
        puts "2. Thêm xe máy."
        puts "3. Thêm xe tái."
        print "Chọn loại phương tiện cần thêm: "
        loai_252 = gets.to_i

        case loai_252
            when 1
                l_252 = "ô tô"
            when 2
                l_252 = "xe máy"
            when 3
                l_252 = "xe tải"
            else puts "Chọn loại phương tiện ko phù hợp"
        end
        print "Thêm bao nhiêu #{l_252}: "
        n_252 = gets.to_i

        for i in 0..n_252-1 do
            case loai_252
                when 1
                    $pt = Oto.new
                when 2
                    $pt = XeMay.new
                when 3
                    $pt = XeTai.new
            end
            puts "Nhập thông tin #{l_252} thứ #{i+1}: "
            $pt.NhapThongTin
            $list_252 << $pt
        end
        puts "Danh sách các phương tiện: "
        HienThi()
    end

    def HienThi
        $list_252.each do |lpt_252|
            puts lpt_252.HienThiThongTin
        end
    end

    def Xoa
        print "Nhập ID phương tiện cần xóa: "
        id_pt_252 = gets.chomp

        $list_252.select {|pt| pt.id_252 == id_pt_252}.each do |kq_252|
            $list_252.delete(kq_252)
        end
        puts "Danh sách phương tiện sau khi xóa: "
        HienThi()
    end

    def TimKiem
        puts "Nhập thông tin phương tiện cần tìm: "
        print "Nhập hãng sản xuất: "
        hsx_252 = gets.chomp
        print "Nhập màu xe: "
        mx_252 = gets.chomp
        print "Nhập biển số: "
        bs_252 = gets.chomp
        puts "Kết quả tìm kiếm được: "
        $list_252.select{|pt| pt.hangsanxuat_252 == hsx_252 && pt.mauxe_252 == mx_252 && pt.bienso_252 == bs_252}.each do |kq_252|
            kq_252.HienThiThongTin
        end
    end

    while continue_252
        puts "Thông tin sinh viên"
        puts "Họ và tên: Trần Y Tiến"
        puts "Mã sinh viên: 1911505310252"
        puts "Lớp: 19T2"
        puts "1. Thêm các phương tiện trên vào danh sách và hiển thị danh sách."
        puts "2. Xoá(theo ID) các phương tiện thuộc các loại trên."
        puts "3. Tìm phương tiện theo hãng sản xuất, màu, biển số."
        puts "4. Thoát khỏi chương trình."
        print "Chọn chức năng: "
        chucnang_252 = gets.to_i
        ptgt_252 = QLPTGT.new
        case chucnang_252
            when 1
                ptgt_252.ThemMoi
            when 2
                ptgt_252.Xoa
            when 3
                ptgt_252.TimKiem
            else continue_252 = false
        end
    end
end
