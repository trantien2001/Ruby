class SinhVien
    @ten;
    @tuoi;
    @toan;
    @ly;
    @hoa;

    def initialize(ten, tuoi, toan, ly, hoa)
        @ten = ten;
        @tuoi = tuoi;
        @toan = toan;
        @ly = ly;
        @hoa = hoa;

    def ten
        @ten
    end

    def ten=(ten)
        @ten = ten
    end

    def tuoi
        @tuoi
    end

    def tuoi=(tuoi)
        @tuoi = tuoi
    end

    def toan
        @toan
    end

    def toan=(toan)
        @toan = toan
    end

    def ly
        @ly
    end

    def ly=(ly)
        @ly = ly
    end

    def hoa
        @hoa
    end

    def hoa=(hoa)
        @hoa = hoa
    end

    def average
        (@toan + @ly + @hoa)/3
    end

    def toString
        puts " Tên : #{ten} Tuổi: #{tuoi} Điểm trung bình: #{average}
        "
    end
end

    print "Nhập tên của bạn: "
    ten = gets;

    print "Nhập tuổi của bạn: "
    tuoi = gets;

    print "Nhập điểm toán của bạn: "
    toan = gets.to_i;

    print "Nhập điểm lý của bạn: "
    ly = gets.to_i;

    print "Nhập điểm hóa của bạn: "
    hoa = gets.to_i;
    sinhvien = SinhVien.new(ten, tuoi, toan, ly, hoa);
    sinhvien.toString
end