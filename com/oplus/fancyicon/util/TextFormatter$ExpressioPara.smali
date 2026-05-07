.class Lcom/oplus/fancyicon/util/TextFormatter$ExpressioPara;
.super Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/expression/Expression;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;-><init>(Lcom/oplus/fancyicon/util/a;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter$ExpressioPara;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter$ExpressioPara;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
