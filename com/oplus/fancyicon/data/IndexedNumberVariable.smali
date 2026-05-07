.class public Lcom/oplus/fancyicon/data/IndexedNumberVariable;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexedNumberVariable"


# instance fields
.field private mIndex:I

.field private mVars:Lcom/oplus/fancyicon/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mIndex:I

    invoke-virtual {p3, p1, p2}, Lcom/oplus/fancyicon/data/Variables;->registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mIndex:I

    iput-object p3, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mVars:Lcom/oplus/fancyicon/data/Variables;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mVars:Lcom/oplus/fancyicon/data/Variables;

    if-nez v0, :cond_d

    const-string p0, "IndexedNumberVariable"

    const-string v0, "get IndexedNumberVariable, mVars is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_d
    iget p0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/Variables;->getNum(I)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mIndex:I

    return p0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mVars:Lcom/oplus/fancyicon/data/Variables;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_c

    :cond_6
    iget p0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/Variables;->getNumVer(I)I

    move-result p0

    :goto_c
    return p0
.end method

.method public set(D)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    return-void
.end method

.method public set(Ljava/lang/Double;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mVars:Lcom/oplus/fancyicon/data/Variables;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/oplus/fancyicon/data/Variables;->putNum(ILjava/lang/Double;)V

    :cond_9
    return-void
.end method
