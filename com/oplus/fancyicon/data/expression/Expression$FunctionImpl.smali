.class public abstract Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FunctionImpl"
.end annotation


# instance fields
.field public mParams:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;->mParams:I

    return-void
.end method


# virtual methods
.method public abstract evaluate([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)D
.end method

.method public abstract evaluateStr([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
.end method
