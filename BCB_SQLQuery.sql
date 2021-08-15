
CREATE TABLE [dbo].[Currency](
	[Id] [uniqueidentifier] NOT NULL,
	[Simbolo] [varchar](3) NOT NULL,
	[NomeFormatado] [nvarchar] NOT NULL,
	[TipoMoeda] [varchar](2) NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT (newid()) FOR [Id]


CREATE TABLE [dbo].[CurrencyQuotation](
	[Id] [uniqueidentifier] NOT NULL,
	[Simbolo][varchar](max) NOT NULL,
	[ParidadeCompra] [float] NOT NULL,
	[ParidadeVenda] [float] NOT NULL,
	[CotacaoCompra] [float] NOT NULL,
	[CotacaoVenda] [float] NOT NULL,
	[DataHoraCotacao][datetime] NOT NULL,
	[TipoBoletim][varchar](max) NOT NULL 

PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CurrencyQuotation] ADD  DEFAULT (newid()) FOR [Id]