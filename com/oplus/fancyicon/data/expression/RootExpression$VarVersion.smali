.class public Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation


# static fields
.field public static final TYPE_NUM:I = 0x1

.field public static final TYPE_STR:I = 0x2


# instance fields
.field public mIndex:I

.field public mType:I

.field public mVersion:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    iput p2, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mVersion:I

    iput p3, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    iget v0, p1, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    iget v1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    if-ne v0, v1, :cond_14

    iget p1, p1, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mType:I

    iget p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mType:I

    if-ne p1, p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    goto :goto_c

    :cond_8
    iget p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    rsub-int/lit8 p0, p0, -0x1

    :goto_c
    return p0
.end method
