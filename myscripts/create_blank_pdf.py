#!python
from fpdf import FPDF

pdf = FPDF()
for _ in range(20):
    pdf.add_page()
pdf.output("blank.pdf")
