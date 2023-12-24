module JobPostingsHelper
  def generate_qr_code(job_posting)
    qrcode = RQRCode::QRCode.new(job_posting.unique_id)
  end
end
