.class Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;
.super Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mVariable:Lcom/oplus/fancyicon/data/Variable;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/Variable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;-><init>(Lcom/oplus/fancyicon/util/a;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;->mVariable:Lcom/oplus/fancyicon/data/Variable;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;->mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-nez v0, :cond_17

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;->mVariable:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;->mVariable:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;->mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    :cond_17
    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;->mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_21

    const-string p0, ""

    :cond_21
    return-object p0
.end method
