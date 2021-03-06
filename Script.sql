--<ScriptOptions statementTerminator="GO"/>

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE ChiTietHoaDon (
	MaChiTietHD BIGINT NOT NULL,
	MaSach null NOT NULL,
	SoLuongMua INT NOT NULL,
	MaHoaDon BIGINT NOT NULL,
	daMua BIT,
	CONSTRAINT PK_ChiTietHoaDon PRIMARY KEY (MaChiTietHD) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

)
GO

SET ANSI_PADDING OFF
GO

